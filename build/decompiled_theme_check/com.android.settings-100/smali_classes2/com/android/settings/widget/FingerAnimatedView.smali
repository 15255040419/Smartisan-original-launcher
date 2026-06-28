.class public Lcom/android/settings/widget/FingerAnimatedView;
.super Landroid/widget/FrameLayout;
.source "FingerAnimatedView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/FingerAnimatedView$FingerEnrollListener;
    }
.end annotation


# static fields
.field private static final MAX_SCALE:F = 1.0f

.field private static final MIN_SCALE:F = 0.6f


# instance fields
.field private enrollDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private hasEnrolled:Z

.field private isDown:Z

.field private mCurrentScale:F

.field private mEndAnimator:Landroid/animation/AnimatorSet;

.field private mEnrollListener:Lcom/android/settings/widget/FingerAnimatedView$FingerEnrollListener;

.field private mIvAnimate:Landroid/widget/ImageView;

.field private mIvNormalState:Landroid/widget/ImageView;

.field private mLayoutHighlight:Landroid/widget/FrameLayout;

.field private mLightSpot:Landroid/widget/ImageView;

.field private mShowAnimator:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/FingerAnimatedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/FingerAnimatedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/widget/FingerAnimatedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 46
    iput p1, p0, Lcom/android/settings/widget/FingerAnimatedView;->mCurrentScale:F

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/FingerAnimatedView;)Landroid/widget/ImageView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/android/settings/widget/FingerAnimatedView;->mIvNormalState:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/widget/FingerAnimatedView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/android/settings/widget/FingerAnimatedView;->mLayoutHighlight:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/widget/FingerAnimatedView;)Landroid/widget/ImageView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/android/settings/widget/FingerAnimatedView;->mLightSpot:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/settings/widget/FingerAnimatedView;F)F
    .locals 0

    .line 19
    iput p1, p0, Lcom/android/settings/widget/FingerAnimatedView;->mCurrentScale:F

    return p1
.end method

.method private endEnroll()V
    .locals 1

    .line 86
    invoke-direct {p0}, Lcom/android/settings/widget/FingerAnimatedView;->startEndAnimator()V

    .line 87
    iget-object v0, p0, Lcom/android/settings/widget/FingerAnimatedView;->enrollDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 88
    iget-object p0, p0, Lcom/android/settings/widget/FingerAnimatedView;->mEnrollListener:Lcom/android/settings/widget/FingerAnimatedView$FingerEnrollListener;

    if-eqz p0, :cond_0

    .line 89
    invoke-interface {p0}, Lcom/android/settings/widget/FingerAnimatedView$FingerEnrollListener;->onEnrollEnd()V

    :cond_0
    return-void
.end method

.method private initFrameAnimation()V
    .locals 2

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/widget/FingerAnimatedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080112

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/settings/widget/FingerAnimatedView;->enrollDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 185
    iget-object v0, p0, Lcom/android/settings/widget/FingerAnimatedView;->mIvAnimate:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/widget/FingerAnimatedView;->enrollDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 186
    iget-object p0, p0, Lcom/android/settings/widget/FingerAnimatedView;->mIvAnimate:Landroid/widget/ImageView;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method private startEndAnimator()V
    .locals 13

    .line 133
    iget-object v0, p0, Lcom/android/settings/widget/FingerAnimatedView;->mShowAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/settings/widget/FingerAnimatedView;->mShowAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    .line 135
    iget-object v0, p0, Lcom/android/settings/widget/FingerAnimatedView;->mShowAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 137
    :cond_0
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 138
    iget-object v1, p0, Lcom/android/settings/widget/FingerAnimatedView;->mLayoutHighlight:Landroid/widget/FrameLayout;

    const/4 v2, 0x2

    new-array v3, v2, [F

    iget v4, p0, Lcom/android/settings/widget/FingerAnimatedView;->mCurrentScale:F

    const/4 v5, 0x0

    aput v4, v3, v5

    const v4, 0x3f19999a    # 0.6f

    const/4 v6, 0x1

    aput v4, v3, v6

    const-string v7, "scaleX"

    invoke-static {v1, v7, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v7, 0x64

    .line 139
    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v9, 0xc8

    .line 140
    invoke-virtual {v1, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 141
    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 142
    iget-object v3, p0, Lcom/android/settings/widget/FingerAnimatedView;->mLayoutHighlight:Landroid/widget/FrameLayout;

    new-array v11, v2, [F

    iget v12, p0, Lcom/android/settings/widget/FingerAnimatedView;->mCurrentScale:F

    aput v12, v11, v5

    aput v4, v11, v6

    const-string v4, "scaleY"

    invoke-static {v3, v4, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 143
    invoke-virtual {v3, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 144
    invoke-virtual {v3, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 145
    invoke-virtual {v3, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 146
    iget-object v4, p0, Lcom/android/settings/widget/FingerAnimatedView;->mLayoutHighlight:Landroid/widget/FrameLayout;

    new-array v7, v2, [F

    fill-array-data v7, :array_0

    const-string v8, "alpha"

    invoke-static {v4, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v7, 0x12c

    .line 147
    invoke-virtual {v4, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 148
    invoke-virtual {v4, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 149
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/FingerAnimatedView;->mEndAnimator:Landroid/animation/AnimatorSet;

    .line 150
    iget-object v0, p0, Lcom/android/settings/widget/FingerAnimatedView;->mEndAnimator:Landroid/animation/AnimatorSet;

    const/4 v7, 0x3

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v1, v7, v5

    aput-object v3, v7, v6

    aput-object v4, v7, v2

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 151
    iget-object v0, p0, Lcom/android/settings/widget/FingerAnimatedView;->mEndAnimator:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/settings/widget/FingerAnimatedView$3;

    invoke-direct {v2, p0}, Lcom/android/settings/widget/FingerAnimatedView$3;-><init>(Lcom/android/settings/widget/FingerAnimatedView;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 172
    new-instance v0, Lcom/android/settings/widget/FingerAnimatedView$4;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/FingerAnimatedView$4;-><init>(Lcom/android/settings/widget/FingerAnimatedView;)V

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 178
    iget-object p0, p0, Lcom/android/settings/widget/FingerAnimatedView;->mEndAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startEnroll()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/android/settings/widget/FingerAnimatedView;->hasEnrolled:Z

    if-nez v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/android/settings/widget/FingerAnimatedView;->mEnrollListener:Lcom/android/settings/widget/FingerAnimatedView$FingerEnrollListener;

    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0}, Lcom/android/settings/widget/FingerAnimatedView$FingerEnrollListener;->onEnrollStart()V

    .line 78
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/widget/FingerAnimatedView;->startShowAnimator()V

    .line 79
    invoke-direct {p0}, Lcom/android/settings/widget/FingerAnimatedView;->startFrameAnimation()V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private startFrameAnimation()V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/android/settings/widget/FingerAnimatedView;->enrollDrawable:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/AnimationDrawable;->setVisible(ZZ)Z

    .line 191
    iget-object p0, p0, Lcom/android/settings/widget/FingerAnimatedView;->enrollDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method

.method private startShowAnimator()V
    .locals 11

    .line 94
    iget-object v0, p0, Lcom/android/settings/widget/FingerAnimatedView;->mEndAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/settings/widget/FingerAnimatedView;->mEndAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/FingerAnimatedView;->mShowAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/android/settings/widget/FingerAnimatedView;->mShowAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 100
    :cond_1
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 101
    iget-object v1, p0, Lcom/android/settings/widget/FingerAnimatedView;->mLayoutHighlight:Landroid/widget/FrameLayout;

    const/4 v2, 0x2

    new-array v3, v2, [F

    iget v4, p0, Lcom/android/settings/widget/FingerAnimatedView;->mCurrentScale:F

    const/4 v5, 0x0

    aput v4, v3, v5

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    aput v4, v3, v6

    const-string v7, "scaleX"

    invoke-static {v1, v7, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v7, 0xc8

    .line 102
    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 103
    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 104
    iget-object v3, p0, Lcom/android/settings/widget/FingerAnimatedView;->mLayoutHighlight:Landroid/widget/FrameLayout;

    new-array v9, v2, [F

    iget v10, p0, Lcom/android/settings/widget/FingerAnimatedView;->mCurrentScale:F

    aput v10, v9, v5

    aput v4, v9, v6

    const-string v4, "scaleY"

    invoke-static {v3, v4, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 105
    invoke-virtual {v3, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 106
    invoke-virtual {v3, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 107
    iget-object v4, p0, Lcom/android/settings/widget/FingerAnimatedView;->mLayoutHighlight:Landroid/widget/FrameLayout;

    new-array v7, v2, [F

    fill-array-data v7, :array_0

    const-string v8, "alpha"

    invoke-static {v4, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v7, 0x12c

    .line 108
    invoke-virtual {v4, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 109
    invoke-virtual {v4, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 110
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/FingerAnimatedView;->mShowAnimator:Landroid/animation/AnimatorSet;

    .line 111
    iget-object v0, p0, Lcom/android/settings/widget/FingerAnimatedView;->mShowAnimator:Landroid/animation/AnimatorSet;

    const/4 v7, 0x3

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v1, v7, v5

    aput-object v3, v7, v6

    aput-object v4, v7, v2

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 112
    iget-object v0, p0, Lcom/android/settings/widget/FingerAnimatedView;->mShowAnimator:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/settings/widget/FingerAnimatedView$1;

    invoke-direct {v2, p0}, Lcom/android/settings/widget/FingerAnimatedView$1;-><init>(Lcom/android/settings/widget/FingerAnimatedView;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 123
    new-instance v0, Lcom/android/settings/widget/FingerAnimatedView$2;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/FingerAnimatedView$2;-><init>(Lcom/android/settings/widget/FingerAnimatedView;)V

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 129
    iget-object p0, p0, Lcom/android/settings/widget/FingerAnimatedView;->mShowAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 51
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a05a5

    .line 52
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/FingerAnimatedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/widget/FingerAnimatedView;->mIvNormalState:Landroid/widget/ImageView;

    const v0, 0x7f0a05e3

    .line 53
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/FingerAnimatedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/settings/widget/FingerAnimatedView;->mLayoutHighlight:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0593

    .line 54
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/FingerAnimatedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/widget/FingerAnimatedView;->mIvAnimate:Landroid/widget/ImageView;

    const v0, 0x7f0a05ed

    .line 55
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/FingerAnimatedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/widget/FingerAnimatedView;->mLightSpot:Landroid/widget/ImageView;

    .line 56
    invoke-direct {p0}, Lcom/android/settings/widget/FingerAnimatedView;->initFrameAnimation()V

    return-void
.end method

.method public setDownState(Z)V
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/android/settings/widget/FingerAnimatedView;->isDown:Z

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/widget/FingerAnimatedView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/android/settings/widget/FingerAnimatedView;->startEnroll()Z

    const/4 p1, 0x1

    .line 65
    iput-boolean p1, p0, Lcom/android/settings/widget/FingerAnimatedView;->isDown:Z

    goto :goto_0

    .line 67
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/widget/FingerAnimatedView;->endEnroll()V

    .line 68
    iput-boolean p1, p0, Lcom/android/settings/widget/FingerAnimatedView;->isDown:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setEnrolled(Z)V
    .locals 0

    .line 206
    iput-boolean p1, p0, Lcom/android/settings/widget/FingerAnimatedView;->hasEnrolled:Z

    .line 207
    iget-boolean p1, p0, Lcom/android/settings/widget/FingerAnimatedView;->hasEnrolled:Z

    if-eqz p1, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/android/settings/widget/FingerAnimatedView;->startEndAnimator()V

    .line 209
    iget-object p0, p0, Lcom/android/settings/widget/FingerAnimatedView;->enrollDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_0
    return-void
.end method

.method public setFingerEnrollListener(Lcom/android/settings/widget/FingerAnimatedView$FingerEnrollListener;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/android/settings/widget/FingerAnimatedView;->mEnrollListener:Lcom/android/settings/widget/FingerAnimatedView$FingerEnrollListener;

    return-void
.end method
