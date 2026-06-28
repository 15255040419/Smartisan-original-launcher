.class public Lcom/android/settings/widget/CalibrationAnimtedView;
.super Landroid/widget/RelativeLayout;
.source "CalibrationAnimtedView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/CalibrationAnimtedView$AnimatorListenerWrapper;
    }
.end annotation


# static fields
.field public static final STATE_CALIBRATED:I = 0x2

.field public static final STATE_CALIBRATING:I = 0x1

.field public static final STATE_INIT:I = 0x0

.field public static final STATE_KEY_ABSENT:I = 0x3


# instance fields
.field private animWave:Landroid/animation/ObjectAnimator;

.field private currentState:I

.field private mImgDone:Landroid/widget/ImageView;

.field private mImgWave:Landroid/widget/ImageView;

.field scaleValue:F

.field private selectedAnimSet:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/CalibrationAnimtedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/CalibrationAnimtedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 31
    iput p2, p0, Lcom/android/settings/widget/CalibrationAnimtedView;->currentState:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 49
    iput p2, p0, Lcom/android/settings/widget/CalibrationAnimtedView;->scaleValue:F

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0080

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0170

    .line 45
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/settings/widget/CalibrationAnimtedView;->mImgWave:Landroid/widget/ImageView;

    const p2, 0x7f0a016f

    .line 46
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/widget/CalibrationAnimtedView;->mImgDone:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/widget/CalibrationAnimtedView;)Landroid/widget/ImageView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/android/settings/widget/CalibrationAnimtedView;->mImgDone:Landroid/widget/ImageView;

    return-object p0
.end method

.method private initSelectedAnim()V
    .locals 14

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scaleValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/widget/CalibrationAnimtedView;->scaleValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v1, v0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 108
    iget v3, p0, Lcom/android/settings/widget/CalibrationAnimtedView;->scaleValue:F

    const/4 v4, 0x0

    aput v3, v2, v4

    const v3, 0x3f666666    # 0.9f

    const/4 v5, 0x1

    aput v3, v2, v5

    const-string v6, "scaleX"

    invoke-static {v6, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v7, v1, [F

    .line 109
    iget v8, p0, Lcom/android/settings/widget/CalibrationAnimtedView;->scaleValue:F

    aput v8, v7, v4

    aput v3, v7, v5

    const-string v3, "scaleY"

    invoke-static {v3, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 110
    iget-object v8, p0, Lcom/android/settings/widget/CalibrationAnimtedView;->mImgWave:Landroid/widget/ImageView;

    new-array v9, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v9, v4

    aput-object v7, v9, v5

    invoke-static {v8, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    const/16 v9, 0x64

    int-to-long v9, v9

    .line 111
    invoke-virtual {v8, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 112
    iget-object v11, p0, Lcom/android/settings/widget/CalibrationAnimtedView;->mImgDone:Landroid/widget/ImageView;

    new-array v12, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v12, v4

    aput-object v7, v12, v5

    invoke-static {v11, v12}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 113
    invoke-virtual {v2, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 115
    iget-object v7, p0, Lcom/android/settings/widget/CalibrationAnimtedView;->mImgWave:Landroid/widget/ImageView;

    new-array v11, v1, [F

    fill-array-data v11, :array_0

    const-string v12, "alpha"

    invoke-static {v7, v12, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 116
    new-instance v11, Lcom/android/settings/widget/CalibrationAnimtedView$2;

    invoke-direct {v11, p0}, Lcom/android/settings/widget/CalibrationAnimtedView$2;-><init>(Lcom/android/settings/widget/CalibrationAnimtedView;)V

    invoke-virtual {v7, v11}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 117
    invoke-virtual {v7, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 119
    iget-object v11, p0, Lcom/android/settings/widget/CalibrationAnimtedView;->mImgDone:Landroid/widget/ImageView;

    new-array v13, v1, [F

    fill-array-data v13, :array_1

    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 120
    new-instance v12, Lcom/android/settings/widget/CalibrationAnimtedView$3;

    invoke-direct {v12, p0}, Lcom/android/settings/widget/CalibrationAnimtedView$3;-><init>(Lcom/android/settings/widget/CalibrationAnimtedView;)V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 126
    invoke-virtual {v11, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v9, 0x4

    new-array v9, v9, [Landroid/animation/Animator;

    aput-object v8, v9, v4

    aput-object v2, v9, v5

    aput-object v7, v9, v1

    const/4 v2, 0x3

    aput-object v11, v9, v2

    .line 128
    invoke-virtual {v0, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v2, v1, [F

    .line 130
    fill-array-data v2, :array_2

    invoke-static {v6, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v6, v1, [F

    .line 131
    fill-array-data v6, :array_3

    invoke-static {v3, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 132
    iget-object v6, p0, Lcom/android/settings/widget/CalibrationAnimtedView;->mImgDone:Landroid/widget/ImageView;

    new-array v7, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v7, v4

    aput-object v3, v7, v5

    invoke-static {v6, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/16 v3, 0xc8

    int-to-long v6, v3

    .line 133
    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 134
    iget-object v3, p0, Lcom/android/settings/widget/CalibrationAnimtedView;->selectedAnimSet:Landroid/animation/AnimatorSet;

    if-nez v3, :cond_0

    .line 135
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/settings/widget/CalibrationAnimtedView;->selectedAnimSet:Landroid/animation/AnimatorSet;

    .line 136
    iget-object p0, p0, Lcom/android/settings/widget/CalibrationAnimtedView;->selectedAnimSet:Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v0, v1, v4

    aput-object v2, v1, v5

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initWaveAnim()V
    .locals 6

    .line 55
    iget-object v0, p0, Lcom/android/settings/widget/CalibrationAnimtedView;->animWave:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 56
    fill-array-data v1, :array_0

    const-string v2, "scaleX"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v2, v0, [F

    .line 57
    fill-array-data v2, :array_1

    const-string v3, "scaleY"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 58
    iget-object v3, p0, Lcom/android/settings/widget/CalibrationAnimtedView;->mImgWave:Landroid/widget/ImageView;

    new-array v4, v0, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/widget/CalibrationAnimtedView;->animWave:Landroid/animation/ObjectAnimator;

    .line 59
    iget-object v1, p0, Lcom/android/settings/widget/CalibrationAnimtedView;->animWave:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 60
    iget-object v0, p0, Lcom/android/settings/widget/CalibrationAnimtedView;->animWave:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 61
    iget-object v0, p0, Lcom/android/settings/widget/CalibrationAnimtedView;->animWave:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 62
    iget-object v0, p0, Lcom/android/settings/widget/CalibrationAnimtedView;->animWave:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 63
    iget-object v0, p0, Lcom/android/settings/widget/CalibrationAnimtedView;->animWave:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/settings/widget/CalibrationAnimtedView$1;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/CalibrationAnimtedView$1;-><init>(Lcom/android/settings/widget/CalibrationAnimtedView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3fcccccd    # 1.6f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3fcccccd    # 1.6f
    .end array-data
.end method


# virtual methods
.method public startAnim(I)V
    .locals 2

    if-eqz p1, :cond_7

    .line 73
    iget v0, p0, Lcom/android/settings/widget/CalibrationAnimtedView;->currentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 84
    :cond_1
    iput p1, p0, Lcom/android/settings/widget/CalibrationAnimtedView;->currentState:I

    .line 85
    iget-object p1, p0, Lcom/android/settings/widget/CalibrationAnimtedView;->animWave:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/widget/CalibrationAnimtedView;->animWave:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 86
    :cond_2
    iget-object p1, p0, Lcom/android/settings/widget/CalibrationAnimtedView;->selectedAnimSet:Landroid/animation/AnimatorSet;

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/android/settings/widget/CalibrationAnimtedView;->initSelectedAnim()V

    .line 87
    :cond_3
    iget-object p1, p0, Lcom/android/settings/widget/CalibrationAnimtedView;->selectedAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p0, p0, Lcom/android/settings/widget/CalibrationAnimtedView;->selectedAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 77
    :cond_4
    iput p1, p0, Lcom/android/settings/widget/CalibrationAnimtedView;->currentState:I

    .line 78
    iget-object p1, p0, Lcom/android/settings/widget/CalibrationAnimtedView;->mImgWave:Landroid/widget/ImageView;

    const v0, 0x7f0800c1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    iget-object p1, p0, Lcom/android/settings/widget/CalibrationAnimtedView;->selectedAnimSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/settings/widget/CalibrationAnimtedView;->selectedAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 80
    :cond_5
    iget-object p1, p0, Lcom/android/settings/widget/CalibrationAnimtedView;->animWave:Landroid/animation/ObjectAnimator;

    if-nez p1, :cond_6

    invoke-direct {p0}, Lcom/android/settings/widget/CalibrationAnimtedView;->initWaveAnim()V

    .line 81
    :cond_6
    iget-object p1, p0, Lcom/android/settings/widget/CalibrationAnimtedView;->animWave:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p0, p0, Lcom/android/settings/widget/CalibrationAnimtedView;->animWave:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_7
    :goto_0
    return-void
.end method

.method public stopAnim()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/settings/widget/CalibrationAnimtedView;->animWave:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/CalibrationAnimtedView;->animWave:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/CalibrationAnimtedView;->selectedAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/widget/CalibrationAnimtedView;->selectedAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    return-void
.end method
