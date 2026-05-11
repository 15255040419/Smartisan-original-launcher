.class public Laurelienribon/tweenengine/b/b;
.super Ljava/lang/Object;
.source "Linear.java"

# interfaces
.implements Laurelienribon/tweenengine/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F[FI)F
    .locals 2

    add-int/lit8 p0, p3, -0x1

    int-to-float p0, p0

    mul-float/2addr p0, p1

    float-to-double v0, p0

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p3, p3, -0x2

    .line 3
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p3, p1

    sub-float/2addr p0, p3

    .line 4
    aget p3, p2, p1

    add-int/lit8 v0, p1, 0x1

    aget v0, p2, v0

    aget p1, p2, p1

    sub-float/2addr v0, p1

    mul-float/2addr p0, v0

    add-float/2addr p3, p0

    return p3
.end method
