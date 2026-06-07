.class public Lsmartisan/widget/search/ImageNavigation;
.super Landroid/widget/RelativeLayout;
.source "ImageNavigation.java"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/view/ViewGroup;

.field public c:Landroid/widget/ImageView;

.field public d:Landroid/widget/ImageView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/search/ImageNavigation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/search/ImageNavigation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    iput-object p1, p0, Lsmartisan/widget/search/ImageNavigation;->a:Landroid/content/Context;

    .line 5
    invoke-virtual {p0}, Lsmartisan/widget/search/ImageNavigation;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/ImageNavigation;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$layout;->image_navigation_layout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 2
    sget v0, Lsmartisan/widget/R$id;->mid_container:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lsmartisan/widget/search/ImageNavigation;->b:Landroid/view/ViewGroup;

    .line 3
    sget v0, Lsmartisan/widget/R$id;->left_iv:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lsmartisan/widget/search/ImageNavigation;->c:Landroid/widget/ImageView;

    .line 4
    sget v0, Lsmartisan/widget/R$id;->right_iv:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lsmartisan/widget/search/ImageNavigation;->d:Landroid/widget/ImageView;

    .line 5
    sget v0, Lsmartisan/widget/R$id;->title:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lsmartisan/widget/search/ImageNavigation;->e:Landroid/widget/TextView;

    iput-object v0, p0, Lsmartisan/widget/search/ImageNavigation;->f:Landroid/view/View;

    return-void
.end method

.method public a(II)V
    .locals 1

    .line 6
    iget-object v0, p0, Lsmartisan/widget/search/ImageNavigation;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 7
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 8
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 9
    iget-object p1, p0, Lsmartisan/widget/search/ImageNavigation;->d:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getLeftImageView()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/ImageNavigation;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getMidView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/ImageNavigation;->f:Landroid/view/View;

    return-object v0
.end method

.method public getRightImageView()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/ImageNavigation;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method public setLeftImageViewClickLisener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/ImageNavigation;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setLeftImageViewRes(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/ImageNavigation;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setLeftImageViewVisible(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/ImageNavigation;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setRightImageViewClickLisener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/ImageNavigation;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setRightImageViewDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/ImageNavigation;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setRightImageViewRes(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/ImageNavigation;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setRightImageViewVisible(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/ImageNavigation;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/ImageNavigation;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/search/ImageNavigation;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setView(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/search/ImageNavigation;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/widget/search/ImageNavigation;->f:Landroid/view/View;

    .line 2
    iget-object p1, p0, Lsmartisan/widget/search/ImageNavigation;->f:Landroid/view/View;

    invoke-virtual {p0, p1}, Lsmartisan/widget/search/ImageNavigation;->setView(Landroid/view/View;)V

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1

    .line 3
    iput-object p1, p0, Lsmartisan/widget/search/ImageNavigation;->f:Landroid/view/View;

    .line 4
    iget-object v0, p0, Lsmartisan/widget/search/ImageNavigation;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 5
    iget-object v0, p0, Lsmartisan/widget/search/ImageNavigation;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method
