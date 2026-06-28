.class Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;
.super Ljava/lang/Object;
.source "ForceTouchSensitivityAnimView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/ForceTouchSensitivityAnimView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SectorManager"
.end annotation


# instance fields
.field private centerX:F

.field private centerY:F

.field private mAnimFrameContainer:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field private mEndSectorRadius:I

.field private mIconRadius:I

.field private mIconResourceIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mImageVies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mStartSectorRadius:I

.field private mToolsAnimatorSet:Landroid/animation/AnimatorSet;

.field final synthetic this$0:Lcom/android/settings/widget/ForceTouchSensitivityAnimView;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/ForceTouchSensitivityAnimView;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 453
    iput-object p1, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;->this$0:Lcom/android/settings/widget/ForceTouchSensitivityAnimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    iput-object p2, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;->mContext:Landroid/content/Context;

    .line 455
    iput-object p3, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;->mIconResourceIds:Ljava/util/List;

    .line 456
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;->mImageVies:Ljava/util/List;

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;)V
    .locals 0

    .line 442
    invoke-direct {p0}, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;->initSectorView()V

    return-void
.end method

.method private buildAnimForItemView(Landroid/animation/AnimatorSet;Landroid/view/View;Lcom/android/settings/widget/ForceTouchSensitivityAnimView$Point;Lcom/android/settings/widget/ForceTouchSensitivityAnimView$Point;)Landroid/animation/AnimatorSet;
    .locals 5

    if-nez p1, :cond_0

    .line 515
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 518
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 519
    iget v0, p3, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$Point;->x:F

    invoke-virtual {p2, v0}, Landroid/view/View;->setX(F)V

    .line 520
    iget v0, p3, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$Point;->y:F

    invoke-virtual {p2, v0}, Landroid/view/View;->setY(F)V

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 522
    iget v2, p3, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$Point;->x:F

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p4, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$Point;->x:F

    const/4 v4, 0x1

    aput v2, v1, v4

    const-string v2, "translationX"

    invoke-static {p2, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v2, v0, [F

    .line 523
    iget p3, p3, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$Point;->y:F

    aput p3, v2, v3

    iget p3, p4, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$Point;->y:F

    aput p3, v2, v4

    const-string p3, "translationY"

    invoke-static {p2, p3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    new-array p4, v0, [F

    .line 524
    fill-array-data p4, :array_0

    const-string v2, "alpha"

    invoke-static {p2, v2, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    new-array v0, v0, [F

    .line 525
    fill-array-data v0, :array_1

    invoke-static {p2, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-wide/16 v2, 0x64

    .line 527
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 528
    invoke-virtual {p3, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 529
    invoke-virtual {p4, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x12c

    .line 531
    invoke-virtual {p2, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xa28

    .line 532
    invoke-virtual {p2, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 533
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-object p1

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

.method private initSectorView()V
    .locals 5

    .line 478
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;->mAnimFrameContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 479
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;->mAnimFrameContainer:Landroid/widget/FrameLayout;

    .line 480
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 481
    iget-object v1, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;->mAnimFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 482
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;->this$0:Lcom/android/settings/widget/ForceTouchSensitivityAnimView;

    iget-object v1, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;->mAnimFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->addView(Landroid/view/View;)V

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;->mIconResourceIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 486
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 487
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 488
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 489
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v1, 0x0

    .line 490
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 491
    iget-object v1, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;->mAnimFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 492
    iget-object v1, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;->mImageVies:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private startBigMenuAnimator()V
    .locals 6

    .line 497
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;->mToolsAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 501
    :cond_0
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const v1, 0x3fd9999a    # 1.7f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 502
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;->mToolsAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    .line 503
    :goto_0
    iget-object v2, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;->mImageVies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 504
    iget v2, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;->mStartSectorRadius:I

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;->getTranslation(II)Lcom/android/settings/widget/ForceTouchSensitivityAnimView$Point;

    move-result-object v2

    .line 505
    iget v3, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;->mEndSectorRadius:I

    invoke-virtual {p0, v3, v1}, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;->getTranslation(II)Lcom/android/settings/widget/ForceTouchSensitivityAnimView$Point;

    move-result-object v3

    .line 506
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "item "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " tartBigMenuAnimator: startPoint:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", endPoint:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ltan/ForceTouchSensitivityAnimView"

    invoke-static {v5, v4}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    iget-object v4, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;->mToolsAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;->mImageVies:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-direct {p0, v4, v5, v2, v3}, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;->buildAnimForItemView(Landroid/animation/AnimatorSet;Landroid/view/View;Lcom/android/settings/widget/ForceTouchSensitivityAnimView$Point;Lcom/android/settings/widget/ForceTouchSensitivityAnimView$Point;)Landroid/animation/AnimatorSet;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 509
    :cond_1
    iget-object v1, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;->mToolsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 510
    iget-object p0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;->mToolsAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private vibrate()V
    .locals 1

    .line 555
    iget-object p0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;->mContext:Landroid/content/Context;

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    const/4 v0, 0x2

    .line 556
    invoke-static {p0, v0}, Lsmartisanos/api/VibratorSmt;->vibrateEffect(Landroid/os/Vibrator;I)V

    return-void
.end method


# virtual methods
.method getTranslation(II)Lcom/android/settings/widget/ForceTouchSensitivityAnimView$Point;
    .locals 7

    .line 560
    new-instance v0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$Point;

    iget-object v1, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;->this$0:Lcom/android/settings/widget/ForceTouchSensitivityAnimView;

    iget v2, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;->centerX:F

    iget v3, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;->centerY:F

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$Point;-><init>(Lcom/android/settings/widget/ForceTouchSensitivityAnimView;FF)V

    .line 561
    iget-object v1, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;->mIconResourceIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v3, 0x43340000    # 180.0f

    div-float/2addr v3, v1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    if-eqz p2, :cond_4

    if-eq p2, v2, :cond_3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    const/4 v1, 0x4

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 578
    :cond_0
    iget p2, v0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$Point;->x:F

    int-to-float p1, p1

    add-float/2addr p2, p1

    iput p2, v0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$Point;->x:F

    goto :goto_0

    .line 574
    :cond_1
    iget p2, v0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$Point;->x:F

    float-to-double v1, p2

    int-to-double p1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v5, p1

    add-double/2addr v1, v5

    double-to-float v1, v1

    iput v1, v0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$Point;->x:F

    .line 575
    iget v1, v0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$Point;->y:F

    float-to-double v1, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr p1, v3

    sub-double/2addr v1, p1

    double-to-float p1, v1

    iput p1, v0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$Point;->y:F

    goto :goto_0

    .line 571
    :cond_2
    iget p2, v0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$Point;->y:F

    int-to-float p1, p1

    sub-float/2addr p2, p1

    iput p2, v0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$Point;->y:F

    goto :goto_0

    .line 567
    :cond_3
    iget p2, v0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$Point;->x:F

    float-to-double v1, p2

    int-to-double p1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v5, p1

    sub-double/2addr v1, v5

    double-to-float v1, v1

    iput v1, v0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$Point;->x:F

    .line 568
    iget v1, v0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$Point;->y:F

    float-to-double v1, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr p1, v3

    sub-double/2addr v1, p1

    double-to-float p1, v1

    iput p1, v0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$Point;->y:F

    goto :goto_0

    .line 564
    :cond_4
    iget p2, v0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$Point;->x:F

    int-to-float p1, p1

    sub-float/2addr p2, p1

    iput p2, v0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$Point;->x:F

    .line 581
    :goto_0
    iget p0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;->mIconRadius:I

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$Point;->calculateCoordinate(I)Lcom/android/settings/widget/ForceTouchSensitivityAnimView$Point;

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .line 542
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;->mToolsAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 543
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 544
    iput-object v1, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;->mToolsAnimatorSet:Landroid/animation/AnimatorSet;

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;->mAnimFrameContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 547
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 548
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;->this$0:Lcom/android/settings/widget/ForceTouchSensitivityAnimView;

    iget-object v2, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;->mAnimFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->removeView(Landroid/view/View;)V

    .line 549
    iput-object v1, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;->mAnimFrameContainer:Landroid/widget/FrameLayout;

    .line 551
    :cond_1
    iget-object p0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;->mImageVies:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public setRadius(III)V
    .locals 0

    .line 460
    iput p1, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;->mIconRadius:I

    .line 461
    iput p2, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;->mStartSectorRadius:I

    .line 462
    iput p3, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;->mEndSectorRadius:I

    return-void
.end method

.method public startBigMenu(FF)V
    .locals 2

    .line 466
    iput p1, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;->centerX:F

    .line 467
    iput p2, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;->centerY:F

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startBigMenu: centerX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", centerY:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ltan/ForceTouchSensitivityAnimView"

    invoke-static {p2, p1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iget-object p1, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;->mIconResourceIds:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;->mImageVies:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 473
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;->startBigMenuAnimator()V

    .line 474
    invoke-direct {p0}, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$SectorManager;->vibrate()V

    return-void

    :cond_1
    :goto_0
    const-string p0, "startBigMenu: you do not have any icons to show"

    .line 470
    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
