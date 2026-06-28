.class public Lcom/android/settings/widget/TouchAreaAnimView;
.super Landroid/widget/RelativeLayout;
.source "TouchAreaAnimView.java"


# static fields
.field private static final MSG_FAILED_TRIGGER_BIGBANG_MOVE_TOO_LARGE:I = 0x2

.field private static final MSG_FAILED_TRIGGER_BIGBANG_TOUCH_AREA_NOT_ENOUGH:I = 0x1

.field private static final MSG_RESET_ANIM:I = 0x5

.field private static final MSG_SHOW_ERROR_INFO:I = 0x3

.field private static final MSG_START_TRIGGER_BIGBANG:I = 0x4

.field private static final PLAY_START_BIGBANG_ANIM_DELAY:J = 0x190L

.field private static SCALE_OF_INNER_CIRCLE:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "TouchAreaAnimView"

.field private static final TOUCH_MOVE_BOUND:F = 200.0f

.field private static TO_SCALE_OF_ERROR:F = 1.0f

.field private static TO_SCALE_OF_PRESSED:F = 1.1f

.field private static mPressTimeout:J


# instance fields
.field private final RADIUS:I

.field private mAreaType:I

.field private mBigBangTriggering:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHasError:Z

.field private mInnerAnimView:Landroid/widget/ImageView;

.field private mIsFingerDown:Z

.field private mMoveFingerTooLarge:Z

.field private mPlayingAnim:Landroid/animation/Animator;

.field private mRadiationAnim:Landroid/animation/Animator;

.field private mRadiationAnimView:Landroid/widget/ImageView;

.field private mScaleOuterCircleAnim:Landroid/animation/AnimatorSet;

.field private mTargetTestView:Landroid/widget/TextView;

.field private mTextBoomArea:F

.field private mTipsToast:Landroid/widget/Toast;

.field private mTouchAnimView:Landroid/widget/ImageView;

.field private mTouchDownPointX:I

.field private mTouchDownPointY:I

.field private mTouchDownTime:J

.field private mViewScaleSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/TouchAreaAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/TouchAreaAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 120
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, 0x5a

    .line 54
    iput p2, p0, Lcom/android/settings/widget/TouchAreaAnimView;->RADIUS:I

    .line 71
    new-instance p2, Lcom/android/settings/widget/TouchAreaAnimView$1;

    invoke-direct {p2, p0}, Lcom/android/settings/widget/TouchAreaAnimView$1;-><init>(Lcom/android/settings/widget/TouchAreaAnimView;)V

    iput-object p2, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mHandler:Landroid/os/Handler;

    .line 121
    iput-object p1, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mContext:Landroid/content/Context;

    .line 122
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0d0305

    const/4 v0, 0x1

    invoke-virtual {p2, p3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p2, 0x7f0a0770

    .line 123
    invoke-virtual {p0, p2}, Lcom/android/settings/widget/TouchAreaAnimView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mRadiationAnimView:Landroid/widget/ImageView;

    const p2, 0x7f0a046e

    .line 124
    invoke-virtual {p0, p2}, Lcom/android/settings/widget/TouchAreaAnimView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mInnerAnimView:Landroid/widget/ImageView;

    const p2, 0x7f0a098e

    .line 125
    invoke-virtual {p0, p2}, Lcom/android/settings/widget/TouchAreaAnimView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mTouchAnimView:Landroid/widget/ImageView;

    .line 126
    iget-object p2, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "boom_text_trigger_area"

    const/4 v0, 0x2

    invoke-static {p2, p3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mAreaType:I

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/widget/TouchAreaAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f07036d

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mViewScaleSize:I

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e001f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long p1, p1

    sput-wide p1, Lcom/android/settings/widget/TouchAreaAnimView;->mPressTimeout:J

    .line 130
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mPressTimeout "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide p2, Lcom/android/settings/widget/TouchAreaAnimView;->mPressTimeout:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TouchAreaAnimView"

    invoke-static {p2, p1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget p1, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mAreaType:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/TouchAreaAnimView;->setTouchAreaType(IZ)V

    .line 132
    invoke-direct {p0}, Lcom/android/settings/widget/TouchAreaAnimView;->playRadiationAnim()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/TouchAreaAnimView;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/settings/widget/TouchAreaAnimView;->showToastMsgDelay(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/widget/TouchAreaAnimView;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mHasError:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/widget/TouchAreaAnimView;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/settings/widget/TouchAreaAnimView;->showErrorToast(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/widget/TouchAreaAnimView;Z)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/settings/widget/TouchAreaAnimView;->endTouchTest(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/widget/TouchAreaAnimView;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mIsFingerDown:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/settings/widget/TouchAreaAnimView;)Landroid/widget/ImageView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mRadiationAnimView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/settings/widget/TouchAreaAnimView;)Landroid/animation/Animator;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mRadiationAnim:Landroid/animation/Animator;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/settings/widget/TouchAreaAnimView;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/settings/widget/TouchAreaAnimView;->resetAnimViews()V

    return-void
.end method

.method private cancelCurrentAnim()Z
    .locals 1

    .line 622
    iget-object v0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mPlayingAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    iget-object p0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mPlayingAnim:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private checkTouchArea(Landroid/view/MotionEvent;)V
    .locals 2

    .line 253
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSize()F

    move-result p1

    iget v0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mTextBoomArea:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 254
    iget-boolean p1, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mBigBangTriggering:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 255
    iput-boolean p1, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mBigBangTriggering:Z

    const-string p1, "TouchAreaAnimView"

    const-string v0, "BigBang triggering"

    .line 256
    invoke-static {p1, v0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object p1, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 258
    invoke-direct {p0}, Lcom/android/settings/widget/TouchAreaAnimView;->playActionDownAnim()V

    .line 259
    iget-object p0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x4

    const-wide/16 v0, 0x190

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private endTouchTest(Z)V
    .locals 2

    .line 230
    iget-boolean v0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mIsFingerDown:Z

    if-nez v0, :cond_0

    return-void

    .line 233
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mBigBangTriggering:Z

    if-eqz v0, :cond_1

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/widget/TouchAreaAnimView;->playActionUpAnim()V

    if-eqz p1, :cond_2

    const p1, 0x7f121500

    .line 236
    invoke-direct {p0, p1}, Lcom/android/settings/widget/TouchAreaAnimView;->showToastMsgDelay(I)V

    goto :goto_0

    :cond_1
    const p1, 0x7f12152a

    .line 239
    invoke-direct {p0, p1}, Lcom/android/settings/widget/TouchAreaAnimView;->showToastMsgDelay(I)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 241
    iput-boolean p1, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mIsFingerDown:Z

    .line 242
    iput-boolean p1, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mBigBangTriggering:Z

    .line 243
    iget-object v0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 249
    iput-boolean p1, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mHasError:Z

    return-void
.end method

.method private getInnerCircleAnim()Landroid/animation/AnimatorSet;
    .locals 11

    .line 694
    iget-object v0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mInnerAnimView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleX()F

    move-result v0

    .line 695
    sget v1, Lcom/android/settings/widget/TouchAreaAnimView;->SCALE_OF_INNER_CIRCLE:F

    .line 698
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 700
    iget-object v3, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mInnerAnimView:Landroid/widget/ImageView;

    const/4 v4, 0x2

    new-array v5, v4, [F

    const/4 v6, 0x0

    aput v0, v5, v6

    const/4 v7, 0x1

    aput v1, v5, v7

    const-string v8, "scaleX"

    invoke-static {v3, v8, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v8, 0x12c

    .line 701
    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 702
    invoke-virtual {v3, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 704
    iget-object v5, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mInnerAnimView:Landroid/widget/ImageView;

    new-array v10, v4, [F

    aput v0, v10, v6

    aput v1, v10, v7

    const-string v0, "scaleY"

    invoke-static {v5, v0, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 705
    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 706
    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 708
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mScaleOuterCircleAnim:Landroid/animation/AnimatorSet;

    .line 709
    iget-object v1, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mScaleOuterCircleAnim:Landroid/animation/AnimatorSet;

    new-array v2, v4, [Landroid/animation/Animator;

    aput-object v3, v2, v6

    aput-object v0, v2, v7

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 710
    iget-object p0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mScaleOuterCircleAnim:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method private getRadiationAnim()Landroid/animation/Animator;
    .locals 11

    .line 272
    iget-object v0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mRadiationAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    return-object v0

    .line 276
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 280
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 283
    iget-object v2, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mRadiationAnimView:Landroid/widget/ImageView;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    const-string v5, "scaleX"

    invoke-static {v2, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v6, 0x2bc

    .line 284
    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 285
    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 286
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v2, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mRadiationAnimView:Landroid/widget/ImageView;

    new-array v4, v3, [F

    fill-array-data v4, :array_1

    const-string v8, "scaleY"

    invoke-static {v2, v8, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 289
    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 290
    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 291
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v2, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mRadiationAnimView:Landroid/widget/ImageView;

    new-array v4, v3, [F

    fill-array-data v4, :array_2

    const-string v9, "alpha"

    invoke-static {v2, v9, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 294
    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 295
    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 296
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 298
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v6, 0x12c

    .line 299
    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 306
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 307
    iget-object v4, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mRadiationAnimView:Landroid/widget/ImageView;

    new-array v10, v3, [F

    fill-array-data v10, :array_3

    invoke-static {v4, v5, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 308
    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 309
    invoke-virtual {v4, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 310
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object v4, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mRadiationAnimView:Landroid/widget/ImageView;

    new-array v10, v3, [F

    fill-array-data v10, :array_4

    invoke-static {v4, v8, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 313
    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 314
    invoke-virtual {v4, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 315
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 318
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 325
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 328
    iget-object v6, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mRadiationAnimView:Landroid/widget/ImageView;

    new-array v7, v3, [F

    fill-array-data v7, :array_5

    invoke-static {v6, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0x258

    .line 329
    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 330
    invoke-virtual {v5, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 331
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    iget-object v5, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mRadiationAnimView:Landroid/widget/ImageView;

    new-array v10, v3, [F

    fill-array-data v10, :array_6

    invoke-static {v5, v8, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 334
    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 335
    invoke-virtual {v5, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 336
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    iget-object v5, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mRadiationAnimView:Landroid/widget/ImageView;

    new-array v8, v3, [F

    fill-array-data v8, :array_7

    invoke-static {v5, v9, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 339
    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 340
    invoke-virtual {v5, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 341
    new-instance v4, Lcom/android/settings/widget/TouchAreaAnimView$2;

    invoke-direct {v4, p0}, Lcom/android/settings/widget/TouchAreaAnimView$2;-><init>(Lcom/android/settings/widget/TouchAreaAnimView;)V

    invoke-virtual {v5, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 362
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 364
    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 367
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    aput-object v4, v5, v3

    .line 368
    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 369
    new-instance v1, Lcom/android/settings/widget/TouchAreaAnimView$3;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/TouchAreaAnimView$3;-><init>(Lcom/android/settings/widget/TouchAreaAnimView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 392
    iput-object v0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mRadiationAnim:Landroid/animation/Animator;

    .line 393
    iget-object p0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mRadiationAnim:Landroid/animation/Animator;

    return-object p0

    nop

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3fc00000    # 1.5f
    .end array-data

    :array_1
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3fc00000    # 1.5f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x3fc00000    # 1.5f
        0x3e99999a    # 0.3f
    .end array-data

    :array_4
    .array-data 4
        0x3fc00000    # 1.5f
        0x3e99999a    # 0.3f
    .end array-data

    :array_5
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_6
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private isTouchPointIntoCircle(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 147
    iget p0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mViewScaleSize:I

    div-int/lit8 v0, p0, 0x2

    .line 148
    div-int/lit8 p0, p0, 0x2

    .line 149
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    int-to-float v0, v0

    sub-float/2addr v1, v0

    float-to-double v0, v1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 152
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    int-to-float p0, p0

    sub-float/2addr p1, p0

    float-to-double p0, p1

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    const-wide v0, 0x4056800000000000L    # 90.0

    cmpg-double p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private playActionDownAnim()V
    .locals 15

    const-string v0, "TouchAreaAnimView"

    const-string v1, "playActionDownAnim"

    .line 397
    invoke-static {v0, v1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-direct {p0}, Lcom/android/settings/widget/TouchAreaAnimView;->cancelCurrentAnim()Z

    .line 399
    iget-object v0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mTouchAnimView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 400
    iget-object v0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mTouchAnimView:Landroid/widget/ImageView;

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 401
    iget-object v0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mTouchAnimView:Landroid/widget/ImageView;

    const v2, 0x7f0803be

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 403
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 405
    sget v2, Lcom/android/settings/widget/TouchAreaAnimView;->TO_SCALE_OF_PRESSED:F

    .line 407
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 410
    iget-object v4, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mTouchAnimView:Landroid/widget/ImageView;

    const/4 v5, 0x2

    new-array v6, v5, [F

    const/high16 v7, 0x3f000000    # 0.5f

    aput v7, v6, v1

    const/4 v8, 0x1

    aput v2, v6, v8

    const-string v9, "scaleX"

    invoke-static {v4, v9, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v10, 0x12c

    .line 411
    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 412
    invoke-virtual {v4, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 413
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    iget-object v4, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mTouchAnimView:Landroid/widget/ImageView;

    new-array v6, v5, [F

    aput v7, v6, v1

    aput v2, v6, v8

    const-string v12, "scaleY"

    invoke-static {v4, v12, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 416
    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 417
    invoke-virtual {v4, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 418
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    iget-object v4, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mTouchAnimView:Landroid/widget/ImageView;

    new-array v6, v5, [F

    fill-array-data v6, :array_0

    const-string v13, "alpha"

    invoke-static {v4, v13, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v13, 0xc8

    .line 422
    invoke-virtual {v4, v13, v14}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v13, 0x190

    .line 423
    invoke-virtual {v4, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 424
    invoke-virtual {v4, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 425
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    iget-object v4, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mInnerAnimView:Landroid/widget/ImageView;

    new-array v6, v5, [F

    aput v7, v6, v1

    aput v2, v6, v8

    invoke-static {v4, v9, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 428
    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 429
    invoke-virtual {v4, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 430
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    iget-object v4, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mInnerAnimView:Landroid/widget/ImageView;

    new-array v5, v5, [F

    aput v7, v5, v1

    aput v2, v5, v8

    invoke-static {v4, v12, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 433
    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 434
    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 435
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 438
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 439
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 440
    iput-object v1, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mPlayingAnim:Landroid/animation/Animator;

    return-void

    nop

    :array_0
    .array-data 4
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private playInnerCircleAnim()V
    .locals 1

    .line 687
    iget-object v0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mScaleOuterCircleAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mScaleOuterCircleAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 690
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/widget/TouchAreaAnimView;->getInnerCircleAnim()Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private playRadiationAnim()V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mRadiationAnim:Landroid/animation/Animator;

    if-nez v0, :cond_0

    .line 266
    invoke-direct {p0}, Lcom/android/settings/widget/TouchAreaAnimView;->getRadiationAnim()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mRadiationAnim:Landroid/animation/Animator;

    .line 268
    :cond_0
    iget-object p0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mRadiationAnim:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private resetAnimViews()V
    .locals 3

    .line 630
    iget-object v0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mTouchAnimView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 631
    iget-object v0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mTouchAnimView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 632
    iget-object v0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mTouchAnimView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 633
    iget-object v0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mTouchAnimView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 635
    iget-object v0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mInnerAnimView:Landroid/widget/ImageView;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 636
    iget-object v0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mInnerAnimView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 637
    iget-object p0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mInnerAnimView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private showErrorToast(I)V
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->getTopActivity(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "top activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TouchAreaAnimView"

    invoke-static {v2, v1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 163
    :goto_0
    iget-object v1, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mTipsToast:Landroid/widget/Toast;

    if-eqz v0, :cond_2

    .line 167
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 170
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/widget/TouchAreaAnimView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mTipsToast:Landroid/widget/Toast;

    .line 171
    iget-object p1, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mTipsToast:Landroid/widget/Toast;

    const/16 v0, 0x11

    invoke-virtual {p1, v0, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 172
    iget-object p0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mTipsToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showToastMsgDelay(I)V
    .locals 3

    .line 714
    iget-object v0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 718
    iput v1, v0, Landroid/os/Message;->what:I

    .line 719
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 720
    iget-object p0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public cancelAnims()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mRadiationAnim:Landroid/animation/Animator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 138
    iput-object v1, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mRadiationAnim:Landroid/animation/Animator;

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mPlayingAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 142
    iput-object v1, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mPlayingAnim:Landroid/animation/Animator;

    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 177
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 178
    iget-object v1, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mTargetTestView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    .line 180
    iget-boolean v1, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mIsFingerDown:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    return v2

    .line 183
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-string v1, "TouchAreaAnimView"

    if-eqz v0, :cond_7

    if-eq v0, v2, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_6

    goto/16 :goto_0

    .line 196
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mIsFingerDown:Z

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const-string v0, "move"

    .line 199
    invoke-static {v1, v0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mTouchDownTime:J

    sub-long/2addr v4, v6

    .line 201
    sget-wide v6, Lcom/android/settings/widget/TouchAreaAnimView;->mPressTimeout:J

    cmp-long v0, v4, v6

    if-gtz v0, :cond_3

    .line 202
    invoke-direct {p0, p1}, Lcom/android/settings/widget/TouchAreaAnimView;->checkTouchArea(Landroid/view/MotionEvent;)V

    .line 204
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    .line 205
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    .line 206
    iget-boolean v4, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mBigBangTriggering:Z

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mMoveFingerTooLarge:Z

    if-nez v4, :cond_8

    iget v4, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mTouchDownPointX:I

    sub-int/2addr v0, v4

    .line 207
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v4, 0x43480000    # 200.0f

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_4

    iget v0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mTouchDownPointY:I

    sub-int/2addr p1, v0

    .line 208
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p1, v4

    if-lez p1, :cond_8

    :cond_4
    const-string p1, "move distance too large"

    .line 209
    invoke-static {v1, p1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iput-boolean v2, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mMoveFingerTooLarge:Z

    .line 211
    iget-object p1, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 212
    iget-object p0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_5
    const-string p1, "up"

    .line 217
    invoke-static {v1, p1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string p1, "cancel"

    .line 219
    invoke-static {v1, p1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-direct {p0, v2}, Lcom/android/settings/widget/TouchAreaAnimView;->endTouchTest(Z)V

    goto :goto_0

    :cond_7
    const-string v0, "down"

    .line 185
    invoke-static {v1, v0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mTouchDownPointX:I

    .line 187
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mTouchDownPointY:I

    .line 188
    iput-boolean v2, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mIsFingerDown:Z

    const/4 v0, 0x0

    .line 189
    iput-boolean v0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mMoveFingerTooLarge:Z

    .line 190
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mTouchDownTime:J

    .line 191
    iget-object v0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mHandler:Landroid/os/Handler;

    sget-wide v3, Lcom/android/settings/widget/TouchAreaAnimView;->mPressTimeout:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 192
    invoke-direct {p0, p1}, Lcom/android/settings/widget/TouchAreaAnimView;->checkTouchArea(Landroid/view/MotionEvent;)V

    :cond_8
    :goto_0
    return v2
.end method

.method public playActionUpAnim()V
    .locals 14

    .line 444
    invoke-direct {p0}, Lcom/android/settings/widget/TouchAreaAnimView;->cancelCurrentAnim()Z

    move-result v0

    .line 445
    iget-object v1, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mTouchAnimView:Landroid/widget/ImageView;

    const v2, 0x7f0803be

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 447
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mTouchAnimView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleX()F

    move-result v0

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/settings/widget/TouchAreaAnimView;->TO_SCALE_OF_PRESSED:F

    :goto_0
    const/high16 v2, 0x3f000000    # 0.5f

    .line 451
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 453
    iget-object v4, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mTouchAnimView:Landroid/widget/ImageView;

    const/4 v5, 0x2

    new-array v6, v5, [F

    const/4 v7, 0x0

    aput v0, v6, v7

    const/4 v8, 0x1

    aput v2, v6, v8

    const-string v9, "scaleX"

    invoke-static {v4, v9, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v10, 0x12c

    .line 454
    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 455
    invoke-virtual {v4, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 456
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    iget-object v4, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mTouchAnimView:Landroid/widget/ImageView;

    new-array v6, v5, [F

    aput v0, v6, v7

    aput v2, v6, v8

    const-string v12, "scaleY"

    invoke-static {v4, v12, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 459
    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 460
    invoke-virtual {v4, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 461
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    iget-object v4, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mTouchAnimView:Landroid/widget/ImageView;

    new-array v6, v5, [F

    fill-array-data v6, :array_0

    const-string v13, "alpha"

    invoke-static {v4, v13, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 464
    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 465
    invoke-virtual {v4, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 466
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    iget-object v4, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mInnerAnimView:Landroid/widget/ImageView;

    new-array v6, v5, [F

    aput v0, v6, v7

    aput v2, v6, v8

    invoke-static {v4, v9, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 469
    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 470
    invoke-virtual {v4, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 471
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    iget-object v4, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mInnerAnimView:Landroid/widget/ImageView;

    new-array v5, v5, [F

    aput v0, v5, v7

    aput v2, v5, v8

    invoke-static {v4, v12, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 474
    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 475
    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 476
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 479
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 480
    new-instance v1, Lcom/android/settings/widget/TouchAreaAnimView$4;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/TouchAreaAnimView$4;-><init>(Lcom/android/settings/widget/TouchAreaAnimView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 501
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 502
    iput-object v0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mPlayingAnim:Landroid/animation/Animator;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public playActionUpAnimWithError()V
    .locals 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 555
    invoke-direct {p0}, Lcom/android/settings/widget/TouchAreaAnimView;->cancelCurrentAnim()Z

    move-result v0

    .line 556
    iget-object v1, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mTouchAnimView:Landroid/widget/ImageView;

    const v2, 0x7f0803c0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 557
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mTouchAnimView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleX()F

    move-result v0

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/settings/widget/TouchAreaAnimView;->TO_SCALE_OF_ERROR:F

    :goto_0
    const/high16 v2, 0x3f000000    # 0.5f

    .line 561
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 563
    iget-object v4, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mTouchAnimView:Landroid/widget/ImageView;

    const/4 v5, 0x2

    new-array v6, v5, [F

    const/4 v7, 0x0

    aput v0, v6, v7

    const/4 v8, 0x1

    aput v2, v6, v8

    const-string v9, "scaleX"

    invoke-static {v4, v9, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v10, 0xc8

    .line 564
    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 565
    invoke-virtual {v4, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 566
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    iget-object v4, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mTouchAnimView:Landroid/widget/ImageView;

    new-array v6, v5, [F

    aput v0, v6, v7

    aput v2, v6, v8

    const-string v12, "scaleY"

    invoke-static {v4, v12, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 569
    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 570
    invoke-virtual {v4, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 571
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    iget-object v4, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mTouchAnimView:Landroid/widget/ImageView;

    new-array v6, v5, [F

    fill-array-data v6, :array_0

    const-string v13, "alpha"

    invoke-static {v4, v13, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 574
    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 575
    invoke-virtual {v4, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 576
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    iget-object v4, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mInnerAnimView:Landroid/widget/ImageView;

    new-array v6, v5, [F

    aput v0, v6, v7

    aput v2, v6, v8

    invoke-static {v4, v9, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 579
    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 580
    invoke-virtual {v4, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 581
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    iget-object v4, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mInnerAnimView:Landroid/widget/ImageView;

    new-array v6, v5, [F

    aput v0, v6, v7

    aput v2, v6, v8

    invoke-static {v4, v12, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 584
    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 585
    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 586
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    iget-object v0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mInnerAnimView:Landroid/widget/ImageView;

    new-array v2, v5, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v13, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 589
    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 590
    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 591
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 594
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 595
    new-instance v1, Lcom/android/settings/widget/TouchAreaAnimView$5;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/TouchAreaAnimView$5;-><init>(Lcom/android/settings/widget/TouchAreaAnimView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 617
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 618
    iput-object v0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mPlayingAnim:Landroid/animation/Animator;

    return-void

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
.end method

.method public playFailTriggerBigBangAnim()V
    .locals 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 507
    invoke-direct {p0}, Lcom/android/settings/widget/TouchAreaAnimView;->cancelCurrentAnim()Z

    .line 508
    iget-object v0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mTouchAnimView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 509
    iget-object v0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mTouchAnimView:Landroid/widget/ImageView;

    const v2, 0x7f0803c0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 510
    iget-object v0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mTouchAnimView:Landroid/widget/ImageView;

    sget v2, Lcom/android/settings/widget/TouchAreaAnimView;->TO_SCALE_OF_ERROR:F

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 511
    iget-object v0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mTouchAnimView:Landroid/widget/ImageView;

    sget v2, Lcom/android/settings/widget/TouchAreaAnimView;->TO_SCALE_OF_ERROR:F

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 512
    iget-object v0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mTouchAnimView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 514
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 515
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 517
    sget v3, Lcom/android/settings/widget/TouchAreaAnimView;->TO_SCALE_OF_ERROR:F

    .line 520
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 522
    iget-object v5, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mTouchAnimView:Landroid/widget/ImageView;

    const/4 v6, 0x2

    new-array v7, v6, [F

    fill-array-data v7, :array_0

    const-string v8, "alpha"

    invoke-static {v5, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v9, 0xc8

    .line 523
    invoke-virtual {v5, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 524
    invoke-virtual {v5, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 525
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    iget-object v5, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mInnerAnimView:Landroid/widget/ImageView;

    new-array v7, v6, [F

    const/high16 v11, 0x3f000000    # 0.5f

    aput v11, v7, v1

    const/4 v12, 0x1

    aput v3, v7, v12

    const-string v13, "scaleX"

    invoke-static {v5, v13, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v13, 0x12c

    .line 528
    invoke-virtual {v5, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 529
    invoke-virtual {v5, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 530
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    iget-object v5, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mInnerAnimView:Landroid/widget/ImageView;

    new-array v7, v6, [F

    aput v11, v7, v1

    aput v3, v7, v12

    const-string v3, "scaleY"

    invoke-static {v5, v3, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 533
    invoke-virtual {v3, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 534
    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 535
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    iget-object v3, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mInnerAnimView:Landroid/widget/ImageView;

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v8, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 538
    invoke-virtual {v3, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 539
    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 540
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 543
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 544
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 545
    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 546
    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    new-array v0, v6, [Landroid/animation/Animator;

    aput-object v4, v0, v1

    aput-object v5, v0, v12

    .line 547
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 548
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 550
    iput-object v3, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mPlayingAnim:Landroid/animation/Animator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public setTargetTextView(Landroid/widget/TextView;)V
    .locals 0

    .line 641
    iput-object p1, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mTargetTestView:Landroid/widget/TextView;

    return-void
.end method

.method public setTouchAreaType(I)V
    .locals 1

    const/4 v0, 0x1

    .line 645
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/TouchAreaAnimView;->setTouchAreaType(IZ)V

    return-void
.end method

.method public setTouchAreaType(IZ)V
    .locals 2

    .line 649
    iput p1, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mAreaType:I

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x3f666666    # 0.9f

    .line 668
    sput p1, Lcom/android/settings/widget/TouchAreaAnimView;->SCALE_OF_INNER_CIRCLE:F

    goto :goto_0

    :cond_1
    const p1, 0x3f4ccccd    # 0.8f

    .line 664
    sput p1, Lcom/android/settings/widget/TouchAreaAnimView;->SCALE_OF_INNER_CIRCLE:F

    goto :goto_0

    :cond_2
    const p1, 0x3f333333    # 0.7f

    .line 660
    sput p1, Lcom/android/settings/widget/TouchAreaAnimView;->SCALE_OF_INNER_CIRCLE:F

    goto :goto_0

    :cond_3
    const p1, 0x3f19999a    # 0.6f

    .line 656
    sput p1, Lcom/android/settings/widget/TouchAreaAnimView;->SCALE_OF_INNER_CIRCLE:F

    goto :goto_0

    :cond_4
    const/high16 p1, 0x3f000000    # 0.5f

    .line 652
    sput p1, Lcom/android/settings/widget/TouchAreaAnimView;->SCALE_OF_INNER_CIRCLE:F

    .line 671
    :goto_0
    iget-object p1, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10700bc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 672
    iget v0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mAreaType:I

    if-ltz v0, :cond_5

    array-length v1, p1

    if-ge v0, v1, :cond_5

    .line 673
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mTextBoomArea:F

    .line 674
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mTextBoomArea "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mTextBoomArea:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TouchAreaAnimView"

    invoke-static {v0, p1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz p2, :cond_6

    .line 677
    invoke-direct {p0}, Lcom/android/settings/widget/TouchAreaAnimView;->playInnerCircleAnim()V

    goto :goto_1

    .line 679
    :cond_6
    iget-object p1, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mInnerAnimView:Landroid/widget/ImageView;

    sget p2, Lcom/android/settings/widget/TouchAreaAnimView;->SCALE_OF_INNER_CIRCLE:F

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 680
    iget-object p0, p0, Lcom/android/settings/widget/TouchAreaAnimView;->mInnerAnimView:Landroid/widget/ImageView;

    sget p1, Lcom/android/settings/widget/TouchAreaAnimView;->SCALE_OF_INNER_CIRCLE:F

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    :goto_1
    return-void
.end method
