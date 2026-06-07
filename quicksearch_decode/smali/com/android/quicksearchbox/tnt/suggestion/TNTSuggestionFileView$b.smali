.class public Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView$b;
.super Ljava/lang/Object;
.source "TNTSuggestionFileView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->bindAsSuggestion(Lcom/android/quicksearchbox/Suggestion;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView$b;->a:Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView$b;->a:Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 2
    new-instance p1, Landroid/content/Intent;

    const-string v0, "bytedance.intent.action.GET_CONTENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.DEFAULT"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView$b;->a:Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;

    invoke-static {v1}, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->a(Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "*/*"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView$b;->a:Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lb/a/a/n1/q;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
