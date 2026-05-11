.class public final Lcom/smartisanos/launcher/widget/b;
.super Ljava/lang/Object;
.source "LandscapeFrameLayout.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;
.implements Lcom/android/internal/view/menu/MenuPresenter$Callback;


# instance fields
.field private Vz:Lcom/android/internal/view/menu/MenuDialogHelper;

.field private Wz:Z

.field private mLayout:Lcom/smartisanos/launcher/widget/LandscapeFrameLayout;


# direct methods
.method public constructor <init>(Lcom/smartisanos/launcher/widget/LandscapeFrameLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/widget/b;->mLayout:Lcom/smartisanos/launcher/widget/LandscapeFrameLayout;

    return-void
.end method

.method private a(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/widget/b;->a(Lcom/android/internal/view/menu/MenuBuilder;)V

    :cond_0
    if-eqz p2, :cond_2

    .line 3
    iget-object p2, p0, Lcom/smartisanos/launcher/widget/b;->mLayout:Lcom/smartisanos/launcher/widget/LandscapeFrameLayout;

    iget-object v0, p2, Lcom/smartisanos/launcher/widget/LandscapeFrameLayout;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    if-ne p1, v0, :cond_1

    .line 4
    invoke-static {p2}, Lcom/smartisanos/launcher/widget/LandscapeFrameLayout;->a(Lcom/smartisanos/launcher/widget/LandscapeFrameLayout;)V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/launcher/widget/b;->Vz:Lcom/android/internal/view/menu/MenuDialogHelper;

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuDialogHelper;->dismiss()V

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/smartisanos/launcher/widget/b;->Vz:Lcom/android/internal/view/menu/MenuDialogHelper;

    :cond_2
    return-void
.end method

.method public onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0

    return-void
.end method

.method public onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p1, p0}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 2
    iget-boolean v1, p0, Lcom/smartisanos/launcher/widget/b;->Wz:Z

    if-eqz v1, :cond_1

    .line 3
    new-instance v0, Lcom/android/internal/view/menu/MenuDialogHelper;

    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/MenuDialogHelper;-><init>(Lcom/android/internal/view/menu/MenuBuilder;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/widget/b;->Vz:Lcom/android/internal/view/menu/MenuDialogHelper;

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/widget/b;->Vz:Lcom/android/internal/view/menu/MenuDialogHelper;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuDialogHelper;->show(Landroid/os/IBinder;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public setShowDialogForSubmenu(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/launcher/widget/b;->Wz:Z

    return-void
.end method
