.class public final Lcom/android/quicksearchbox/ui/WebViewLayout$c;
.super Ld/n/g/a/j;
.source "WebViewLayout.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld/n/g/a/d;
    c = "com.android.quicksearchbox.ui.WebViewLayout$loadWebViewDataConfig$1"
    f = "WebViewLayout.kt"
    l = {
        0x64
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/ui/WebViewLayout;->a(Ljava/lang/String;)V
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

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:I

.field public final synthetic i:Lcom/android/quicksearchbox/ui/WebViewLayout;

.field public final synthetic j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/ui/WebViewLayout;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quicksearchbox/ui/WebViewLayout$c;->i:Lcom/android/quicksearchbox/ui/WebViewLayout;

    iput-object p2, p0, Lcom/android/quicksearchbox/ui/WebViewLayout$c;->j:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ld/n/g/a/j;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Ld/n/f/c;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/android/quicksearchbox/ui/WebViewLayout$c;->h:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/android/quicksearchbox/ui/WebViewLayout$c;->g:Ljava/lang/Object;

    check-cast v0, Ld/q/c/g;

    iget-object v0, p0, Lcom/android/quicksearchbox/ui/WebViewLayout$c;->f:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Ld/f;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Ld/f;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/quicksearchbox/ui/WebViewLayout$c;->e:Lkotlinx/coroutines/CoroutineScope;

    .line 4
    new-instance v1, Ld/q/c/g;

    invoke-direct {v1}, Ld/q/c/g;-><init>()V

    const/4 v3, 0x0

    iput-object v3, v1, Ld/q/c/g;->a:Ljava/lang/Object;

    .line 5
    :try_start_0
    iget-object v4, p0, Lcom/android/quicksearchbox/ui/WebViewLayout$c;->i:Lcom/android/quicksearchbox/ui/WebViewLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "context"

    invoke-static {v4, v5}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lb/a/a/n1/j;->a:Landroid/net/Uri;

    const-string v6, "getConfig"

    invoke-virtual {v4, v5, v6, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v5, "config"

    .line 6
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 7
    iget-object v5, p0, Lcom/android/quicksearchbox/ui/WebViewLayout$c;->i:Lcom/android/quicksearchbox/ui/WebViewLayout;

    invoke-static {v5, v4}, Lcom/android/quicksearchbox/ui/WebViewLayout;->a(Lcom/android/quicksearchbox/ui/WebViewLayout;Landroid/os/Parcelable;)Lsmartisan/widget/search/data/GloableSearchConfig;

    move-result-object v4

    iput-object v4, v1, Ld/q/c/g;->a:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 8
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lb/a/a/n1/q;->d(Ljava/lang/String;)V

    .line 9
    iget-object v4, p0, Lcom/android/quicksearchbox/ui/WebViewLayout$c;->i:Lcom/android/quicksearchbox/ui/WebViewLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lb/a/a/n1/i0;->a(Landroid/content/Context;)Lsmartisan/widget/search/data/GloableSearchConfig;

    move-result-object v4

    iput-object v4, v1, Ld/q/c/g;->a:Ljava/lang/Object;

    .line 10
    :cond_2
    :goto_0
    invoke-static {}, Le/a/n0;->b()Le/a/k1;

    move-result-object v4

    new-instance v5, Lcom/android/quicksearchbox/ui/WebViewLayout$c$a;

    invoke-direct {v5, p0, v1, v3}, Lcom/android/quicksearchbox/ui/WebViewLayout$c$a;-><init>(Lcom/android/quicksearchbox/ui/WebViewLayout$c;Ld/q/c/g;Lkotlin/coroutines/Continuation;)V

    iput-object p1, p0, Lcom/android/quicksearchbox/ui/WebViewLayout$c;->f:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/quicksearchbox/ui/WebViewLayout$c;->g:Ljava/lang/Object;

    iput v2, p0, Lcom/android/quicksearchbox/ui/WebViewLayout$c;->h:I

    invoke-static {v4, v5, p0}, Le/a/d;->a(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 11
    :cond_3
    :goto_1
    sget-object p1, Ld/j;->a:Ld/j;

    return-object p1
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

    new-instance v0, Lcom/android/quicksearchbox/ui/WebViewLayout$c;

    iget-object v1, p0, Lcom/android/quicksearchbox/ui/WebViewLayout$c;->i:Lcom/android/quicksearchbox/ui/WebViewLayout;

    iget-object v2, p0, Lcom/android/quicksearchbox/ui/WebViewLayout$c;->j:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lcom/android/quicksearchbox/ui/WebViewLayout$c;-><init>(Lcom/android/quicksearchbox/ui/WebViewLayout;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lcom/android/quicksearchbox/ui/WebViewLayout$c;->e:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/quicksearchbox/ui/WebViewLayout$c;->a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/android/quicksearchbox/ui/WebViewLayout$c;

    sget-object p2, Ld/j;->a:Ld/j;

    invoke-virtual {p1, p2}, Lcom/android/quicksearchbox/ui/WebViewLayout$c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
