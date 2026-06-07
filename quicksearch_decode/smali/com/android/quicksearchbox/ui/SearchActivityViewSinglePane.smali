.class public Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;
.super Lcom/android/quicksearchbox/ui/SearchActivityView;
.source "SearchActivityViewSinglePane.java"

# interfaces
.implements Lsmartisan/widget/SearchBar$OnCancelClickListener;


# instance fields
.field public l0:Landroid/widget/ImageButton;

.field public m0:I

.field public n0:F

.field public o0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;->m0:I

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;->n0:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/android/quicksearchbox/ui/SearchActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p2, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;->m0:I

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;->n0:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/android/quicksearchbox/ui/SearchActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p2, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;->m0:I

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;->n0:F

    return-void
.end method

.method public static Z()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public B()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->B()V

    .line 2
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;->X()V

    return-void
.end method

.method public M()V
    .locals 0

    return-void
.end method

.method public X()V
    .locals 0

    return-void
.end method

.method public final Y()V
    .locals 5

    const v0, 0x7f0801d1

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 2
    iget v2, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;->m0:I

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v3, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;->n0:F

    const/high16 v4, 0x428b0000    # 69.5f

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x258

    .line 3
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v2, 0xc8

    .line 4
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "linear_interpolator"

    const-string v4, "anim"

    .line 6
    invoke-static {v3, v4}, Lb/a/a/n1/h0;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 7
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8
    new-instance v2, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane$a;

    invoke-direct {v2, p0, v0}, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane$a;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 9
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/quicksearchbox/ui/SearchActivityView;->a(Ljava/lang/CharSequence;I)V

    .line 2
    iget-object p2, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;->o0:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public e()V
    .locals 0

    .line 1
    invoke-static {p0}, Lb/a/a/n1/h0;->a(Landroid/view/View;)V

    return-void
.end method

.method public g()Lcom/android/quicksearchbox/Promoter;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getQsbApplication()Lb/a/a/b0;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/b0;->b()Lcom/android/quicksearchbox/Promoter;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lb/a/a/b0;->a(Lcom/android/quicksearchbox/Corpus;)Lcom/android/quicksearchbox/Promoter;

    move-result-object v0

    return-object v0
.end method

.method public getSearchCorpus()Lcom/android/quicksearchbox/Corpus;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getWebCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public k(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->e:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result p1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->e:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;

    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;->o0:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->e:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result p1

    if-lez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->e:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;

    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;->o0:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public n()V
    .locals 2

    const v0, 0x7f0801d1

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/SearchBar;

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->b:Lsmartisan/widget/SearchBar;

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->b:Lsmartisan/widget/SearchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsmartisan/widget/SearchBar;->setCancelViewVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->b:Lsmartisan/widget/SearchBar;

    invoke-virtual {v0, p0}, Lsmartisan/widget/SearchBar;->setOnCancelClickListener(Lsmartisan/widget/SearchBar$OnCancelClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->b:Lsmartisan/widget/SearchBar;

    invoke-virtual {v0}, Lsmartisan/widget/SearchBar;->getSearchEditor()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->c:Landroid/widget/EditText;

    .line 5
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->c:Landroid/widget/EditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 6
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->c:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane$b;

    invoke-direct {v1, p0}, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane$b;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 8
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->b:Lsmartisan/widget/SearchBar;

    invoke-virtual {v0}, Lsmartisan/widget/SearchBar;->getSearchLeftIcon()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->k:Landroid/view/View;

    .line 9
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->E:Landroid/graphics/drawable/Drawable;

    .line 10
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->b:Lsmartisan/widget/SearchBar;

    invoke-virtual {v0}, Lsmartisan/widget/SearchBar;->getClearView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->t:Landroid/widget/TextView;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->onClick(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->b:Lsmartisan/widget/SearchBar;

    invoke-virtual {v0}, Lsmartisan/widget/SearchBar;->getCancelView()Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->setLastQuery(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 4
    invoke-static {p1}, Lb/a/a/n1/d$i;->a(I)V

    .line 5
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getActivity()Lcom/android/quicksearchbox/SearchActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quicksearchbox/BaseActivity;->finish()V

    .line 6
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getActivity()Lcom/android/quicksearchbox/SearchActivity;

    move-result-object v0

    const/high16 v1, 0x10a0000

    const v2, 0x10a0001

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getActivity()Lcom/android/quicksearchbox/SearchActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quicksearchbox/SearchActivity;->z()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getActivity()Lcom/android/quicksearchbox/SearchActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quicksearchbox/SearchActivity;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    move v0, p1

    .line 9
    :cond_1
    invoke-static {v0}, Lb/a/a/n1/d$f;->a(I)V

    :cond_2
    return-void
.end method

.method public onFinishInflate()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->onFinishInflate()V

    .line 2
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0b0041

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;->o0:Landroid/widget/TextView;

    .line 3
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;->o0:Landroid/widget/TextView;

    new-instance v2, Lcom/android/quicksearchbox/ui/SearchActivityView$m;

    invoke-direct {v2}, Lcom/android/quicksearchbox/ui/SearchActivityView$m;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 4
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->e:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;

    iget-object v2, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;->o0:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 5
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->s:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;->Y()V

    :cond_0
    return-void
.end method

.method public setCancelButtonEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->b:Lsmartisan/widget/SearchBar;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lsmartisan/widget/SearchBar;->getCancelView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setCorpus(Lcom/android/quicksearchbox/Corpus;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->setCorpus(Lcom/android/quicksearchbox/Corpus;)V

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;->l0:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v0, 0x7f0d0000

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Lcom/android/quicksearchbox/Corpus;->getCorpusIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;->l0:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public setSuggestionClickListener(Lcom/android/quicksearchbox/ui/SuggestionClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->g:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->setSuggestionClickListener(Lcom/android/quicksearchbox/ui/SuggestionClickListener;)V

    .line 2
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->b:Lsmartisan/widget/SearchBar;

    new-instance v0, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane$c;

    invoke-direct {v0, p0}, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane$c;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;)V

    invoke-virtual {p1, v0}, Lsmartisan/widget/SearchBar;->setOnCommitCompletionListener(Lsmartisan/widget/SearchBar$OnCommitCompletionListener;)V

    return-void
.end method

.method public z()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->z()V

    .line 2
    invoke-static {}, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;->Z()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getCurrTabIndex()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->h()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->D:Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->g()V

    :cond_1
    return-void
.end method
