.class Laurelienribon/tweenengine/a/a;
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
    .locals 2

    .line 1
    iget p0, p0, Laurelienribon/tweenengine/a/d;->Kf:F

    mul-float v0, p1, p1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, p0

    mul-float/2addr v1, p1

    sub-float/2addr v1, p0

    mul-float/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Back.IN"

    return-object p0
.end method
