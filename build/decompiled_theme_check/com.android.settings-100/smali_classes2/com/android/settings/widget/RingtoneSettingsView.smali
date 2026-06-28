.class public Lcom/android/settings/widget/RingtoneSettingsView;
.super Lsmartisanos/widget/SettingItemCheck;
.source "RingtoneSettingsView.java"


# instance fields
.field private mImageViewSoundPlay:Landroid/widget/ImageView;

.field private mSoundViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/RingtoneSettingsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/RingtoneSettingsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lsmartisanos/widget/SettingItemCheck;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/RingtoneSettingsView;)Landroid/widget/LinearLayout;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/android/settings/widget/RingtoneSettingsView;->mRightContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/widget/RingtoneSettingsView;)F
    .locals 0

    .line 19
    invoke-virtual {p0}, Lcom/android/settings/widget/RingtoneSettingsView;->getLeftContentWidth()F

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/widget/RingtoneSettingsView;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/android/settings/widget/RingtoneSettingsView;->mSoundViewWidth:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/settings/widget/RingtoneSettingsView;)Landroid/widget/TextView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/android/settings/widget/RingtoneSettingsView;->mTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method private setMaxTitleWidth(Z)V
    .locals 2

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/widget/RingtoneSettingsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/settings/widget/RingtoneSettingsView$1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/widget/RingtoneSettingsView$1;-><init>(Lcom/android/settings/widget/RingtoneSettingsView;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method


# virtual methods
.method protected getDefaultMidLayout()I
    .locals 0

    const p0, 0x7f0d0257

    return p0
.end method

.method public getImageRemoveView()Landroid/widget/ImageView;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/widget/RingtoneSettingsView;->getIconView()Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method protected initMidWidget()V
    .locals 3

    const v0, 0x7f0a057f

    .line 44
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/RingtoneSettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/widget/RingtoneSettingsView;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0a0565

    .line 45
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/RingtoneSettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/widget/RingtoneSettingsView;->mSummary:Landroid/widget/TextView;

    const v0, 0x7f0a0461

    .line 46
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/RingtoneSettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/widget/RingtoneSettingsView;->mImageViewSoundPlay:Landroid/widget/ImageView;

    .line 47
    iget-object v0, p0, Lcom/android/settings/widget/RingtoneSettingsView;->mImageViewSoundPlay:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/widget/RingtoneSettingsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070271

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/widget/RingtoneSettingsView;->mSoundViewWidth:I

    return-void
.end method

.method public playRingtoneAnimation(Z)V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/android/settings/widget/RingtoneSettingsView;->mImageViewSoundPlay:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    invoke-direct {p0, p1}, Lcom/android/settings/widget/RingtoneSettingsView;->setMaxTitleWidth(Z)V

    .line 61
    iget-object p0, p0, Lcom/android/settings/widget/RingtoneSettingsView;->mImageViewSoundPlay:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p1, :cond_1

    .line 63
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_1

    .line 65
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :goto_1
    return-void
.end method

.method public setRemoveViewVisible(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x7f080202

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 55
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/RingtoneSettingsView;->setIcon(I)V

    return-void
.end method
