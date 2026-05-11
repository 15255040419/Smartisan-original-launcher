.class public final Landroid/support/v4/view/MenuCompat;
.super Ljava/lang/Object;
.source "MenuCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setGroupDividerEnabled(Landroid/view/Menu;Z)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Landroid/support/v4/internal/view/SupportMenu;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Landroid/support/v4/internal/view/SupportMenu;

    invoke-interface {p0, p1}, Landroid/support/v4/internal/view/SupportMenu;->setGroupDividerEnabled(Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastP()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {p0, p1}, Landroid/view/Menu;->setGroupDividerEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setShowAsAction(Landroid/view/MenuItem;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method
