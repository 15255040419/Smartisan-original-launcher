.class public Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;
.super Landroid/app/DialogFragment;
.source "ObservableDialogFragment.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;


# instance fields
.field protected final mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 38
    new-instance v0, Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-direct {v0, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    return-void
.end method


# virtual methods
.method public bridge synthetic getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 0

    .line 36
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p0

    return-object p0
.end method

.method public getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    return-object p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 43
    iget-object p0, p0, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onCreate(Landroid/os/Bundle;)V

    .line 49
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 50
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1, p2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 86
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 80
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public onPause()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 68
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 92
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 62
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 56
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 74
    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    return-void
.end method
