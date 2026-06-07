.class public interface abstract Landroidx/appcompat/view/menu/MenuPresenter;
.super Ljava/lang/Object;
.source "MenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/MenuPresenter$Callback;
    }
.end annotation


# virtual methods
.method public abstract collapseItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;La/a/e/h/i;)Z
.end method

.method public abstract expandItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;La/a/e/h/i;)Z
.end method

.method public abstract flagActionItems()Z
.end method

.method public abstract getId()I
.end method

.method public abstract getMenuView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView;
.end method

.method public abstract initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V
.end method

.method public abstract onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
.end method

.method public abstract onRestoreInstanceState(Landroid/os/Parcelable;)V
.end method

.method public abstract onSaveInstanceState()Landroid/os/Parcelable;
.end method

.method public abstract onSubMenuSelected(La/a/e/h/q;)Z
.end method

.method public abstract setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V
.end method

.method public abstract updateMenuView(Z)V
.end method
