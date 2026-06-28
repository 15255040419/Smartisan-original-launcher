.class Landroid/arch/lifecycle/t;
.super Landroid/arch/lifecycle/u;
.source "LiveData.java"

# interfaces
.implements Landroid/arch/lifecycle/i;


# instance fields
.field final mOwner:Landroid/arch/lifecycle/l;

.field final synthetic this$0:Landroid/arch/lifecycle/v;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/v;Landroid/arch/lifecycle/l;Landroid/arch/lifecycle/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/arch/lifecycle/t;->this$0:Landroid/arch/lifecycle/v;

    .line 2
    invoke-direct {p0, p1, p3}, Landroid/arch/lifecycle/u;-><init>(Landroid/arch/lifecycle/v;Landroid/arch/lifecycle/y;)V

    .line 3
    iput-object p2, p0, Landroid/arch/lifecycle/t;->mOwner:Landroid/arch/lifecycle/l;

    return-void
.end method


# virtual methods
.method public a(Landroid/arch/lifecycle/l;Landroid/arch/lifecycle/Lifecycle$Event;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/arch/lifecycle/t;->mOwner:Landroid/arch/lifecycle/l;

    invoke-interface {p1}, Landroid/arch/lifecycle/l;->getLifecycle()Landroid/arch/lifecycle/j;

    move-result-object p1

    invoke-virtual {p1}, Landroid/arch/lifecycle/j;->getCurrentState()Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object p1

    sget-object p2, Landroid/arch/lifecycle/Lifecycle$State;->DESTROYED:Landroid/arch/lifecycle/Lifecycle$State;

    if-ne p1, p2, :cond_0

    .line 2
    iget-object p1, p0, Landroid/arch/lifecycle/t;->this$0:Landroid/arch/lifecycle/v;

    iget-object p0, p0, Landroid/arch/lifecycle/u;->mObserver:Landroid/arch/lifecycle/y;

    invoke-virtual {p1, p0}, Landroid/arch/lifecycle/v;->removeObserver(Landroid/arch/lifecycle/y;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/arch/lifecycle/t;->n()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/arch/lifecycle/u;->d(Z)V

    return-void
.end method

.method g(Landroid/arch/lifecycle/l;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/arch/lifecycle/t;->mOwner:Landroid/arch/lifecycle/l;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method m()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/arch/lifecycle/t;->mOwner:Landroid/arch/lifecycle/l;

    invoke-interface {v0}, Landroid/arch/lifecycle/l;->getLifecycle()Landroid/arch/lifecycle/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/arch/lifecycle/j;->b(Landroid/arch/lifecycle/k;)V

    return-void
.end method

.method n()Z
    .locals 1

    .line 1
    iget-object p0, p0, Landroid/arch/lifecycle/t;->mOwner:Landroid/arch/lifecycle/l;

    invoke-interface {p0}, Landroid/arch/lifecycle/l;->getLifecycle()Landroid/arch/lifecycle/j;

    move-result-object p0

    invoke-virtual {p0}, Landroid/arch/lifecycle/j;->getCurrentState()Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object p0

    sget-object v0, Landroid/arch/lifecycle/Lifecycle$State;->STARTED:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {p0, v0}, Landroid/arch/lifecycle/Lifecycle$State;->b(Landroid/arch/lifecycle/Lifecycle$State;)Z

    move-result p0

    return p0
.end method
