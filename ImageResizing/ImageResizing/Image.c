#define _CRT_SECURE_NO_WARNINGS
#include "image.h"
#include "stdio.h"
#include "assert.h"

#define STB_IMAGE_IMPLEMENTATION
#include "stb_image.h"

int check_mistakes = 0;

image copy_image(image p)
{
    image copy = p;
    copy.data = (float*)calloc(p.h * p.w * p.c, sizeof(float));
    memcpy(copy.data, p.data, p.h * p.w * p.c * sizeof(float));
    return copy;
}

image make_empty_image(int w, int h, int c)
{
    image out;
    out.data = 0;
    out.h = h;
    out.w = w;
    out.c = c;
    return out;
}

image make_image(int w, int h, int c)
{
    image out = make_empty_image(w, h, c);
    out.data = (float*)calloc(h * w * c, sizeof(float));
    return out;
}

static void add_pixel(image m, int x, int y, int c, float val)
{
    assert(x < m.w&& y < m.h&& c < m.c);
    m.data[c * m.h * m.w + y * m.w + x] += val;
}

void free_image(image m)
{
    if (m.data) {
        free(m.data);
    }
}

static float get_pixel(image m, int x, int y, int c)
{
    assert(x < m.w&& y < m.h&& c < m.c);
    return m.data[c * m.h * m.w + y * m.w + x];
}

static void set_pixel(image m, int x, int y, int c, float val)
{
    if (x < 0 || y < 0 || c < 0 || x >= m.w || y >= m.h || c >= m.c) return;
    assert(x < m.w&& y < m.h&& c < m.c);
    m.data[c * m.h * m.w + y * m.w + x] = val;
}

image resize_image(image im, int w, int h)
{
    if (im.w == w && im.h == h) return copy_image(im);

    image resized = make_image(w, h, im.c);
    image part = make_image(w, im.h, im.c);
    int r, c, k;
    float w_scale = (float)(im.w - 1) / (w - 1);
    float h_scale = (float)(im.h - 1) / (h - 1);
    for (k = 0; k < im.c; ++k) {
        for (r = 0; r < im.h; ++r) {
            for (c = 0; c < w; ++c) {
                float val = 0;
                if (c == w - 1 || im.w == 1) {
                    val = get_pixel(im, im.w - 1, r, k);
                }
                else {
                    float sx = c * w_scale;
                    int ix = (int)sx;
                    float dx = sx - ix;
                    val = (1 - dx) * get_pixel(im, ix, r, k) + dx * get_pixel(im, ix + 1, r, k);
                }
                set_pixel(part, c, r, k, val);
            }
        }
    }
    for (k = 0; k < im.c; ++k) {
        for (r = 0; r < h; ++r) {
            float sy = r * h_scale;
            int iy = (int)sy;
            float dy = sy - iy;
            for (c = 0; c < w; ++c) {
                float val = (1 - dy) * get_pixel(part, c, iy, k);
                set_pixel(resized, c, r, k, val);
            }
            if (r == h - 1 || im.h == 1) continue;
            for (c = 0; c < w; ++c) {
                float val = dy * get_pixel(part, c, iy + 1, k);
                add_pixel(resized, c, r, k, val);
            }
        }
    }

    free_image(part);
    return resized;
}

image load_image(char* filename, int channels)
{
    int w, h, c;
    unsigned char* data = stbi_load(filename, &w, &h, &c, channels);
    if (!data) {
        char shrinked_filename[1024];
        if (strlen(filename) >= 1024) sprintf(shrinked_filename, "name is too long");
        else sprintf(shrinked_filename, "%s", filename);
        fprintf(stderr, "Cannot load image \"%s\"\nSTB Reason: %s\n", shrinked_filename, stbi_failure_reason());
        FILE* fw = fopen("bad.list", "a");
        fwrite(shrinked_filename, sizeof(char), strlen(shrinked_filename), fw);
        char* new_line = "\n";
        fwrite(new_line, sizeof(char), strlen(new_line), fw);
        fclose(fw);
        if (check_mistakes) {
            printf("\n Error in load_image_stb() \n");
            getchar();
        }
        return make_image(10, 10, 3);
        //exit(EXIT_FAILURE);
    }
    if (channels) c = channels;
    int i, j, k;
    image im = make_image(w, h, c);
    for (k = 0; k < c; ++k) {
        for (j = 0; j < h; ++j) {
            for (i = 0; i < w; ++i) {
                int dst_index = i + w * j + w * h * k;
                int src_index = k + c * i + c * w * j;
                im.data[dst_index] = (float)data[src_index] / 255.;
            }
        }
    }
    free(data);
    return im;
}