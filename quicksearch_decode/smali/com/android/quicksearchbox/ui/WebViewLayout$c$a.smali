.class public final Lcom/android/quicksearchbox/ui/WebViewLayout$c$a;
.super Ld/n/g/a/j;
.source "WebViewLayout.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld/n/g/a/d;
    c = "com.android.quicksearchbox.ui.WebViewLayout$loadWebViewDataConfig$1$2"
    f = "WebViewLayout.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/ui/WebViewLayout$c;->a(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld/n/g/a/j;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ld/j;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public e:Lkotlinx/coroutines/CoroutineScope;

.field public f:I

.field public final synthetic g:Lcom/android/quicksearchbox/ui/WebViewLayout$c;

.field public final synthetic h:Ld/q/c/g;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/ui/WebViewLayout$c;Ld/q/c/g;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quicksearchbox/ui/WebViewLayout$c$a;->g:Lcom/android/quicksearchbox/ui/WebViewLayout$c;

    iput-object p2, p0, Lcom/android/quicksearchbox/ui/WebViewLayout$c$a;->h:Ld/q/c/g;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ld/n/g/a/j;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Ld/n/f/c;->a()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcom/android/quicksearchbox/ui/WebViewLayout$c$a;->f:I

    if-nez v0, :cond_5

    invoke-static {p1}, Ld/f;->a(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/WebViewLayout$c$a;->h:Ld/q/c/g;

    iget-object p1, p1, Ld/q/c/g;->a:Ljava/lang/Object;

    check-cast p1, Lsmartisan/widget/search/data/GloableSearchConfig;

    if-eqz p1, :cond_1

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/WebViewLayout$c$a;->g:Lcom/android/quicksearchbox/ui/WebViewLayout$c;

    iget-object p1, p1, Lcom/android/quicksearchbox/ui/WebViewLayout$c;->i:Lcom/android/quicksearchbox/ui/WebViewLayout;

    invoke-static {p1}, Lcom/android/quicksearchbox/ui/WebViewLayout;->a(Lcom/android/quicksearchbox/ui/WebViewLayout;)Lsmartisan/widget/search/WebSearchViewGroup;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/quicksearchbox/ui/WebViewLayout$c$a;->h:Ld/q/c/g;

    iget-object v0, v0, Ld/q/c/g;->a:Ljava/lang/Object;

    check-cast v0, Lsmartisan/widget/search/data/GloableSearchConfig;

    invoke-virtual {p1, v0}, Lsmartisan/widget/search/WebSearchViewGroup;->setData(Landroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setupWebSearchConfig fails, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lb/a/a/n1/q;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/WebViewLayout$c$a;->h:Ld/q/c/g;

    iget-object p1, p1, Ld/q/c/g;->a:Ljava/lang/Object;

    check-cast p1, Lsmartisan/widget/search/data/GloableSearchConfig;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lsmartisan/widget/search/data/GloableSearchConfig;->b()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_2

    const-string p1, "Use default web search config"

    .line 6
    invoke-static {p1}, Lb/a/a/n1/q;->c(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/WebViewLayout$c$a;->g:Lcom/android/quicksearchbox/ui/WebViewLayout$c;

    iget-object p1, p1, Lcom/android/quicksearchbox/ui/WebViewLayout$c;->i:Lcom/android/quicksearchbox/ui/WebViewLayout;

    invoke-static {p1}, Lcom/android/quicksearchbox/ui/WebViewLayout;->a(Lcom/android/quicksearchbox/ui/WebViewLayout;)Lsmartisan/widget/search/WebSearchViewGroup;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/quicksearchbox/ui/WebViewLayout$c$a;->g:Lcom/android/quicksearchbox/ui/WebViewLayout$c;

    iget-object v0, v0, Lcom/android/quicksearchbox/ui/WebViewLayout$c;->i:Lcom/android/quicksearchbox/ui/WebViewLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/n1/i0;->a(Landroid/content/Context;)Lsmartisan/widget/search/data/GloableSearchConfig;

    move-result-object v0

    invoke-virtual {p1, v0}, Lsmartisan/widget/search/WebSearchViewGroup;->setData(Landroid/os/Parcelable;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Ld/q/c/d;->a()V

    const/4 p1, 0x0

    throw p1

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/WebViewLayout$c$a;->g:Lcom/android/quicksearchbox/ui/WebViewLayout$c;

    iget-object p1, p1, Lcom/android/quicksearchbox/ui/WebViewLayout$c;->i:Lcom/android/quicksearchbox/ui/WebViewLayout;

    invoke-static {p1}, Lcom/android/quicksearchbox/ui/WebViewLayout;->a(Lcom/android/quicksearchbox/ui/WebViewLayout;)Lsmartisan/widget/search/WebSearchViewGroup;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/quicksearchbox/ui/WebViewLayout$c$a;->g:Lcom/android/quicksearchbox/ui/WebViewLayout$c;

    iget-object v0, v0, Lcom/android/quicksearchbox/ui/WebViewLayout$c;->i:Lcom/android/quicksearchbox/ui/WebViewLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/n1/i0;->a(Landroid/content/Context;)Lsmartisan/widget/search/data/GloableSearchConfig;

    move-result-object v0

    invoke-virtual {p1, v0}, Lsmartisan/widget/search/WebSearchViewGroup;->setData(Landroid/os/Parcelable;)V

    .line 10
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/WebViewLayout$c$a;->g:Lcom/android/quicksearchbox/ui/WebViewLayout$c;

    iget-object p1, p1, Lcom/android/quicksearchbox/ui/WebViewLayout$c;->i:Lcom/android/quicksearchbox/ui/WebViewLayout;

    invoke-static {p1}, Lcom/android/quicksearchbox/ui/WebViewLayout;->a(Lcom/android/quicksearchbox/ui/WebViewLayout;)Lsmartisan/widget/search/WebSearchViewGroup;

    move-result-object p1

    if-nez p1, :cond_3

    .line 11
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/WebViewLayout$c$a;->g:Lcom/android/quicksearchbox/ui/WebViewLayout$c;

    iget-object p1, p1, Lcom/android/quicksearchbox/ui/WebViewLayout$c;->i:Lcom/android/quicksearchbox/ui/WebViewLayout;

    invoke-static {p1}, Lcom/android/quicksearchbox/ui/WebViewLayout;->c(Lcom/android/quicksearchbox/ui/WebViewLayout;)Lsmartisan/widget/search/WebSearchViewGroup;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/quicksearchbox/ui/WebViewLayout;->a(Lcom/android/quicksearchbox/ui/WebViewLayout;Lsmartisan/widget/search/WebSearchViewGroup;)V

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/WebViewLayout$c$a;->g:Lcom/android/quicksearchbox/ui/WebViewLayout$c;

    iget-object p1, p1, Lcom/android/quicksearchbox/ui/WebViewLayout$c;->i:Lcom/android/quicksearchbox/ui/WebViewLayout;

    invoke-static {p1}, Lcom/android/quicksearchbox/ui/WebViewLayout;->a(Lcom/android/quicksearchbox/ui/WebViewLayout;)Lsmartisan/widget/search/WebSearchViewGroup;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lsmartisan/widget/search/WebSearchViewGroup;->h()V

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/WebViewLayout$c$a;->g:Lcom/android/quicksearchbox/ui/WebViewLayout$c;

    iget-object v0, p1, Lcom/android/quicksearchbox/ui/WebViewLayout$c;->i:Lcom/android/quicksearchbox/ui/WebViewLayout;

    iget-object p1, p1, Lcom/android/quicksearchbox/ui/WebViewLayout$c;->j:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/ui/WebViewLayout;->b(Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/WebViewLayout$c$a;->g:Lcom/android/quicksearchbox/ui/WebViewLayout$c;

    iget-object p1, p1, Lcom/android/quicksearchbox/ui/WebViewLayout$c;->i:Lcom/android/quicksearchbox/ui/WebViewLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 15
    sget-object p1, Ld/j;->a:Ld/j;

    return-object p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Ld/j;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/quicksearchbox/ui/WebViewLayout$c$a;

    iget-object v1, p0, Lcom/android/quicksearchbox/ui/WebViewLayout$c$a;->g:Lcom/android/quicksearchbox/ui/WebViewLayout$c;

    iget-object v2, p0, Lcom/android/quicksearchbox/ui/WebViewLayout$c$a;->h:Ld/q/c/g;

    invoke-direct {v0, v1, v2, p2}, Lcom/android/quicksearchbox/ui/WebViewLayout$c$a;-><init>(Lcom/android/quicksearchbox/ui/WebViewLayout$c;Ld/q/c/g;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lcom/android/quicksearchbox/ui/WebViewLayout$c$a;->e:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/quicksearchbox/ui/WebViewLayout$c$a;->a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/android/quicksearchbox/ui/WebViewLayout$c$a;

    sget-object p2, Ld/j;->a:Ld/j;

    invoke-virtual {p1, p2}, Lcom/android/quicksearchbox/ui/WebViewLayout$c$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
