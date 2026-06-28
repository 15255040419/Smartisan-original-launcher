.class public Lcom/android/settingslib/graph/SignalDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SignalDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/graph/SignalDrawable$SlashArtist;
    }
.end annotation


# static fields
.field private static final CUT_OUT:F = 0.32916668f

.field private static final CUT_WIDTH_DP:F = 0.083333336f

.field private static final DIAG_OFFSET_MULTIPLIER:F = 0.707107f

.field private static final DOT_CUT_HEIGHT:F = 0.16666667f

.field private static final DOT_CUT_WIDTH:F = 0.5833334f

.field private static final DOT_DELAY:J = 0x3e8L

.field private static final DOT_PADDING:F = 0.041666668f

.field private static final DOT_SIZE:F = 0.125f

.field private static final FIT:[F

.field private static final INV_TAN:F

.field private static final LEVEL_MASK:I = 0xff

.field private static final NUM_DOTS:I = 0x3

.field private static final NUM_LEVEL_MASK:I = 0xff00

.field private static final NUM_LEVEL_SHIFT:I = 0x8

.field private static final PAD:F = 0.083333336f

.field private static final RADIUS_RATIO:F = 0.04411765f

.field private static final STATE_AIRPLANE:I = 0x4

.field private static final STATE_CARRIER_CHANGE:I = 0x3

.field private static final STATE_CUT:I = 0x2

.field private static final STATE_EMPTY:I = 0x1

.field private static final STATE_MASK:I = 0xff0000

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_SHIFT:I = 0x10

.field private static final TAG:Ljava/lang/String; = "SignalDrawable"

.field private static final VIEWPORT:F = 24.0f

.field private static X_PATH:[[F


# instance fields
.field private mAnimating:Z

.field private final mAppliedCornerInset:F

.field private final mChangeDot:Ljava/lang/Runnable;

.field private mCurrentDot:I

.field private final mCutPath:Landroid/graphics/Path;

.field private final mDarkModeBackgroundColor:I

.field private final mDarkModeFillColor:I

.field private final mForegroundPaint:Landroid/graphics/Paint;

.field private final mForegroundPath:Landroid/graphics/Path;

.field private final mFullPath:Landroid/graphics/Path;

.field private final mHandler:Landroid/os/Handler;

.field private mIntrinsicSize:I

.field private mLevel:I

.field private final mLightModeBackgroundColor:I

.field private final mLightModeFillColor:I

.field private mNumLevels:F

.field private mOldDarkIntensity:F

.field private final mPaint:Landroid/graphics/Paint;

.field private final mSlash:Lcom/android/settingslib/graph/SignalDrawable$SlashArtist;

.field private mState:I

.field private final mVirtualLeft:Landroid/graphics/PointF;

.field private final mVirtualTop:Landroid/graphics/PointF;

.field private mVisible:Z

.field private final mXPath:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 55
    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/settingslib/graph/SignalDrawable;->FIT:[F

    const/16 v1, 0xc

    new-array v1, v1, [[F

    const/4 v2, 0x2

    new-array v3, v2, [F

    .line 72
    fill-array-data v3, :array_1

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [F

    fill-array-data v3, :array_2

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v3, v2, [F

    fill-array-data v3, :array_3

    aput-object v3, v1, v2

    new-array v3, v2, [F

    fill-array-data v3, :array_4

    aput-object v3, v1, v0

    new-array v0, v2, [F

    fill-array-data v0, :array_5

    const/4 v3, 0x4

    aput-object v0, v1, v3

    new-array v0, v2, [F

    fill-array-data v0, :array_6

    const/4 v3, 0x5

    aput-object v0, v1, v3

    new-array v0, v2, [F

    fill-array-data v0, :array_7

    const/4 v3, 0x6

    aput-object v0, v1, v3

    new-array v0, v2, [F

    fill-array-data v0, :array_8

    const/4 v3, 0x7

    aput-object v0, v1, v3

    new-array v0, v2, [F

    fill-array-data v0, :array_9

    const/16 v3, 0x8

    aput-object v0, v1, v3

    new-array v0, v2, [F

    fill-array-data v0, :array_a

    const/16 v3, 0x9

    aput-object v0, v1, v3

    new-array v0, v2, [F

    fill-array-data v0, :array_b

    const/16 v3, 0xa

    aput-object v0, v1, v3

    new-array v0, v2, [F

    fill-array-data v0, :array_c

    const/16 v2, 0xb

    aput-object v0, v1, v2

    sput-object v1, Lcom/android/settingslib/graph/SignalDrawable;->X_PATH:[[F

    const-wide v0, 0x3fd921fb54442d18L    # 0.39269908169872414

    .line 103
    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    sput v1, Lcom/android/settingslib/graph/SignalDrawable;->INV_TAN:F

    return-void

    nop

    :array_0
    .array-data 4
        0x4010a3d7    # 2.26f
        -0x3fbeb852    # -3.02f
        0x3fe147ae    # 1.76f
    .end array-data

    :array_1
    .array-data 4
        0x3f699999    # 0.91249996f
        0x3f355555
    .end array-data

    :array_2
    .array-data 4
        -0x42c44444
        -0x42c44444
    .end array-data

    :array_3
    .array-data 4
        -0x425dddde
        0x3da22222
    .end array-data

    :array_4
    .array-data 4
        -0x425dddde
        -0x425dddde
    .end array-data

    :array_5
    .array-data 4
        -0x42c44444
        0x3d3bbbbc
    .end array-data

    :array_6
    .array-data 4
        0x3da22222
        0x3da22222
    .end array-data

    :array_7
    .array-data 4
        -0x425dddde
        0x3da22222
    .end array-data

    :array_8
    .array-data 4
        0x3d3bbbbc
        0x3d3bbbbc
    .end array-data

    :array_9
    .array-data 4
        0x3da22222
        -0x425dddde
    .end array-data

    :array_a
    .array-data 4
        0x3da22222
        0x3da22222
    .end array-data

    :array_b
    .array-data 4
        0x3d3bbbbc
        -0x42c44444
    .end array-data

    :array_c
    .array-data 4
        -0x425dddde
        -0x425dddde
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 133
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 107
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mVirtualTop:Landroid/graphics/PointF;

    .line 108
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mVirtualLeft:Landroid/graphics/PointF;

    .line 110
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mPaint:Landroid/graphics/Paint;

    .line 111
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    .line 116
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    .line 117
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    .line 118
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mXPath:Landroid/graphics/Path;

    .line 120
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    .line 122
    new-instance v0, Lcom/android/settingslib/graph/SignalDrawable$SlashArtist;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settingslib/graph/SignalDrawable$SlashArtist;-><init>(Lcom/android/settingslib/graph/SignalDrawable;Lcom/android/settingslib/graph/SignalDrawable$1;)V

    iput-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mSlash:Lcom/android/settingslib/graph/SignalDrawable$SlashArtist;

    const/high16 v0, -0x40800000    # -1.0f

    .line 124
    iput v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mOldDarkIntensity:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 125
    iput v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mNumLevels:F

    .line 418
    new-instance v0, Lcom/android/settingslib/graph/SignalDrawable$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/graph/SignalDrawable$1;-><init>(Lcom/android/settingslib/graph/SignalDrawable;)V

    iput-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mChangeDot:Ljava/lang/Runnable;

    .line 134
    sget v0, Lcom/android/settingslib/R$color;->dark_mode_icon_color_dual_tone_background:I

    .line 135
    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getDefaultColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mDarkModeBackgroundColor:I

    .line 136
    sget v0, Lcom/android/settingslib/R$color;->dark_mode_icon_color_dual_tone_fill:I

    .line 137
    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getDefaultColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mDarkModeFillColor:I

    .line 138
    sget v0, Lcom/android/settingslib/R$color;->light_mode_icon_color_dual_tone_background:I

    .line 139
    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getDefaultColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mLightModeBackgroundColor:I

    .line 140
    sget v0, Lcom/android/settingslib/R$color;->light_mode_icon_color_dual_tone_fill:I

    .line 141
    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getDefaultColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mLightModeFillColor:I

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$dimen;->signal_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mIntrinsicSize:I

    .line 144
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 145
    invoke-virtual {p0, v0}, Lcom/android/settingslib/graph/SignalDrawable;->setDarkIntensity(F)V

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settingslib/R$dimen;->stat_sys_mobile_signal_circle_inset:I

    .line 148
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mAppliedCornerInset:F

    return-void
.end method

.method static synthetic access$102(Lcom/android/settingslib/graph/SignalDrawable;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mCurrentDot:I

    return p1
.end method

.method static synthetic access$104(Lcom/android/settingslib/graph/SignalDrawable;)I
    .locals 1

    .line 40
    iget v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mCurrentDot:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mCurrentDot:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/settingslib/graph/SignalDrawable;)Ljava/lang/Runnable;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mChangeDot:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settingslib/graph/SignalDrawable;)Landroid/os/Handler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private calcFit(F)F
    .locals 4

    const/4 p0, 0x0

    const/4 v0, 0x0

    move v1, p1

    .line 382
    :goto_0
    sget-object v2, Lcom/android/settingslib/graph/SignalDrawable;->FIT:[F

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 383
    aget v2, v2, v0

    mul-float/2addr v2, v1

    add-float/2addr p0, v2

    mul-float/2addr v1, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p0
.end method

.method private drawDot(Landroid/graphics/Path;Landroid/graphics/Path;FFFI)V
    .locals 6

    .line 369
    iget p0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mCurrentDot:I

    if-ne p6, p0, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    add-float v3, p3, p5

    add-float v4, p4, p5

    .line 370
    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v1, p3

    move v2, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public static getAirplaneModeState(I)I
    .locals 1

    shl-int/lit8 p0, p0, 0x8

    const/high16 v0, 0x40000

    or-int/2addr p0, v0

    return p0
.end method

.method private getBackgroundColor(F)I
    .locals 2

    .line 222
    iget v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mLightModeBackgroundColor:I

    iget v1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mDarkModeBackgroundColor:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settingslib/graph/SignalDrawable;->getColorForDarkIntensity(FII)I

    move-result p0

    return p0
.end method

.method public static getCarrierChangeState(I)I
    .locals 1

    shl-int/lit8 p0, p0, 0x8

    const/high16 v0, 0x30000

    or-int/2addr p0, v0

    return p0
.end method

.method private getColorForDarkIntensity(FII)I
    .locals 0

    .line 227
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getEmptyState(I)I
    .locals 1

    shl-int/lit8 p0, p0, 0x8

    const/high16 v0, 0x10000

    or-int/2addr p0, v0

    return p0
.end method

.method private getFillColor(F)I
    .locals 2

    .line 217
    iget v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mLightModeFillColor:I

    iget v1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mDarkModeFillColor:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settingslib/graph/SignalDrawable;->getColorForDarkIntensity(FII)I

    move-result p0

    return p0
.end method

.method public static getLevel(I)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static getNumLevels(I)I
    .locals 1

    const v0, 0xff00

    and-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static getState(I)I
    .locals 1

    const/high16 v0, 0xff0000

    and-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x10

    return p0
.end method

.method public static getState(IIZ)I
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    shl-int/lit8 p2, p2, 0x10

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0
.end method

.method private setSignalState(I)V
    .locals 1

    .line 172
    iget v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mState:I

    if-ne p1, v0, :cond_0

    return-void

    .line 173
    :cond_0
    iput p1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mState:I

    .line 174
    invoke-direct {p0}, Lcom/android/settingslib/graph/SignalDrawable;->updateAnimation()V

    .line 175
    invoke-virtual {p0}, Lcom/android/settingslib/graph/SignalDrawable;->invalidateSelf()V

    return-void
.end method

.method private updateAnimation()V
    .locals 2

    .line 179
    iget v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 180
    :goto_0
    iget-boolean v1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mAnimating:Z

    if-ne v0, v1, :cond_1

    return-void

    .line 181
    :cond_1
    iput-boolean v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mAnimating:Z

    if-eqz v0, :cond_2

    .line 183
    iget-object p0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mChangeDot:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mChangeDot:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 29

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/graph/SignalDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v9, v0

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/graph/SignalDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v10, v0

    .line 241
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/graph/SignalDrawable;->getLayoutDirection()I

    move-result v0

    const/4 v12, 0x1

    if-ne v0, v12, :cond_0

    move v13, v12

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    if-eqz v13, :cond_1

    .line 243
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 245
    invoke-virtual {v8, v9, v0}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v1, -0x40800000    # -1.0f

    .line 246
    invoke-virtual {v8, v1, v14}, Landroid/graphics/Canvas;->scale(FF)V

    .line 248
    :cond_1
    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 249
    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    const v15, 0x3daaaaab

    mul-float v1, v9, v15

    .line 251
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v6, v1

    const v1, 0x3d34b4b5

    mul-float v16, v10, v1

    const v1, 0x3f3504f7

    mul-float v1, v1, v16

    .line 257
    iget-object v2, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    sub-float v5, v9, v6

    sub-float v4, v10, v6

    sub-float v3, v4, v16

    invoke-virtual {v2, v5, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 259
    iget-object v2, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    add-float v25, v6, v16

    iget v11, v7, Lcom/android/settingslib/graph/SignalDrawable;->mAppliedCornerInset:F

    add-float v11, v25, v11

    invoke-virtual {v2, v5, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 261
    iget-object v2, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    const/high16 v11, 0x40000000    # 2.0f

    mul-float v26, v16, v11

    sub-float v27, v5, v26

    iget v14, v7, Lcom/android/settingslib/graph/SignalDrawable;->mAppliedCornerInset:F

    add-float v19, v6, v14

    add-float/2addr v14, v6

    add-float v21, v14, v26

    const/16 v22, 0x0

    const/high16 v23, -0x3cf90000    # -135.0f

    const/16 v24, 0x0

    move-object/from16 v17, v2

    move/from16 v18, v27

    move/from16 v20, v5

    invoke-virtual/range {v17 .. v24}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 269
    iget-object v2, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    iget v14, v7, Lcom/android/settingslib/graph/SignalDrawable;->mAppliedCornerInset:F

    add-float/2addr v14, v6

    add-float v14, v14, v16

    sub-float/2addr v14, v1

    sub-float/2addr v3, v1

    invoke-virtual {v2, v14, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 272
    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    iget v2, v7, Lcom/android/settingslib/graph/SignalDrawable;->mAppliedCornerInset:F

    add-float v18, v6, v2

    sub-float v3, v4, v26

    add-float/2addr v2, v6

    add-float v20, v2, v26

    const/high16 v22, -0x3cf90000    # -135.0f

    move-object/from16 v17, v1

    move/from16 v19, v3

    move/from16 v21, v4

    invoke-virtual/range {v17 .. v24}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 280
    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    sub-float v2, v5, v16

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 282
    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    const/high16 v22, 0x42b40000    # 90.0f

    const/high16 v23, -0x3d4c0000    # -90.0f

    move-object/from16 v17, v1

    move/from16 v18, v27

    move/from16 v20, v5

    invoke-virtual/range {v17 .. v24}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 290
    iget v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mState:I

    const/4 v14, 0x2

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    const v1, 0x3f155556

    mul-float/2addr v1, v9

    const v2, 0x3e2aaaab

    mul-float/2addr v2, v9

    const/high16 v17, 0x3e000000    # 0.125f

    mul-float v17, v17, v10

    const v18, 0x3d2aaaab

    mul-float v18, v18, v10

    .line 296
    iget-object v3, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 297
    iget-object v3, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    neg-float v15, v1

    invoke-virtual {v3, v15, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 298
    iget-object v3, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    neg-float v15, v2

    invoke-virtual {v3, v0, v15}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 299
    iget-object v3, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 300
    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    mul-float v18, v18, v11

    add-float v18, v18, v17

    sub-float v15, v5, v17

    sub-float v21, v4, v17

    .line 304
    iget-object v0, v7, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 305
    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    iget-object v2, v7, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    const/16 v22, 0x2

    move-object/from16 v0, p0

    move v3, v15

    move v12, v4

    move/from16 v4, v21

    move/from16 v28, v5

    move/from16 v5, v17

    move/from16 v19, v6

    move/from16 v6, v22

    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/graph/SignalDrawable;->drawDot(Landroid/graphics/Path;Landroid/graphics/Path;FFFI)V

    .line 306
    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    iget-object v2, v7, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    sub-float v3, v15, v18

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/graph/SignalDrawable;->drawDot(Landroid/graphics/Path;Landroid/graphics/Path;FFFI)V

    .line 307
    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    iget-object v2, v7, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    mul-float v18, v18, v11

    sub-float v3, v15, v18

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/graph/SignalDrawable;->drawDot(Landroid/graphics/Path;Landroid/graphics/Path;FFFI)V

    goto :goto_1

    :cond_2
    move v12, v4

    move/from16 v28, v5

    move/from16 v19, v6

    if-ne v1, v14, :cond_3

    const v1, 0x3ea88889

    mul-float/2addr v1, v9

    .line 310
    iget-object v2, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    move/from16 v3, v28

    invoke-virtual {v2, v3, v12}, Landroid/graphics/Path;->moveTo(FF)V

    .line 311
    iget-object v2, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    neg-float v4, v1

    invoke-virtual {v2, v4, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 312
    iget-object v2, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    invoke-virtual {v2, v0, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 313
    iget-object v2, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 314
    iget-object v2, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    goto :goto_2

    :cond_3
    :goto_1
    move/from16 v3, v28

    .line 317
    :goto_2
    iget v0, v7, Lcom/android/settingslib/graph/SignalDrawable;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 319
    iget-object v0, v7, Lcom/android/settingslib/graph/SignalDrawable;->mVirtualTop:Landroid/graphics/PointF;

    iget v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mAppliedCornerInset:F

    add-float v1, v25, v1

    sget v2, Lcom/android/settingslib/graph/SignalDrawable;->INV_TAN:F

    mul-float v2, v2, v16

    sub-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 322
    iget-object v0, v7, Lcom/android/settingslib/graph/SignalDrawable;->mVirtualLeft:Landroid/graphics/PointF;

    iget v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mAppliedCornerInset:F

    add-float v25, v25, v1

    sget v1, Lcom/android/settingslib/graph/SignalDrawable;->INV_TAN:F

    mul-float v1, v1, v16

    sub-float v1, v25, v1

    invoke-virtual {v0, v1, v12}, Landroid/graphics/PointF;->set(FF)V

    const v0, 0x3daaaaab

    mul-float v15, v10, v0

    .line 327
    sget v0, Lcom/android/settingslib/graph/SignalDrawable;->INV_TAN:F

    mul-float/2addr v0, v15

    .line 330
    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 331
    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 332
    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    sub-float v5, v3, v15

    sub-float v4, v12, v15

    invoke-virtual {v1, v5, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 333
    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    iget-object v2, v7, Lcom/android/settingslib/graph/SignalDrawable;->mVirtualTop:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v0

    invoke-virtual {v1, v5, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 334
    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    iget-object v2, v7, Lcom/android/settingslib/graph/SignalDrawable;->mVirtualLeft:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v0

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 335
    iget-object v0, v7, Lcom/android/settingslib/graph/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    invoke-virtual {v0, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 338
    iget-object v0, v7, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 339
    iget-object v0, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto :goto_3

    :cond_4
    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 342
    iget-object v0, v7, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 343
    iget-object v0, v7, Lcom/android/settingslib/graph/SignalDrawable;->mSlash:Lcom/android/settingslib/graph/SignalDrawable$SlashArtist;

    float-to-int v1, v10

    float-to-int v2, v9

    iget-object v3, v7, Lcom/android/settingslib/graph/SignalDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v8, v3}, Lcom/android/settingslib/graph/SignalDrawable$SlashArtist;->draw(IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_3

    :cond_5
    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    .line 345
    iget-object v0, v7, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 346
    iget v0, v7, Lcom/android/settingslib/graph/SignalDrawable;->mLevel:I

    int-to-float v0, v0

    iget v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mNumLevels:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    invoke-direct {v7, v0}, Lcom/android/settingslib/graph/SignalDrawable;->calcFit(F)F

    move-result v0

    mul-float v6, v19, v11

    sub-float v1, v9, v6

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 347
    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    int-to-float v0, v0

    add-float v0, v19, v0

    sget-object v21, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v16, v1

    move/from16 v17, v19

    move/from16 v18, v19

    move/from16 v19, v0

    move/from16 v20, v12

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 349
    iget-object v0, v7, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 352
    :cond_6
    :goto_3
    iget-object v0, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 353
    iget-object v0, v7, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 354
    iget v0, v7, Lcom/android/settingslib/graph/SignalDrawable;->mState:I

    if-ne v0, v14, :cond_8

    .line 355
    iget-object v0, v7, Lcom/android/settingslib/graph/SignalDrawable;->mXPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 356
    iget-object v0, v7, Lcom/android/settingslib/graph/SignalDrawable;->mXPath:Landroid/graphics/Path;

    sget-object v1, Lcom/android/settingslib/graph/SignalDrawable;->X_PATH:[[F

    const/4 v2, 0x0

    aget-object v3, v1, v2

    aget v3, v3, v2

    mul-float/2addr v3, v9

    aget-object v1, v1, v2

    const/4 v4, 0x1

    aget v1, v1, v4

    mul-float/2addr v1, v10

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v0, 0x1

    .line 357
    :goto_4
    sget-object v1, Lcom/android/settingslib/graph/SignalDrawable;->X_PATH:[[F

    array-length v3, v1

    if-ge v0, v3, :cond_7

    .line 358
    iget-object v3, v7, Lcom/android/settingslib/graph/SignalDrawable;->mXPath:Landroid/graphics/Path;

    aget-object v4, v1, v0

    aget v4, v4, v2

    mul-float/2addr v4, v9

    aget-object v1, v1, v0

    const/4 v5, 0x1

    aget v1, v1, v5

    mul-float/2addr v1, v10

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 360
    :cond_7
    iget-object v0, v7, Lcom/android/settingslib/graph/SignalDrawable;->mXPath:Landroid/graphics/Path;

    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_8
    if-eqz v13, :cond_9

    .line 363
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_9
    return-void
.end method

.method public getAlpha()I
    .locals 0

    .line 391
    iget-object p0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    move-result p0

    return p0
.end method

.method public getIntrinsicHeight()I
    .locals 0

    .line 162
    iget p0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mIntrinsicSize:I

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    .line 157
    iget p0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mIntrinsicSize:I

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/16 p0, 0xff

    return p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 232
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 233
    invoke-virtual {p0}, Lcom/android/settingslib/graph/SignalDrawable;->invalidateSelf()V

    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1

    .line 191
    invoke-static {p1}, Lcom/android/settingslib/graph/SignalDrawable;->getNumLevels(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/graph/SignalDrawable;->setNumLevels(I)V

    .line 192
    invoke-static {p1}, Lcom/android/settingslib/graph/SignalDrawable;->getState(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settingslib/graph/SignalDrawable;->setSignalState(I)V

    .line 193
    invoke-static {p1}, Lcom/android/settingslib/graph/SignalDrawable;->getLevel(I)I

    move-result p1

    .line 194
    iget v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mLevel:I

    if-eq p1, v0, :cond_0

    .line 195
    iput p1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mLevel:I

    .line 196
    invoke-virtual {p0}, Lcom/android/settingslib/graph/SignalDrawable;->invalidateSelf()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 397
    iget-object p0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 403
    iget-object p0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setColors(II)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 203
    iget-object p0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 2

    .line 207
    iget v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mOldDarkIntensity:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lcom/android/settingslib/graph/SignalDrawable;->getBackgroundColor(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 211
    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lcom/android/settingslib/graph/SignalDrawable;->getFillColor(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 212
    iput p1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mOldDarkIntensity:F

    .line 213
    invoke-virtual {p0}, Lcom/android/settingslib/graph/SignalDrawable;->invalidateSelf()V

    return-void
.end method

.method public setIntrinsicSize(I)V
    .locals 0

    .line 152
    iput p1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mIntrinsicSize:I

    return-void
.end method

.method public setNumLevels(I)V
    .locals 1

    int-to-float p1, p1

    .line 166
    iget v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mNumLevels:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 167
    :cond_0
    iput p1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mNumLevels:F

    .line 168
    invoke-virtual {p0}, Lcom/android/settingslib/graph/SignalDrawable;->invalidateSelf()V

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 0

    .line 413
    iput-boolean p1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mVisible:Z

    .line 414
    invoke-direct {p0}, Lcom/android/settingslib/graph/SignalDrawable;->updateAnimation()V

    .line 415
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p0

    return p0
.end method
