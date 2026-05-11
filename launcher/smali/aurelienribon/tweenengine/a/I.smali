.class Laurelienribon/tweenengine/a/I;
.super Laurelienribon/tweenengine/a/J;
.source "Quint.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Laurelienribon/tweenengine/a/J;-><init>()V

    return-void
.end method


# virtual methods
.method public final compute(F)F
    .locals 2

    const/high16 p0, 0x40000000    # 2.0f

    mul-float/2addr p1, p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    const/high16 v1, 0x3f000000    # 0.5f

    if-gez v0, :cond_0

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    return v1

    :cond_0
    sub-float/2addr p1, p0

    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, p0

    mul-float/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Quint.INOUT"

    return-object p0
.end method
