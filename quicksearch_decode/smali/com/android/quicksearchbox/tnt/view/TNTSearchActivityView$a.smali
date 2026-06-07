.class public final Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$a;
.super Ljava/lang/Object;
.source "TNTSearchActivityView.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$a;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7

    const-string v0, "s"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$a;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    sget v1, Lcom/smartisanos/quicksearch/R$id;->btn_setting:I

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$a;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07047d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    move v4, v0

    :goto_0
    if-gt v0, v3, :cond_5

    if-nez v4, :cond_0

    move v5, v0

    goto :goto_1

    :cond_0
    move v5, v3

    .line 4
    :goto_1
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-gt v5, v6, :cond_1

    move v5, v1

    goto :goto_2

    :cond_1
    move v5, v2

    :goto_2
    if-nez v4, :cond_3

    if-nez v5, :cond_2

    move v4, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_5
    :goto_3
    add-int/2addr v3, v1

    .line 5
    invoke-interface {p1, v0, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_6

    goto :goto_4

    :cond_6
    move v1, v2

    .line 8
    :goto_4
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$a;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    invoke-static {p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->b(Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;)Z

    move-result p1

    const-string v0, "search_editor"

    if-eq v1, p1, :cond_7

    .line 9
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$a;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    sget v3, Lcom/smartisanos/quicksearch/R$id;->search_editor:I

    invoke-virtual {p1, v3}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-static {p1, v0}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$a;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "context"

    invoke-static {v3, v4}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10015f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$a;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    invoke-static {p1, v1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->b(Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;Z)V

    .line 11
    :cond_7
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$a;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    invoke-static {p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->e(Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 12
    sget-object p1, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->r:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$b;

    if-eqz v1, :cond_8

    const-wide/16 v3, 0x0

    goto :goto_5

    .line 13
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 14
    :goto_5
    invoke-virtual {p1, v3, v4}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$b;->a(J)V

    .line 15
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$a;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->getMQueryListener()Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$QueryListener;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-interface {p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$QueryListener;->onQueryChanged()V

    :cond_9
    if-nez v1, :cond_c

    .line 16
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$a;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    sget v1, Lcom/smartisanos/quicksearch/R$id;->tnt_search_content:I

    invoke-virtual {p1, v1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;

    const-string v1, "tnt_search_content"

    invoke-static {p1, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 17
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$a;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    sget v1, Lcom/smartisanos/quicksearch/R$id;->search_dialog_bg:I

    invoke-virtual {p1, v1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisan/widget/RoundedRectLinearLayout;

    const-string v1, "search_dialog_bg"

    invoke-static {p1, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v1, -0x2

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 18
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$a;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    invoke-static {p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->c(Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;)Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;

    move-result-object p1

    const/16 v1, 0x8

    if-eqz p1, :cond_a

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 19
    :cond_a
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$a;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    sget v2, Lcom/smartisanos/quicksearch/R$id;->search_editor:I

    invoke-virtual {p1, v2}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-static {p1, v0}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 20
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$a;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    sget v2, Lcom/smartisanos/quicksearch/R$id;->search_editor:I

    invoke-virtual {p1, v2}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-static {p1, v0}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getMaxWidth()I

    move-result p1

    const v2, 0x7fffffff

    if-eq p1, v2, :cond_b

    .line 21
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$a;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    sget v3, Lcom/smartisanos/quicksearch/R$id;->search_editor:I

    invoke-virtual {p1, v3}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-static {p1, v0}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$a;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    sget v3, Lcom/smartisanos/quicksearch/R$id;->search_editor:I

    invoke-virtual {p1, v3}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-static {p1, v0}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setMaxWidth(I)V

    .line 23
    :cond_b
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$a;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    sget v0, Lcom/smartisanos/quicksearch/R$id;->tv_search_calculator_result:I

    invoke-virtual {p1, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "tv_search_calculator_result"

    invoke-static {p1, v0}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_c
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const-string p2, "s"

    invoke-static {p1, p2}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const-string p2, "s"

    invoke-static {p1, p2}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
