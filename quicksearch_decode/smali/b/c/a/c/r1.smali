.class public final Lb/c/a/c/r1;
.super Lb/c/a/c/o0;
.source "SingletonImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lb/c/a/c/o0<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final transient b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lb/c/a/c/o0;-><init>()V

    .line 2
    invoke-static {p1}, Lb/c/a/a/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lb/c/a/c/r1;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p1, v0}, Lb/c/a/a/l;->a(II)I

    .line 2
    iget-object p1, p0, Lb/c/a/c/r1;->b:Ljava/lang/Object;

    return-object p1
.end method

.method public iterator()Lb/c/a/c/u1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/c/a/c/u1<",
            "TE;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lb/c/a/c/r1;->b:Ljava/lang/Object;

    invoke-static {v0}, Lb/c/a/c/x0;->a(Ljava/lang/Object;)Lb/c/a/c/u1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/c/a/c/r1;->iterator()Lb/c/a/c/u1;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/c/a/c/r1;->b:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public subList(II)Lb/c/a/c/o0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lb/c/a/c/o0<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 2
    invoke-static {p1, p2, v0}, Lb/c/a/a/l;->b(III)V

    if-ne p1, p2, :cond_0

    .line 3
    invoke-static {}, Lb/c/a/c/o0;->f()Lb/c/a/c/o0;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lb/c/a/c/r1;->subList(II)Lb/c/a/c/o0;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/c/a/c/r1;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
