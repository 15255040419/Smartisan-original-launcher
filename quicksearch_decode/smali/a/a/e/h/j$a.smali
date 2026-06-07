.class public La/a/e/h/j$a;
.super Landroidx/core/view/ActionProvider;
.source "MenuItemWrapperICS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/e/h/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final c:Landroid/view/ActionProvider;

.field public final synthetic d:La/a/e/h/j;


# direct methods
.method public constructor <init>(La/a/e/h/j;Landroid/content/Context;Landroid/view/ActionProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/a/e/h/j$a;->d:La/a/e/h/j;

    .line 2
    invoke-direct {p0, p2}, Landroidx/core/view/ActionProvider;-><init>(Landroid/content/Context;)V

    .line 3
    iput-object p3, p0, La/a/e/h/j$a;->c:Landroid/view/ActionProvider;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/SubMenu;)V
    .locals 2

    .line 2
    iget-object v0, p0, La/a/e/h/j$a;->c:Landroid/view/ActionProvider;

    iget-object v1, p0, La/a/e/h/j$a;->d:La/a/e/h/j;

    invoke-virtual {v1, p1}, La/a/e/h/c;->a(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, La/a/e/h/j$a;->c:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->hasSubMenu()Z

    move-result v0

    return v0
.end method

.method public c()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, La/a/e/h/j$a;->c:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->onCreateActionView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, La/a/e/h/j$a;->c:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->onPerformDefaultAction()Z

    move-result v0

    return v0
.end method
