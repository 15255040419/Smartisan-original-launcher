.class Laurelienribon/tweenengine/a/q;
.super Laurelienribon/tweenengine/a/t;
.source "Expo.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Laurelienribon/tweenengine/a/t;-><init>()V

    return-void
.end method


# virtual methods
.method public final compute(F)F
    .locals 3

    const/4 p0, 0x0

    cmpl-float v0, p1, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const/high16 p0, 0x41200000    # 10.0f

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr p1, v2

    mul-float/2addr p1, p0

    float-to-double p0, p1

    .line 1
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    double-to-float p0, p0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Expo.IN"

    return-object p0
.end method
