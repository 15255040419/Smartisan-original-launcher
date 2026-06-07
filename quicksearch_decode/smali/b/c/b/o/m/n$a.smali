.class public final Lb/c/b/o/m/n$a;
.super Lb/c/b/m;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c/b/o/m/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/c/b/m<",
        "Ljava/util/concurrent/atomic/AtomicIntegerArray;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/c/b/m;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lb/c/b/q/a;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb/c/b/o/m/n$a;->a(Lb/c/b/q/a;)Ljava/util/concurrent/atomic/AtomicIntegerArray;

    move-result-object p1

    return-object p1
.end method

.method public a(Lb/c/b/q/a;)Ljava/util/concurrent/atomic/AtomicIntegerArray;
    .locals 4

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p1}, Lb/c/b/q/a;->a()V

    .line 5
    :goto_0
    invoke-virtual {p1}, Lb/c/b/q/a;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    :try_start_0
    invoke-virtual {p1}, Lb/c/b/q/a;->n()I

    move-result v1

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    new-instance v0, Lb/c/b/k;

    invoke-direct {v0, p1}, Lb/c/b/k;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lb/c/b/q/a;->f()V

    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    .line 11
    new-instance v1, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-direct {v1, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;-><init>(I)V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_1

    .line 12
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->set(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public bridge synthetic a(Lb/c/b/q/c;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {p0, p1, p2}, Lb/c/b/o/m/n$a;->a(Lb/c/b/q/c;Ljava/util/concurrent/atomic/AtomicIntegerArray;)V

    return-void
.end method

.method public a(Lb/c/b/q/c;Ljava/util/concurrent/atomic/AtomicIntegerArray;)V
    .locals 4

    .line 13
    invoke-virtual {p1}, Lb/c/b/q/c;->c()Lb/c/b/q/c;

    .line 14
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 15
    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Lb/c/b/q/c;->a(J)Lb/c/b/q/c;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1}, Lb/c/b/q/c;->e()Lb/c/b/q/c;

    return-void
.end method
