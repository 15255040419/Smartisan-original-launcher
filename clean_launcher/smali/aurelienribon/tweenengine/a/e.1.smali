.class Laurelienribon/tweenengine/a/e;
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
    .locals 1

    .line 1
    sget-object p0, Laurelienribon/tweenengine/a/h;->OUT:Laurelienribon/tweenengine/a/h;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    invoke-virtual {p0, p1}, Laurelienribon/tweenengine/n;->compute(F)F

    move-result p0

    sub-float/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Bounce.IN"

    return-object p0
.end method
