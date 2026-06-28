.class public Lcom/android/settings/widget/BackFingerprintAnimView;
.super Lcom/android/settings/widget/BaseFingerprintAnimView;
.source "BackFingerprintAnimView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/BackFingerprintAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/BackFingerprintAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/widget/BaseFingerprintAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    invoke-direct {p0}, Lcom/android/settings/widget/BackFingerprintAnimView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 26
    invoke-virtual {p0}, Lcom/android/settings/widget/BackFingerprintAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07014c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/BackFingerprintAnimView;->PADDING_TOP:I

    const/16 v0, 0x14

    .line 28
    iput v0, p0, Lcom/android/settings/widget/BackFingerprintAnimView;->PROGRESS_RESOURCE_COUNT:I

    new-array v0, v0, [F

    .line 30
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/widget/BackFingerprintAnimView;->rateArr:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f0ccccd    # 0.55f
        0x3f051eb8    # 0.52f
        0x3edc28f6    # 0.43f
        0x3f4dd2f2    # 0.804f
        0x3f360419    # 0.711f
        0x3f8851ec    # 1.065f
        0x3f974bc7    # 1.182f
        0x3f7b22d1    # 0.981f
        0x3eed0e56    # 0.463f
        0x3f73b646    # 0.952f
        0x3f6ccccd    # 0.925f
        0x3ef4bc6a    # 0.478f
        0x3f2a7efa    # 0.666f
        0x3f666666    # 0.9f
        0x3f57ced9    # 0.843f
        0x3f926e98    # 1.144f
        0x3f424dd3    # 0.759f
        0x3f84dd2f    # 1.038f
        0x3f47ae14    # 0.78f
        0x3f051eb8    # 0.52f
    .end array-data
.end method


# virtual methods
.method protected getBackgroundImageResource(I)I
    .locals 0

    const p0, 0x7f08049e

    return p0
.end method

.method protected getBubbleCenterRadiusRes()I
    .locals 0

    const p0, 0x7f030082

    return p0
.end method

.method protected getBubbleCenterXRes()I
    .locals 0

    const p0, 0x7f03007e

    return p0
.end method

.method protected getBubbleCenterYRes()I
    .locals 0

    const p0, 0x7f03007f

    return p0
.end method

.method protected getImageSize()I
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/widget/BackFingerprintAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07014a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method protected getScaleFactor()F
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/widget/BackFingerprintAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 64
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x40400000    # 3.0f

    div-float/2addr p0, v0

    return p0
.end method

.method protected initProgressRes()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [I

    .line 69
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/widget/BackFingerprintAnimView;->progressResIds:[I

    return-void

    :array_0
    .array-data 4
        0x7f08011a
        0x7f08011b
        0x7f08011c
        0x7f08011d
        0x7f08011e
        0x7f08011f
        0x7f080120
        0x7f080121
        0x7f080122
        0x7f080123
        0x7f080124
        0x7f080125
        0x7f080126
        0x7f080127
        0x7f080128
        0x7f080129
        0x7f08012a
        0x7f08012b
        0x7f08012c
        0x7f08012d
    .end array-data
.end method
