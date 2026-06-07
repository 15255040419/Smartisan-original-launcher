.class public final Lb/c/a/c/u0$a;
.super Lb/c/a/c/u0$d;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c/a/c/u0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lb/c/a/c/u0$d<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb/c/a/c/u0$d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/a/c/u0$d<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lb/c/a/c/u0$d;-><init>(Lb/c/a/c/u0$d;)V

    .line 2
    iget p1, p0, Lb/c/a/c/u0$d;->b:I

    invoke-static {p1}, Lb/c/a/c/p1;->a(I)Ljava/util/HashSet;

    move-result-object p1

    iput-object p1, p0, Lb/c/a/c/u0$a;->c:Ljava/util/Set;

    const/4 p1, 0x0

    .line 3
    :goto_0
    iget v0, p0, Lb/c/a/c/u0$d;->b:I

    if-ge p1, v0, :cond_0

    .line 4
    iget-object v0, p0, Lb/c/a/c/u0$a;->c:Ljava/util/Set;

    iget-object v1, p0, Lb/c/a/c/u0$d;->a:[Ljava/lang/Object;

    aget-object v1, v1, p1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lb/c/a/c/u0$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lb/c/a/c/u0$d<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lb/c/a/a/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lb/c/a/c/u0$a;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lb/c/a/c/u0$d;->b(Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public a()Lb/c/a/c/u0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/c/a/c/u0<",
            "TE;>;"
        }
    .end annotation

    .line 4
    iget v0, p0, Lb/c/a/c/u0$d;->b:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 5
    new-instance v1, Lb/c/a/c/a1;

    iget-object v2, p0, Lb/c/a/c/u0$a;->c:Ljava/util/Set;

    iget-object v3, p0, Lb/c/a/c/u0$d;->a:[Ljava/lang/Object;

    .line 6
    invoke-static {v3, v0}, Lb/c/a/c/o0;->b([Ljava/lang/Object;I)Lb/c/a/c/o0;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lb/c/a/c/a1;-><init>(Ljava/util/Set;Lb/c/a/c/o0;)V

    return-object v1

    .line 7
    :cond_0
    iget-object v0, p0, Lb/c/a/c/u0$d;->a:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lb/c/a/c/u0;->a(Ljava/lang/Object;)Lb/c/a/c/u0;

    move-result-object v0

    return-object v0

    .line 8
    :cond_1
    invoke-static {}, Lb/c/a/c/u0;->g()Lb/c/a/c/u0;

    move-result-object v0

    return-object v0
.end method
