.class Laurelienribon/tweenengine/a/c;
.super Laurelienribon/tweenengine/a/d;
.source "Back.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Laurelienribon/tweenengine/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final compute(F)F
    .locals 5

    .line 1
    iget p0, p0, Laurelienribon/tweenengine/a/d;->Kf:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v1

    const v3, 0x3fc33333    # 1.525f

    const/high16 v4, 0x3f000000    # 0.5f

    if-gez v2, :cond_0

    mul-float v0, p1, p1

    mul-float/2addr p0, v3

    add-float/2addr v1, p0

    mul-float/2addr v1, p1

    sub-float/2addr v1, p0

    mul-float/2addr v0, v1

    mul-float/2addr v0, v4

    return v0

    :cond_0
    sub-float/2addr p1, v0

    mul-float v2, p1, p1

    mul-float/2addr p0, v3

    add-float/2addr v1, p0

    mul-float/2addr v1, p1

    add-float/2addr v1, p0

    mul-float/2addr v2, v1

    add-float/2addr v2, v0

    mul-float/2addr v2, v4

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Back.INOUT"

    return-object p0
.end method
