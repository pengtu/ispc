
struct Point { float x, y, z; };

export uniform int width() { return programCount; }

export void f_fu(uniform float RET[], uniform float aFOO[], uniform float b) {
    float a = aFOO[programIndex]; 

    soa<8> Point pts[10];
    for (uniform int i = 0; i < 8*10; ++i) {
        pts[i].x = b*i;
        pts[i].y = 2*b*i;
        pts[i].z = 3*b*i;
    }

    assert(programCount < 80);
    RET[programIndex] = pts[programIndex].y;
}

export void result(uniform float RET[]) {
    RET[programIndex] = 10*programIndex;
}
