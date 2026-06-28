.class public Lcom/android/settingslib/animation/AppearAnimationUtils;
.super Ljava/lang/Object;
.source "AppearAnimationUtils.java"

# interfaces
.implements Lcom/android/settingslib/animation/AppearAnimationCreator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/animation/AppearAnimationUtils$RowTranslationScaler;,
        Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/settingslib/animation/AppearAnimationCreator<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_APPEAR_DURATION:J = 0xdcL


# instance fields
.field protected mAppearing:Z

.field protected final mDelayScale:F

.field private final mDuration:J

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

.field protected mRowTranslationScaler:Lcom/android/settingslib/animation/AppearAnimationUtils$RowTranslationScaler;

.field private final mStartTranslation:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const v0, 0x10c000e

    .line 48
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v7

    const-wide/16 v3, 0xdc

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v1, p0

    move-object v2, p1

    .line 46
    invoke-direct/range {v1 .. v7}, Lcom/android/settingslib/animation/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    invoke-direct {v0, p0}, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;-><init>(Lcom/android/settingslib/animation/AppearAnimationUtils;)V

    iput-object v0, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    .line 53
    iput-object p6, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p6, Lcom/android/settingslib/R$dimen;->appear_y_translation_start:I

    invoke-virtual {p1, p6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p4

    iput p1, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mStartTranslation:F

    .line 56
    iput p5, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mDelayScale:F

    .line 57
    iput-wide p2, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mDuration:J

    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mAppearing:Z

    return-void
.end method

.method private getDelays([Ljava/lang/Object;)Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    .line 132
    iput v1, v0, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    .line 133
    array-length v1, p1

    new-array v1, v1, [[J

    iput-object v1, v0, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    move-wide v2, v1

    move v1, v0

    .line 134
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_1

    .line 135
    iget-object v4, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    iget-object v4, v4, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    const/4 v5, 0x1

    new-array v5, v5, [J

    aput-object v5, v4, v1

    .line 136
    invoke-virtual {p0, v1, v0}, Lcom/android/settingslib/animation/AppearAnimationUtils;->calculateDelay(II)J

    move-result-wide v4

    .line 137
    iget-object v6, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    iget-object v6, v6, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    aget-object v6, v6, v1

    aput-wide v4, v6, v0

    .line 138
    aget-object v6, p1, v1

    if-eqz v6, :cond_0

    cmp-long v6, v4, v2

    if-lez v6, :cond_0

    .line 140
    iget-object v2, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    iput v0, v2, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    .line 141
    iput v1, v2, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    move-wide v2, v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    return-object p0
.end method

.method private getDelays([[Ljava/lang/Object;)Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([[TT;)",
            "Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    .line 150
    iput v1, v0, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    .line 151
    array-length v1, p1

    new-array v1, v1, [[J

    iput-object v1, v0, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    move-wide v2, v1

    move v1, v0

    .line 152
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_2

    .line 153
    aget-object v4, p1, v1

    .line 154
    iget-object v5, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    iget-object v5, v5, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    array-length v6, v4

    new-array v6, v6, [J

    aput-object v6, v5, v1

    move-wide v5, v2

    move v2, v0

    .line 155
    :goto_1
    array-length v3, v4

    if-ge v2, v3, :cond_1

    .line 156
    invoke-virtual {p0, v1, v2}, Lcom/android/settingslib/animation/AppearAnimationUtils;->calculateDelay(II)J

    move-result-wide v7

    .line 157
    iget-object v3, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    iget-object v3, v3, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    aget-object v3, v3, v1

    aput-wide v7, v3, v2

    .line 158
    aget-object v3, p1, v1

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    cmp-long v3, v7, v5

    if-lez v3, :cond_0

    .line 160
    iget-object v3, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    iput v2, v3, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    .line 161
    iput v1, v3, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    move-wide v5, v7

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move-wide v2, v5

    goto :goto_0

    .line 165
    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    return-object p0
.end method

.method private startAnimations(Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settingslib/animation/AppearAnimationCreator;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;",
            "[TT;",
            "Ljava/lang/Runnable;",
            "Lcom/android/settingslib/animation/AppearAnimationCreator<",
            "TT;>;)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    .line 83
    iget v2, v1, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    iget v2, v1, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    if-ne v2, v3, :cond_0

    goto :goto_4

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    .line 87
    :goto_0
    iget-object v4, v1, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    array-length v4, v4

    if-ge v3, v4, :cond_4

    .line 88
    iget-object v4, v1, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    aget-object v4, v4, v3

    .line 89
    aget-wide v7, v4, v2

    const/4 v4, 0x0

    .line 91
    iget v5, v1, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    if-ne v5, v3, :cond_1

    iget v5, v1, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    if-nez v5, :cond_1

    move-object/from16 v14, p3

    goto :goto_1

    :cond_1
    move-object v14, v4

    .line 94
    :goto_1
    iget-object v4, v0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mRowTranslationScaler:Lcom/android/settingslib/animation/AppearAnimationUtils$RowTranslationScaler;

    if-eqz v4, :cond_2

    iget-object v5, v1, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    array-length v5, v5

    .line 95
    invoke-interface {v4, v3, v5}, Lcom/android/settingslib/animation/AppearAnimationUtils$RowTranslationScaler;->getRowTranslationScale(II)F

    move-result v4

    goto :goto_2

    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    .line 97
    :goto_2
    iget v5, v0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mStartTranslation:F

    mul-float/2addr v4, v5

    .line 98
    aget-object v6, p2, v3

    iget-wide v9, v0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mDuration:J

    iget-boolean v5, v0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mAppearing:Z

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    neg-float v4, v4

    :goto_3
    move v11, v4

    iget-boolean v12, v0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mAppearing:Z

    iget-object v13, v0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v5, p4

    invoke-interface/range {v5 .. v14}, Lcom/android/settingslib/animation/AppearAnimationCreator;->createAnimation(Ljava/lang/Object;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void

    .line 84
    :cond_5
    :goto_4
    invoke-interface/range {p3 .. p3}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private startAnimations(Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;[[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settingslib/animation/AppearAnimationCreator;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;",
            "[[TT;",
            "Ljava/lang/Runnable;",
            "Lcom/android/settingslib/animation/AppearAnimationCreator<",
            "TT;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 106
    iget v2, v1, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    iget v2, v1, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    if-ne v2, v3, :cond_0

    goto :goto_5

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    .line 110
    :goto_0
    iget-object v4, v1, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    array-length v4, v4

    if-ge v3, v4, :cond_5

    .line 111
    iget-object v4, v1, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    aget-object v4, v4, v3

    .line 112
    iget-object v5, v0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mRowTranslationScaler:Lcom/android/settingslib/animation/AppearAnimationUtils$RowTranslationScaler;

    if-eqz v5, :cond_1

    iget-object v6, v1, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    array-length v6, v6

    .line 113
    invoke-interface {v5, v3, v6}, Lcom/android/settingslib/animation/AppearAnimationUtils$RowTranslationScaler;->getRowTranslationScale(II)F

    move-result v5

    goto :goto_1

    :cond_1
    const/high16 v5, 0x3f800000    # 1.0f

    .line 115
    :goto_1
    iget v6, v0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mStartTranslation:F

    mul-float/2addr v5, v6

    move v6, v2

    .line 116
    :goto_2
    array-length v7, v4

    if-ge v6, v7, :cond_4

    .line 117
    aget-wide v10, v4, v6

    const/4 v7, 0x0

    .line 119
    iget v8, v1, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    if-ne v8, v3, :cond_2

    iget v8, v1, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    if-ne v8, v6, :cond_2

    move-object/from16 v17, p3

    goto :goto_3

    :cond_2
    move-object/from16 v17, v7

    .line 122
    :goto_3
    aget-object v7, p2, v3

    aget-object v9, v7, v6

    iget-wide v12, v0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mDuration:J

    iget-boolean v7, v0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mAppearing:Z

    if-eqz v7, :cond_3

    move v14, v5

    goto :goto_4

    :cond_3
    neg-float v7, v5

    move v14, v7

    :goto_4
    iget-boolean v15, v0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mAppearing:Z

    iget-object v7, v0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v8, p4

    move-object/from16 v16, v7

    invoke-interface/range {v8 .. v17}, Lcom/android/settingslib/animation/AppearAnimationCreator;->createAnimation(Ljava/lang/Object;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-void

    .line 107
    :cond_6
    :goto_5
    invoke-interface/range {p3 .. p3}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static startTranslationYAnimation(Landroid/view/View;JJFLandroid/view/animation/Interpolator;)V
    .locals 5

    .line 225
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 226
    new-instance v0, Landroid/view/RenderNodeAnimator;

    invoke-direct {v0, v1, p5}, Landroid/view/RenderNodeAnimator;-><init>(IF)V

    .line 228
    invoke-virtual {v0, p0}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    goto :goto_0

    .line 231
    :cond_0
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    .line 232
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v4

    aput v4, v2, v3

    aput p5, v2, v1

    .line 231
    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 234
    :goto_0
    invoke-virtual {v0, p6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 235
    invoke-virtual {v0, p3, p4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 236
    invoke-virtual {v0, p1, p2}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 237
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method


# virtual methods
.method protected calculateDelay(II)J
    .locals 6

    mul-int/lit8 v0, p1, 0x28

    int-to-double v0, v0

    int-to-double v2, p2

    int-to-double p1, p1

    const-wide v4, 0x3fd999999999999aL    # 0.4

    .line 169
    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr p1, v4

    mul-double/2addr v2, p1

    const-wide/high16 p1, 0x4034000000000000L    # 20.0

    mul-double/2addr v2, p1

    add-double/2addr v0, v2

    iget p0, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mDelayScale:F

    float-to-double p0, p0

    mul-double/2addr v0, p0

    double-to-long p0, v0

    return-wide p0
.end method

.method public createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p9

    if-eqz v1, :cond_7

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz p7, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    .line 184
    :goto_0
    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    if-eqz p7, :cond_1

    move/from16 v5, p6

    goto :goto_1

    :cond_1
    move v5, v4

    .line 185
    :goto_1
    invoke-virtual {p1, v5}, Landroid/view/View;->setTranslationY(F)V

    if-eqz p7, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    .line 188
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_3

    .line 189
    new-instance v5, Landroid/view/RenderNodeAnimator;

    const/16 v7, 0xb

    invoke-direct {v5, v7, v3}, Landroid/view/RenderNodeAnimator;-><init>(IF)V

    .line 191
    invoke-virtual {v5, p1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    goto :goto_3

    .line 194
    :cond_3
    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v6, [F

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v9

    aput v9, v7, v8

    const/4 v8, 0x1

    aput v3, v7, v8

    invoke-static {p1, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    :goto_3
    move-object/from16 v7, p8

    .line 196
    invoke-virtual {v5, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-wide/from16 v8, p4

    .line 197
    invoke-virtual {v5, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-wide v10, p2

    .line 198
    invoke-virtual {v5, p2, p3}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 199
    invoke-virtual {p1}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    .line 200
    invoke-virtual {p1, v6, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 201
    new-instance v3, Lcom/android/settingslib/animation/AppearAnimationUtils$1;

    invoke-direct {v3, p0, p1}, Lcom/android/settingslib/animation/AppearAnimationUtils$1;-><init>(Lcom/android/settingslib/animation/AppearAnimationUtils;Landroid/view/View;)V

    invoke-virtual {v5, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_4
    if-eqz v2, :cond_5

    .line 209
    new-instance v3, Lcom/android/settingslib/animation/AppearAnimationUtils$2;

    invoke-direct {v3, p0, v2}, Lcom/android/settingslib/animation/AppearAnimationUtils$2;-><init>(Lcom/android/settingslib/animation/AppearAnimationUtils;Ljava/lang/Runnable;)V

    invoke-virtual {v5, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 216
    :cond_5
    invoke-virtual {v5}, Landroid/animation/Animator;->start()V

    if-eqz p7, :cond_6

    move v5, v4

    goto :goto_4

    :cond_6
    move/from16 v5, p6

    :goto_4
    move-object v0, p1

    move-wide v1, p2

    move-wide/from16 v3, p4

    move-object/from16 v6, p8

    .line 217
    invoke-static/range {v0 .. v6}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startTranslationYAnimation(Landroid/view/View;JJFLandroid/view/animation/Interpolator;)V

    :cond_7
    return-void
.end method

.method public bridge synthetic createAnimation(Ljava/lang/Object;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 0

    .line 33
    check-cast p1, Landroid/view/View;

    invoke-virtual/range {p0 .. p9}, Lcom/android/settingslib/animation/AppearAnimationUtils;->createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    return-void
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public getStartTranslation()F
    .locals 0

    .line 177
    iget p0, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mStartTranslation:F

    return p0
.end method

.method public startAnimation([Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .line 66
    invoke-virtual {p0, p1, p2, p0}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startAnimation([Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settingslib/animation/AppearAnimationCreator;)V

    return-void
.end method

.method public startAnimation([Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settingslib/animation/AppearAnimationCreator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/Runnable;",
            "Lcom/android/settingslib/animation/AppearAnimationCreator<",
            "TT;>;)V"
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1}, Lcom/android/settingslib/animation/AppearAnimationUtils;->getDelays([Ljava/lang/Object;)Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    move-result-object v0

    .line 78
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startAnimations(Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settingslib/animation/AppearAnimationCreator;)V

    return-void
.end method

.method public startAnimation2d([[Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .line 62
    invoke-virtual {p0, p1, p2, p0}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startAnimation2d([[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settingslib/animation/AppearAnimationCreator;)V

    return-void
.end method

.method public startAnimation2d([[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settingslib/animation/AppearAnimationCreator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([[TT;",
            "Ljava/lang/Runnable;",
            "Lcom/android/settingslib/animation/AppearAnimationCreator<",
            "TT;>;)V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1}, Lcom/android/settingslib/animation/AppearAnimationUtils;->getDelays([[Ljava/lang/Object;)Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    move-result-object v0

    .line 72
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startAnimations(Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;[[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settingslib/animation/AppearAnimationCreator;)V

    return-void
.end method
