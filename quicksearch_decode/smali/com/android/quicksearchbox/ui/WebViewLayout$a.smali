.class public final Lcom/android/quicksearchbox/ui/WebViewLayout$a;
.super Ljava/lang/Object;
.source "WebViewLayout.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    iput-object p1, p0, Lcom/android/quicksearchbox/ui/WebViewLayout$a;->a:Lcom/android/quicksearchbox/ui/WebViewLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/WebViewLayout$a;->a:Lcom/android/quicksearchbox/ui/WebViewLayout;

    invoke-static {p1}, Lcom/android/quicksearchbox/ui/WebViewLayout;->b(Lcom/android/quicksearchbox/ui/WebViewLayout;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/WebViewLayout$a;->a:Lcom/android/quicksearchbox/ui/WebViewLayout;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/quicksearchbox/ui/WebViewLayout;->a(Lcom/android/quicksearchbox/ui/WebViewLayout;Z)V

    const-string p1, "A170076"

    .line 3
    invoke-static {p1}, Lb/a/a/n1/d;->a(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
