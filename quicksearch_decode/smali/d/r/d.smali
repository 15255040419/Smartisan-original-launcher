.class public final Ld/r/d;
.super Ljava/lang/Object;
.source "Random.kt"


# direct methods
.method public static final a(II)I
    .locals 1

    rsub-int/lit8 v0, p1, 0x20

    ushr-int/2addr p0, v0

    neg-int p1, p1

    shr-int/lit8 p1, p1, 0x1f

    and-int/2addr p0, p1

    return p0
.end method
