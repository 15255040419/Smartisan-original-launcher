.class Laurelienribon/tweenengine/a/D;
.super Laurelienribon/tweenengine/a/F;
.source "Quart.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Laurelienribon/tweenengine/a/F;-><init>()V

    return-void
.end method


# virtual methods
.method public final compute(F)F
    .locals 1

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p1, p0

    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    sub-float/2addr v0, p0

    neg-float p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Quart.OUT"

    return-object p0
.end method
