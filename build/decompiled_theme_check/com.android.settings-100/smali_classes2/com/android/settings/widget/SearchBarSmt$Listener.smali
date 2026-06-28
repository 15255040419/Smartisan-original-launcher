.class public interface abstract Lcom/android/settings/widget/SearchBarSmt$Listener;
.super Ljava/lang/Object;
.source "SearchBarSmt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/SearchBarSmt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract endSearchAnimation()V
.end method

.method public abstract hideQuickContactView()V
.end method

.method public abstract onModeChange(I)Z
.end method

.method public abstract onQueryTextChange(Ljava/lang/String;)V
.end method

.method public abstract recoverQuickBar()V
.end method

.method public abstract startSearchAnimation()V
.end method
