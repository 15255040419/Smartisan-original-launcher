.class public final Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$f;
.super Ljava/lang/Object;
.source "TNTSearchActivityView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$f;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$f;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    invoke-static {p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->c(Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;)Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;

    move-result-object p1

    const-string v0, "search_editor"

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez p1, :cond_3

    .line 2
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$f;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    const v3, 0x7f08023e

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    check-cast v3, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;

    invoke-static {p1, v3}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;)V

    .line 3
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$f;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    invoke-static {p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->c(Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;)Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$f;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    sget v4, Lcom/smartisanos/quicksearch/R$id;->search_editor:I

    invoke-virtual {v3, v4}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-static {v3, v0}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->setSearchEditor(Landroid/widget/EditText;)V

    .line 4
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$f;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    invoke-static {p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->c(Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;)Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ld/q/c/d;->a()V

    throw v2

    .line 5
    :cond_1
    invoke-static {}, Ld/q/c/d;->a()V

    throw v2

    .line 6
    :cond_2
    new-instance p1, Ld/h;

    const-string v0, "null cannot be cast to non-null type com.android.quicksearchbox.tnt.view.TNTSearchSettingView"

    invoke-direct {p1, v0}, Ld/h;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$f;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    invoke-static {p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->c(Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;)Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isShown()Z

    move-result p1

    const-string v3, "tnt_search_content"

    const/4 v4, 0x0

    if-eqz p1, :cond_d

    .line 8
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$f;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    sget v5, Lcom/smartisanos/quicksearch/R$id;->search_editor:I

    invoke-virtual {p1, v5}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-static {p1, v0}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    move v6, v0

    move v0, v4

    move v7, v0

    :goto_1
    if-gt v0, v6, :cond_9

    if-nez v7, :cond_4

    move v8, v0

    goto :goto_2

    :cond_4
    move v8, v6

    .line 10
    :goto_2
    invoke-interface {p1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v9, 0x20

    if-gt v8, v9, :cond_5

    move v8, v5

    goto :goto_3

    :cond_5
    move v8, v4

    :goto_3
    if-nez v7, :cond_7

    if-nez v8, :cond_6

    move v7, v5

    goto :goto_1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    if-nez v8, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_9
    :goto_4
    add-int/2addr v6, v5

    .line 11
    invoke-interface {p1, v0, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 14
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$f;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    invoke-static {p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->d(Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;)Lb/a/a/e0;

    move-result-object p1

    const-string v0, "enable_corpus_sys_recommend_apps"

    invoke-virtual {p1, v0}, Lb/a/a/e0;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 15
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$f;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    sget v0, Lcom/smartisanos/quicksearch/R$id;->tnt_search_content:I

    invoke-virtual {p1, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;

    invoke-static {p1, v3}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_5

    .line 16
    :cond_a
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$f;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    sget v0, Lcom/smartisanos/quicksearch/R$id;->tnt_search_content:I

    invoke-virtual {p1, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;

    invoke-static {p1, v3}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_5

    .line 17
    :cond_b
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$f;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    sget v0, Lcom/smartisanos/quicksearch/R$id;->tnt_search_content:I

    invoke-virtual {p1, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;

    invoke-static {p1, v3}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 18
    :goto_5
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$f;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    invoke-static {p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->c(Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;)Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 19
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$f;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    sget v0, Lcom/smartisanos/quicksearch/R$id;->btn_setting:I

    invoke-virtual {p1, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$f;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07047d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 20
    :cond_c
    invoke-static {}, Ld/q/c/d;->a()V

    throw v2

    .line 21
    :cond_d
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$f;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    sget v0, Lcom/smartisanos/quicksearch/R$id;->search_dialog_bg:I

    invoke-virtual {p1, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisan/widget/RoundedRectLinearLayout;

    const-string v0, "search_dialog_bg"

    invoke-static {p1, v0}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 22
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$f;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    sget v0, Lcom/smartisanos/quicksearch/R$id;->tnt_search_content:I

    invoke-virtual {p1, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;

    invoke-static {p1, v3}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 23
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$f;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    invoke-static {p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->c(Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;)Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 24
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$f;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    sget v0, Lcom/smartisanos/quicksearch/R$id;->btn_setting:I

    invoke-virtual {p1, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$f;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07047a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 25
    :goto_6
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$f;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    sget v0, Lcom/smartisanos/quicksearch/R$id;->tnt_search_content:I

    invoke-virtual {p1, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->getMTNTSuggestionsListAdapter()Lb/a/a/l1/c;

    move-result-object p1

    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$f;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    invoke-static {v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->c(Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;)Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    invoke-virtual {p1, v0}, Lb/a/a/l1/c;->a(Z)V

    return-void

    :cond_e
    invoke-static {}, Ld/q/c/d;->a()V

    throw v2

    .line 26
    :cond_f
    invoke-static {}, Ld/q/c/d;->a()V

    throw v2

    .line 27
    :cond_10
    invoke-static {}, Ld/q/c/d;->a()V

    throw v2
.end method
