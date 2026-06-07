.class public Lsmartisan/widget/search/RadioFrameLayout;
.super Landroid/widget/FrameLayout;
.source "RadioFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/search/RadioFrameLayout$OnCheckedChangedListener;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Lsmartisan/widget/search/data/GloableSearchConfig;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsmartisan/widget/search/data/SearchConfigTypeData;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/lang/String;

.field public i:Lsmartisan/widget/search/RadioFrameLayout$OnCheckedChangedListener;

.field public j:Landroid/widget/ProgressBar;

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/RadioButton;",
            ">;"
        }
    .end annotation
.end field

.field public l:I

.field public m:Lsmartisan/widget/search/OptionPopupWindow;

.field public n:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/search/RadioFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    iput-object p1, p0, Lsmartisan/widget/search/RadioFrameLayout;->a:Landroid/content/Context;

    .line 4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/widget/search/RadioFrameLayout;->h:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lsmartisan/widget/R$dimen;->web_search_type_button_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lsmartisan/widget/search/RadioFrameLayout;->c:I

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lsmartisan/widget/R$dimen;->web_search_type_button_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lsmartisan/widget/search/RadioFrameLayout;->b:I

    .line 7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lsmartisan/widget/R$dimen;->web_search_load_progress_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 8
    iput p1, p0, Lsmartisan/widget/search/RadioFrameLayout;->e:I

    .line 9
    iput p1, p0, Lsmartisan/widget/search/RadioFrameLayout;->d:I

    return-void
.end method

.method public static synthetic a(Lsmartisan/widget/search/RadioFrameLayout;)I
    .locals 0

    .line 1
    iget p0, p0, Lsmartisan/widget/search/RadioFrameLayout;->l:I

    return p0
.end method

.method public static synthetic a(Lsmartisan/widget/search/RadioFrameLayout;I)I
    .locals 0

    .line 2
    iput p1, p0, Lsmartisan/widget/search/RadioFrameLayout;->l:I

    return p1
.end method

.method public static synthetic a(Lsmartisan/widget/search/RadioFrameLayout;Landroid/widget/RadioButton;)I
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lsmartisan/widget/search/RadioFrameLayout;->a(Landroid/widget/RadioButton;)I

    move-result p0

    return p0
.end method

.method public static synthetic a(Lsmartisan/widget/search/RadioFrameLayout;ILsmartisan/widget/search/data/SearchConfigTypeData;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lsmartisan/widget/search/RadioFrameLayout;->a(ILsmartisan/widget/search/data/SearchConfigTypeData;)V

    return-void
.end method

.method public static synthetic b(Lsmartisan/widget/search/RadioFrameLayout;I)F
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lsmartisan/widget/search/RadioFrameLayout;->a(I)F

    move-result p0

    return p0
.end method

.method public static synthetic b(Lsmartisan/widget/search/RadioFrameLayout;)Landroid/widget/ProgressBar;
    .locals 0

    .line 2
    iget-object p0, p0, Lsmartisan/widget/search/RadioFrameLayout;->j:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method public static synthetic b(Lsmartisan/widget/search/RadioFrameLayout;Landroid/widget/RadioButton;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lsmartisan/widget/search/RadioFrameLayout;->c(Landroid/widget/RadioButton;)V

    return-void
.end method

.method public static synthetic c(Lsmartisan/widget/search/RadioFrameLayout;)Lsmartisan/widget/search/RadioFrameLayout$OnCheckedChangedListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/search/RadioFrameLayout;->i:Lsmartisan/widget/search/RadioFrameLayout$OnCheckedChangedListener;

    return-object p0
.end method

.method public static synthetic c(Lsmartisan/widget/search/RadioFrameLayout;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lsmartisan/widget/search/RadioFrameLayout;->setChecked(I)V

    return-void
.end method

.method public static synthetic c(Lsmartisan/widget/search/RadioFrameLayout;Landroid/widget/RadioButton;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lsmartisan/widget/search/RadioFrameLayout;->b(Landroid/widget/RadioButton;)V

    return-void
.end method

.method private setChecked(I)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lsmartisan/widget/search/RadioFrameLayout;->l:I

    .line 2
    iget p1, p0, Lsmartisan/widget/search/RadioFrameLayout;->l:I

    iget-object v0, p0, Lsmartisan/widget/search/RadioFrameLayout;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lsmartisan/widget/search/RadioFrameLayout;->l:I

    .line 3
    iget-object p1, p0, Lsmartisan/widget/search/RadioFrameLayout;->k:Ljava/util/List;

    iget v0, p0, Lsmartisan/widget/search/RadioFrameLayout;->l:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    .line 4
    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lsmartisan/widget/search/RadioFrameLayout;->n:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 6
    :cond_0
    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public final a(I)F
    .locals 2

    .line 16
    iget v0, p0, Lsmartisan/widget/search/RadioFrameLayout;->c:I

    mul-int/2addr p1, v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lsmartisan/widget/search/RadioFrameLayout;->e:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    int-to-float p1, p1

    return p1
.end method

.method public final a(Landroid/widget/RadioButton;)I
    .locals 1

    .line 17
    iget-object v0, p0, Lsmartisan/widget/search/RadioFrameLayout;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final a(Lsmartisan/widget/search/data/SearchConfigType;)Landroid/widget/RadioButton;
    .locals 2

    .line 10
    new-instance v0, Landroid/widget/RadioButton;

    iget-object v1, p0, Lsmartisan/widget/search/RadioFrameLayout;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 11
    invoke-virtual {p1}, Lsmartisan/widget/search/data/SearchConfigType;->b()Lsmartisan/widget/search/data/SearchConfigTypeData;

    move-result-object p1

    .line 12
    iget-object v1, p0, Lsmartisan/widget/search/RadioFrameLayout;->a:Landroid/content/Context;

    invoke-static {v1, p1}, Li/t/g/a;->a(Landroid/content/Context;Lsmartisan/widget/search/data/SearchConfigTypeData;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 13
    invoke-virtual {p0, p1}, Lsmartisan/widget/search/RadioFrameLayout;->a(Lsmartisan/widget/search/data/SearchConfigTypeData;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 14
    sget p1, Lsmartisan/widget/R$drawable;->boom_win_search_more_bg:I

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 15
    new-instance p1, Lsmartisan/widget/search/RadioFrameLayout$b;

    invoke-direct {p1, p0}, Lsmartisan/widget/search/RadioFrameLayout$b;-><init>(Lsmartisan/widget/search/RadioFrameLayout;)V

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-object v0
.end method

.method public final a()Landroid/widget/RadioGroup;
    .locals 2

    .line 7
    new-instance v0, Landroid/widget/RadioGroup;

    iget-object v1, p0, Lsmartisan/widget/search/RadioFrameLayout;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 9
    new-instance v1, Lsmartisan/widget/search/RadioFrameLayout$a;

    invoke-direct {v1, p0}, Lsmartisan/widget/search/RadioFrameLayout$a;-><init>(Lsmartisan/widget/search/RadioFrameLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-object v0
.end method

.method public final a(Lsmartisan/widget/search/data/SearchConfigTypeData;)Ljava/lang/String;
    .locals 4

    .line 21
    iget-object v0, p0, Lsmartisan/widget/search/RadioFrameLayout;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x86b

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    const/16 v2, 0xa83

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa9e

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_2
    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_4

    .line 22
    invoke-virtual {p1}, Lsmartisan/widget/search/data/SearchConfigTypeData;->f()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 23
    :cond_4
    invoke-virtual {p1}, Lsmartisan/widget/search/data/SearchConfigTypeData;->h()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 24
    :cond_5
    invoke-virtual {p1}, Lsmartisan/widget/search/data/SearchConfigTypeData;->c()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(ILsmartisan/widget/search/data/SearchConfigTypeData;)V
    .locals 1

    .line 18
    iget-object v0, p0, Lsmartisan/widget/search/RadioFrameLayout;->g:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/search/RadioFrameLayout;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lsmartisan/widget/search/RadioFrameLayout;->g:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lsmartisan/widget/search/data/GloableSearchConfig;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 5
    :cond_0
    iput-object p1, p0, Lsmartisan/widget/search/RadioFrameLayout;->f:Lsmartisan/widget/search/data/GloableSearchConfig;

    .line 6
    invoke-virtual {p0}, Lsmartisan/widget/search/RadioFrameLayout;->c()V

    return-void
.end method

.method public final b()V
    .locals 5

    .line 4
    iget-object v0, p0, Lsmartisan/widget/search/RadioFrameLayout;->g:Ljava/util/List;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsmartisan/widget/search/RadioFrameLayout;->g:Ljava/util/List;

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    :goto_0
    iget-object v0, p0, Lsmartisan/widget/search/RadioFrameLayout;->f:Lsmartisan/widget/search/data/GloableSearchConfig;

    invoke-virtual {v0}, Lsmartisan/widget/search/data/GloableSearchConfig;->a()Ljava/util/List;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 9
    iget-object v3, p0, Lsmartisan/widget/search/RadioFrameLayout;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsmartisan/widget/search/data/SearchConfigType;

    invoke-virtual {v4}, Lsmartisan/widget/search/data/SearchConfigType;->b()Lsmartisan/widget/search/data/SearchConfigTypeData;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final b(Landroid/widget/RadioButton;)V
    .locals 6

    .line 10
    invoke-virtual {p0, p1}, Lsmartisan/widget/search/RadioFrameLayout;->a(Landroid/widget/RadioButton;)I

    move-result v0

    .line 11
    iget-object v1, p0, Lsmartisan/widget/search/RadioFrameLayout;->f:Lsmartisan/widget/search/data/GloableSearchConfig;

    invoke-virtual {v1}, Lsmartisan/widget/search/data/GloableSearchConfig;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsmartisan/widget/search/data/SearchConfigType;

    invoke-virtual {v1}, Lsmartisan/widget/search/data/SearchConfigType;->a()Ljava/util/List;

    move-result-object v1

    .line 12
    iget-object v2, p0, Lsmartisan/widget/search/RadioFrameLayout;->g:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsmartisan/widget/search/data/SearchConfigTypeData;

    .line 13
    new-instance v3, Lsmartisan/widget/search/OptionPopupWindow;

    iget-object v4, p0, Lsmartisan/widget/search/RadioFrameLayout;->a:Landroid/content/Context;

    new-instance v5, Lsmartisan/widget/search/RadioFrameLayout$c;

    invoke-direct {v5, p0, p1, v0}, Lsmartisan/widget/search/RadioFrameLayout$c;-><init>(Lsmartisan/widget/search/RadioFrameLayout;Landroid/widget/RadioButton;I)V

    invoke-direct {v3, v4, v1, v2, v5}, Lsmartisan/widget/search/OptionPopupWindow;-><init>(Landroid/content/Context;Ljava/util/List;Lsmartisan/widget/search/data/SearchConfigTypeData;Lsmartisan/widget/search/OptionPopupWindow$onChooseChangedListener;)V

    iput-object v3, p0, Lsmartisan/widget/search/RadioFrameLayout;->m:Lsmartisan/widget/search/OptionPopupWindow;

    .line 14
    iget-object v0, p0, Lsmartisan/widget/search/RadioFrameLayout;->m:Lsmartisan/widget/search/OptionPopupWindow;

    invoke-virtual {v0, p1}, Lsmartisan/widget/search/OptionPopupWindow;->b(Landroid/view/View;)V

    return-void
.end method

.method public final c()V
    .locals 9

    .line 4
    invoke-virtual {p0}, Lsmartisan/widget/search/RadioFrameLayout;->a()Landroid/widget/RadioGroup;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/search/RadioFrameLayout;->n:Landroid/widget/RadioGroup;

    .line 5
    invoke-virtual {p0}, Lsmartisan/widget/search/RadioFrameLayout;->b()V

    .line 6
    iget-object v0, p0, Lsmartisan/widget/search/RadioFrameLayout;->k:Ljava/util/List;

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsmartisan/widget/search/RadioFrameLayout;->k:Ljava/util/List;

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    :goto_0
    iget-object v0, p0, Lsmartisan/widget/search/RadioFrameLayout;->f:Lsmartisan/widget/search/data/GloableSearchConfig;

    invoke-virtual {v0}, Lsmartisan/widget/search/data/GloableSearchConfig;->a()Ljava/util/List;

    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_1

    .line 11
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsmartisan/widget/search/data/SearchConfigType;

    .line 12
    invoke-virtual {p0, v4}, Lsmartisan/widget/search/RadioFrameLayout;->a(Lsmartisan/widget/search/data/SearchConfigType;)Landroid/widget/RadioButton;

    move-result-object v4

    .line 13
    iget-object v5, p0, Lsmartisan/widget/search/RadioFrameLayout;->k:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v5, p0, Lsmartisan/widget/search/RadioFrameLayout;->n:Landroid/widget/RadioGroup;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    iget v7, p0, Lsmartisan/widget/search/RadioFrameLayout;->c:I

    iget v8, p0, Lsmartisan/widget/search/RadioFrameLayout;->b:I

    invoke-direct {v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v4, v6}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 15
    :cond_1
    iget-object v0, p0, Lsmartisan/widget/search/RadioFrameLayout;->n:Landroid/widget/RadioGroup;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lsmartisan/widget/search/RadioFrameLayout;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsmartisan/widget/search/RadioFrameLayout;->j:Landroid/widget/ProgressBar;

    .line 17
    iget-object v0, p0, Lsmartisan/widget/search/RadioFrameLayout;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 18
    iget-object v0, p0, Lsmartisan/widget/search/RadioFrameLayout;->j:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lsmartisan/widget/R$drawable;->boom_search_loading_progess:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 19
    iget-object v0, p0, Lsmartisan/widget/search/RadioFrameLayout;->j:Landroid/widget/ProgressBar;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lsmartisan/widget/search/RadioFrameLayout;->e:I

    iget v3, p0, Lsmartisan/widget/search/RadioFrameLayout;->d:I

    const/16 v4, 0x13

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final c(Landroid/widget/RadioButton;)V
    .locals 2

    .line 20
    invoke-virtual {p0}, Lsmartisan/widget/search/RadioFrameLayout;->getSearchTypeData()Lsmartisan/widget/search/data/SearchConfigTypeData;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 21
    :cond_0
    iget-object v1, p0, Lsmartisan/widget/search/RadioFrameLayout;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Li/t/g/a;->a(Landroid/content/Context;Lsmartisan/widget/search/data/SearchConfigTypeData;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 22
    invoke-virtual {p0, v0}, Lsmartisan/widget/search/RadioFrameLayout;->a(Lsmartisan/widget/search/data/SearchConfigTypeData;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/RadioFrameLayout;->m:Lsmartisan/widget/search/OptionPopupWindow;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lsmartisan/widget/search/OptionPopupWindow;->a()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lsmartisan/widget/search/RadioFrameLayout;->b()V

    .line 4
    iget-object v0, p0, Lsmartisan/widget/search/RadioFrameLayout;->n:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->clearCheck()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lsmartisan/widget/search/RadioFrameLayout;->l:I

    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/search/RadioFrameLayout;->l:I

    invoke-direct {p0, v0}, Lsmartisan/widget/search/RadioFrameLayout;->setChecked(I)V

    return-void
.end method

.method public getCheckedIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/search/RadioFrameLayout;->l:I

    return v0
.end method

.method public getSearchTypeData()Lsmartisan/widget/search/data/SearchConfigTypeData;
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/RadioFrameLayout;->g:Ljava/util/List;

    iget v1, p0, Lsmartisan/widget/search/RadioFrameLayout;->l:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/search/data/SearchConfigTypeData;

    return-object v0
.end method

.method public getTypeDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsmartisan/widget/search/data/SearchConfigTypeData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/RadioFrameLayout;->g:Ljava/util/List;

    return-object v0
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-eqz p2, :cond_0

    .line 2
    iget-object p1, p0, Lsmartisan/widget/search/RadioFrameLayout;->m:Lsmartisan/widget/search/OptionPopupWindow;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lsmartisan/widget/search/OptionPopupWindow;->a()V

    :cond_0
    return-void
.end method

.method public setCheckedIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/search/RadioFrameLayout;->l:I

    return-void
.end method

.method public setCheckedWithSearchType(Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/RadioFrameLayout;->f:Lsmartisan/widget/search/data/GloableSearchConfig;

    invoke-virtual {v0}, Lsmartisan/widget/search/data/GloableSearchConfig;->a()Ljava/util/List;

    move-result-object v0

    if-eqz p1, :cond_5

    if-nez v0, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    .line 3
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsmartisan/widget/search/data/SearchConfigType;

    .line 4
    invoke-virtual {v4}, Lsmartisan/widget/search/data/SearchConfigType;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5
    invoke-direct {p0, v3}, Lsmartisan/widget/search/RadioFrameLayout;->setChecked(I)V

    return-void

    .line 6
    :cond_1
    invoke-virtual {v4}, Lsmartisan/widget/search/data/SearchConfigType;->a()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_4

    .line 8
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lsmartisan/widget/search/data/SearchConfigTypeData;

    if-eqz v7, :cond_3

    .line 9
    invoke-virtual {v7}, Lsmartisan/widget/search/data/SearchConfigTypeData;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 10
    invoke-virtual {p0, v6, v7}, Lsmartisan/widget/search/RadioFrameLayout;->a(ILsmartisan/widget/search/data/SearchConfigTypeData;)V

    .line 11
    invoke-direct {p0, v3}, Lsmartisan/widget/search/RadioFrameLayout;->setChecked(I)V

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    return-void
.end method

.method public setItemHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/search/RadioFrameLayout;->b:I

    return-void
.end method

.method public setItemWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/search/RadioFrameLayout;->c:I

    return-void
.end method

.method public setOnCheckedChangedListener(Lsmartisan/widget/search/RadioFrameLayout$OnCheckedChangedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/search/RadioFrameLayout;->i:Lsmartisan/widget/search/RadioFrameLayout$OnCheckedChangedListener;

    return-void
.end method

.method public setProgressBarHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/search/RadioFrameLayout;->d:I

    return-void
.end method

.method public setProgressBarWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/search/RadioFrameLayout;->e:I

    return-void
.end method

.method public setProgressValue(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/RadioFrameLayout;->j:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    if-ge p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
