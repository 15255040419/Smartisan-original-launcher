.class Laurelienribon/tweenengine/a/g;
.super Laurelienribon/tweenengine/a/h;
.source "Bounce.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Laurelienribon/tweenengine/a/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final compute(F)F
    .locals 2

    const/high16 p0, 0x3f000000    # 0.5f

    cmpg-float v0, p1, p0

    const/high16 v1, 0x40000000    # 2.0f

    if-gez v0, :cond_0

    .line 1
    sget-object v0, Laurelienribon/tweenengine/a/h;->IN:Laurelienribon/tweenengine/a/h;

    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Laurelienribon/tweenengine/n;->compute(F)F

    move-result p1

    mul-float/2addr p1, p0

    return p1

    .line 2
    :cond_0
    sget-object v0, Laurelienribon/tweenengine/a/h;->OUT:Laurelienribon/tweenengine/a/h;

    mul-float/2addr p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr p1, v1

    invoke-virtual {v0, p1}, Laurelienribon/tweenengine/n;->compute(F)F

    move-result p1

    mul-float/2addr p1, p0

    add-float/2addr p1, p0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Bounce.INOUT"

    return-object p0
.end method
