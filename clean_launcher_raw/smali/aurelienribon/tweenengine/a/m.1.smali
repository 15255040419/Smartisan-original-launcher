.class Laurelienribon/tweenengine/a/m;
.super Laurelienribon/tweenengine/a/p;
.source "Cubic.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Laurelienribon/tweenengine/a/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final compute(F)F
    .locals 0

    mul-float p0, p1, p1

    mul-float/2addr p0, p1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Cubic.IN"

    return-object p0
.end method
