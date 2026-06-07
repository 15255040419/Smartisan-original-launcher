.class public final Lcom/android/quicksearchbox/ui/WebViewLayout$b;
.super Lsmartisan/widget/search/WebSearchViewGroup$d;
.source "WebViewLayout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/ui/WebViewLayout;->a()Lsmartisan/widget/search/WebSearchViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/ui/WebViewLayout;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/ui/WebViewLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/WebViewLayout$b;->a:Lcom/android/quicksearchbox/ui/WebViewLayout;

    invoke-direct {p0}, Lsmartisan/widget/search/WebSearchViewGroup$d;-><init>()V

    return-void
.end method


# virtual methods
.method public onBrowserClick()V
    .locals 1

    .line 1
    invoke-super {p0}, Lsmartisan/widget/search/WebSearchViewGroup$d;->onBrowserClick()V

    const-string v0, "A170026"

    .line 2
    invoke-static {v0}, Lb/a/a/n1/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onLoadUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lsmartisan/widget/search/WebSearchViewGroup$d;->onLoadUrl(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lb/a/a/n1/d$u;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onPageFinishedSuccess()V
    .locals 0

    .line 1
    invoke-super {p0}, Lsmartisan/widget/search/WebSearchViewGroup$d;->onPageFinishedSuccess()V

    .line 2
    invoke-static {}, Lb/a/a/n1/d$u;->b()V

    return-void
.end method

.method public onPageFirstStart(Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lsmartisan/widget/search/WebSearchViewGroup$d;->onPageFirstStart(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lb/a/a/n1/d$u;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onRefreshClick()V
    .locals 3

    .line 1
    invoke-super {p0}, Lsmartisan/widget/search/WebSearchViewGroup$d;->onRefreshClick()V

    const-string v0, "A170025"

    .line 2
    invoke-static {v0}, Lb/a/a/n1/d;->a(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/WebViewLayout$b;->a:Lcom/android/quicksearchbox/ui/WebViewLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/n1/h0;->k(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "A170075"

    const-string v2, "break_network_status"

    .line 4
    invoke-static {v1, v2, v0}, Lb/a/a/n1/d$h;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
