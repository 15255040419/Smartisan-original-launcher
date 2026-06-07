.class public Lcom/android/quicksearchbox/ui/SearchActivityView$e;
.super Ljava/lang/Object;
.source "SearchActivityView.java"

# interfaces
.implements Lsmartisanos/app/settings/search/EnablerObserverAndReceiverFactory$ContentChangeListenerExpand;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/ui/SearchActivityView;->T()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/ui/SearchActivityView;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/ui/SearchActivityView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$e;->a:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChange()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/android/quicksearchbox/ui/SearchActivityView$e;->onContentChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onContentChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$e;->a:Lcom/android/quicksearchbox/ui/SearchActivityView;

    iget-boolean v0, p1, Lcom/android/quicksearchbox/ui/SearchActivityView;->y:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/android/quicksearchbox/ui/SearchActivityView;->z:Lcom/android/quicksearchbox/ui/SearchActivityView$QueryListener;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object p1

    const-string p2, "/global/voice_input"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$e;->a:Lcom/android/quicksearchbox/ui/SearchActivityView;

    iget-object p1, p1, Lcom/android/quicksearchbox/ui/SearchActivityView;->z:Lcom/android/quicksearchbox/ui/SearchActivityView$QueryListener;

    invoke-interface {p1}, Lcom/android/quicksearchbox/ui/SearchActivityView$QueryListener;->onQueryChanged()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$e;->a:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->t()V

    :goto_0
    return-void
.end method
