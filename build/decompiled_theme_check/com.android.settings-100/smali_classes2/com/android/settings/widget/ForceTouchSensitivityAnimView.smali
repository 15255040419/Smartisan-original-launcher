.class public Lcom/android/settings/widget/ForceTouchSensitivityAnimView;
.super Landroid/widget/RelativeLayout;
.source "ForceTouchSensitivityAnimView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/ForceTouchSensitivityAnimView$Point;,
        Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;
    }
.end annotation


# static fields
.field private static final MSG_FAILED_FORCE_TOUCH_FINGER_MOVE_SO_FAR:I = 0x2

.field private static final MSG_FAILED_FORCE_TOUCH_PRESSURE_NOT_ENOUGH:I = 0x1

.field private static final MSG_RESET_ANIM:I = 0x5

.field private static final MSG_SHOW_ERROR_INFO:I = 0x3

.field private static final MSG_START_FORCE_TOUCH:I = 0x4

.field private static final PLAY_FORCE_TOUCH_ANIM_DELAY:J = 0x190L

.field private static SCALE_OF_INNER_CIRCLE:F = 0.7f

.field private static final TAG:Ljava/lang/String; = "ltan/ForceTouchSensitivityAnimView"

.field private static final TOUCH_MOVE_BOUNDARY:F = 500.0f

.field private static sPressTimeout:J


# instance fields
.field private mAnimController:Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;

.field private mContext:Landroid/content/Context;

.field private mForceTouchSucceed:Z

.field private mHandler:Landroid/os/Handler;

.field private mHasError:Z

.field private mInnerAnimView:Landroid/widget/ImageView;

.field private mIsFingerDown:Z

.field private mMoveFingerSoFar:Z

.field private mPlayingAnim:Landroid/animation/Animator;

.field private mRadiationAnim:Landroid/animation/Animator;

.field private mRadiationAnimView:Landroid/widget/ImageView;

.field private mScaleOuterCircleAnim:Landroid/animation/AnimatorSet;

.field private mTouchAnimView:Landroid/widget/ImageView;

.field private mTouchDownPointX:I

.field private mTouchDownPointY:I

.field private mTouchDownTime:J

.field private mTouchTargetView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    new-instance p2, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$1;

    invoke-direct {p2, p0}, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$1;-><init>(Lcom/android/settings/widget/ForceTouchSensitivityAnimView;)V

    iput-object p2, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mHandler:Landroid/os/Handler;

    .line 114
    iput-object p1, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mContext:Landroid/content/Context;

    .line 115
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0123

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f0a0770

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mRadiationAnimView:Landroid/widget/ImageView;

    const p1, 0x7f0a046e

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mInnerAnimView:Landroid/widget/ImageView;

    const p1, 0x7f0a098e

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mTouchAnimView:Landroid/widget/ImageView;

    .line 120
    iget-object p1, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mInnerAnimView:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mTouchTargetView:Landroid/view/View;

    const-wide/16 p1, 0x1388

    .line 121
    sput-wide p1, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->sPressTimeout:J

    const/4 p1, 0x0

    .line 122
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->setTouchAreaType(Z)V

    .line 123
    invoke-direct {p0}, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->playRadiationAnim()V

    .line 124
    invoke-direct {p0}, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->initAnimController()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/ForceTouchSensitivityAnimView;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->showToastMsgDelay(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/widget/ForceTouchSensitivityAnimView;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mHasError:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/widget/ForceTouchSensitivityAnimView;Z)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->forceTouchTestEnd(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/widget/ForceTouchSensitivityAnimView;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mIsFingerDown:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/settings/widget/ForceTouchSensitivityAnimView;)Landroid/widget/ImageView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mRadiationAnimView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/widget/ForceTouchSensitivityAnimView;)Landroid/animation/Animator;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mRadiationAnim:Landroid/animation/Animator;

    return-object p0
.end method

.method private checkTouchPressure(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 215
    invoke-static {}, Lsmartisanos/api/ViewSmt;->getInstance()Lsmartisanos/api/ViewSmt;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPressure()F

    move-result p2

    invoke-virtual {v0, p1, v1, p2}, Lsmartisanos/api/ViewSmt;->isForceTouch(Landroid/view/View;Landroid/content/Context;F)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 216
    iget-boolean p1, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mForceTouchSucceed:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 217
    iput-boolean p1, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mForceTouchSucceed:Z

    const-string p2, "ltan/ForceTouchSensitivityAnimView"

    const-string v0, "pressure of force touch is reached..."

    .line 218
    invoke-static {p2, v0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object p2, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 220
    iget-object p0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x4

    const-wide/16 v0, 0x190

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private forceTouchTestEnd(Z)V
    .locals 2

    .line 205
    iget-boolean p1, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mIsFingerDown:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 208
    iput-boolean p1, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mIsFingerDown:Z

    .line 209
    iput-boolean p1, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mForceTouchSucceed:Z

    .line 210
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 211
    iput-boolean p1, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mHasError:Z

    return-void
.end method

.method private getInnerCircleAnim()Landroid/animation/AnimatorSet;
    .locals 11

    .line 401
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mInnerAnimView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleX()F

    move-result v0

    .line 402
    sget v1, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->SCALE_OF_INNER_CIRCLE:F

    .line 405
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 407
    iget-object v3, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mInnerAnimView:Landroid/widget/ImageView;

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

    .line 408
    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 409
    invoke-virtual {v3, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 411
    iget-object v5, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mInnerAnimView:Landroid/widget/ImageView;

    new-array v10, v4, [F

    aput v0, v10, v6

    aput v1, v10, v7

    const-string v0, "scaleY"

    invoke-static {v5, v0, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 412
    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 413
    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 415
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mScaleOuterCircleAnim:Landroid/animation/AnimatorSet;

    .line 416
    iget-object v1, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mScaleOuterCircleAnim:Landroid/animation/AnimatorSet;

    new-array v2, v4, [Landroid/animation/Animator;

    aput-object v3, v2, v6

    aput-object v0, v2, v7

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 417
    iget-object p0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mScaleOuterCircleAnim:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method private getRadiationAnim()Landroid/animation/Animator;
    .locals 11

    .line 261
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mRadiationAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    return-object v0

    .line 265
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 269
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 271
    iget-object v2, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mRadiationAnimView:Landroid/widget/ImageView;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    const-string v5, "scaleX"

    invoke-static {v2, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v6, 0x2bc

    .line 272
    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 273
    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 274
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object v2, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mRadiationAnimView:Landroid/widget/ImageView;

    new-array v4, v3, [F

    fill-array-data v4, :array_1

    const-string v8, "scaleY"

    invoke-static {v2, v8, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 277
    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 278
    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 279
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v2, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mRadiationAnimView:Landroid/widget/ImageView;

    new-array v4, v3, [F

    fill-array-data v4, :array_2

    const-string v9, "alpha"

    invoke-static {v2, v9, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 282
    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 283
    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 284
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 286
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v6, 0x12c

    .line 287
    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 294
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 295
    iget-object v4, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mRadiationAnimView:Landroid/widget/ImageView;

    new-array v10, v3, [F

    fill-array-data v10, :array_3

    invoke-static {v4, v5, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 296
    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 297
    invoke-virtual {v4, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 298
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object v4, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mRadiationAnimView:Landroid/widget/ImageView;

    new-array v10, v3, [F

    fill-array-data v10, :array_4

    invoke-static {v4, v8, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 301
    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 302
    invoke-virtual {v4, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 303
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 306
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 313
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 316
    iget-object v6, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mRadiationAnimView:Landroid/widget/ImageView;

    new-array v7, v3, [F

    fill-array-data v7, :array_5

    invoke-static {v6, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0x258

    .line 317
    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 318
    invoke-virtual {v5, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 319
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    iget-object v5, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mRadiationAnimView:Landroid/widget/ImageView;

    new-array v10, v3, [F

    fill-array-data v10, :array_6

    invoke-static {v5, v8, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 322
    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 323
    invoke-virtual {v5, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 324
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    iget-object v5, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mRadiationAnimView:Landroid/widget/ImageView;

    new-array v8, v3, [F

    fill-array-data v8, :array_7

    invoke-static {v5, v9, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 327
    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 328
    invoke-virtual {v5, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 329
    new-instance v4, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$2;

    invoke-direct {v4, p0}, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$2;-><init>(Lcom/android/settings/widget/ForceTouchSensitivityAnimView;)V

    invoke-virtual {v5, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 350
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 352
    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 355
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    aput-object v4, v5, v3

    .line 356
    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 357
    new-instance v1, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$3;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$3;-><init>(Lcom/android/settings/widget/ForceTouchSensitivityAnimView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 380
    iput-object v0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mRadiationAnim:Landroid/animation/Animator;

    .line 381
    iget-object p0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mRadiationAnim:Landroid/animation/Animator;

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

.method private initAnimController()V
    .locals 6

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Integer;

    const v1, 0x7f08015d

    .line 129
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f08015f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const v1, 0x7f080161

    .line 130
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const v1, 0x7f080163

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const v1, 0x7f080165

    .line 131
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v0, v3

    .line 128
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070176

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070174

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 134
    iget-object v4, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mAnimController:Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;

    if-nez v4, :cond_0

    .line 135
    new-instance v4, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;

    iget-object v5, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5, v0}, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;-><init>(Lcom/android/settings/widget/ForceTouchSensitivityAnimView;Landroid/content/Context;Ljava/util/List;)V

    iput-object v4, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mAnimController:Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;

    .line 137
    :cond_0
    iget-object p0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mAnimController:Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;->setRadius(III)V

    return-void
.end method

.method private isIllegalTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 145
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 146
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 147
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    .line 148
    iget-boolean p0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mIsFingerDown:Z

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private playInnerCircleAnim()V
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mScaleOuterCircleAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mScaleOuterCircleAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 397
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->getInnerCircleAnim()Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private playRadiationAnim()V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mRadiationAnim:Landroid/animation/Animator;

    if-nez v0, :cond_0

    .line 255
    invoke-direct {p0}, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->getRadiationAnim()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mRadiationAnim:Landroid/animation/Animator;

    .line 257
    :cond_0
    iget-object p0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mRadiationAnim:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private resetAnimViews()V
    .locals 3

    .line 243
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mTouchAnimView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mTouchAnimView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 245
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mTouchAnimView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 246
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mTouchAnimView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 248
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mInnerAnimView:Landroid/widget/ImageView;

    sget v2, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->SCALE_OF_INNER_CIRCLE:F

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 249
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mInnerAnimView:Landroid/widget/ImageView;

    sget v2, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->SCALE_OF_INNER_CIRCLE:F

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 250
    iget-object p0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mInnerAnimView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private showToastMsgDelay(I)V
    .locals 3

    .line 434
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 438
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 439
    iget-object p0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public cancelAnims()V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mRadiationAnim:Landroid/animation/Animator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 230
    iput-object v1, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mRadiationAnim:Landroid/animation/Animator;

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mPlayingAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 233
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 234
    iput-object v1, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mPlayingAnim:Landroid/animation/Animator;

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mScaleOuterCircleAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 237
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 238
    iput-object v1, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mScaleOuterCircleAnim:Landroid/animation/AnimatorSet;

    :cond_2
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 153
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mTouchTargetView:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->isIllegalTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 156
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-string v2, "ltan/ForceTouchSensitivityAnimView"

    if-eqz v0, :cond_7

    if-eq v0, v1, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_6

    goto/16 :goto_0

    .line 169
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mIsFingerDown:Z

    if-nez v0, :cond_2

    goto/16 :goto_0

    .line 172
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mTouchDownTime:J

    sub-long/2addr v4, v6

    .line 173
    sget-wide v6, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->sPressTimeout:J

    cmp-long v0, v4, v6

    if-gtz v0, :cond_3

    .line 174
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mTouchTargetView:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->checkTouchPressure(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 175
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->onForceTouchSucceed(Landroid/view/MotionEvent;)V

    .line 178
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    .line 179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    .line 180
    iget-boolean v4, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mForceTouchSucceed:Z

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mMoveFingerSoFar:Z

    if-nez v4, :cond_8

    iget v4, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mTouchDownPointX:I

    sub-int/2addr v0, v4

    .line 181
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v4, 0x43fa0000    # 500.0f

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_4

    iget v0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mTouchDownPointY:I

    sub-int/2addr p1, v0

    .line 182
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p1, v4

    if-lez p1, :cond_8

    :cond_4
    const-string p1, "move distance too large"

    .line 183
    invoke-static {v2, p1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iput-boolean v1, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mMoveFingerSoFar:Z

    .line 185
    iget-object p1, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 186
    iget-object p0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_5
    const-string v0, "ACTION_UP"

    .line 191
    invoke-static {v2, v0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string v0, "ACTION_CANCEL"

    .line 193
    invoke-static {v2, v0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-direct {p0, v1}, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->forceTouchTestEnd(Z)V

    .line 195
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->onForceTouchCancel(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_7
    const-string v0, "ACTION_DOWN"

    .line 158
    invoke-static {v2, v0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mTouchDownPointX:I

    .line 160
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mTouchDownPointY:I

    .line 161
    iput-boolean v1, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mIsFingerDown:Z

    const/4 v0, 0x0

    .line 162
    iput-boolean v0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mMoveFingerSoFar:Z

    .line 163
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mTouchDownTime:J

    .line 164
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mHandler:Landroid/os/Handler;

    sget-wide v2, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->sPressTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 165
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->onForceTouchStart(Landroid/view/MotionEvent;)V

    :cond_8
    :goto_0
    return v1
.end method

.method public onForceTouchCancel(Landroid/view/MotionEvent;)V
    .locals 0

    .line 430
    iget-object p0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mAnimController:Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;

    invoke-virtual {p0}, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;->onDestroy()V

    return-void
.end method

.method public onForceTouchStart(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onForceTouchSucceed(Landroid/view/MotionEvent;)V
    .locals 2

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onForceTouchSucceed: x:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ltan/ForceTouchSensitivityAnimView"

    invoke-static {v0, p1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object p1, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mAnimController:Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;

    invoke-static {p1}, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;->access$600(Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;)V

    .line 426
    iget-object p1, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mAnimController:Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;

    invoke-virtual {p0}, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    invoke-virtual {p1, v0, p0}, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;->startBigMenu(FF)V

    return-void
.end method

.method public setTargetTouchView(Landroid/view/View;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mTouchTargetView:Landroid/view/View;

    return-void
.end method

.method public setTouchAreaType(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 386
    invoke-direct {p0}, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->playInnerCircleAnim()V

    goto :goto_0

    .line 388
    :cond_0
    iget-object p1, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mInnerAnimView:Landroid/widget/ImageView;

    sget v0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->SCALE_OF_INNER_CIRCLE:F

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 389
    iget-object p0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->mInnerAnimView:Landroid/widget/ImageView;

    sget p1, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->SCALE_OF_INNER_CIRCLE:F

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    :goto_0
    return-void
.end method
