.class Lcom/amap/api/mapcore2d/ce;
.super Landroid/view/View;
.source "TileOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/ce$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/amap/api/mapcore2d/ad;

.field private c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/amap/api/mapcore2d/aq;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/amap/api/mapcore2d/ce$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/ad;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/ce;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 17
    new-instance p1, Lcom/amap/api/mapcore2d/ce$a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/amap/api/mapcore2d/ce$a;-><init>(Lcom/amap/api/mapcore2d/ce;Lcom/amap/api/mapcore2d/cf;)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/ce;->d:Lcom/amap/api/mapcore2d/ce$a;

    .line 18
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/ce;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 43
    iput-object p2, p0, Lcom/amap/api/mapcore2d/ce;->b:Lcom/amap/api/mapcore2d/ad;

    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/Canvas;)V
    .locals 2

    .line 51
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ce;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/aq;

    .line 52
    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aq;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/aq;->a(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lcom/amap/api/mapcore2d/aq;)V
    .locals 1

    .line 93
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/ce;->b(Lcom/amap/api/mapcore2d/aq;)Z

    .line 94
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ce;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ce;->c()V

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 104
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ce;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/aq;

    if-eqz v0, :cond_0

    .line 105
    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aq;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/aq;->b(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected a()Z
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ce;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public b()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ce;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore2d/aq;

    if-eqz v1, :cond_0

    .line 77
    invoke-interface {v1}, Lcom/amap/api/mapcore2d/aq;->a()V

    goto :goto_0

    .line 80
    :cond_1
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ce;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public b(Lcom/amap/api/mapcore2d/aq;)Z
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ce;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method c()V
    .locals 5

    .line 84
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ce;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ce;->d:Lcom/amap/api/mapcore2d/ce$a;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 86
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ce;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 87
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 88
    iget-object v4, p0, Lcom/amap/api/mapcore2d/ce;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast v3, Lcom/amap/api/mapcore2d/aq;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 112
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ce;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/aq;

    if-eqz v0, :cond_0

    .line 114
    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aq;->g()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public e()V
    .locals 1

    .line 120
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ce;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/aq;

    if-eqz v0, :cond_0

    .line 122
    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aq;->h()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public f()V
    .locals 1

    .line 128
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ce;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/aq;

    if-eqz v0, :cond_0

    .line 130
    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aq;->i()V

    goto :goto_0

    :cond_1
    return-void
.end method
