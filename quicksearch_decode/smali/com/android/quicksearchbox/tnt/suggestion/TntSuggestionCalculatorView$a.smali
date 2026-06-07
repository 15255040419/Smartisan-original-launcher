.class public Lcom/android/quicksearchbox/tnt/suggestion/TntSuggestionCalculatorView$a;
.super Ljava/lang/Object;
.source "TntSuggestionCalculatorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/tnt/suggestion/TntSuggestionCalculatorView;->bindAsSuggestion(Lcom/android/quicksearchbox/Suggestion;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/Suggestion;

.field public final synthetic b:Landroid/content/ClipboardManager;

.field public final synthetic c:Landroid/content/ClipData;

.field public final synthetic d:Lcom/android/quicksearchbox/tnt/suggestion/TntSuggestionCalculatorView;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/tnt/suggestion/TntSuggestionCalculatorView;Lcom/android/quicksearchbox/Suggestion;Landroid/content/ClipboardManager;Landroid/content/ClipData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TntSuggestionCalculatorView$a;->d:Lcom/android/quicksearchbox/tnt/suggestion/TntSuggestionCalculatorView;

    iput-object p2, p0, Lcom/android/quicksearchbox/tnt/suggestion/TntSuggestionCalculatorView$a;->a:Lcom/android/quicksearchbox/Suggestion;

    iput-object p3, p0, Lcom/android/quicksearchbox/tnt/suggestion/TntSuggestionCalculatorView$a;->b:Landroid/content/ClipboardManager;

    iput-object p4, p0, Lcom/android/quicksearchbox/tnt/suggestion/TntSuggestionCalculatorView$a;->c:Landroid/content/ClipData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TntSuggestionCalculatorView$a;->a:Lcom/android/quicksearchbox/Suggestion;

    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionText1()Ljava/lang/String;

    move-result-object p1

    const-string v0, "..."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TntSuggestionCalculatorView$a;->b:Landroid/content/ClipboardManager;

    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/suggestion/TntSuggestionCalculatorView$a;->c:Landroid/content/ClipData;

    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 3
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TntSuggestionCalculatorView$a;->d:Lcom/android/quicksearchbox/tnt/suggestion/TntSuggestionCalculatorView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f10008f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lb/a/a/n1/g0;->a(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/suggestion/TntSuggestionCalculatorView$a;->d:Lcom/android/quicksearchbox/tnt/suggestion/TntSuggestionCalculatorView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
