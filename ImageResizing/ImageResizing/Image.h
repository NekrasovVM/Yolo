#pragma once

typedef struct image {
    int w;
    int h;
    int c;
    float* data;
} image;

image copy_image(image p);
image make_empty_image(int w, int h, int c);
image make_image(int w, int h, int c);
static void add_pixel(image m, int x, int y, int c, float val);
void free_image(image m);
static float get_pixel(image m, int x, int y, int c);
static void set_pixel(image m, int x, int y, int c, float val);
image resize_image(image im, int w, int h);
image load_image(char* filename, int channels);
