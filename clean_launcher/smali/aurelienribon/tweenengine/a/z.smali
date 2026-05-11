.class Laurelienribon/tweenengine/a/z;
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
    .locals 1

    neg-float p0, p1

    const/high16 v0, 0x40000000    # 2.0f

    sub-float/2addr p1, v0

    mul-float/2addr p0, p1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Quad.OUT"

    return-object p0
.end method
