.class public Lcom/android/settings/widget/FingerprintAnimView;
.super Landroid/widget/FrameLayout;
.source "FingerprintAnimView.java"


# instance fields
.field private mAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private mAnimView:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mPhoneFrameImage:Landroid/widget/ImageView;

.field private mPreviewImage:Landroid/widget/ImageView;

.field private mValues:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/FingerprintAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/widget/FingerprintAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 35
    iput-object p1, p0, Lcom/android/settings/widget/FingerprintAnimView;->mContext:Landroid/content/Context;

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0d010b

    const/4 p4, 0x1

    invoke-virtual {p2, p3, p0, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0a072e

    .line 37
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/settings/widget/FingerprintAnimView;->mPreviewImage:Landroid/widget/ImageView;

    const p3, 0x7f0a06fc

    .line 38
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/settings/widget/FingerprintAnimView;->mPhoneFrameImage:Landroid/widget/ImageView;

    const p3, 0x7f0a02e4

    .line 39
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/settings/widget/FingerprintAnimView;->mAnimView:Landroid/widget/ImageView;

    .line 40
    iget-object p2, p0, Lcom/android/settings/widget/FingerprintAnimView;->mPhoneFrameImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/settings/Utils;->getSpecialPhoneFrameResId()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f03007c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/FingerprintAnimView;->mValues:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setAnimation(I)V
    .locals 4

    .line 45
    iget-object v0, p0, Lcom/android/settings/widget/FingerprintAnimView;->mAnimView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 46
    iget-object v1, p0, Lcom/android/settings/widget/FingerprintAnimView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez p1, :cond_0

    const v2, 0x7f070133

    .line 48
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 49
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 50
    iget-object v2, p0, Lcom/android/settings/widget/FingerprintAnimView;->mAnimView:Landroid/widget/ImageView;

    const v3, 0x7f070132

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    goto :goto_0

    :cond_0
    const v2, 0x7f070134

    .line 52
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 53
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 54
    iget-object v2, p0, Lcom/android/settings/widget/FingerprintAnimView;->mAnimView:Landroid/widget/ImageView;

    const v3, 0x7f070131

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 56
    :goto_0
    iget-object v1, p0, Lcom/android/settings/widget/FingerprintAnimView;->mAnimView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    iget-object v0, p0, Lcom/android/settings/widget/FingerprintAnimView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/widget/FingerprintAnimView;->mValues:[Ljava/lang/String;

    aget-object p1, v1, p1

    const-string v1, "com.android.systemui"

    invoke-static {v0, v1, p1}, Lcom/android/settings/Utils;->getDrawableFromPkg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/android/settings/widget/FingerprintAnimView;->mAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 58
    iget-object p1, p0, Lcom/android/settings/widget/FingerprintAnimView;->mAnimView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/widget/FingerprintAnimView;->mAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    iget-object p1, p0, Lcom/android/settings/widget/FingerprintAnimView;->mAnimView:Landroid/widget/ImageView;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 60
    iget-object p1, p0, Lcom/android/settings/widget/FingerprintAnimView;->mAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Landroid/graphics/drawable/AnimationDrawable;->setVisible(ZZ)Z

    .line 61
    iget-object p0, p0, Lcom/android/settings/widget/FingerprintAnimView;->mAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method
