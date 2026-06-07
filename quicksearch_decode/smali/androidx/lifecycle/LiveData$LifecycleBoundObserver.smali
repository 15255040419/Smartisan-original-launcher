.class public Landroidx/lifecycle/LiveData$LifecycleBoundObserver;
.super Landroidx/lifecycle/LiveData$b;
.source "LiveData.java"

# interfaces
.implements Landroidx/lifecycle/GenericLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LifecycleBoundObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData<",
        "TT;>.b;",
        "Landroidx/lifecycle/GenericLifecycleObserver;"
    }
.end annotation


# instance fields
.field public final e:Landroidx/lifecycle/LifecycleOwner;

.field public final synthetic f:Landroidx/lifecycle/LiveData;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->f:Landroidx/lifecycle/LiveData;

    .line 2
    invoke-direct {p0, p1, p3}, Landroidx/lifecycle/LiveData$b;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 3
    iput-object p2, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Landroidx/lifecycle/LifecycleOwner;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()La/l/b;

    move-result-object v0

    invoke-virtual {v0, p0}, La/l/b;->b(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public a(Landroidx/lifecycle/LifecycleOwner;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Landroidx/lifecycle/LifecycleOwner;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()La/l/b;

    move-result-object v0

    invoke-virtual {v0}, La/l/b;->a()La/l/b$b;

    move-result-object v0

    sget-object v1, La/l/b$b;->d:La/l/b$b;

    invoke-virtual {v0, v1}, La/l/b$b;->a(La/l/b$b;)Z

    move-result v0

    return v0
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;La/l/b$a;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()La/l/b;

    move-result-object p1

    invoke-virtual {p1}, La/l/b;->a()La/l/b$b;

    move-result-object p1

    sget-object p2, La/l/b$b;->a:La/l/b$b;

    if-ne p1, p2, :cond_0

    .line 2
    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->f:Landroidx/lifecycle/LiveData;

    iget-object p2, p0, Landroidx/lifecycle/LiveData$b;->a:Landroidx/lifecycle/Observer;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/Observer;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->b()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData$b;->a(Z)V

    return-void
.end method
