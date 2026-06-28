.class public Landroid/arch/lifecycle/G;
.super Ljava/lang/Object;
.source "ViewModelStore.java"


# instance fields
.field private final mMap:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/G;->mMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;Landroid/arch/lifecycle/D;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/arch/lifecycle/G;->mMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/arch/lifecycle/D;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/arch/lifecycle/D;->onCleared()V

    :cond_0
    return-void
.end method

.method public final clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/arch/lifecycle/G;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/D;

    .line 2
    invoke-virtual {v1}, Landroid/arch/lifecycle/D;->onCleared()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Landroid/arch/lifecycle/G;->mMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method final get(Ljava/lang/String;)Landroid/arch/lifecycle/D;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/arch/lifecycle/G;->mMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/arch/lifecycle/D;

    return-object p0
.end method
