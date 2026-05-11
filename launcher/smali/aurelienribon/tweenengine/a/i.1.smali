.class Laurelienribon/tweenengine/a/i;
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
    .locals 2

    mul-float/2addr p1, p1

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float p1, p0, p1

    float-to-double v0, p1

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    neg-double v0, v0

    double-to-float p1, v0

    sub-float/2addr p1, p0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Circ.IN"

    return-object p0
.end method
