.class public Lcom/android/quicksearchbox/SearchActivity$p;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Lcom/android/quicksearchbox/ui/SearchActivityView$QueryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/SearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/SearchActivity;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/SearchActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/SearchActivity$p;->a:Lcom/android/quicksearchbox/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryChanged()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lsmartisanos/app/settings/search/SettingsEnabler;->setConfirm(Z)V

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity$p;->a:Lcom/android/quicksearchbox/SearchActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/quicksearchbox/SearchActivity;->a(Lcom/android/quicksearchbox/SearchActivity;Z)V

    return-void
.end method
