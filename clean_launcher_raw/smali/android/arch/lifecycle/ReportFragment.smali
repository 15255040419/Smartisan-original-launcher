.class public Landroid/arch/lifecycle/ReportFragment;
.super Landroid/app/Fragment;
.source "ReportFragment.java"


# instance fields
.field private j:Landroid/arch/lifecycle/B;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v0, "android.arch.lifecycle.LifecycleDispatcher.report_fragment_tag"

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Landroid/arch/lifecycle/ReportFragment;

    invoke-direct {v2}, Landroid/arch/lifecycle/ReportFragment;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 4
    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_0
    return-void
.end method

.method private a(Landroid/arch/lifecycle/B;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Landroid/arch/lifecycle/B;->onCreate()V

    :cond_0
    return-void
.end method

.method private b(Landroid/arch/lifecycle/B;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Landroid/arch/lifecycle/B;->onResume()V

    :cond_0
    return-void
.end method

.method private c(Landroid/arch/lifecycle/B;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Landroid/arch/lifecycle/B;->onStart()V

    :cond_0
    return-void
.end method

.method private c(Landroid/arch/lifecycle/Lifecycle$Event;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    .line 3
    instance-of v0, p0, Landroid/arch/lifecycle/p;

    if-eqz v0, :cond_0

    .line 4
    check-cast p0, Landroid/arch/lifecycle/p;

    invoke-interface {p0}, Landroid/arch/lifecycle/p;->getLifecycle()Landroid/arch/lifecycle/o;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/arch/lifecycle/o;->b(Landroid/arch/lifecycle/Lifecycle$Event;)V

    return-void

    .line 5
    :cond_0
    instance-of v0, p0, Landroid/arch/lifecycle/l;

    if-eqz v0, :cond_1

    .line 6
    check-cast p0, Landroid/arch/lifecycle/l;

    invoke-interface {p0}, Landroid/arch/lifecycle/l;->getLifecycle()Landroid/arch/lifecycle/j;

    move-result-object p0

    .line 7
    instance-of v0, p0, Landroid/arch/lifecycle/o;

    if-eqz v0, :cond_1

    .line 8
    check-cast p0, Landroid/arch/lifecycle/o;

    invoke-virtual {p0, p1}, Landroid/arch/lifecycle/o;->b(Landroid/arch/lifecycle/Lifecycle$Event;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Landroid/arch/lifecycle/ReportFragment;->j:Landroid/arch/lifecycle/B;

    invoke-direct {p0, p1}, Landroid/arch/lifecycle/ReportFragment;->a(Landroid/arch/lifecycle/B;)V

    .line 3
    sget-object p1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_CREATE:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-direct {p0, p1}, Landroid/arch/lifecycle/ReportFragment;->c(Landroid/arch/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 2
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/ReportFragment;->c(Landroid/arch/lifecycle/Lifecycle$Event;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroid/arch/lifecycle/ReportFragment;->j:Landroid/arch/lifecycle/B;

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 2
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/ReportFragment;->c(Landroid/arch/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Landroid/arch/lifecycle/ReportFragment;->j:Landroid/arch/lifecycle/B;

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/ReportFragment;->b(Landroid/arch/lifecycle/B;)V

    .line 3
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_RESUME:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/ReportFragment;->c(Landroid/arch/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 2
    iget-object v0, p0, Landroid/arch/lifecycle/ReportFragment;->j:Landroid/arch/lifecycle/B;

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/ReportFragment;->c(Landroid/arch/lifecycle/B;)V

    .line 3
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_START:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/ReportFragment;->c(Landroid/arch/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 2
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_STOP:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/ReportFragment;->c(Landroid/arch/lifecycle/Lifecycle$Event;)V

    return-void
.end method
