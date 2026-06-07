.class public La/a/e/h/k$a;
.super La/a/e/h/j$a;
.source "MenuItemWrapperJB.java"

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/e/h/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public e:Landroidx/core/view/ActionProvider$VisibilityListener;


# direct methods
.method public constructor <init>(La/a/e/h/k;Landroid/content/Context;Landroid/view/ActionProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, La/a/e/h/j$a;-><init>(La/a/e/h/j;Landroid/content/Context;Landroid/view/ActionProvider;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, La/a/e/h/j$a;->c:Landroid/view/ActionProvider;

    invoke-virtual {v0, p1}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroidx/core/view/ActionProvider$VisibilityListener;)V
    .locals 1

    .line 2
    iput-object p1, p0, La/a/e/h/k$a;->e:Landroidx/core/view/ActionProvider$VisibilityListener;

    .line 3
    iget-object v0, p0, La/a/e/h/j$a;->c:Landroid/view/ActionProvider;

    if-eqz p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/ActionProvider;->setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, La/a/e/h/j$a;->c:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->isVisible()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, La/a/e/h/j$a;->c:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->overridesItemVisibility()Z

    move-result v0

    return v0
.end method

.method public onActionProviderVisibilityChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, La/a/e/h/k$a;->e:Landroidx/core/view/ActionProvider$VisibilityListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroidx/core/view/ActionProvider$VisibilityListener;->onActionProviderVisibilityChanged(Z)V

    :cond_0
    return-void
.end method
