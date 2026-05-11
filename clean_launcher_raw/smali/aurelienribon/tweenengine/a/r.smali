.class Laurelienribon/tweenengine/a/r;
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
    .locals 4

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const/high16 v2, -0x3ee00000    # -10.0f

    mul-float/2addr p1, v2

    float-to-double v2, p1

    .line 1
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p1, v0

    neg-float p1, p1

    add-float/2addr p0, p1

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Expo.OUT"

    return-object p0
.end method
