.class public Lcom/android/settings/widget/SettingItemImage;
.super Lsmartisanos/widget/ListContentItemCustom;
.source "SettingItemImage.java"


# static fields
.field private static final sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field private mImageView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    .line 18
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/widget/SettingItemImage;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/SettingItemImage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/SettingItemImage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lsmartisanos/widget/ListContentItemCustom;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    sget-object p3, Lcom/android/settings/R$styleable;->SettingItemImage:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 43
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 44
    invoke-virtual {p0, p3}, Lcom/android/settings/widget/SettingItemImage;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p3, 0x1

    .line 46
    invoke-virtual {p1, p3, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 47
    sget-object v0, Lcom/android/settings/widget/SettingItemImage;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    aget-object p3, v0, p3

    invoke-virtual {p0, p3}, Lcom/android/settings/widget/SettingItemImage;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 49
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    invoke-virtual {p0, p2}, Lcom/android/settings/widget/SettingItemImage;->setPressable(Z)V

    return-void
.end method


# virtual methods
.method protected getDefaultLeftLayout()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/settings/widget/SettingItemImage;->mImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method protected initMidWidget()V
    .locals 3

    .line 56
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/widget/SettingItemImage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/widget/SettingItemImage;->mImageView:Landroid/widget/ImageView;

    .line 57
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 59
    iget-object v1, p0, Lcom/android/settings/widget/SettingItemImage;->mMidContainer:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/android/settings/widget/SettingItemImage;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/settings/widget/SettingItemImage;->mImageView:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    .line 85
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/settings/widget/SettingItemImage;->mImageView:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    .line 79
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/settings/widget/SettingItemImage;->mImageView:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    .line 68
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    return-void
.end method
