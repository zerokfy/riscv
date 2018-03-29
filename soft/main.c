#define     OUT_7SEG    *((volatile unsigned int *) 0x00000200)

void main(void) {
    unsigned int    a;
    unsigned int    b;

    a = 10;
    b = 20;

    OUT_7SEG = a + b;
}

