.class public Lcom/android/quicksearchbox/animation/view/ForegroundContentView;
.super Landroid/widget/RelativeLayout;
.source "ForegroundContentView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/animation/view/ForegroundContentView$a;,
        Lcom/android/quicksearchbox/animation/view/ForegroundContentView$b;
    }
.end annotation


# static fields
.field public static j:Landroid/os/Handler;

.field public static k:I

.field public static l:I


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/view/View;

.field public c:Landroid/widget/LinearLayout;

.field public d:Lcom/android/quicksearchbox/ui/FlowLayoutEx;

.field public e:Lcom/android/quicksearchbox/ui/FlowLayoutEx;

.field public f:Landroid/view/View;

.field public g:Landroid/view/View;

.field public h:Lsmartisan/widget/SmartisanBlankView;

.field public i:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    iput-object p1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    .line 5
    invoke-virtual {p0}, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->a()V

    return-void
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/animation/view/ForegroundContentView;Lb/a/a/e1/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->setRecommendInfo(Lb/a/a/e1/b;)V

    return-void
.end method

.method private setRecommendAppsInfo(Lb/a/a/e1/b;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lb/a/a/e1/b;->b()I

    move-result v0

    if-gtz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->c:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->c:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    invoke-virtual {p1}, Lb/a/a/e1/b;->b()I

    move-result v2

    if-le v0, v2, :cond_1

    move v0, v1

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 6
    iget-object v2, p0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 7
    :goto_1
    invoke-virtual {p1}, Lb/a/a/e1/b;->b()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 8
    invoke-virtual {p1, v0}, Lb/a/a/e1/b;->a(I)Lb/a/a/e1/b$a;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {p1, v0}, Lb/a/a/e1/b;->a(I)Lb/a/a/e1/b$a;

    move-result-object v2

    iget-object v2, v2, Lb/a/a/e1/b$a;->b:Ljava/lang/String;

    .line 10
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 11
    iget-object v3, p0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 12
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    const v2, 0x7f08004c

    .line 15
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setId(I)V

    const/4 v2, 0x1

    .line 16
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 17
    invoke-virtual {p1, v0}, Lb/a/a/e1/b;->a(I)Lb/a/a/e1/b$a;

    move-result-object v2

    iget-object v2, v2, Lb/a/a/e1/b$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const v2, 0x7f08004b

    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 19
    invoke-virtual {p1, v0}, Lb/a/a/e1/b;->a(I)Lb/a/a/e1/b$a;

    move-result-object v2

    iget-object v2, v2, Lb/a/a/e1/b$a;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    .line 20
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0601b0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 21
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 22
    invoke-virtual {v2, v1, v1, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v4, 0x0

    .line 23
    invoke-virtual {v3, v4, v2, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method private setRecommendInfo(Lb/a/a/e1/b;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p1}, Lb/a/a/e1/b;->b()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lb/a/a/e1/b;->d()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->setRecommendAppsInfo(Lb/a/a/e1/b;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->setRecommendWordInfo(Lb/a/a/e1/b;)V

    .line 4
    invoke-static {}, Lb/a/a/c1/d;->d()Z

    move-result p1

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->d:Lcom/android/quicksearchbox/ui/FlowLayoutEx;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->d:Lcom/android/quicksearchbox/ui/FlowLayoutEx;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->d:Lcom/android/quicksearchbox/ui/FlowLayoutEx;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-eq p1, v1, :cond_3

    iget-object p1, p0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->d:Lcom/android/quicksearchbox/ui/FlowLayoutEx;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->g:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 9
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->g:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void

    .line 10
    :cond_4
    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->b(Z)V

    return-void
.end method

.method private setRecommendWordInfo(Lb/a/a/e1/b;)V
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->d:Lcom/android/quicksearchbox/ui/FlowLayoutEx;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {p1}, Lb/a/a/e1/b;->d()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 3
    iget-object v1, p0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->d:Lcom/android/quicksearchbox/ui/FlowLayoutEx;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 4
    :goto_0
    invoke-virtual {p1}, Lb/a/a/e1/b;->d()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 5
    invoke-virtual {p1, v2}, Lb/a/a/e1/b;->f(I)Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$HotWord;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_2

    .line 6
    :cond_1
    invoke-virtual {v4}, Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$HotWord;->getWord()Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_4

    .line 8
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v3, p0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->d:Lcom/android/quicksearchbox/ui/FlowLayoutEx;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v6, 0x0

    if-nez v3, :cond_2

    .line 10
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v8, 0x7f0b00a5

    .line 11
    invoke-virtual {v3, v8, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move v8, v7

    goto :goto_1

    .line 12
    :cond_2
    check-cast v3, Landroid/widget/TextView;

    const v8, 0x7f07015a

    .line 13
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 14
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f050142

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    move v8, v1

    .line 15
    :goto_1
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f0800fe

    .line 16
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setId(I)V

    .line 17
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 18
    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    if-eqz v8, :cond_3

    .line 19
    iget-object v4, p0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->d:Lcom/android/quicksearchbox/ui/FlowLayoutEx;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    move v3, v7

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    const-string p1, "A170022"

    .line 20
    invoke-static {p1}, Lb/a/a/n1/d;->a(Ljava/lang/String;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06026b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->k:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06026a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->l:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->i:Landroid/content/pm/PackageManager;

    .line 5
    new-instance v0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView$a;

    invoke-direct {v0, p0}, Lcom/android/quicksearchbox/animation/view/ForegroundContentView$a;-><init>(Lcom/android/quicksearchbox/animation/view/ForegroundContentView;)V

    sput-object v0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->j:Landroid/os/Handler;

    return-void
.end method

.method public a(Z)V
    .locals 4

    .line 6
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->e:Lcom/android/quicksearchbox/ui/FlowLayoutEx;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->f:Landroid/view/View;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public b(Z)V
    .locals 4

    .line 5
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->g:Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->c:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->d:Lcom/android/quicksearchbox/ui/FlowLayoutEx;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public final b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->e:Lcom/android/quicksearchbox/ui/FlowLayoutEx;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->d:Lcom/android/quicksearchbox/ui/FlowLayoutEx;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->c:Landroid/widget/LinearLayout;

    .line 2
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->e:Lcom/android/quicksearchbox/ui/FlowLayoutEx;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lb/a/a/c1/d;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Lb/a/a/c1/d;->d()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->j:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    sget-object v0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->j:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->h:Lsmartisan/widget/SmartisanBlankView;

    invoke-virtual {v0}, Lsmartisan/widget/SmartisanBlankView;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->h:Lsmartisan/widget/SmartisanBlankView;

    invoke-virtual {v0}, Lsmartisan/widget/SmartisanBlankView;->getPrimaryHintView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->h:Lsmartisan/widget/SmartisanBlankView;

    invoke-virtual {v0}, Lsmartisan/widget/SmartisanBlankView;->getSecondaryHintView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100119

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->h:Lsmartisan/widget/SmartisanBlankView;

    invoke-virtual {v0}, Lsmartisan/widget/SmartisanBlankView;->getSecondaryHintView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 5
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->h:Lsmartisan/widget/SmartisanBlankView;

    invoke-virtual {v0}, Lsmartisan/widget/SmartisanBlankView;->getSecondaryHintView()Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x40c00000    # 6.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->b()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f08005b

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->a:Landroid/view/View;

    const v0, 0x7f08005a

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/SmartisanBlankView;

    iput-object v0, p0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->h:Lsmartisan/widget/SmartisanBlankView;

    .line 4
    invoke-virtual {p0}, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->d()V

    const v0, 0x7f08009f

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->b:Landroid/view/View;

    const v0, 0x7f0800f5

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/ui/FlowLayoutEx;

    iput-object v0, p0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->e:Lcom/android/quicksearchbox/ui/FlowLayoutEx;

    const v0, 0x7f080185

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->c:Landroid/widget/LinearLayout;

    const v0, 0x7f080186

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/ui/FlowLayoutEx;

    iput-object v0, p0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->d:Lcom/android/quicksearchbox/ui/FlowLayoutEx;

    const v0, 0x7f080250

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->g:Landroid/view/View;

    const v0, 0x7f0800f8

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->f:Landroid/view/View;

    .line 11
    invoke-virtual {p0}, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->c()V

    return-void
.end method

.method public setHistoryInfo(Lb/a/a/e1/b;)V
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 1
    invoke-virtual {p1}, Lb/a/a/e1/b;->c()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->e:Lcom/android/quicksearchbox/ui/FlowLayoutEx;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {p1}, Lb/a/a/e1/b;->c()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 3
    iget-object v1, p0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->e:Lcom/android/quicksearchbox/ui/FlowLayoutEx;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    move v1, v0

    .line 4
    :goto_0
    invoke-virtual {p1}, Lb/a/a/e1/b;->c()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_6

    .line 5
    invoke-virtual {p1, v1}, Lb/a/a/e1/b;->c(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    goto/16 :goto_3

    .line 6
    :cond_2
    invoke-virtual {p1, v1}, Lb/a/a/e1/b;->c(I)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 8
    iget-object v4, p0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->e:Lcom/android/quicksearchbox/ui/FlowLayoutEx;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_3

    .line 9
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v6, 0x7f0b00a4

    .line 10
    invoke-virtual {v4, v6, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move v6, v3

    goto :goto_1

    .line 11
    :cond_3
    check-cast v4, Landroid/widget/TextView;

    move v6, v0

    :goto_1
    const v7, 0x7f0800f7

    .line 12
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setId(I)V

    const v7, 0x7f0800f6

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 14
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 15
    invoke-virtual {p1, v1}, Lb/a/a/e1/b;->e(I)I

    move-result v2

    if-ne v2, v3, :cond_4

    .line 16
    invoke-virtual {p1, v1}, Lb/a/a/e1/b;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 17
    :try_start_0
    invoke-virtual {p1, v1}, Lb/a/a/e1/b;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/quicksearchbox/LauncherIconBridge;->getIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_launcher_icon_ready

    iget-object v2, p0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_launcher_icon_ready

    .line 18
    sget v3, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->k:I

    sget v7, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->k:I

    invoke-virtual {v2, v0, v0, v3, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 19
    invoke-virtual {v4, v2, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 20
    sget v2, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->l:I

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 21
    invoke-virtual {p1, v1}, Lb/a/a/e1/b;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 22
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 23
    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 24
    :cond_4
    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 25
    invoke-virtual {p1, v1}, Lb/a/a/e1/b;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    if-eqz v6, :cond_5

    .line 26
    iget-object v2, p0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->e:Lcom/android/quicksearchbox/ui/FlowLayoutEx;

    invoke-virtual {v2, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 27
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->e:Lcom/android/quicksearchbox/ui/FlowLayoutEx;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-eqz p1, :cond_7

    move v0, v3

    :cond_7
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->a(Z)V

    return-void

    .line 28
    :cond_8
    :goto_4
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->a(Z)V

    .line 29
    iget-object p1, p0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->e:Lcom/android/quicksearchbox/ui/FlowLayoutEx;

    if-eqz p1, :cond_9

    .line 30
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_9
    return-void
.end method
