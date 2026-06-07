.class public abstract Ld/r/a;
.super Ld/r/c;
.source "PlatformRandom.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld/r/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 2
    invoke-virtual {p0}, Ld/r/a;->c()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method

.method public a(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld/r/a;->c()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-static {v0, p1}, Ld/r/d;->a(II)I

    move-result p1

    return p1
.end method

.method public abstract c()Ljava/util/Random;
.end method
