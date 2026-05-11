.class public Lcom/smartisanos/launcher/widget/LandscapeFrameLayout;
.super Landroid/widget/FrameLayout;
.source "LandscapeFrameLayout.java"


# instance fields
.field private ad:Lcom/smartisanos/launcher/widget/a;

.field mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

.field final mContextMenuCallback:Lcom/smartisanos/launcher/widget/b;

.field mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/smartisanos/launcher/widget/b;

    invoke-direct {p1, p0}, Lcom/smartisanos/launcher/widget/b;-><init>(Lcom/smartisanos/launcher/widget/LandscapeFrameLayout;)V

    iput-object p1, p0, Lcom/smartisanos/launcher/widget/LandscapeFrameLayout;->mContextMenuCallback:Lcom/smartisanos/launcher/widget/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    new-instance p1, Lcom/smartisanos/launcher/widget/b;

    invoke-direct {p1, p0}, Lcom/smartisanos/launcher/widget/b;-><init>(Lcom/smartisanos/launcher/widget/LandscapeFrameLayout;)V

    iput-object p1, p0, Lcom/smartisanos/launcher/widget/LandscapeFrameLayout;->mContextMenuCallback:Lcom/smartisanos/launcher/widget/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    new-instance p1, Lcom/smartisanos/launcher/widget/b;

    invoke-direct {p1, p0}, Lcom/smartisanos/launcher/widget/b;-><init>(Lcom/smartisanos/launcher/widget/LandscapeFrameLayout;)V

    iput-object p1, p0, Lcom/smartisanos/launcher/widget/LandscapeFrameLayout;->mContextMenuCallback:Lcom/smartisanos/launcher/widget/b;

    return-void
.end method

.method private declared-synchronized Ku()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-object v0, p0, Lcom/smartisanos/launcher/widget/LandscapeFrameLayout;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/widget/LandscapeFrameLayout;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/widget/LandscapeFrameLayout;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    invoke-interface {v1}, Lcom/android/internal/view/menu/MenuHelper;->dismiss()V

    .line 4
    iput-object v0, p0, Lcom/smartisanos/launcher/widget/LandscapeFrameLayout;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/widget/LandscapeFrameLayout;->ad:Lcom/smartisanos/launcher/widget/a;

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/widget/LandscapeFrameLayout;->ad:Lcom/smartisanos/launcher/widget/a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/smartisanos/launcher/widget/a;->onChange(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/smartisanos/launcher/widget/LandscapeFrameLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/widget/LandscapeFrameLayout;->Ku()V

    return-void
.end method

.method private a(Landroid/view/View;FF)Z
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/widget/LandscapeFrameLayout;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/android/internal/view/menu/MenuHelper;->dismiss()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/smartisanos/launcher/widget/LandscapeFrameLayout;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/widget/LandscapeFrameLayout;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/view/menu/ContextMenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/widget/LandscapeFrameLayout;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/widget/LandscapeFrameLayout;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    iget-object v1, p0, Lcom/smartisanos/launcher/widget/LandscapeFrameLayout;->mContextMenuCallback:Lcom/smartisanos/launcher/widget/b;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ContextMenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/view/menu/ContextMenuBuilder;->clearAll()V

    .line 9
    :goto_0
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    .line 10
    iget-object v3, p0, Lcom/smartisanos/launcher/widget/LandscapeFrameLayout;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, p1, p2, p3}, Lcom/android/internal/view/menu/ContextMenuBuilder;->showPopup(Landroid/content/Context;Landroid/view/View;FF)Lcom/android/internal/view/menu/MenuPopupHelper;

    move-result-object p1

    goto :goto_2

    .line 11
    :cond_3
    iget-object p2, p0, Lcom/smartisanos/launcher/widget/LandscapeFrameLayout;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/android/internal/view/menu/ContextMenuBuilder;->showDialog(Landroid/view/View;Landroid/os/IBinder;)Lcom/android/internal/view/menu/MenuDialogHelper;

    move-result-object p1

    :goto_2
    if-eqz p1, :cond_4

    .line 12
    iget-object p2, p0, Lcom/smartisanos/launcher/widget/LandscapeFrameLayout;->mContextMenuCallback:Lcom/smartisanos/launcher/widget/b;

    xor-int/lit8 p3, v0, 0x1

    invoke-virtual {p2, p3}, Lcom/smartisanos/launcher/widget/b;->setShowDialogForSubmenu(Z)V

    .line 13
    iget-object p2, p0, Lcom/smartisanos/launcher/widget/LandscapeFrameLayout;->mContextMenuCallback:Lcom/smartisanos/launcher/widget/b;

    invoke-interface {p1, p2}, Lcom/android/internal/view/menu/MenuHelper;->setPresenterCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 14
    :cond_4
    iget-object p2, p0, Lcom/smartisanos/launcher/widget/LandscapeFrameLayout;->ad:Lcom/smartisanos/launcher/widget/a;

    if-eqz p2, :cond_5

    .line 15
    invoke-interface {p2, v2}, Lcom/smartisanos/launcher/widget/a;->onChange(Z)V

    .line 16
    :cond_5
    iput-object p1, p0, Lcom/smartisanos/launcher/widget/LandscapeFrameLayout;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    if-eqz p1, :cond_6

    move v1, v2

    :cond_6
    return v1
.end method


# virtual methods
.method public a(Lcom/smartisanos/launcher/widget/a;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/smartisanos/launcher/widget/LandscapeFrameLayout;->ad:Lcom/smartisanos/launcher/widget/a;

    return-void
.end method

.method public closeContextMenu()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/widget/LandscapeFrameLayout;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/internal/view/menu/ContextMenuBuilder;->close()V

    .line 3
    invoke-direct {p0}, Lcom/smartisanos/launcher/widget/LandscapeFrameLayout;->Ku()V

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getRootView()Lcom/smartisanos/launcher/view/RootView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/J;->getRootView()Lcom/smartisanos/launcher/view/RootView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/RootView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onAttachedToWindow()V
    .locals 0

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    return-void
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 1

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lcom/smartisanos/launcher/widget/LandscapeFrameLayout;->a(Landroid/view/View;FF)Z

    move-result p0

    return p0
.end method

.method public showContextMenuForChild(Landroid/view/View;FF)Z
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/launcher/widget/LandscapeFrameLayout;->a(Landroid/view/View;FF)Z

    move-result p0

    return p0
.end method
