.class public Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionWebView$a;
.super Ljava/lang/Object;
.source "TNTSuggestionWebView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionWebView;->bindAsSuggestion(Lcom/android/quicksearchbox/Suggestion;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionWebView;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionWebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionWebView$a;->b:Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionWebView;

    iput-object p2, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionWebView$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionWebView$a;->b:Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionWebView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 2
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionWebView$a;->b:Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionWebView;

    invoke-static {p1}, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionWebView;->a(Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionWebView;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.browser.shuffler"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionWebView$a;->b:Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionWebView;

    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionWebView$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionWebView;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionWebView$a;->b:Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionWebView;

    invoke-static {v0}, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionWebView;->a(Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionWebView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionWebView$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 6
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 7
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionWebView$a;->b:Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionWebView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
