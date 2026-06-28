.class public Lcom/android/settings/widget/ChartNetworkSeriesView;
.super Landroid/view/View;
.source "ChartNetworkSeriesView.java"


# static fields
.field private static final ESTIMATE_ENABLED:Z = false

.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "ChartNetworkSeriesView"


# instance fields
.field private mEnd:J

.field private mEndTime:J

.field private mEstimateVisible:Z

.field private mHoriz:Lcom/android/settings/widget/ChartAxis;

.field private mMax:J

.field private mMaxEstimate:J

.field private mPaintEstimate:Landroid/graphics/Paint;

.field private mPaintFill:Landroid/graphics/Paint;

.field private mPaintFillSecondary:Landroid/graphics/Paint;

.field private mPaintStroke:Landroid/graphics/Paint;

.field private mPathEstimate:Landroid/graphics/Path;

.field private mPathFill:Landroid/graphics/Path;

.field private mPathStroke:Landroid/graphics/Path;

.field private mPathValid:Z

.field private mPrimaryLeft:J

.field private mPrimaryRight:J

.field private mSafeRegion:I

.field private mSecondary:Z

.field private mStart:J

.field private mStats:Landroid/net/NetworkStatsHistory;

.field private mVert:Lcom/android/settings/widget/ChartAxis;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/widget/ChartNetworkSeriesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/high16 v0, -0x8000000000000000L

    .line 72
    iput-wide v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEndTime:J

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathValid:Z

    .line 75
    iput-boolean v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEstimateVisible:Z

    .line 76
    iput-boolean v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mSecondary:Z

    .line 92
    sget-object v1, Lcom/android/settings/R$styleable;->ChartNetworkSeriesView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/high16 p2, -0x10000

    const/4 p3, 0x3

    .line 95
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 96
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    const/4 v2, 0x1

    .line 97
    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    const/4 v2, 0x2

    .line 99
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 102
    invoke-virtual {p0, p3, v1, p2}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setChartColor(III)V

    .line 103
    invoke-virtual {p0, v2}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setSafeRegion(I)V

    .line 104
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setWillNotDraw(Z)V

    .line 106
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 108
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    .line 109
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    .line 110
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathEstimate:Landroid/graphics/Path;

    return-void
.end method

.method private generatePath()V
    .locals 22

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    .line 185
    iput-wide v1, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mMax:J

    .line 186
    iget-object v3, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 187
    iget-object v3, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 188
    iget-object v3, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathEstimate:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    const/4 v3, 0x1

    .line 189
    iput-boolean v3, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathValid:Z

    .line 192
    iget-object v3, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    goto/16 :goto_3

    .line 196
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getWidth()I

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 202
    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/android/settings/widget/ChartAxis;->convertToValue(F)J

    move-result-wide v6

    .line 205
    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 206
    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v4, 0x0

    .line 215
    iget-object v8, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    iget-wide v9, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStart:J

    invoke-virtual {v8, v9, v10}, Landroid/net/NetworkStatsHistory;->getIndexBefore(J)I

    move-result v8

    .line 216
    iget-object v9, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    iget-wide v10, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEnd:J

    invoke-virtual {v9, v10, v11}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v9

    move-wide v10, v1

    move v1, v3

    move v2, v5

    :goto_0
    if-gt v8, v9, :cond_3

    .line 218
    iget-object v12, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v12, v8, v4}, Landroid/net/NetworkStatsHistory;->getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v4

    .line 220
    iget-wide v12, v4, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    .line 221
    iget-wide v14, v4, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    add-long/2addr v14, v12

    .line 223
    iget-object v5, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v5, v12, v13}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v5

    move/from16 v17, v2

    .line 224
    iget-object v2, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v2, v14, v15}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v2

    const/16 v16, 0x0

    cmpg-float v18, v2, v16

    if-gez v18, :cond_1

    move/from16 v21, v8

    move/from16 v20, v9

    move/from16 v2, v17

    goto :goto_1

    :cond_1
    move-wide/from16 v18, v14

    .line 230
    iget-wide v14, v4, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move/from16 v21, v8

    move/from16 v20, v9

    iget-wide v8, v4, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v14, v8

    add-long/2addr v10, v14

    .line 233
    iget-object v8, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mVert:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v8, v10, v11}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v8

    cmp-long v6, v6, v12

    if-eqz v6, :cond_2

    .line 237
    iget-object v6, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    invoke-virtual {v6, v5, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 238
    iget-object v6, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    invoke-virtual {v6, v5, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 242
    :cond_2
    iget-object v1, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    invoke-virtual {v1, v2, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 243
    iget-object v1, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    invoke-virtual {v1, v2, v8}, Landroid/graphics/Path;->lineTo(FF)V

    move v1, v8

    move-wide/from16 v6, v18

    :goto_1
    add-int/lit8 v8, v21, 0x1

    move/from16 v9, v20

    const/4 v5, 0x0

    goto :goto_0

    :cond_3
    move/from16 v17, v2

    .line 251
    iget-wide v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEndTime:J

    cmp-long v2, v6, v4

    if-gez v2, :cond_4

    .line 252
    iget-object v2, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v2, v4, v5}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v2

    .line 254
    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    invoke-virtual {v4, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 255
    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    invoke-virtual {v4, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    :cond_4
    move/from16 v2, v17

    .line 266
    :goto_2
    iget-object v1, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 267
    iget-object v1, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 269
    iput-wide v10, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mMax:J

    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidate()V

    :cond_5
    :goto_3
    return-void
.end method


# virtual methods
.method public bindNetworkStats(Landroid/net/NetworkStatsHistory;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidate()V

    return-void
.end method

.method public getMaxEstimate()J
    .locals 2

    .line 317
    iget-wide v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mMaxEstimate:J

    return-wide v0
.end method

.method public getMaxVisible()J
    .locals 9

    .line 321
    iget-boolean v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEstimateVisible:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mMaxEstimate:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mMax:J

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 322
    iget-object v3, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    if-eqz v3, :cond_1

    .line 324
    iget-wide v4, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStart:J

    iget-wide v6, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEnd:J

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object p0

    .line 325
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v0, v2

    :cond_1
    return-wide v0
.end method

.method init(Lcom/android/settings/widget/ChartAxis;Lcom/android/settings/widget/ChartAxis;)V
    .locals 1

    const-string v0, "missing horiz"

    .line 114
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/ChartAxis;

    iput-object p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    const-string p1, "missing vert"

    .line 115
    invoke-static {p2, p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/ChartAxis;

    iput-object p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mVert:Lcom/android/settings/widget/ChartAxis;

    return-void
.end method

.method public invalidatePath()V
    .locals 2

    const/4 v0, 0x0

    .line 173
    iput-boolean v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathValid:Z

    const-wide/16 v0, 0x0

    .line 174
    iput-wide v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mMax:J

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 335
    iget-boolean v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathValid:Z

    if-nez v0, :cond_0

    .line 336
    invoke-direct {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->generatePath()V

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    iget-wide v1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPrimaryLeft:J

    invoke-interface {v0, v1, v2}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v0

    .line 340
    iget-object v1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    iget-wide v2, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPrimaryRight:J

    invoke-interface {v1, v2, v3}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v1

    .line 342
    iget-boolean v2, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEstimateVisible:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 343
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 344
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getHeight()I

    move-result v5

    invoke-virtual {p1, v3, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 345
    iget-object v4, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathEstimate:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 346
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 349
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 350
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v5, v0, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 351
    iget-object v4, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 352
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 354
    iget-boolean v2, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mSecondary:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    .line 356
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 357
    iget v6, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mSafeRegion:I

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mSafeRegion:I

    sub-int/2addr v8, v9

    invoke-virtual {p1, v6, v3, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 358
    iget-object v3, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 359
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 361
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 362
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v5, v1, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 363
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 364
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 365
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public setBounds(JJ)V
    .locals 0

    .line 154
    iput-wide p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStart:J

    .line 155
    iput-wide p3, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEnd:J

    return-void
.end method

.method public setChartColor(III)V
    .locals 3

    .line 119
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    .line 120
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 121
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    iget-object p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 123
    iget-object p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 125
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    .line 126
    iget-object p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    iget-object p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 128
    iget-object p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 130
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    .line 131
    iget-object p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    iget-object p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 133
    iget-object p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 135
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    .line 136
    iget-object p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    const/high16 p2, 0x40400000    # 3.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 137
    iget-object p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    iget-object p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 139
    iget-object p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 140
    iget-object p0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/DashPathEffect;

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, p3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void

    nop

    :array_0
    .array-data 4
        0x41200000    # 10.0f
        0x41200000    # 10.0f
    .end array-data
.end method

.method public setEndTime(J)V
    .locals 0

    .line 308
    iput-wide p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEndTime:J

    return-void
.end method

.method public setEstimateVisible(Z)V
    .locals 0

    const/4 p1, 0x0

    .line 312
    iput-boolean p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEstimateVisible:Z

    .line 313
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidate()V

    return-void
.end method

.method public setPrimaryRange(JJ)V
    .locals 0

    .line 167
    iput-wide p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPrimaryLeft:J

    .line 168
    iput-wide p3, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPrimaryRight:J

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidate()V

    return-void
.end method

.method public setSafeRegion(I)V
    .locals 0

    .line 144
    iput p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mSafeRegion:I

    return-void
.end method

.method public setSecondary(Z)V
    .locals 0

    .line 159
    iput-boolean p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mSecondary:Z

    return-void
.end method
