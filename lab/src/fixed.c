/* Educational local lab: validate length before copying. */
#include <stdio.h>
#include <string.h>

static int copy_input(const char *input) {
    char buffer[32];
    if (strlen(input) >= sizeof buffer) {
        fputs("Input too long\n", stderr);
        return 2;
    }
    strcpy(buffer, input);
    puts(buffer);
    return 0;
}

int main(int argc, char **argv) {
    if (argc != 2) {
        fprintf(stderr, "Usage: %s INPUT\n", argv[0]);
        return 1;
    }
    return copy_input(argv[1]);
}
