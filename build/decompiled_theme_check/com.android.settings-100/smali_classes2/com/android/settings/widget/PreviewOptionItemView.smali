.class public Lcom/android/settings/widget/PreviewOptionItemView;
.super Landroid/widget/LinearLayout;
.source "PreviewOptionItemView.java"


# instance fields
.field private mActiveColor:I

.field private mCurrentDisactiveColor:I

.field private mDisactiveColor:I

.field private mIconAreaLayout:Landroid/widget/FrameLayout;

.field private mIsActive:Z

.field private mItemIcon:Landroid/widget/ImageView;

.field private mSelectedIcon:Landroid/widget/ImageView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/PreviewOptionItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/PreviewOptionItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 43
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/PreviewOptionItemView;->setOrientation(I)V

    const/16 v1, 0x11

    .line 44
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/PreviewOptionItemView;->setGravity(I)V

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0218

    invoke-virtual {v1, v2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0379

    .line 47
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/settings/widget/PreviewOptionItemView;->mIconAreaLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f0a0519

    .line 48
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/widget/PreviewOptionItemView;->mItemIcon:Landroid/widget/ImageView;

    const v2, 0x7f0a07fb

    .line 49
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/widget/PreviewOptionItemView;->mSelectedIcon:Landroid/widget/ImageView;

    const v2, 0x7f0a0961

    .line 50
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/widget/PreviewOptionItemView;->mTitle:Landroid/widget/TextView;

    .line 52
    sget-object v1, Lcom/android/settings/R$styleable;->PreviewOptionItemView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    .line 54
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 55
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 56
    iget-object p3, p0, Lcom/android/settings/widget/PreviewOptionItemView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    :cond_0
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 60
    iget-object p3, p0, Lcom/android/settings/widget/PreviewOptionItemView;->mItemIcon:Landroid/widget/ImageView;

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 64
    iget-object p3, p0, Lcom/android/settings/widget/PreviewOptionItemView;->mSelectedIcon:Landroid/widget/ImageView;

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/widget/PreviewOptionItemView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0600b3

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/PreviewOptionItemView;->mActiveColor:I

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/widget/PreviewOptionItemView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0600b4

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/PreviewOptionItemView;->mDisactiveColor:I

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/widget/PreviewOptionItemView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0600b5

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/PreviewOptionItemView;->mCurrentDisactiveColor:I

    .line 71
    invoke-virtual {p0, v2}, Lcom/android/settings/widget/PreviewOptionItemView;->setActive(Z)V

    .line 73
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public enableChildViews(Z)V
    .locals 2

    .line 120
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 121
    iget-object v0, p0, Lcom/android/settings/widget/PreviewOptionItemView;->mIconAreaLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 122
    iget-object v0, p0, Lcom/android/settings/widget/PreviewOptionItemView;->mTitle:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/settings/widget/PreviewOptionItemView;->mIsActive:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/android/settings/widget/PreviewOptionItemView;->mActiveColor:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/settings/widget/PreviewOptionItemView;->mCurrentDisactiveColor:I

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/android/settings/widget/PreviewOptionItemView;->mDisactiveColor:I

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public getIconAreaFrameLayout()Landroid/widget/FrameLayout;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/settings/widget/PreviewOptionItemView;->mIconAreaLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/android/settings/widget/PreviewOptionItemView;->mTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method public isActive()Z
    .locals 0

    .line 131
    iget-boolean p0, p0, Lcom/android/settings/widget/PreviewOptionItemView;->mIsActive:Z

    return p0
.end method

.method public setActive(Z)V
    .locals 2

    .line 104
    iput-boolean p1, p0, Lcom/android/settings/widget/PreviewOptionItemView;->mIsActive:Z

    .line 105
    iget-object v0, p0, Lcom/android/settings/widget/PreviewOptionItemView;->mSelectedIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/android/settings/widget/PreviewOptionItemView;->mTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget p0, p0, Lcom/android/settings/widget/PreviewOptionItemView;->mActiveColor:I

    goto :goto_1

    :cond_1
    iget p0, p0, Lcom/android/settings/widget/PreviewOptionItemView;->mDisactiveColor:I

    :goto_1
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setActive(ZZ)V
    .locals 2

    .line 110
    iput-boolean p1, p0, Lcom/android/settings/widget/PreviewOptionItemView;->mIsActive:Z

    .line 111
    iget-object v0, p0, Lcom/android/settings/widget/PreviewOptionItemView;->mSelectedIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/android/settings/widget/PreviewOptionItemView;->mTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget p0, p0, Lcom/android/settings/widget/PreviewOptionItemView;->mActiveColor:I

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    iget p0, p0, Lcom/android/settings/widget/PreviewOptionItemView;->mCurrentDisactiveColor:I

    goto :goto_1

    :cond_2
    iget p0, p0, Lcom/android/settings/widget/PreviewOptionItemView;->mDisactiveColor:I

    :goto_1
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    .line 126
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/PreviewOptionItemView;->setAlpha(F)V

    .line 127
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return-void
.end method

.method public setIconSize(II)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/settings/widget/PreviewOptionItemView;->mItemIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 94
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 95
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 96
    iget-object p0, p0, Lcom/android/settings/widget/PreviewOptionItemView;->mItemIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setItemImage(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/settings/widget/PreviewOptionItemView;->mItemIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemImageRes(I)V
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/settings/widget/PreviewOptionItemView;->mItemIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setSelectedImageRes(I)V
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/settings/widget/PreviewOptionItemView;->mSelectedIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setTitle(I)V
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/settings/widget/PreviewOptionItemView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/settings/widget/PreviewOptionItemView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
