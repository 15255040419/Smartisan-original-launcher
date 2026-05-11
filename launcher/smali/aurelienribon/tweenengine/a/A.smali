.class Laurelienribon/tweenengine/a/A;
.super Laurelienribon/tweenengine/a/B;
.source "Quad.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Laurelienribon/tweenengine/a/B;-><init>()V

    return-void
.end method


# virtual methods
.method public final compute(F)F
    .locals 2

    const/high16 p0, 0x40000000    # 2.0f

    mul-float/2addr p1, p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/high16 p0, 0x3f000000    # 0.5f

    mul-float/2addr p0, p1

    mul-float/2addr p0, p1

    return p0

    :cond_0
    const/high16 v1, -0x41000000    # -0.5f

    sub-float/2addr p1, v0

    sub-float p0, p1, p0

    mul-float/2addr p1, p0

    sub-float/2addr p1, v0

    mul-float/2addr p1, v1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Quad.INOUT"

    return-object p0
.end method
