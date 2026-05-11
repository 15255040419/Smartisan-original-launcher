.class Laurelienribon/tweenengine/a/E;
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
    .locals 2

    const/high16 p0, 0x40000000    # 2.0f

    mul-float/2addr p1, p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/high16 p0, 0x3f000000    # 0.5f

    mul-float/2addr p0, p1

    mul-float/2addr p0, p1

    mul-float/2addr p0, p1

    mul-float/2addr p0, p1

    return p0

    :cond_0
    const/high16 v0, -0x41000000    # -0.5f

    sub-float/2addr p1, p0

    mul-float v1, p1, p1

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    sub-float/2addr v1, p0

    mul-float/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Quart.INOUT"

    return-object p0
.end method
