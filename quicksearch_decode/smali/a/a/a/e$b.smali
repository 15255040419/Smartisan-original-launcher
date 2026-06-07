.class public final La/a/a/e$b;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:La/a/a/e;


# direct methods
.method public constructor <init>(La/a/a/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/a/a/e$b;->a:La/a/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onMenuModeChange(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 4

    .line 1
    iget-object v0, p0, La/a/a/e$b;->a:La/a/a/e;

    iget-object v1, v0, La/a/a/e;->b:Landroid/view/Window$Callback;

    if-eqz v1, :cond_1

    .line 2
    iget-object v0, v0, La/a/a/e;->a:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->isOverflowMenuShowing()Z

    move-result v0

    const/16 v1, 0x6c

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, La/a/a/e$b;->a:La/a/a/e;

    iget-object v0, v0, La/a/a/e;->b:Landroid/view/Window$Callback;

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, La/a/a/e$b;->a:La/a/a/e;

    iget-object v0, v0, La/a/a/e;->b:Landroid/view/Window$Callback;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, p1}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, La/a/a/e$b;->a:La/a/a/e;

    iget-object v0, v0, La/a/a/e;->b:Landroid/view/Window$Callback;

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_1
    :goto_0
    return-void
.end method
