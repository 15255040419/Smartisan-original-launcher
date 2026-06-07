.class public final Lcom/android/quicksearchbox/ui/WebViewLayout;
.super Landroid/widget/FrameLayout;
.source "WebViewLayout.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/ui/WebViewLayout$WebSearchViewInitDelegate;
    }
.end annotation


# instance fields
.field public a:Lsmartisan/widget/search/WebSearchViewGroup;

.field public b:Z

.field public c:Lcom/android/quicksearchbox/ui/WebViewLayout$WebSearchViewInitDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/quicksearchbox/ui/WebViewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILd/q/c/c;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/quicksearchbox/ui/WebViewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILd/q/c/c;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILd/q/c/c;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/quicksearchbox/ui/WebViewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic a(Lcom/android/quicksearchbox/ui/WebViewLayout;)Lsmartisan/widget/search/WebSearchViewGroup;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/quicksearchbox/ui/WebViewLayout;->a:Lsmartisan/widget/search/WebSearchViewGroup;

    return-object p0
.end method

.method public static final synthetic a(Lcom/android/quicksearchbox/ui/WebViewLayout;Landroid/os/Parcelable;)Lsmartisan/widget/search/data/GloableSearchConfig;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/ui/WebViewLayout;->a(Landroid/os/Parcelable;)Lsmartisan/widget/search/data/GloableSearchConfig;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lcom/android/quicksearchbox/ui/WebViewLayout;Lsmartisan/widget/search/WebSearchViewGroup;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/WebViewLayout;->a:Lsmartisan/widget/search/WebSearchViewGroup;

    return-void
.end method

.method public static final synthetic a(Lcom/android/quicksearchbox/ui/WebViewLayout;Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/android/quicksearchbox/ui/WebViewLayout;->b:Z

    return-void
.end method

.method public static final synthetic b(Lcom/android/quicksearchbox/ui/WebViewLayout;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/quicksearchbox/ui/WebViewLayout;->b:Z

    return p0
.end method

.method public static final synthetic c(Lcom/android/quicksearchbox/ui/WebViewLayout;)Lsmartisan/widget/search/WebSearchViewGroup;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/WebViewLayout;->a()Lsmartisan/widget/search/WebSearchViewGroup;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lsmartisan/widget/search/WebSearchViewGroup;
    .locals 4

    const v0, 0x7f080263

    .line 22
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lsmartisan/widget/search/WebSearchViewGroup;

    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Lsmartisan/widget/search/WebSearchViewGroup;->setAutoFinishAfterSetting(Z)V

    .line 24
    invoke-virtual {v0, v1}, Lsmartisan/widget/search/WebSearchViewGroup;->setAutoFinishAfterGoBrowser(Z)V

    const/4 v2, 0x1

    .line 25
    invoke-virtual {v0, v2}, Lsmartisan/widget/search/WebSearchViewGroup;->setRecordCheckedIndex(Z)V

    .line 26
    invoke-virtual {v0}, Lsmartisan/widget/search/WebSearchViewGroup;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    new-instance v3, Lcom/android/quicksearchbox/ui/WebViewLayout$a;

    invoke-direct {v3, p0}, Lcom/android/quicksearchbox/ui/WebViewLayout$a;-><init>(Lcom/android/quicksearchbox/ui/WebViewLayout;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 27
    new-instance v2, Lcom/android/quicksearchbox/ui/WebViewLayout$b;

    invoke-direct {v2, p0}, Lcom/android/quicksearchbox/ui/WebViewLayout$b;-><init>(Lcom/android/quicksearchbox/ui/WebViewLayout;)V

    .line 28
    iget-object v3, p0, Lcom/android/quicksearchbox/ui/WebViewLayout;->c:Lcom/android/quicksearchbox/ui/WebViewLayout$WebSearchViewInitDelegate;

    if-eqz v3, :cond_0

    invoke-interface {v3, v0, v2}, Lcom/android/quicksearchbox/ui/WebViewLayout$WebSearchViewInitDelegate;->initWebSearchView(Lsmartisan/widget/search/WebSearchViewGroup;Lsmartisan/widget/search/WebSearchViewGroup$d;)V

    .line 29
    invoke-virtual {v0, v1}, Lsmartisan/widget/search/WebSearchViewGroup;->setProgressValue(I)V

    return-object v0

    :cond_0
    const-string v0, "webViewInitDelegate"

    .line 30
    invoke-static {v0}, Ld/q/c/d;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    .line 31
    :cond_1
    new-instance v0, Ld/h;

    const-string v1, "null cannot be cast to non-null type smartisan.widget.search.WebSearchViewGroup"

    invoke-direct {v0, v1}, Ld/h;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Landroid/os/Parcelable;)Lsmartisan/widget/search/data/GloableSearchConfig;
    .locals 2

    .line 17
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 18
    :try_start_1
    invoke-interface {p1, v0, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 20
    sget-object p1, Lsmartisan/widget/search/data/GloableSearchConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsmartisan/widget/search/data/GloableSearchConfig;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :cond_1
    throw p1
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/WebViewLayout;->a:Lsmartisan/widget/search/WebSearchViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lsmartisan/widget/search/WebSearchViewGroup;->a(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 7

    .line 15
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/WebViewLayout;->a:Lsmartisan/widget/search/WebSearchViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 16
    :cond_0
    invoke-static {}, Le/a/n0;->a()Le/a/v;

    move-result-object v0

    invoke-static {v0}, Le/a/a0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcom/android/quicksearchbox/ui/WebViewLayout$c;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/android/quicksearchbox/ui/WebViewLayout$c;-><init>(Lcom/android/quicksearchbox/ui/WebViewLayout;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Le/a/d;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Le/a/c0;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final a(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/WebViewLayout;->a:Lsmartisan/widget/search/WebSearchViewGroup;

    if-nez p1, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/WebViewLayout;->a()Lsmartisan/widget/search/WebSearchViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quicksearchbox/ui/WebViewLayout;->a:Lsmartisan/widget/search/WebSearchViewGroup;

    .line 8
    invoke-virtual {p0, p2}, Lcom/android/quicksearchbox/ui/WebViewLayout;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 10
    invoke-virtual {p0, p2}, Lcom/android/quicksearchbox/ui/WebViewLayout;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/WebViewLayout;->a:Lsmartisan/widget/search/WebSearchViewGroup;

    if-eqz p1, :cond_2

    const-string p2, ""

    .line 13
    invoke-virtual {p1, p2}, Lsmartisan/widget/search/WebSearchViewGroup;->setSearchTextTitle(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Lsmartisan/widget/search/WebSearchViewGroup;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/WebViewLayout;->a:Lsmartisan/widget/search/WebSearchViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsmartisan/widget/search/WebSearchViewGroup;->f()V

    :cond_0
    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/WebViewLayout;->a:Lsmartisan/widget/search/WebSearchViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lsmartisan/widget/search/WebSearchViewGroup;->b(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/WebViewLayout;->a:Lsmartisan/widget/search/WebSearchViewGroup;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lsmartisan/widget/search/WebSearchViewGroup;->getSearchText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Lsmartisan/widget/search/WebSearchViewGroup;->setSearchText(Ljava/lang/String;)V

    .line 7
    :cond_0
    invoke-virtual {v0}, Lsmartisan/widget/search/WebSearchViewGroup;->getTitle()Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x7f1001be

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/WebViewLayout;->a:Lsmartisan/widget/search/WebSearchViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsmartisan/widget/search/WebSearchViewGroup;->g()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/WebViewLayout;->a:Lsmartisan/widget/search/WebSearchViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lsmartisan/widget/search/WebSearchViewGroup;->j()V

    :cond_1
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/WebViewLayout;->a:Lsmartisan/widget/search/WebSearchViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsmartisan/widget/search/WebSearchViewGroup;->h()V

    :cond_0
    return-void
.end method

.method public final setWebSearchViewDelegate(Lcom/android/quicksearchbox/ui/WebViewLayout$WebSearchViewInitDelegate;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/WebViewLayout;->c:Lcom/android/quicksearchbox/ui/WebViewLayout$WebSearchViewInitDelegate;

    return-void
.end method
