.class public final Lb/c/b/c$e;
.super Lb/c/b/m;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/c/b/c;->b(Lb/c/b/m;)Lb/c/b/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/c/b/m<",
        "Ljava/util/concurrent/atomic/AtomicLongArray;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lb/c/b/m;


# direct methods
.method public constructor <init>(Lb/c/b/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/c/b/c$e;->a:Lb/c/b/m;

    invoke-direct {p0}, Lb/c/b/m;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lb/c/b/q/a;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb/c/b/c$e;->a(Lb/c/b/q/a;)Ljava/util/concurrent/atomic/AtomicLongArray;

    move-result-object p1

    return-object p1
.end method

.method public a(Lb/c/b/q/a;)Ljava/util/concurrent/atomic/AtomicLongArray;
    .locals 5

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-virtual {p1}, Lb/c/b/q/a;->a()V

    .line 9
    :goto_0
    invoke-virtual {p1}, Lb/c/b/q/a;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    iget-object v1, p0, Lb/c/b/c$e;->a:Lb/c/b/m;

    invoke-virtual {v1, p1}, Lb/c/b/m;->a(Lb/c/b/q/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 11
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Lb/c/b/q/a;->f()V

    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    .line 14
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-direct {v1, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>(I)V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_1

    .line 15
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLongArray;->set(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public bridge synthetic a(Lb/c/b/q/c;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {p0, p1, p2}, Lb/c/b/c$e;->a(Lb/c/b/q/c;Ljava/util/concurrent/atomic/AtomicLongArray;)V

    return-void
.end method

.method public a(Lb/c/b/q/c;Ljava/util/concurrent/atomic/AtomicLongArray;)V
    .locals 5

    .line 3
    invoke-virtual {p1}, Lb/c/b/q/c;->c()Lb/c/b/q/c;

    .line 4
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 5
    iget-object v2, p0, Lb/c/b/c$e;->a:Lb/c/b/m;

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lb/c/b/m;->a(Lb/c/b/q/c;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lb/c/b/q/c;->e()Lb/c/b/q/c;

    return-void
.end method
