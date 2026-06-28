.class public Lcom/android/settings/widget/FrontFingerprintAnimView;
.super Lcom/android/settings/widget/BaseFingerprintAnimView;
.source "FrontFingerprintAnimView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/FrontFingerprintAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/FrontFingerprintAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/widget/BaseFingerprintAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    invoke-direct {p0}, Lcom/android/settings/widget/FrontFingerprintAnimView;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/android/settings/widget/FrontFingerprintAnimView;->PADDING_TOP:I

    .line 30
    invoke-static {}, Lcom/android/settings/SettingsFeature;->isDarwin()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->MAX_ENROLL_STEP:I

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->MAX_ENROLL_STEP:I

    :goto_0
    iput v0, p0, Lcom/android/settings/widget/FrontFingerprintAnimView;->PROGRESS_RESOURCE_COUNT:I

    const/16 v0, 0x14

    new-array v0, v0, [F

    .line 33
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/widget/FrontFingerprintAnimView;->rateArr:[F

    return-void

    :array_0
    .array-data 4
        0x3f0ccccd    # 0.55f
        0x3f051eb8    # 0.52f
        0x3f11eb85    # 0.57f
        0x3f4dd2f2    # 0.804f
        0x3f1c6a7f    # 0.611f
        0x3f43d70a    # 0.765f
        0x3f45a1cb    # 0.772f
        0x3f47ef9e    # 0.781f
        0x3f4353f8    # 0.763f
        0x3f408312    # 0.752f
        0x3f533333    # 0.825f
        0x3f60c49c    # 0.878f
        0x3f2a7efa    # 0.666f
        0x3f4ccccd    # 0.8f
        0x3f3e353f    # 0.743f
        0x3f6ccccd    # 0.925f
        0x3f7a5e35    # 0.978f
        0x3f5db22d    # 0.866f
        0x3f666666    # 0.9f
        0x3f57ced9    # 0.843f
    .end array-data
.end method


# virtual methods
.method protected getBackgroundImageResource(I)I
    .locals 0

    const p0, 0x7f08012e

    return p0
.end method

.method protected getBubbleCenterRadiusRes()I
    .locals 0

    .line 63
    invoke-static {}, Lcom/android/settings/SettingsFeature;->isDarwin()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f03004f

    goto :goto_0

    :cond_0
    const p0, 0x7f030089

    :goto_0
    return p0
.end method

.method protected getBubbleCenterXRes()I
    .locals 0

    .line 51
    invoke-static {}, Lcom/android/settings/SettingsFeature;->isDarwin()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f03004d

    goto :goto_0

    :cond_0
    const p0, 0x7f030087

    :goto_0
    return p0
.end method

.method protected getBubbleCenterYRes()I
    .locals 0

    .line 57
    invoke-static {}, Lcom/android/settings/SettingsFeature;->isDarwin()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f03004e

    goto :goto_0

    :cond_0
    const p0, 0x7f030088

    :goto_0
    return p0
.end method

.method protected getImageSize()I
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/widget/FrontFingerprintAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07014b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method protected getScaleFactor()F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method protected initProgressRes()V
    .locals 1

    .line 79
    invoke-static {}, Lcom/android/settings/MultiDeviceAdapter;->getFingerprintProgressRes()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/FrontFingerprintAnimView;->progressResIds:[I

    return-void
.end method
