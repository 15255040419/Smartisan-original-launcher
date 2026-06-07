.class public abstract Lb/c/a/a/d$b;
.super Lb/c/a/a/d;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/c/a/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lb/c/a/a/d;->a(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public negate()Lb/c/a/a/d;
    .locals 1

    .line 2
    new-instance v0, Lb/c/a/a/d$g;

    invoke-direct {v0, p0}, Lb/c/a/a/d$g;-><init>(Lb/c/a/a/d;)V

    return-object v0
.end method

.method public bridge synthetic negate()Ljava/util/function/Predicate;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/c/a/a/d$b;->negate()Lb/c/a/a/d;

    move-result-object v0

    return-object v0
.end method
