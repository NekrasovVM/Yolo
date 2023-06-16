#define _CRT_SECURE_NO_WARNINGS
#include "image.h"
#include <stdio.h>

int main()
{
    image im = load_image("E:\\NekrasovVladiimir\\data\\dog.jpg", 3);
    image sized;
    sized = resize_image(im, 416, 416);

    FILE* file;
    file = fopen("E:\\NekrasovVladiimir\\Training\\17_dma_loopback\\vitis\\xaxidma_example_simple_poll_1\\SizedImage.h", "w");
    if (file != NULL) {
        fprintf(file, "%s", "#pragma once\n#include \"Image.h\"\n\n");
        fprintf(file, "%s", "float values[416 * 416 * 3] = {\n");
    
        for (int i = 0; i < 519168; i++) {
            fprintf(file, "%.11f, ", sized.data[i]);
            if (i % 10 == 9) { fprintf(file, "\n"); }
        }

        fprintf(file, "%s", "};");
        fclose(file);
    }
    else {
        printf("File error\n");
    }

    printf("Press any key to exit");

    getchar();

    return 0;
}

