.class public Lcom/android/settings/widget/DotsPageIndicator;
.super Landroid/view/View;
.source "DotsPageIndicator.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/DotsPageIndicator$LeftwardStartPredicate;,
        Lcom/android/settings/widget/DotsPageIndicator$RightwardStartPredicate;,
        Lcom/android/settings/widget/DotsPageIndicator$StartPredicate;,
        Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;,
        Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;,
        Lcom/android/settings/widget/DotsPageIndicator$PendingStartAnimator;
    }
.end annotation


# static fields
.field private static final DEFAULT_ANIM_DURATION:I = 0x190

.field private static final DEFAULT_DOT_SIZE:I = 0x8

.field private static final DEFAULT_GAP:I = 0xc

.field private static final DEFAULT_SELECTED_COLOUR:I = -0x1

.field private static final DEFAULT_UNSELECTED_COLOUR:I = -0x7f000001

.field private static final INVALID_FRACTION:F = -1.0f

.field private static final MINIMAL_REVEAL:F = 1.0E-5f

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private animDuration:J

.field private animHalfDuration:J

.field private attachedState:Z

.field private final combinedUnselectedPath:Landroid/graphics/Path;

.field controlX1:F

.field controlX2:F

.field controlY1:F

.field controlY2:F

.field private currentPage:I

.field private dotBottomY:F

.field private dotCenterX:[F

.field private dotCenterY:F

.field private dotDiameter:I

.field private dotRadius:F

.field private dotRevealFractions:[F

.field private dotTopY:F

.field endX1:F

.field endX2:F

.field endY1:F

.field endY2:F

.field private gap:I

.field private halfDotRadius:F

.field private final interpolator:Landroid/view/animation/Interpolator;

.field private joiningAnimationSet:Landroid/animation/AnimatorSet;

.field private joiningAnimations:[Landroid/animation/ValueAnimator;

.field private joiningFractions:[F

.field private moveAnimation:Landroid/animation/ValueAnimator;

.field private pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private pageCount:I

.field private final rectF:Landroid/graphics/RectF;

.field private retreatAnimation:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

.field private retreatingJoinX1:F

.field private retreatingJoinX2:F

.field private revealAnimations:[Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

.field private selectedColour:I

.field private selectedDotInPosition:Z

.field private selectedDotX:F

.field private final selectedPaint:Landroid/graphics/Paint;

.field private unselectedColour:I

.field private final unselectedDotLeftPath:Landroid/graphics/Path;

.field private final unselectedDotPath:Landroid/graphics/Path;

.field private final unselectedDotRightPath:Landroid/graphics/Path;

.field private final unselectedPaint:Landroid/graphics/Paint;

.field private viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lcom/android/settings/widget/DotsPageIndicator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/widget/DotsPageIndicator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 120
    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/widget/DotsPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 124
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/DotsPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 128
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    float-to-int v0, v0

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/settings/R$styleable;->DotsPageIndicator:[I

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    mul-int/lit8 p3, v0, 0x8

    const/4 v1, 0x2

    .line 134
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotDiameter:I

    .line 136
    iget p3, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotDiameter:I

    div-int/2addr p3, v1

    int-to-float p3, p3

    iput p3, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    .line 137
    iget p3, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p3, v1

    iput p3, p0, Lcom/android/settings/widget/DotsPageIndicator;->halfDotRadius:F

    mul-int/lit8 v0, v0, 0xc

    const/4 p3, 0x3

    .line 138
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/android/settings/widget/DotsPageIndicator;->gap:I

    const/16 p3, 0x190

    .line 140
    invoke-virtual {p2, v3, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    int-to-long v0, p3

    iput-wide v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->animDuration:J

    .line 142
    iget-wide v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->animDuration:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->animHalfDuration:J

    const/4 p3, 0x4

    const v0, -0x7f000001

    .line 143
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedColour:I

    const/4 p3, 0x1

    const/4 v0, -0x1

    .line 145
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedColour:I

    .line 147
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 148
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedPaint:Landroid/graphics/Paint;

    .line 149
    iget-object p2, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedColour:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedPaint:Landroid/graphics/Paint;

    .line 151
    iget-object p2, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedPaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedColour:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x15

    if-lt p2, p3, :cond_0

    const p2, 0x10c000d

    .line 154
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->interpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_0
    const p2, 0x10a0004

    .line 156
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->interpolator:Landroid/view/animation/Interpolator;

    .line 160
    :goto_0
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->combinedUnselectedPath:Landroid/graphics/Path;

    .line 161
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    .line 162
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotLeftPath:Landroid/graphics/Path;

    .line 163
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotRightPath:Landroid/graphics/Path;

    .line 164
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    .line 166
    new-instance p1, Lcom/android/settings/widget/DotsPageIndicator$1;

    invoke-direct {p1, p0}, Lcom/android/settings/widget/DotsPageIndicator$1;-><init>(Lcom/android/settings/widget/DotsPageIndicator;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/DotsPageIndicator;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/widget/DotsPageIndicator;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->attachedState:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/widget/DotsPageIndicator;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->viewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/settings/widget/DotsPageIndicator;)F
    .locals 0

    .line 46
    iget p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    return p0
.end method

.method static synthetic access$1100(Lcom/android/settings/widget/DotsPageIndicator;)[Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->revealAnimations:[Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/android/settings/widget/DotsPageIndicator;[Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;)[Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->revealAnimations:[Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/settings/widget/DotsPageIndicator;)F
    .locals 0

    .line 46
    iget p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX1:F

    return p0
.end method

.method static synthetic access$1202(Lcom/android/settings/widget/DotsPageIndicator;F)F
    .locals 0

    .line 46
    iput p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX1:F

    return p1
.end method

.method static synthetic access$1300(Lcom/android/settings/widget/DotsPageIndicator;)F
    .locals 0

    .line 46
    iget p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX2:F

    return p0
.end method

.method static synthetic access$1302(Lcom/android/settings/widget/DotsPageIndicator;F)F
    .locals 0

    .line 46
    iput p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX2:F

    return p1
.end method

.method static synthetic access$1400(Lcom/android/settings/widget/DotsPageIndicator;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->cancelJoiningAnimations()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/widget/DotsPageIndicator;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->clearJoiningFractions()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/widget/DotsPageIndicator;IF)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/DotsPageIndicator;->setDotRevealFraction(IF)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/widget/DotsPageIndicator;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings/widget/DotsPageIndicator;->setPageCount(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/widget/DotsPageIndicator;)F
    .locals 0

    .line 46
    iget p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotX:F

    return p0
.end method

.method static synthetic access$302(Lcom/android/settings/widget/DotsPageIndicator;F)F
    .locals 0

    .line 46
    iput p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotX:F

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/widget/DotsPageIndicator;)Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatAnimation:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/settings/widget/DotsPageIndicator;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotInPosition:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/widget/DotsPageIndicator;IF)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/DotsPageIndicator;->setJoiningFraction(IF)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/widget/DotsPageIndicator;)J
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->animHalfDuration:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/android/settings/widget/DotsPageIndicator;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->interpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/settings/widget/DotsPageIndicator;)[F
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterX:[F

    return-object p0
.end method

.method private calculateDotPositions()V
    .locals 6

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getPaddingLeft()I

    move-result v0

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getPaddingTop()I

    move-result v1

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 244
    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getRequiredWidth()I

    move-result v3

    sub-int/2addr v2, v0

    sub-int/2addr v2, v3

    .line 245
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    add-float/2addr v0, v2

    .line 246
    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterX:[F

    const/4 v2, 0x0

    .line 247
    :goto_0
    iget v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    if-ge v2, v3, :cond_0

    .line 248
    iget-object v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterX:[F

    iget v4, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotDiameter:I

    iget v5, p0, Lcom/android/settings/widget/DotsPageIndicator;->gap:I

    add-int/2addr v4, v5

    mul-int/2addr v4, v2

    int-to-float v4, v4

    add-float/2addr v4, v0

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    int-to-float v0, v1

    .line 251
    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    .line 252
    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterY:F

    .line 253
    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotDiameter:I

    add-int/2addr v1, v0

    int-to-float v0, v1

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    .line 254
    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->setCurrentPageImmediate()V

    return-void
.end method

.method private cancelJoiningAnimations()V
    .locals 1

    .line 687
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 688
    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method private cancelMoveAnimation()V
    .locals 1

    .line 675
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->moveAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 676
    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->moveAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private cancelRetreatAnimation()V
    .locals 1

    .line 693
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatAnimation:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatAnimation:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private cancelRevealAnimations()V
    .locals 3

    .line 699
    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->revealAnimations:[Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

    if-eqz p0, :cond_0

    .line 700
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 701
    invoke-virtual {v2}, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;->cancel()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private cancelRunningAnimations()V
    .locals 0

    .line 667
    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->cancelMoveAnimation()V

    .line 668
    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->cancelJoiningAnimations()V

    .line 669
    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->cancelRetreatAnimation()V

    .line 670
    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->cancelRevealAnimations()V

    .line 671
    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->resetState()V

    return-void
.end method

.method private clearJoiningFractions()V
    .locals 2

    .line 657
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningFractions:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 658
    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->postInvalidateOnAnimation()V

    return-void
.end method

.method private createJoiningAnimator(IJ)Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 638
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 639
    new-instance v1, Lcom/android/settings/widget/DotsPageIndicator$5;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/widget/DotsPageIndicator$5;-><init>(Lcom/android/settings/widget/DotsPageIndicator;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 645
    iget-wide v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->animHalfDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 646
    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 647
    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private createMoveSelectedAnimator(FIII)Landroid/animation/ValueAnimator;
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 595
    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotX:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 598
    new-instance v7, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    const/high16 v1, 0x3e800000    # 0.25f

    if-le p3, p2, :cond_0

    new-instance v2, Lcom/android/settings/widget/DotsPageIndicator$RightwardStartPredicate;

    iget v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotX:F

    sub-float v3, p1, v3

    mul-float/2addr v3, v1

    sub-float/2addr p1, v3

    invoke-direct {v2, p0, p1}, Lcom/android/settings/widget/DotsPageIndicator$RightwardStartPredicate;-><init>(Lcom/android/settings/widget/DotsPageIndicator;F)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/settings/widget/DotsPageIndicator$LeftwardStartPredicate;

    iget v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotX:F

    sub-float/2addr v3, p1

    mul-float/2addr v3, v1

    add-float/2addr p1, v3

    invoke-direct {v2, p0, p1}, Lcom/android/settings/widget/DotsPageIndicator$LeftwardStartPredicate;-><init>(Lcom/android/settings/widget/DotsPageIndicator;F)V

    :goto_0
    move-object v6, v2

    move-object v1, v7

    move-object v2, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;-><init>(Lcom/android/settings/widget/DotsPageIndicator;IIILcom/android/settings/widget/DotsPageIndicator$StartPredicate;)V

    iput-object v7, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatAnimation:Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;

    .line 603
    new-instance p1, Lcom/android/settings/widget/DotsPageIndicator$3;

    invoke-direct {p1, p0}, Lcom/android/settings/widget/DotsPageIndicator$3;-><init>(Lcom/android/settings/widget/DotsPageIndicator;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 613
    new-instance p1, Lcom/android/settings/widget/DotsPageIndicator$4;

    invoke-direct {p1, p0}, Lcom/android/settings/widget/DotsPageIndicator$4;-><init>(Lcom/android/settings/widget/DotsPageIndicator;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 630
    iget-boolean p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotInPosition:Z

    const-wide/16 p2, 0x4

    if-eqz p1, :cond_1

    iget-wide v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->animDuration:J

    div-long/2addr v1, p2

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 631
    iget-wide v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->animDuration:J

    const-wide/16 v3, 0x3

    mul-long/2addr v1, v3

    div-long/2addr v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 632
    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method private drawSelected(Landroid/graphics/Canvas;)V
    .locals 3

    .line 554
    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotX:F

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterY:F

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawUnselected(Landroid/graphics/Canvas;)V
    .locals 8

    .line 349
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->combinedUnselectedPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    const/4 v0, 0x0

    .line 352
    :goto_0
    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    const/16 v2, 0x15

    const/high16 v3, -0x40800000    # -1.0f

    if-ge v0, v1, :cond_3

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    move v1, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v0, 0x1

    .line 356
    :goto_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v2, :cond_2

    .line 357
    iget-object v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterX:[F

    aget v4, v2, v0

    aget v5, v2, v1

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    move v6, v3

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningFractions:[F

    aget v1, v1, v0

    move v6, v1

    :goto_2
    iget-object v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRevealFractions:[F

    aget v7, v1, v0

    move-object v1, p0

    move v2, v0

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/widget/DotsPageIndicator;->getUnselectedPath(IFFFF)Landroid/graphics/Path;

    move-result-object v1

    .line 362
    iget-object v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->combinedUnselectedPath:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto :goto_3

    .line 364
    :cond_2
    iget-object v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterX:[F

    aget v1, v1, v0

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterY:F

    iget v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    iget-object v4, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 369
    :cond_3
    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX1:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_4

    .line 370
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_4

    .line 371
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->combinedUnselectedPath:Landroid/graphics/Path;

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getRetreatingJoinPath()Landroid/graphics/Path;

    move-result-object v1

    sget-object v2, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 374
    :cond_4
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->combinedUnselectedPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private getDesiredHeight()I
    .locals 2

    .line 328
    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotDiameter:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getPaddingBottom()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private getDesiredWidth()I
    .locals 2

    .line 336
    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getPaddingLeft()I

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getRequiredWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getPaddingRight()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private getRequiredWidth()I
    .locals 2

    .line 332
    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotDiameter:I

    mul-int/2addr v1, v0

    add-int/lit8 v0, v0, -0x1

    iget p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->gap:I

    mul-int/2addr v0, p0

    add-int/2addr v1, v0

    return v1
.end method

.method private getRetreatingJoinPath()Landroid/graphics/Path;
    .locals 5

    .line 547
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 548
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX1:F

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    iget v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX2:F

    iget v4, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 549
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 550
    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    return-object p0
.end method

.method private getUnselectedPath(IFFFF)Landroid/graphics/Path;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 401
    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    const/4 v4, 0x0

    cmpl-float v5, p4, v4

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    cmpl-float v8, p4, v6

    if-nez v8, :cond_2

    :cond_0
    cmpl-float v4, p5, v4

    if-nez v4, :cond_2

    .line 403
    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->currentPage:I

    if-ne v1, v4, :cond_1

    iget-boolean v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotInPosition:Z

    if-eq v4, v7, :cond_2

    .line 407
    :cond_1
    iget-object v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget-object v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterX:[F

    aget v1, v8, v1

    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterY:F

    iget v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    sget-object v10, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v1, v8, v9, v10}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    :cond_2
    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v4, 0x43340000    # 180.0f

    const/high16 v8, 0x42b40000    # 90.0f

    if-lez v5, :cond_4

    cmpg-float v5, p4, v1

    if-gez v5, :cond_4

    .line 410
    iget v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX1:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_4

    .line 413
    iget-object v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotLeftPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    .line 416
    iget-object v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotLeftPath:Landroid/graphics/Path;

    iget v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    invoke-virtual {v5, v2, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 419
    iget-object v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    sub-float v10, v2, v9

    iget v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    add-float/2addr v9, v2

    iget v12, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    invoke-virtual {v5, v10, v11, v9, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 420
    iget-object v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotLeftPath:Landroid/graphics/Path;

    iget-object v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v5, v9, v8, v4, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 423
    iget v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    add-float/2addr v5, v2

    iget v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->gap:I

    int-to-float v9, v9

    mul-float v9, v9, p4

    add-float/2addr v5, v9

    iput v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    .line 424
    iget v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterY:F

    iput v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    .line 425
    iget v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->halfDotRadius:F

    add-float v9, v2, v5

    iput v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    .line 426
    iget v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    iput v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    .line 427
    iget v15, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    iput v15, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    .line 428
    iget v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    sub-float v5, v9, v5

    iput v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    .line 429
    iget-object v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotLeftPath:Landroid/graphics/Path;

    iget v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v12, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    iget v13, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iget v14, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    move/from16 v16, v9

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 432
    iput v2, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX2:F

    .line 433
    iget v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    iput v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY2:F

    .line 434
    iget v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    iput v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    .line 435
    iget v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->halfDotRadius:F

    add-float/2addr v9, v10

    iput v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    add-float v9, v2, v10

    .line 436
    iput v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    .line 437
    iput v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    .line 438
    iget-object v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotLeftPath:Landroid/graphics/Path;

    iget v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v12, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    iget v13, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iget v14, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    iget v15, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX2:F

    iget v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY2:F

    move/from16 v16, v5

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 439
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v5, v9, :cond_3

    .line 440
    iget-object v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget-object v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotLeftPath:Landroid/graphics/Path;

    sget-object v11, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v5, v10, v11}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 444
    :cond_3
    iget-object v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotRightPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    .line 447
    iget-object v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotRightPath:Landroid/graphics/Path;

    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    invoke-virtual {v5, v3, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 450
    iget-object v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    sub-float v11, v3, v10

    iget v12, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    add-float/2addr v10, v3

    iget v13, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    invoke-virtual {v5, v11, v12, v10, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 451
    iget-object v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotRightPath:Landroid/graphics/Path;

    iget-object v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    const/high16 v11, -0x3ccc0000    # -180.0f

    invoke-virtual {v5, v10, v8, v11, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 454
    iget v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    sub-float v5, v3, v5

    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->gap:I

    int-to-float v10, v10

    mul-float v10, v10, p4

    sub-float/2addr v5, v10

    iput v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    .line 455
    iget v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterY:F

    iput v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    .line 456
    iget v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->halfDotRadius:F

    sub-float v10, v3, v5

    iput v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    .line 457
    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    iput v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    .line 458
    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    iput v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    .line 459
    iget v15, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    sub-float v5, v15, v5

    iput v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    .line 460
    iget-object v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotRightPath:Landroid/graphics/Path;

    iget v12, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v13, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    iget v14, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iget v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    move/from16 v17, v15

    move v15, v5

    move/from16 v16, v10

    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 463
    iput v3, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX2:F

    .line 464
    iget v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    iput v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY2:F

    .line 465
    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    iput v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    .line 466
    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    iget v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->halfDotRadius:F

    add-float/2addr v10, v11

    iput v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    .line 467
    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX2:F

    sub-float v11, v10, v11

    iput v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    .line 468
    iput v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    .line 469
    iget-object v12, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotRightPath:Landroid/graphics/Path;

    iget v13, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v14, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    iget v15, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iget v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    iget v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY2:F

    move/from16 v16, v5

    move/from16 v17, v10

    move/from16 v18, v11

    invoke-virtual/range {v12 .. v18}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 470
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v9, :cond_4

    .line 471
    iget-object v5, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget-object v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotRightPath:Landroid/graphics/Path;

    sget-object v10, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v5, v9, v10}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    :cond_4
    cmpl-float v1, p4, v1

    const/high16 v5, 0x3f800000    # 1.0f

    if-lez v1, :cond_5

    cmpg-float v1, p4, v5

    if-gez v1, :cond_5

    .line 475
    iget v1, v0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX1:F

    cmpl-float v1, v1, v6

    if-nez v1, :cond_5

    .line 478
    iget-object v1, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    invoke-virtual {v1, v2, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 481
    iget-object v1, v0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    sub-float v10, v2, v9

    iget v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    add-float/2addr v9, v2

    iget v12, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    invoke-virtual {v1, v10, v11, v9, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 482
    iget-object v1, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget-object v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v9, v8, v4, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 485
    iget v1, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    add-float v8, v2, v1

    iget v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->gap:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v8, v9

    iput v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    .line 486
    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterY:F

    mul-float v9, p4, v1

    sub-float/2addr v8, v9

    iput v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    .line 487
    iget v14, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    mul-float v8, p4, v1

    sub-float v8, v14, v8

    iput v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    .line 488
    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    iput v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    sub-float v8, v5, p4

    mul-float/2addr v1, v8

    sub-float v1, v14, v1

    .line 489
    iput v1, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    .line 490
    iget v15, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    iput v15, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    .line 491
    iget-object v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    iget v12, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iget v13, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    invoke-virtual/range {v9 .. v15}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 494
    iput v3, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX2:F

    .line 495
    iget v1, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    iput v1, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY2:F

    .line 496
    iget v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    mul-float v11, v8, v10

    add-float/2addr v11, v9

    iput v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    .line 497
    iget v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    iput v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    mul-float v10, v10, p4

    add-float/2addr v9, v10

    .line 498
    iput v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    .line 499
    iput v1, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    .line 500
    iget-object v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v12, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    iget v13, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iget v14, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    iget v15, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX2:F

    iget v1, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY2:F

    move/from16 v16, v1

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 503
    iget-object v1, v0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    sub-float v10, v3, v9

    iget v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    add-float/2addr v9, v3

    iget v12, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    invoke-virtual {v1, v10, v11, v9, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 504
    iget-object v1, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget-object v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    const/high16 v10, 0x43870000    # 270.0f

    invoke-virtual {v1, v9, v10, v4, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 508
    iget v1, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterY:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    mul-float v7, p4, v4

    add-float/2addr v1, v7

    iput v1, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    .line 509
    iget v14, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    mul-float v1, p4, v4

    add-float/2addr v1, v14

    iput v1, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    .line 510
    iget v1, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    iput v1, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    mul-float/2addr v4, v8

    add-float/2addr v4, v14

    .line 511
    iput v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    .line 512
    iget v15, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    iput v15, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    .line 513
    iget-object v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    iget v12, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iget v13, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    invoke-virtual/range {v9 .. v15}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 516
    iput v2, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX2:F

    .line 517
    iget v1, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    iput v1, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY2:F

    .line 518
    iget v1, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX1:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    mul-float/2addr v8, v4

    sub-float v7, v1, v8

    iput v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    .line 519
    iget v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY1:F

    iput v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    mul-float v4, v4, p4

    sub-float/2addr v1, v4

    .line 520
    iput v1, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    .line 521
    iget v13, v0, Lcom/android/settings/widget/DotsPageIndicator;->endY2:F

    iput v13, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    .line 522
    iget-object v7, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget v8, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX1:F

    iget v9, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY1:F

    iget v10, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlX2:F

    iget v11, v0, Lcom/android/settings/widget/DotsPageIndicator;->controlY2:F

    iget v12, v0, Lcom/android/settings/widget/DotsPageIndicator;->endX2:F

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :cond_5
    cmpl-float v1, p4, v5

    if-nez v1, :cond_6

    .line 525
    iget v1, v0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX1:F

    cmpl-float v1, v1, v6

    if-nez v1, :cond_6

    .line 530
    iget-object v1, v0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    sub-float v5, v2, v4

    iget v6, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotTopY:F

    add-float/2addr v3, v4

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotBottomY:F

    invoke-virtual {v1, v5, v6, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 531
    iget-object v1, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/android/settings/widget/DotsPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v3, v4, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    :cond_6
    const v1, 0x3727c5ac    # 1.0E-5f

    cmpl-float v1, p5, v1

    if-lez v1, :cond_7

    .line 539
    iget-object v1, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget v3, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterY:F

    iget v4, v0, Lcom/android/settings/widget/DotsPageIndicator;->dotRadius:F

    mul-float v4, v4, p5

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 543
    :cond_7
    iget-object v0, v0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    return-object v0
.end method

.method private resetState()V
    .locals 3

    .line 270
    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 271
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningFractions:[F

    .line 272
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningFractions:[F

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 273
    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRevealFractions:[F

    .line 274
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRevealFractions:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    const/high16 v0, -0x40800000    # -1.0f

    .line 275
    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX1:F

    .line 276
    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->retreatingJoinX2:F

    .line 277
    iput-boolean v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotInPosition:Z

    :cond_0
    return-void
.end method

.method private setCurrentPageImmediate()V
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->currentPage:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 261
    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->currentPage:I

    .line 264
    :goto_0
    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    if-lez v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterX:[F

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->currentPage:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotX:F

    :cond_1
    return-void
.end method

.method private setDotRevealFraction(IF)V
    .locals 1

    .line 662
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotRevealFractions:[F

    aput p2, v0, p1

    .line 663
    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->postInvalidateOnAnimation()V

    return-void
.end method

.method private setJoiningFraction(IF)V
    .locals 1

    .line 652
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningFractions:[F

    aput p2, v0, p1

    .line 653
    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->postInvalidateOnAnimation()V

    return-void
.end method

.method private setPageCount(I)V
    .locals 0

    .line 235
    iput p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    .line 236
    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->calculateDotPositions()V

    .line 237
    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->resetState()V

    return-void
.end method

.method private setSelectedPage(I)V
    .locals 11

    .line 558
    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->currentPage:I

    if-eq p1, v0, :cond_4

    iget v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    if-nez v1, :cond_0

    goto :goto_2

    .line 563
    :cond_0
    iput p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->currentPage:I

    .line 566
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_3

    .line 567
    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->cancelRunningAnimations()V

    sub-int v1, p1, v0

    .line 573
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 574
    iget-object v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterX:[F

    aget v2, v2, p1

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/settings/widget/DotsPageIndicator;->createMoveSelectedAnimator(FIII)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->moveAnimation:Landroid/animation/ValueAnimator;

    .line 579
    new-array v2, v1, [Landroid/animation/ValueAnimator;

    iput-object v2, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningAnimations:[Landroid/animation/ValueAnimator;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 581
    iget-object v3, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningAnimations:[Landroid/animation/ValueAnimator;

    if-le p1, v0, :cond_1

    add-int v4, v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v0, -0x1

    sub-int/2addr v4, v2

    :goto_1
    int-to-long v5, v2

    iget-wide v7, p0, Lcom/android/settings/widget/DotsPageIndicator;->animDuration:J

    const-wide/16 v9, 0x8

    div-long/2addr v7, v9

    mul-long/2addr v5, v7

    invoke-direct {p0, v4, v5, v6}, Lcom/android/settings/widget/DotsPageIndicator;->createJoiningAnimator(IJ)Landroid/animation/ValueAnimator;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 584
    :cond_2
    iget-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->moveAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 585
    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->startJoiningAnimations()V

    goto :goto_2

    .line 587
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->setCurrentPageImmediate()V

    .line 588
    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator;->invalidate()V

    :cond_4
    :goto_2
    return-void
.end method

.method private startJoiningAnimations()V
    .locals 2

    .line 681
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningAnimationSet:Landroid/animation/AnimatorSet;

    .line 682
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningAnimationSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningAnimations:[Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 683
    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->joiningAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method public clearAnimation()V
    .locals 2

    .line 321
    invoke-super {p0}, Landroid/view/View;->clearAnimation()V

    .line 322
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 323
    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->cancelRunningAnimations()V

    :cond_0
    return-void
.end method

.method getCurrentPage()I
    .locals 0

    .line 727
    iget p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->currentPage:I

    return p0
.end method

.method getDotCenterX(I)F
    .locals 0

    .line 719
    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterX:[F

    aget p0, p0, p1

    return p0
.end method

.method getDotCenterY()F
    .locals 0

    .line 715
    iget p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->dotCenterY:F

    return p0
.end method

.method getSelectedColour()I
    .locals 0

    .line 711
    iget p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedColour:I

    return p0
.end method

.method getSelectedDotX()F
    .locals 0

    .line 723
    iget p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->selectedDotX:F

    return p0
.end method

.method getUnselectedColour()I
    .locals 0

    .line 707
    iget p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->unselectedColour:I

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageCount:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 344
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/widget/DotsPageIndicator;->drawUnselected(Landroid/graphics/Canvas;)V

    .line 345
    invoke-direct {p0, p1}, Lcom/android/settings/widget/DotsPageIndicator;->drawSelected(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 283
    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getDesiredHeight()I

    move-result v0

    .line 285
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 287
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_0

    .line 290
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 296
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->getDesiredWidth()I

    move-result p2

    .line 298
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eq v1, v3, :cond_3

    if-eq v1, v2, :cond_2

    goto :goto_1

    .line 300
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    goto :goto_1

    .line 303
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 309
    :goto_1
    invoke-virtual {p0, p2, v0}, Lcom/android/settings/widget/DotsPageIndicator;->setMeasuredDimension(II)V

    .line 310
    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->calculateDotPositions()V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz p0, :cond_0

    .line 230
    invoke-interface {p0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz p0, :cond_0

    .line 206
    invoke-interface {p0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 212
    iget-boolean v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->attachedState:Z

    if-eqz v0, :cond_0

    .line 214
    invoke-direct {p0, p1}, Lcom/android/settings/widget/DotsPageIndicator;->setSelectedPage(I)V

    goto :goto_0

    .line 217
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->setCurrentPageImmediate()V

    .line 221
    :goto_0
    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz p0, :cond_1

    .line 222
    invoke-interface {p0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 315
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/DotsPageIndicator;->setMeasuredDimension(II)V

    .line 316
    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->calculateDotPositions()V

    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    .line 179
    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 180
    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 181
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/DotsPageIndicator;->setPageCount(I)V

    .line 182
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    new-instance v0, Lcom/android/settings/widget/DotsPageIndicator$2;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/DotsPageIndicator$2;-><init>(Lcom/android/settings/widget/DotsPageIndicator;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 188
    invoke-direct {p0}, Lcom/android/settings/widget/DotsPageIndicator;->setCurrentPageImmediate()V

    return-void
.end method
