.class public final La/a/e/h/n;
.super Ljava/lang/Object;
.source "MenuWrapperFactory.java"


# direct methods
.method public static a(Landroid/content/Context;Landroidx/core/internal/view/SupportMenu;)Landroid/view/Menu;
    .locals 1

    .line 1
    new-instance v0, La/a/e/h/o;

    invoke-direct {v0, p0, p1}, La/a/e/h/o;-><init>(Landroid/content/Context;Landroidx/core/internal/view/SupportMenu;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroidx/core/internal/view/SupportMenuItem;)Landroid/view/MenuItem;
    .locals 2

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 3
    new-instance v0, La/a/e/h/k;

    invoke-direct {v0, p0, p1}, La/a/e/h/k;-><init>(Landroid/content/Context;Landroidx/core/internal/view/SupportMenuItem;)V

    return-object v0

    .line 4
    :cond_0
    new-instance v0, La/a/e/h/j;

    invoke-direct {v0, p0, p1}, La/a/e/h/j;-><init>(Landroid/content/Context;Landroidx/core/internal/view/SupportMenuItem;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroidx/core/internal/view/SupportSubMenu;)Landroid/view/SubMenu;
    .locals 1

    .line 5
    new-instance v0, La/a/e/h/r;

    invoke-direct {v0, p0, p1}, La/a/e/h/r;-><init>(Landroid/content/Context;Landroidx/core/internal/view/SupportSubMenu;)V

    return-object v0
.end method
