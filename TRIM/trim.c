#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

void main(int argc, char* argv[]) {
    if (argc != 4) {
        printf("usage: trim.exe [in] [length] [out]\n\n");
    } else {
        char* in = argv[1];
        int len = 0;
        if (sscanf(argv[2], "%d", &len) == 0)
            sscanf(argv[2], "%x", &len);
        char* out = argv[3];
        FILE* fp = fopen(in, "rb");
        FILE* fo = fopen(out, "wb");
        fseek(fp, len, SEEK_SET);
        while (1) {
            if (feof(fp))
                break;
            fputc(fgetc(fp), fo);
        }
        fclose(fo);
        fclose(fp);

        printf("file trimed.\n");
    }
}