.class public Lcom/android/settingslib/core/lifecycle/ObservableActivity;
.super Landroid/app/Activity;
.source "ObservableActivity.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;


# instance fields
.field private final mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    new-instance v0, Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-direct {v0, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    return-void
.end method


# virtual methods
.method public bridge synthetic getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 0

    .line 36
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p0

    return-object p0
.end method

.method public getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onAttach(Landroid/content/Context;)V

    .line 47
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onCreate(Landroid/os/Bundle;)V

    .line 48
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onAttach(Landroid/content/Context;)V

    .line 56
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onCreate(Landroid/os/Bundle;)V

    .line 57
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 58
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 93
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object p0, p0, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onDestroy()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 88
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method protected onPause()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 76
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 102
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object p0, p0, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onResume()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 70
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 64
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
