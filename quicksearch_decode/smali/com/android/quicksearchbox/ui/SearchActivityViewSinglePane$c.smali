.class public Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane$c;
.super Ljava/lang/Object;
.source "SearchActivityViewSinglePane.java"

# interfaces
.implements Lsmartisan/widget/SearchBar$OnCommitCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;->setSuggestionClickListener(Lcom/android/quicksearchbox/ui/SuggestionClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane$c;->a:Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane$c;->a:Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;

    iget-object v0, v0, Lcom/android/quicksearchbox/ui/SearchActivityView;->b:Lsmartisan/widget/SearchBar;

    invoke-static {v0}, Lb/a/a/n1/h0;->a(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane$c;->a:Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;

    iget-object v0, v0, Lcom/android/quicksearchbox/ui/SearchActivityView;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearComposingText()V

    .line 3
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane$c;->a:Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;

    iget-object v0, v0, Lcom/android/quicksearchbox/ui/SearchActivityView;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane$c;->a:Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;

    iget-object v0, v0, Lcom/android/quicksearchbox/ui/SearchActivityView;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 5
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane$c;->a:Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;

    iget-object v0, v0, Lcom/android/quicksearchbox/ui/SearchActivityView;->g:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getPosition()I

    move-result p1

    int-to-long v1, p1

    const/4 p1, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->onSuggestionClicked(Landroid/view/View;J)V

    return-void
.end method
