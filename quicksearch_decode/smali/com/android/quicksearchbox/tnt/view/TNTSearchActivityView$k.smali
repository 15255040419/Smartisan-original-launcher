.class public final Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$k;
.super Ljava/lang/Object;
.source "TNTSearchActivityView.kt"

# interfaces
.implements Lsmartisanos/app/settings/search/EnablerObserverAndReceiverFactory$ContentChangeListenerExpand;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$k;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChange()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$k;->onContentChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onContentChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$k;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    invoke-static {p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->e(Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$k;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->getMQueryListener()Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$QueryListener;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object p1

    const-string p2, "/global/voice_input"

    invoke-static {p2, p1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$k;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->getMQueryListener()Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$QueryListener;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$QueryListener;->onQueryChanged()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$k;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    sget p2, Lcom/smartisanos/quicksearch/R$id;->tnt_search_content:I

    invoke-virtual {p1, p2}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->h()V

    :cond_1
    :goto_0
    return-void
.end method
