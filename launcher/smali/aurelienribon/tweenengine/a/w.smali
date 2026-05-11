.class Laurelienribon/tweenengine/a/w;
.super Laurelienribon/tweenengine/a/x;
.source "Overshoot.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Laurelienribon/tweenengine/a/x;-><init>()V

    return-void
.end method


# virtual methods
.method public compute(F)F
    .locals 2

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p1, p0

    mul-float v0, p1, p1

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr p1, v1

    const/high16 v1, 0x40000000    # 2.0f

    add-float/2addr p1, v1

    mul-float/2addr v0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Overshoot.INOUT"

    return-object p0
.end method
