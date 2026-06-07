.class public La/a/e/h/k;
.super La/a/e/h/j;
.source "MenuItemWrapperJB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/e/h/k$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/core/internal/view/SupportMenuItem;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, La/a/e/h/j;-><init>(Landroid/content/Context;Landroidx/core/internal/view/SupportMenuItem;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ActionProvider;)La/a/e/h/j$a;
    .locals 2

    .line 1
    new-instance v0, La/a/e/h/k$a;

    iget-object v1, p0, La/a/e/h/c;->b:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, La/a/e/h/k$a;-><init>(La/a/e/h/k;Landroid/content/Context;Landroid/view/ActionProvider;)V

    return-object v0
.end method
