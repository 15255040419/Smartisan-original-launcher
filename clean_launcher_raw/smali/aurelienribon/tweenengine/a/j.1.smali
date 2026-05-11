.class Laurelienribon/tweenengine/a/j;
.super Laurelienribon/tweenengine/a/l;
.source "Circ.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Laurelienribon/tweenengine/a/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final compute(F)F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p1, p0

    mul-float/2addr p1, p1

    sub-float/2addr p0, p1

    float-to-double p0, p0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Circ.OUT"

    return-object p0
.end method
