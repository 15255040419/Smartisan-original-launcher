.class public final Lb/c/a/c/l1$b$a;
.super Lb/c/a/c/r0;
.source "RegularImmutableBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c/a/c/l1$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/c/a/c/r0<",
        "TV;TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lb/c/a/c/l1$b;


# direct methods
.method public constructor <init>(Lb/c/a/c/l1$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/c/a/c/l1$b$a;->c:Lb/c/a/c/l1$b;

    invoke-direct {p0}, Lb/c/a/c/r0;-><init>()V

    return-void
.end method


# virtual methods
.method public e()Lb/c/a/c/o0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/c/a/c/o0<",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/c/a/c/l1$b$a$a;

    invoke-direct {v0, p0}, Lb/c/a/c/l1$b$a$a;-><init>(Lb/c/a/c/l1$b$a;)V

    return-object v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lb/c/a/c/u0;->a()Lb/c/a/c/o0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/c/a/c/o0;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public h()Lb/c/a/c/p0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/c/a/c/p0<",
            "TV;TK;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/c/a/c/l1$b$a;->c:Lb/c/a/c/l1$b;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/c/a/c/l1$b$a;->c:Lb/c/a/c/l1$b;

    iget-object v0, v0, Lb/c/a/c/l1$b;->e:Lb/c/a/c/l1;

    invoke-static {v0}, Lb/c/a/c/l1;->c(Lb/c/a/c/l1;)I

    move-result v0

    return v0
.end method

.method public iterator()Lb/c/a/c/u1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/c/a/c/u1<",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lb/c/a/c/u0;->a()Lb/c/a/c/o0;

    move-result-object v0

    invoke-virtual {v0}, Lb/c/a/c/o0;->iterator()Lb/c/a/c/u1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/c/a/c/l1$b$a;->iterator()Lb/c/a/c/u1;

    move-result-object v0

    return-object v0
.end method
