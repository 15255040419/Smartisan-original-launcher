.class public Lcom/android/settings/widget/RevOneBigBangGifAnimView;
.super Landroid/widget/RelativeLayout;
.source "RevOneBigBangGifAnimView.java"


# instance fields
.field private mAnimator:Landroid/animation/Animator;

.field private mIvCircleIcon:Landroid/widget/ImageView;

.field private mIvCircleText:Landroid/widget/ImageView;

.field private mIvMagnifier:Landroid/widget/ImageView;

.field private mIvMask:Landroid/widget/ImageView;

.field private mIvSmallWindow:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/RevOneBigBangGifAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/RevOneBigBangGifAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, 0x7f0d0239

    .line 35
    invoke-static {p1, p2, p0}, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0a05a1

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->mIvMagnifier:Landroid/widget/ImageView;

    const p1, 0x7f0a0598

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->mIvCircleIcon:Landroid/widget/ImageView;

    const p1, 0x7f0a05a2

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->mIvMask:Landroid/widget/ImageView;

    const p1, 0x7f0a0599

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->mIvCircleText:Landroid/widget/ImageView;

    const p1, 0x7f0a05ab

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->mIvSmallWindow:Landroid/widget/ImageView;

    .line 41
    invoke-direct {p0}, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->reset()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/RevOneBigBangGifAnimView;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->reset()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/widget/RevOneBigBangGifAnimView;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->run()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/widget/RevOneBigBangGifAnimView;)Landroid/widget/ImageView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->mIvCircleIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/widget/RevOneBigBangGifAnimView;)Landroid/widget/ImageView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->mIvCircleText:Landroid/widget/ImageView;

    return-object p0
.end method

.method private createAllAnimators()Landroid/animation/Animator;
    .locals 4

    .line 78
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x5

    new-array v1, v1, [Landroid/animation/Animator;

    .line 80
    invoke-direct {p0}, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->createMagnifierAnim()Landroid/animation/Animator;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 81
    invoke-direct {p0}, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->createCircleIconAnim()Landroid/animation/Animator;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 82
    invoke-direct {p0}, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->createMaskAnim()Landroid/animation/Animator;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 83
    invoke-direct {p0}, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->createCircleTextAnim()Landroid/animation/Animator;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 84
    invoke-direct {p0}, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->createSmallWindowAnim()Landroid/animation/Animator;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 79
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 85
    new-instance v1, Lcom/android/settings/widget/RevOneBigBangGifAnimView$1;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/RevOneBigBangGifAnimView$1;-><init>(Lcom/android/settings/widget/RevOneBigBangGifAnimView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private static createAlphaAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;
    .locals 6

    const-string v1, "alpha"

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    .line 156
    invoke-static/range {v0 .. v5}, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->ofFloatObjectAnimator(Landroid/view/View;Ljava/lang/String;FFJ)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 157
    invoke-virtual {p0, p5, p6}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    return-object p0
.end method

.method private createCircleIconAnim()Landroid/animation/Animator;
    .locals 11

    .line 108
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/animation/Animator;

    .line 109
    iget-object v2, p0, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->mIvCircleIcon:Landroid/widget/ImageView;

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f800000    # 1.0f

    const-wide/16 v5, 0xfa

    const-wide/16 v7, 0x5dc

    .line 110
    invoke-static/range {v2 .. v8}, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->createAlphaAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v4, p0, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->mIvCircleIcon:Landroid/widget/ImageView;

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f19999a    # 0.6f

    const-wide/16 v7, 0xfa

    const-wide/16 v9, 0x5dc

    .line 111
    invoke-static/range {v4 .. v10}, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->createScaleAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v4, p0, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->mIvCircleIcon:Landroid/widget/ImageView;

    const v6, 0x3e99999a    # 0.3f

    const-wide/16 v9, 0x6d6

    .line 112
    invoke-static/range {v4 .. v10}, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->createAlphaAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v4, p0, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->mIvCircleIcon:Landroid/widget/ImageView;

    const v5, 0x3f19999a    # 0.6f

    const v6, 0x3f99999a    # 1.2f

    .line 113
    invoke-static/range {v4 .. v10}, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->createScaleAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 109
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 114
    new-instance v1, Lcom/android/settings/widget/RevOneBigBangGifAnimView$2;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/RevOneBigBangGifAnimView$2;-><init>(Lcom/android/settings/widget/RevOneBigBangGifAnimView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private createCircleTextAnim()Landroid/animation/Animator;
    .locals 11

    .line 132
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/animation/Animator;

    .line 133
    iget-object v2, p0, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->mIvCircleText:Landroid/widget/ImageView;

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f800000    # 1.0f

    const-wide/16 v5, 0xfa

    const-wide/16 v7, 0xbb8

    .line 134
    invoke-static/range {v2 .. v8}, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->createAlphaAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v4, p0, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->mIvCircleText:Landroid/widget/ImageView;

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f19999a    # 0.6f

    const-wide/16 v7, 0xfa

    const-wide/16 v9, 0xbb8

    .line 135
    invoke-static/range {v4 .. v10}, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->createScaleAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v4, p0, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->mIvCircleText:Landroid/widget/ImageView;

    const v6, 0x3e99999a    # 0.3f

    const-wide/16 v9, 0xcb2

    .line 136
    invoke-static/range {v4 .. v10}, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->createAlphaAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v4, p0, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->mIvCircleText:Landroid/widget/ImageView;

    const v5, 0x3f19999a    # 0.6f

    const v6, 0x3f99999a    # 1.2f

    .line 137
    invoke-static/range {v4 .. v10}, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->createScaleAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 133
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 138
    new-instance v1, Lcom/android/settings/widget/RevOneBigBangGifAnimView$3;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/RevOneBigBangGifAnimView$3;-><init>(Lcom/android/settings/widget/RevOneBigBangGifAnimView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private createMagnifierAnim()Landroid/animation/Animator;
    .locals 11

    .line 100
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    .line 101
    iget-object v2, p0, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->mIvMagnifier:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const-wide/16 v5, 0xfa

    const-wide/16 v7, 0x271

    .line 102
    invoke-static/range {v2 .. v8}, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->createAlphaAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v4, p0, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->mIvMagnifier:Landroid/widget/ImageView;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const-wide/16 v7, 0x7d

    const-wide/16 v9, 0x84d

    .line 103
    invoke-static/range {v4 .. v10}, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->createAlphaAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    .line 101
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0
.end method

.method private createMaskAnim()Landroid/animation/Animator;
    .locals 11

    .line 124
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    .line 125
    iget-object v2, p0, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->mIvMask:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const-wide/16 v5, 0xfa

    const-wide/16 v7, 0x8ca

    .line 126
    invoke-static/range {v2 .. v8}, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->createAlphaAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v4, p0, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->mIvMask:Landroid/widget/ImageView;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const-wide/16 v7, 0xfa

    const-wide/16 v9, 0xea6

    .line 127
    invoke-static/range {v4 .. v10}, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->createAlphaAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    .line 125
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0
.end method

.method private static createScaleAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;
    .locals 10

    .line 162
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    const-string v3, "scaleX"

    move-object v2, p0

    move v4, p1

    move v5, p2

    move-wide v6, p3

    .line 164
    invoke-static/range {v2 .. v7}, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->ofFloatObjectAnimator(Landroid/view/View;Ljava/lang/String;FFJ)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v5, "scaleY"

    move-object v4, p0

    move v6, p1

    move v7, p2

    move-wide v8, p3

    .line 165
    invoke-static/range {v4 .. v9}, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->ofFloatObjectAnimator(Landroid/view/View;Ljava/lang/String;FFJ)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 163
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    move-wide v1, p5

    .line 166
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    return-object v0
.end method

.method private createSmallWindowAnim()Landroid/animation/Animator;
    .locals 11

    .line 148
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    .line 149
    iget-object v2, p0, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->mIvSmallWindow:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const-wide/16 v5, 0x7d

    const-wide/16 v7, 0xf23

    .line 150
    invoke-static/range {v2 .. v8}, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->createAlphaAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v4, p0, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->mIvSmallWindow:Landroid/widget/ImageView;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const-wide/16 v7, 0x3e8

    const-wide/16 v9, 0xfa0

    .line 151
    invoke-static/range {v4 .. v10}, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->createAlphaAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    .line 149
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0
.end method

.method private isRunning()Z
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->mAnimator:Landroid/animation/Animator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/Animator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static ofFloatObjectAnimator(Landroid/view/View;Ljava/lang/String;FFJ)Landroid/animation/ObjectAnimator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    .line 171
    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 172
    invoke-virtual {p0, p4, p5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method private reset()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->mIvMagnifier:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 71
    iget-object v0, p0, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->mIvCircleIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 72
    iget-object v0, p0, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->mIvMask:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 73
    iget-object v0, p0, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->mIvCircleText:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 74
    iget-object p0, p0, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->mIvSmallWindow:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private run()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->mAnimator:Landroid/animation/Animator;

    if-nez v0, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->createAllAnimators()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->mAnimator:Landroid/animation/Animator;

    .line 62
    :cond_0
    iget-object p0, p0, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method


# virtual methods
.method public startAnim()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    invoke-direct {p0}, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->run()V

    :cond_0
    return-void
.end method

.method public stopAnim()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 53
    iget-object v0, p0, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->mAnimator:Landroid/animation/Animator;

    :cond_0
    return-void
.end method
