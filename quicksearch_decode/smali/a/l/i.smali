.class public La/l/i;
.super Ljava/lang/Object;
.source "ViewModelStore.java"


# instance fields
.field public final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "La/l/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, La/l/i;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)La/l/h;
    .locals 1

    .line 3
    iget-object v0, p0, La/l/i;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La/l/h;

    return-object p1
.end method

.method public final a()V
    .locals 2

    .line 4
    iget-object v0, p0, La/l/i;->a:Ljava/util/HashMap;

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

    check-cast v1, La/l/h;

    .line 5
    invoke-virtual {v1}, La/l/h;->a()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, La/l/i;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public final a(Ljava/lang/String;La/l/h;)V
    .locals 1

    .line 1
    iget-object v0, p0, La/l/i;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La/l/h;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, La/l/h;->a()V

    :cond_0
    return-void
.end method
