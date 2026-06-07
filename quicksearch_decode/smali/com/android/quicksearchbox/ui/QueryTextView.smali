.class public Lcom/android/quicksearchbox/ui/QueryTextView;
.super Landroid/widget/EditText;
.source "QueryTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/ui/QueryTextView$CommitCompletionListener;
    }
.end annotation


# instance fields
.field public a:Lcom/android/quicksearchbox/ui/QueryTextView$CommitCompletionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 4
    invoke-static {p0}, Lb/a/a/n1/h0;->a(Landroid/view/View;)V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/EditText;->clearComposingText()V

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/ui/QueryTextView;->setTextSelection(Z)V

    return-void
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/QueryTextView;->a()V

    .line 2
    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/QueryTextView;->a(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/QueryTextView;->a:Lcom/android/quicksearchbox/ui/QueryTextView$CommitCompletionListener;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getPosition()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/ui/QueryTextView$CommitCompletionListener;->onCommitCompletion(I)V

    :cond_0
    return-void
.end method

.method public setCommitCompletionListener(Lcom/android/quicksearchbox/ui/QueryTextView$CommitCompletionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/QueryTextView;->a:Lcom/android/quicksearchbox/ui/QueryTextView$CommitCompletionListener;

    return-void
.end method

.method public setTextSelection(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :goto_0
    return-void
.end method
