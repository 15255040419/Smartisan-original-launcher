.class Laurelienribon/tweenengine/a/K;
.super Laurelienribon/tweenengine/a/N;
.source "Sine.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Laurelienribon/tweenengine/a/N;-><init>()V

    return-void
.end method


# virtual methods
.method public final compute(F)F
    .locals 0

    const p0, 0x3fc90fdb

    mul-float/2addr p1, p0

    float-to-double p0, p1

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    neg-double p0, p0

    double-to-float p0, p0

    const/high16 p1, 0x3f800000    # 1.0f

    add-float/2addr p0, p1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Sine.IN"

    return-object p0
.end method
