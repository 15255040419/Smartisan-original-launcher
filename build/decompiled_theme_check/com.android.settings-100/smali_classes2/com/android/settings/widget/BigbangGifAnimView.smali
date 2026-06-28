.class public Lcom/android/settings/widget/BigbangGifAnimView;
.super Landroid/widget/RelativeLayout;
.source "BigbangGifAnimView.java"


# static fields
.field private static final mInterpolator:Landroid/view/animation/DecelerateInterpolator;


# instance fields
.field private HAND_END_X:I

.field private HAND_END_Y:I

.field private HAND_START_X:I

.field private HAND_START_Y:I

.field private mAnimSet:Landroid/animation/AnimatorSet;

.field private mBigbangCenterView:Landroid/widget/ImageView;

.field private mCircleView:Landroid/widget/ImageView;

.field private mHandView:Landroid/widget/ImageView;

.field private mTextBgView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/android/settings/widget/BigbangGifAnimView;->mInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/BigbangGifAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/BigbangGifAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0066

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f0a0942

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/BigbangGifAnimView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/widget/BigbangGifAnimView;->mTextBgView:Landroid/widget/ImageView;

    const p1, 0x7f0a00eb

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/BigbangGifAnimView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/widget/BigbangGifAnimView;->mBigbangCenterView:Landroid/widget/ImageView;

    const p1, 0x7f0a01aa

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/BigbangGifAnimView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/widget/BigbangGifAnimView;->mCircleView:Landroid/widget/ImageView;

    const p1, 0x7f0a0346

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/BigbangGifAnimView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/widget/BigbangGifAnimView;->mHandView:Landroid/widget/ImageView;

    .line 52
    invoke-direct {p0}, Lcom/android/settings/widget/BigbangGifAnimView;->init()V

    return-void
.end method

.method private createAlphaAnim(Landroid/view/View;FFJ)Landroid/animation/Animator;
    .locals 8

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    .line 217
    invoke-direct/range {v0 .. v7}, Lcom/android/settings/widget/BigbangGifAnimView;->createAlphaAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
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

    .line 221
    invoke-static {p1, p2, p0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 222
    invoke-virtual {p0, p4, p5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 223
    invoke-virtual {p0, p6, p7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 224
    sget-object p1, Lcom/android/settings/widget/BigbangGifAnimView;->mInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method private createBigbangTriggerAnim()Landroid/animation/Animator;
    .locals 10

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 186
    iget-object v2, p0, Lcom/android/settings/widget/BigbangGifAnimView;->mBigbangCenterView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const-wide/16 v5, 0x12c

    const-wide/16 v7, 0x64

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/settings/widget/BigbangGifAnimView;->createAlphaAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v3, p0, Lcom/android/settings/widget/BigbangGifAnimView;->mBigbangCenterView:Landroid/widget/ImageView;

    const v4, 0x3e99999a    # 0.3f

    const/high16 v5, 0x3f800000    # 1.0f

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x64

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/widget/BigbangGifAnimView;->createScaleAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v3, p0, Lcom/android/settings/widget/BigbangGifAnimView;->mTextBgView:Landroid/widget/ImageView;

    const v4, 0x3ecccccd    # 0.4f

    const-wide/16 v6, 0xc8

    const-wide/16 v8, 0x514

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/widget/BigbangGifAnimView;->createAlphaAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v3, p0, Lcom/android/settings/widget/BigbangGifAnimView;->mBigbangCenterView:Landroid/widget/ImageView;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const-wide/16 v6, 0x1f4

    const-wide/16 v8, 0x5dc

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/widget/BigbangGifAnimView;->createAlphaAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 194
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v0, 0xa8c

    .line 195
    invoke-virtual {p0, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    return-object p0
.end method

.method private createCircleFlashAnim()Landroid/animation/Animator;
    .locals 10

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    iget-object v2, p0, Lcom/android/settings/widget/BigbangGifAnimView;->mCircleView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const-wide/16 v5, 0x12c

    const-wide/16 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/settings/widget/BigbangGifAnimView;->createAlphaAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v3, p0, Lcom/android/settings/widget/BigbangGifAnimView;->mCircleView:Landroid/widget/ImageView;

    const/high16 v4, 0x40a00000    # 5.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/widget/BigbangGifAnimView;->createScaleAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v3, p0, Lcom/android/settings/widget/BigbangGifAnimView;->mCircleView:Landroid/widget/ImageView;

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3e99999a    # 0.3f

    const-wide/16 v8, 0x12c

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/widget/BigbangGifAnimView;->createAlphaAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v3, p0, Lcom/android/settings/widget/BigbangGifAnimView;->mCircleView:Landroid/widget/ImageView;

    const v4, 0x3e99999a    # 0.3f

    const/high16 v5, 0x3f800000    # 1.0f

    const-wide/16 v8, 0x258

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/widget/BigbangGifAnimView;->createAlphaAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v3, p0, Lcom/android/settings/widget/BigbangGifAnimView;->mCircleView:Landroid/widget/ImageView;

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3e99999a    # 0.3f

    const-wide/16 v8, 0x384

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/widget/BigbangGifAnimView;->createAlphaAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v3, p0, Lcom/android/settings/widget/BigbangGifAnimView;->mCircleView:Landroid/widget/ImageView;

    const v4, 0x3e99999a    # 0.3f

    const/high16 v5, 0x3f800000    # 1.0f

    const-wide/16 v8, 0x4b0

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/widget/BigbangGifAnimView;->createAlphaAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    iget-object v3, p0, Lcom/android/settings/widget/BigbangGifAnimView;->mCircleView:Landroid/widget/ImageView;

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3e99999a    # 0.3f

    const-wide/16 v8, 0x5dc

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/widget/BigbangGifAnimView;->createAlphaAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v3, p0, Lcom/android/settings/widget/BigbangGifAnimView;->mCircleView:Landroid/widget/ImageView;

    const v4, 0x3e99999a    # 0.3f

    const/high16 v5, 0x3f800000    # 1.0f

    const-wide/16 v8, 0x708

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/widget/BigbangGifAnimView;->createAlphaAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v3, p0, Lcom/android/settings/widget/BigbangGifAnimView;->mCircleView:Landroid/widget/ImageView;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x40a00000    # 5.0f

    const-wide/16 v8, 0x834

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/widget/BigbangGifAnimView;->createScaleAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v3, p0, Lcom/android/settings/widget/BigbangGifAnimView;->mCircleView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/widget/BigbangGifAnimView;->createAlphaAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 178
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v0, 0x1f4

    .line 179
    invoke-virtual {p0, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    return-object p0
.end method

.method private createHandInAnim()Landroid/animation/Animator;
    .locals 10

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    iget-object v1, p0, Lcom/android/settings/widget/BigbangGifAnimView;->mHandView:Landroid/widget/ImageView;

    const/4 v2, 0x2

    new-array v3, v2, [F

    iget v4, p0, Lcom/android/settings/widget/BigbangGifAnimView;->HAND_START_X:I

    int-to-float v4, v4

    const/4 v5, 0x0

    aput v4, v3, v5

    iget v4, p0, Lcom/android/settings/widget/BigbangGifAnimView;->HAND_END_X:I

    int-to-float v4, v4

    const/4 v6, 0x1

    aput v4, v3, v6

    const-string v4, "X"

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v3, 0x1f4

    .line 125
    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 126
    sget-object v7, Lcom/android/settings/widget/BigbangGifAnimView;->mInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v1, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 127
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v1, p0, Lcom/android/settings/widget/BigbangGifAnimView;->mHandView:Landroid/widget/ImageView;

    new-array v2, v2, [F

    iget v7, p0, Lcom/android/settings/widget/BigbangGifAnimView;->HAND_START_Y:I

    int-to-float v7, v7

    aput v7, v2, v5

    iget v5, p0, Lcom/android/settings/widget/BigbangGifAnimView;->HAND_END_Y:I

    int-to-float v5, v5

    aput v5, v2, v6

    const-string v5, "Y"

    invoke-static {v1, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 130
    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 131
    sget-object v2, Lcom/android/settings/widget/BigbangGifAnimView;->mInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 132
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v4, p0, Lcom/android/settings/widget/BigbangGifAnimView;->mHandView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const-wide/16 v7, 0x12c

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/widget/BigbangGifAnimView;->createAlphaAnim(Landroid/view/View;FFJ)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v3, p0, Lcom/android/settings/widget/BigbangGifAnimView;->mTextBgView:Landroid/widget/ImageView;

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3e4ccccd    # 0.2f

    const-wide/16 v6, 0x190

    const-wide/16 v8, 0x1f4

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/widget/BigbangGifAnimView;->createAlphaAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 138
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-object p0
.end method

.method private createHandOutAnim()Landroid/animation/Animator;
    .locals 9

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    iget-object v1, p0, Lcom/android/settings/widget/BigbangGifAnimView;->mHandView:Landroid/widget/ImageView;

    const/4 v2, 0x2

    new-array v3, v2, [F

    iget v4, p0, Lcom/android/settings/widget/BigbangGifAnimView;->HAND_END_X:I

    int-to-float v4, v4

    const/4 v5, 0x0

    aput v4, v3, v5

    iget v4, p0, Lcom/android/settings/widget/BigbangGifAnimView;->HAND_START_X:I

    int-to-float v4, v4

    const/4 v6, 0x1

    aput v4, v3, v6

    const-string v4, "X"

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v3, 0x1f4

    .line 146
    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 147
    sget-object v7, Lcom/android/settings/widget/BigbangGifAnimView;->mInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v1, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 148
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v1, p0, Lcom/android/settings/widget/BigbangGifAnimView;->mHandView:Landroid/widget/ImageView;

    new-array v2, v2, [F

    iget v7, p0, Lcom/android/settings/widget/BigbangGifAnimView;->HAND_END_Y:I

    int-to-float v7, v7

    aput v7, v2, v5

    iget v5, p0, Lcom/android/settings/widget/BigbangGifAnimView;->HAND_START_Y:I

    int-to-float v5, v5

    aput v5, v2, v6

    const-string v5, "Y"

    invoke-static {v1, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 151
    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 152
    sget-object v2, Lcom/android/settings/widget/BigbangGifAnimView;->mInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 153
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v4, p0, Lcom/android/settings/widget/BigbangGifAnimView;->mHandView:Landroid/widget/ImageView;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const-wide/16 v7, 0x12c

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/widget/BigbangGifAnimView;->createAlphaAnim(Landroid/view/View;FFJ)Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 158
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v0, 0xb54

    .line 159
    invoke-virtual {p0, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    return-object p0
.end method

.method private createScaleAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;
    .locals 5

    .line 200
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v3, 0x1

    aput p3, v1, v3

    const-string v4, "scaleX"

    .line 201
    invoke-static {p1, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 202
    invoke-virtual {v1, p4, p5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 203
    sget-object v4, Lcom/android/settings/widget/BigbangGifAnimView;->mInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 204
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v0, v0, [F

    aput p2, v0, v2

    aput p3, v0, v3

    const-string p2, "scaleY"

    .line 206
    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 207
    invoke-virtual {p1, p4, p5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 208
    sget-object p2, Lcom/android/settings/widget/BigbangGifAnimView;->mInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 209
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 211
    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 212
    invoke-virtual {p1, p6, p7}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    return-object p1
.end method

.method private init()V
    .locals 3

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/widget/BigbangGifAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/BigbangGifAnimView;->HAND_START_X:I

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/widget/BigbangGifAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070088

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/BigbangGifAnimView;->HAND_START_Y:I

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/widget/BigbangGifAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/BigbangGifAnimView;->HAND_END_X:I

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/widget/BigbangGifAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/BigbangGifAnimView;->HAND_END_Y:I

    .line 61
    iget-object v0, p0, Lcom/android/settings/widget/BigbangGifAnimView;->mTextBgView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 62
    iget-object v0, p0, Lcom/android/settings/widget/BigbangGifAnimView;->mBigbangCenterView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 63
    iget-object v0, p0, Lcom/android/settings/widget/BigbangGifAnimView;->mBigbangCenterView:Landroid/widget/ImageView;

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 64
    iget-object v0, p0, Lcom/android/settings/widget/BigbangGifAnimView;->mBigbangCenterView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 66
    iget-object v0, p0, Lcom/android/settings/widget/BigbangGifAnimView;->mCircleView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 67
    iget-object v0, p0, Lcom/android/settings/widget/BigbangGifAnimView;->mCircleView:Landroid/widget/ImageView;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 68
    iget-object v0, p0, Lcom/android/settings/widget/BigbangGifAnimView;->mCircleView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 70
    iget-object v0, p0, Lcom/android/settings/widget/BigbangGifAnimView;->mHandView:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/settings/widget/BigbangGifAnimView;->HAND_START_X:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setX(F)V

    .line 71
    iget-object v0, p0, Lcom/android/settings/widget/BigbangGifAnimView;->mHandView:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/settings/widget/BigbangGifAnimView;->HAND_START_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setY(F)V

    .line 72
    iget-object p0, p0, Lcom/android/settings/widget/BigbangGifAnimView;->mHandView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public cancelAnim()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/settings/widget/BigbangGifAnimView;->mAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 79
    iget-object v0, p0, Lcom/android/settings/widget/BigbangGifAnimView;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 80
    iget-object v0, p0, Lcom/android/settings/widget/BigbangGifAnimView;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/android/settings/widget/BigbangGifAnimView;->mAnimSet:Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method

.method public startAnim()V
    .locals 3

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/widget/BigbangGifAnimView;->cancelAnim()V

    .line 87
    invoke-direct {p0}, Lcom/android/settings/widget/BigbangGifAnimView;->init()V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    invoke-direct {p0}, Lcom/android/settings/widget/BigbangGifAnimView;->createHandInAnim()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-direct {p0}, Lcom/android/settings/widget/BigbangGifAnimView;->createCircleFlashAnim()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-direct {p0}, Lcom/android/settings/widget/BigbangGifAnimView;->createHandOutAnim()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-direct {p0}, Lcom/android/settings/widget/BigbangGifAnimView;->createBigbangTriggerAnim()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/settings/widget/BigbangGifAnimView;->mAnimSet:Landroid/animation/AnimatorSet;

    .line 95
    iget-object v1, p0, Lcom/android/settings/widget/BigbangGifAnimView;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 96
    iget-object v0, p0, Lcom/android/settings/widget/BigbangGifAnimView;->mAnimSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 97
    iget-object v0, p0, Lcom/android/settings/widget/BigbangGifAnimView;->mAnimSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/settings/widget/BigbangGifAnimView$1;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/BigbangGifAnimView$1;-><init>(Lcom/android/settings/widget/BigbangGifAnimView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 118
    iget-object p0, p0, Lcom/android/settings/widget/BigbangGifAnimView;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
