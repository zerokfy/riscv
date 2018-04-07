#define     LED     *((volatile unsigned int *) 0x00001000)

void main(void) {
    unsigned int    a;
    unsigned int    b;

    a = 0;
    b = 0;

    while(1) {
        if(a++ == 50) {
            LED = b++;
            a = 0;
        }
    }
}

