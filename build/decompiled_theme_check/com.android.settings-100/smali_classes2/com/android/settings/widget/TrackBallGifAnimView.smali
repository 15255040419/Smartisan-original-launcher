.class public Lcom/android/settings/widget/TrackBallGifAnimView;
.super Landroid/widget/RelativeLayout;
.source "TrackBallGifAnimView.java"


# static fields
.field private static final mInterpolator:Landroid/view/animation/DecelerateInterpolator;


# instance fields
.field private final ANIMATION_KEEP_TIME:J

.field private final ANIMATION_START_DELAY:J

.field private final HAND_END_X:F

.field private final HAND_END_Y:F

.field private final HAND_START_X:F

.field private final HAND_START_Y:F

.field private final PAGE_EDIT_END_X:F

.field private final PAGE_EDIT_START_X:F

.field private final TRACKBALL_X:F

.field private final TRACKBALL_Y:F

.field private mAnimSet:Landroid/animation/AnimatorSet;

.field private mHandView:Landroid/widget/ImageView;

.field private mHomePage:Landroid/widget/ImageView;

.field private mMsgEditPage:Landroid/widget/ImageView;

.field private mMsgListPage:Landroid/widget/ImageView;

.field private mTrackballHighLight:Landroid/widget/ImageView;

.field private mTrackballView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/android/settings/widget/TrackBallGifAnimView;->mInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/TrackBallGifAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/TrackBallGifAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d030a

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f0a098f

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/TrackBallGifAnimView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mTrackballView:Landroid/widget/ImageView;

    const p1, 0x7f0a0992

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/TrackBallGifAnimView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mTrackballHighLight:Landroid/widget/ImageView;

    const p1, 0x7f0a0993

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/TrackBallGifAnimView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mMsgEditPage:Landroid/widget/ImageView;

    const p1, 0x7f0a0994

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/TrackBallGifAnimView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mMsgListPage:Landroid/widget/ImageView;

    const p1, 0x7f0a0991

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/TrackBallGifAnimView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mHandView:Landroid/widget/ImageView;

    const p1, 0x7f0a0995

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/TrackBallGifAnimView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mHomePage:Landroid/widget/ImageView;

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/widget/TrackBallGifAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070378

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->HAND_START_X:F

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/widget/TrackBallGifAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070379

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->HAND_START_Y:F

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/widget/TrackBallGifAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070376

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->HAND_END_X:F

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/widget/TrackBallGifAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070377

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->HAND_END_Y:F

    const/4 p1, 0x0

    .line 64
    iput p1, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->PAGE_EDIT_START_X:F

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/widget/TrackBallGifAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07037a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->PAGE_EDIT_END_X:F

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/widget/TrackBallGifAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07037b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->TRACKBALL_X:F

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/widget/TrackBallGifAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07037c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->TRACKBALL_Y:F

    const-wide/16 p1, 0x3e8

    .line 69
    iput-wide p1, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->ANIMATION_START_DELAY:J

    const-wide/16 p1, 0x514

    .line 70
    iput-wide p1, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->ANIMATION_KEEP_TIME:J

    .line 71
    invoke-direct {p0}, Lcom/android/settings/widget/TrackBallGifAnimView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/TrackBallGifAnimView;)J
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->ANIMATION_KEEP_TIME:J

    return-wide v0
.end method

.method private createAlphaAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;
    .locals 1

    const/4 p0, 0x2

    new-array p0, p0, [F

    const/4 v0, 0x0

    aput p2, p0, v0

    const/4 p2, 0x1

    aput p3, p0, p2

    const-string p2, "alpha"

    .line 310
    invoke-static {p1, p2, p0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 311
    invoke-virtual {p0, p4, p5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 312
    invoke-virtual {p0, p6, p7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 313
    sget-object p1, Lcom/android/settings/widget/TrackBallGifAnimView;->mInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method private createBackToHomeAnim()Landroid/animation/Animator;
    .locals 10

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 284
    iget-object v2, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mMsgListPage:Landroid/widget/ImageView;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const-wide/16 v5, 0x190

    const-wide/16 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/settings/widget/TrackBallGifAnimView;->createScaleAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    iget-object v3, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mHomePage:Landroid/widget/ImageView;

    const v4, 0x3fa66666    # 1.3f

    const/high16 v5, 0x3f800000    # 1.0f

    const-wide/16 v6, 0x190

    const-wide/16 v8, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/widget/TrackBallGifAnimView;->createScaleAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 287
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v0, 0x19c8

    .line 288
    invoke-virtual {p0, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    return-object p0
.end method

.method private createEnterLeftAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;
    .locals 1

    const/4 p0, 0x2

    new-array p0, p0, [F

    const/4 v0, 0x0

    aput p2, p0, v0

    const/4 p2, 0x1

    aput p3, p0, p2

    const-string p2, "X"

    .line 326
    invoke-static {p1, p2, p0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 327
    invoke-virtual {p0, p4, p5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 328
    invoke-virtual {p0, p6, p7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 329
    sget-object p1, Lcom/android/settings/widget/TrackBallGifAnimView;->mInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method private createExitRightAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;
    .locals 1

    const/4 p0, 0x2

    new-array p0, p0, [F

    const/4 v0, 0x0

    aput p2, p0, v0

    const/4 p2, 0x1

    aput p3, p0, p2

    const-string p2, "X"

    .line 318
    invoke-static {p1, p2, p0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 319
    invoke-virtual {p0, p4, p5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 320
    invoke-virtual {p0, p6, p7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 321
    sget-object p1, Lcom/android/settings/widget/TrackBallGifAnimView;->mInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method private createHandInAnim()Landroid/animation/Animator;
    .locals 8

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    iget-object v1, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mHandView:Landroid/widget/ImageView;

    const/4 v2, 0x2

    new-array v3, v2, [F

    iget v4, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->HAND_START_X:F

    const/4 v5, 0x0

    aput v4, v3, v5

    iget v4, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->HAND_END_X:F

    const/4 v6, 0x1

    aput v4, v3, v6

    const-string v4, "X"

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v3, 0x12c

    .line 159
    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 160
    sget-object v7, Lcom/android/settings/widget/TrackBallGifAnimView;->mInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v1, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 161
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v1, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mHandView:Landroid/widget/ImageView;

    new-array v2, v2, [F

    iget v7, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->HAND_START_Y:F

    aput v7, v2, v5

    iget p0, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->HAND_END_Y:F

    aput p0, v2, v6

    const-string p0, "Y"

    invoke-static {v1, p0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 164
    invoke-virtual {p0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 165
    sget-object v1, Lcom/android/settings/widget/TrackBallGifAnimView;->mInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 166
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 169
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-object p0
.end method

.method private createHandInAnim2()Landroid/animation/Animator;
    .locals 8

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    iget-object v1, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mHandView:Landroid/widget/ImageView;

    const/4 v2, 0x2

    new-array v3, v2, [F

    iget v4, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->HAND_START_X:F

    const/4 v5, 0x0

    aput v4, v3, v5

    iget v4, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->HAND_END_X:F

    const/4 v6, 0x1

    aput v4, v3, v6

    const-string v4, "X"

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v3, 0x190

    .line 177
    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 178
    sget-object v7, Lcom/android/settings/widget/TrackBallGifAnimView;->mInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v1, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 179
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v1, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mHandView:Landroid/widget/ImageView;

    new-array v2, v2, [F

    iget v7, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->HAND_START_Y:F

    aput v7, v2, v5

    iget p0, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->HAND_END_Y:F

    aput p0, v2, v6

    const-string p0, "Y"

    invoke-static {v1, p0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 182
    invoke-virtual {p0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 183
    sget-object v1, Lcom/android/settings/widget/TrackBallGifAnimView;->mInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 184
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 187
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v0, 0x11f8

    .line 189
    invoke-virtual {p0, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    return-object p0
.end method

.method private createHandOutAnim()Landroid/animation/Animator;
    .locals 8

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 197
    iget-object v1, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mHandView:Landroid/widget/ImageView;

    const/4 v2, 0x2

    new-array v3, v2, [F

    iget v4, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->HAND_END_X:F

    const/4 v5, 0x0

    aput v4, v3, v5

    iget v4, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->HAND_START_X:F

    const/4 v6, 0x1

    aput v4, v3, v6

    const-string v4, "X"

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v3, 0x190

    .line 198
    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 199
    sget-object v7, Lcom/android/settings/widget/TrackBallGifAnimView;->mInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v1, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 200
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v1, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mHandView:Landroid/widget/ImageView;

    new-array v2, v2, [F

    iget v7, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->HAND_END_Y:F

    aput v7, v2, v5

    iget p0, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->HAND_START_Y:F

    aput p0, v2, v6

    const-string p0, "Y"

    invoke-static {v1, p0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 203
    invoke-virtual {p0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 204
    sget-object v1, Lcom/android/settings/widget/TrackBallGifAnimView;->mInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 205
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 208
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v0, 0xa28

    .line 209
    invoke-virtual {p0, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    return-object p0
.end method

.method private createHandOutAnim2()Landroid/animation/Animator;
    .locals 8

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 216
    iget-object v1, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mHandView:Landroid/widget/ImageView;

    const/4 v2, 0x2

    new-array v3, v2, [F

    iget v4, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->HAND_END_X:F

    const/4 v5, 0x0

    aput v4, v3, v5

    iget v4, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->HAND_START_X:F

    const/4 v6, 0x1

    aput v4, v3, v6

    const-string v4, "X"

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v3, 0x190

    .line 217
    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 218
    sget-object v7, Lcom/android/settings/widget/TrackBallGifAnimView;->mInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v1, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 219
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v1, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mHandView:Landroid/widget/ImageView;

    new-array v2, v2, [F

    iget v7, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->HAND_END_Y:F

    aput v7, v2, v5

    iget p0, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->HAND_START_Y:F

    aput p0, v2, v6

    const-string p0, "Y"

    invoke-static {v1, p0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 222
    invoke-virtual {p0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 223
    sget-object v1, Lcom/android/settings/widget/TrackBallGifAnimView;->mInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 224
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 227
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v0, 0x19c8

    .line 228
    invoke-virtual {p0, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    return-object p0
.end method

.method private createMsgEditExitAnim()Landroid/animation/Animator;
    .locals 10

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 257
    iget-object v2, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mMsgEditPage:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->PAGE_EDIT_START_X:F

    iget v4, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->PAGE_EDIT_END_X:F

    const-wide/16 v5, 0x190

    const-wide/16 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/settings/widget/TrackBallGifAnimView;->createExitRightAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    iget-object v3, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mMsgListPage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->PAGE_EDIT_END_X:F

    neg-float v4, v1

    iget v5, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->PAGE_EDIT_START_X:F

    const-wide/16 v6, 0x190

    const-wide/16 v8, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/widget/TrackBallGifAnimView;->createEnterLeftAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 261
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v0, 0xa28

    .line 262
    invoke-virtual {p0, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    return-object p0
.end method

.method private createScaleAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;
    .locals 5

    .line 293
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v3, 0x1

    aput p3, v1, v3

    const-string v4, "scaleX"

    .line 294
    invoke-static {p1, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 295
    invoke-virtual {v1, p4, p5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 296
    sget-object v4, Lcom/android/settings/widget/TrackBallGifAnimView;->mInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 297
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v0, v0, [F

    aput p2, v0, v2

    aput p3, v0, v3

    const-string p2, "scaleY"

    .line 299
    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 300
    invoke-virtual {p1, p4, p5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 301
    sget-object p2, Lcom/android/settings/widget/TrackBallGifAnimView;->mInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 302
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 304
    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 305
    invoke-virtual {p1, p6, p7}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    return-object p1
.end method

.method private createTrackballAnim()Landroid/animation/Animator;
    .locals 10

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 234
    iget-object v2, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mTrackballView:Landroid/widget/ImageView;

    const v3, 0x3ecccccd    # 0.4f

    const/high16 v4, 0x3f800000    # 1.0f

    const-wide/16 v5, 0x12c

    const-wide/16 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/settings/widget/TrackBallGifAnimView;->createAlphaAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    iget-object v3, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mTrackballView:Landroid/widget/ImageView;

    const v5, 0x3ecccccd    # 0.4f

    const-wide/16 v6, 0x190

    const-wide/16 v8, 0x3e8

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/widget/TrackBallGifAnimView;->createAlphaAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 238
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v0, 0x514

    .line 239
    invoke-virtual {p0, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    return-object p0
.end method

.method private createTrackballLightAnim()Landroid/animation/Animator;
    .locals 10

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 245
    iget-object v2, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mTrackballHighLight:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const-wide/16 v5, 0x190

    const-wide/16 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/settings/widget/TrackBallGifAnimView;->createAlphaAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object v3, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mTrackballHighLight:Landroid/widget/ImageView;

    const/4 v5, 0x0

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x190

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/widget/TrackBallGifAnimView;->createAlphaAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 249
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v0, 0x640

    .line 250
    invoke-virtual {p0, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    return-object p0
.end method

.method private createTrackballScaleAnim()Landroid/animation/Animator;
    .locals 10

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 268
    iget-object v2, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mTrackballView:Landroid/widget/ImageView;

    const v3, 0x3ecccccd    # 0.4f

    const/high16 v4, 0x3f800000    # 1.0f

    const-wide/16 v5, 0x12c

    const-wide/16 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/settings/widget/TrackBallGifAnimView;->createAlphaAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    iget-object v3, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mTrackballView:Landroid/widget/ImageView;

    const v5, 0x3ecccccd    # 0.4f

    const-wide/16 v6, 0x3e8

    const-wide/16 v8, 0x12c

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/widget/TrackBallGifAnimView;->createAlphaAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object v3, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mTrackballView:Landroid/widget/ImageView;

    const v5, 0x3fb33333    # 1.4f

    const-wide/16 v6, 0x190

    const-wide/16 v8, 0x258

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/widget/TrackBallGifAnimView;->createScaleAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    iget-object v3, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mTrackballView:Landroid/widget/ImageView;

    const v4, 0x3fb33333    # 1.4f

    const/high16 v5, 0x3f800000    # 1.0f

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x3e8

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/widget/TrackBallGifAnimView;->createScaleAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object v3, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mHomePage:Landroid/widget/ImageView;

    const/4 v4, 0x0

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x63f

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/widget/TrackBallGifAnimView;->createAlphaAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 276
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v0, 0x1388

    .line 277
    invoke-virtual {p0, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    return-object p0
.end method

.method private init()V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mTrackballView:Landroid/widget/ImageView;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 76
    iget-object v0, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mTrackballView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->TRACKBALL_X:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    .line 77
    iget-object v0, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mTrackballView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->TRACKBALL_Y:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    .line 79
    iget-object v0, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mTrackballHighLight:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 80
    iget-object v0, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mTrackballHighLight:Landroid/widget/ImageView;

    const v2, 0x3f666666    # 0.9f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mTrackballHighLight:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 82
    iget-object v0, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mTrackballHighLight:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->TRACKBALL_X:F

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setX(F)V

    .line 83
    iget-object v0, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mTrackballHighLight:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->TRACKBALL_Y:F

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setY(F)V

    .line 85
    iget-object v0, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mHandView:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->HAND_START_X:F

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setX(F)V

    .line 86
    iget-object v0, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mHandView:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->HAND_START_Y:F

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setY(F)V

    .line 88
    iget-object v0, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mMsgListPage:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->PAGE_EDIT_END_X:F

    neg-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setX(F)V

    .line 89
    iget-object v0, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mMsgListPage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    .line 90
    iget-object v0, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mMsgListPage:Landroid/widget/ImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 91
    iget-object v0, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mMsgListPage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 93
    iget-object v0, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mMsgEditPage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 94
    iget-object v0, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mMsgEditPage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    .line 95
    iget-object v0, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mMsgEditPage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    .line 97
    iget-object v0, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mHomePage:Landroid/widget/ImageView;

    const v2, 0x3fa66666    # 1.3f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 98
    iget-object v0, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mHomePage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 99
    iget-object p0, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mHomePage:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public cancelAnim()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 105
    iget-object v0, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 106
    iget-object v0, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mAnimSet:Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method

.method public startAnim()V
    .locals 3

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/widget/TrackBallGifAnimView;->cancelAnim()V

    .line 113
    invoke-direct {p0}, Lcom/android/settings/widget/TrackBallGifAnimView;->init()V

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    invoke-direct {p0}, Lcom/android/settings/widget/TrackBallGifAnimView;->createHandInAnim()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-direct {p0}, Lcom/android/settings/widget/TrackBallGifAnimView;->createTrackballAnim()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-direct {p0}, Lcom/android/settings/widget/TrackBallGifAnimView;->createTrackballLightAnim()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-direct {p0}, Lcom/android/settings/widget/TrackBallGifAnimView;->createMsgEditExitAnim()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-direct {p0}, Lcom/android/settings/widget/TrackBallGifAnimView;->createHandOutAnim()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-direct {p0}, Lcom/android/settings/widget/TrackBallGifAnimView;->createHandInAnim2()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-direct {p0}, Lcom/android/settings/widget/TrackBallGifAnimView;->createTrackballScaleAnim()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-direct {p0}, Lcom/android/settings/widget/TrackBallGifAnimView;->createHandOutAnim2()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-direct {p0}, Lcom/android/settings/widget/TrackBallGifAnimView;->createBackToHomeAnim()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mAnimSet:Landroid/animation/AnimatorSet;

    .line 127
    iget-object v1, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mAnimSet:Landroid/animation/AnimatorSet;

    iget-wide v1, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->ANIMATION_START_DELAY:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mAnimSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/settings/widget/TrackBallGifAnimView$1;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/TrackBallGifAnimView$1;-><init>(Lcom/android/settings/widget/TrackBallGifAnimView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 152
    iget-object p0, p0, Lcom/android/settings/widget/TrackBallGifAnimView;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
