.class public final synthetic Lb/a/a/m1/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/quicksearchbox/ui/WebViewLayout$WebSearchViewInitDelegate;


# instance fields
.field private final synthetic a:Lcom/android/quicksearchbox/ui/SearchActivityView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quicksearchbox/ui/SearchActivityView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/a/m1/a;->a:Lcom/android/quicksearchbox/ui/SearchActivityView;

    return-void
.end method


# virtual methods
.method public final initWebSearchView(Lsmartisan/widget/search/WebSearchViewGroup;Lsmartisan/widget/search/WebSearchViewGroup$d;)V
    .locals 1

    iget-object v0, p0, Lb/a/a/m1/a;->a:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0, p1, p2}, Lcom/android/quicksearchbox/ui/SearchActivityView;->a(Lsmartisan/widget/search/WebSearchViewGroup;Lsmartisan/widget/search/WebSearchViewGroup$d;)V

    return-void
.end method
