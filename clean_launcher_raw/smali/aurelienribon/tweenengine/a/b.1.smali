.class Laurelienribon/tweenengine/a/b;
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
    .locals 3

    .line 1
    iget p0, p0, Laurelienribon/tweenengine/a/d;->Kf:F

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    mul-float v1, p1, p1

    add-float v2, p0, v0

    mul-float/2addr v2, p1

    add-float/2addr v2, p0

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Back.OUT"

    return-object p0
.end method
