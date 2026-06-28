.class Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;
.super Lcom/android/settings/wifi/dslv/DragSortListView$SmoothAnimator;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveAnimator"
.end annotation


# instance fields
.field private mFirstChildHeight:I

.field private mFirstPos:I

.field private mFirstStartBlank:F

.field private mFloatLocX:F

.field private mSecondChildHeight:I

.field private mSecondPos:I

.field private mSecondStartBlank:F

.field private srcPos:I

.field final synthetic this$0:Lcom/android/settings/wifi/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/dslv/DragSortListView;FI)V
    .locals 0

    .line 1350
    iput-object p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    .line 1351
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/dslv/DragSortListView$SmoothAnimator;-><init>(Lcom/android/settings/wifi/dslv/DragSortListView;FI)V

    const/4 p1, -0x1

    .line 1343
    iput p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    .line 1344
    iput p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 6

    const/4 v0, -0x1

    .line 1356
    iput v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    .line 1357
    iput v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    .line 1358
    iget-object v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {v1}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$1300(Lcom/android/settings/wifi/dslv/DragSortListView;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->mFirstPos:I

    .line 1359
    iget-object v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {v1}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$1400(Lcom/android/settings/wifi/dslv/DragSortListView;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->mSecondPos:I

    .line 1360
    iget-object v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {v1}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$900(Lcom/android/settings/wifi/dslv/DragSortListView;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->srcPos:I

    .line 1361
    iget-object v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$102(Lcom/android/settings/wifi/dslv/DragSortListView;I)I

    .line 1363
    iget-object v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {v1}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$500(Lcom/android/settings/wifi/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iput v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->mFloatLocX:F

    .line 1364
    iget-object v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {v1}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$1500(Lcom/android/settings/wifi/dslv/DragSortListView;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1365
    iget-object v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-virtual {v1}, Lcom/android/settings/wifi/dslv/DragSortListView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v1, v3

    .line 1366
    iget-object v4, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {v4}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$1600(Lcom/android/settings/wifi/dslv/DragSortListView;)F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    .line 1367
    iget-object v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    iget p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->mFloatLocX:F

    cmpg-float p0, p0, v5

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    int-to-float p0, v0

    mul-float/2addr p0, v1

    invoke-static {v3, p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$1602(Lcom/android/settings/wifi/dslv/DragSortListView;F)F

    goto :goto_1

    :cond_1
    mul-float/2addr v1, v3

    .line 1370
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {v0}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$1600(Lcom/android/settings/wifi/dslv/DragSortListView;)F

    move-result v0

    cmpg-float v0, v0, v5

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {v0}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$1600(Lcom/android/settings/wifi/dslv/DragSortListView;)F

    move-result v0

    neg-float v2, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 1371
    iget-object p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {p0, v2}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$1602(Lcom/android/settings/wifi/dslv/DragSortListView;F)F

    goto :goto_1

    .line 1372
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {v0}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$1600(Lcom/android/settings/wifi/dslv/DragSortListView;)F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {v0}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$1600(Lcom/android/settings/wifi/dslv/DragSortListView;)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 1373
    iget-object p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {p0, v1}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$1602(Lcom/android/settings/wifi/dslv/DragSortListView;F)F

    goto :goto_1

    .line 1376
    :cond_3
    iget-object p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$1700(Lcom/android/settings/wifi/dslv/DragSortListView;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1432
    iget-object p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$1900(Lcom/android/settings/wifi/dslv/DragSortListView;)V

    return-void
.end method

.method public onUpdate(FF)V
    .locals 10

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p2

    .line 1384
    iget-object p2, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-virtual {p2}, Lcom/android/settings/wifi/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result p2

    .line 1385
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    iget v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->mFirstPos:I

    sub-int/2addr v1, p2

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1389
    iget-object v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {v1}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$1500(Lcom/android/settings/wifi/dslv/DragSortListView;)Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 1390
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->mStartTime:J

    sub-long/2addr v4, v6

    long-to-float v1, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v1, v4

    const/4 v4, 0x0

    cmpl-float v5, v1, v4

    if-nez v5, :cond_0

    return-void

    .line 1393
    :cond_0
    iget-object v5, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {v5}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$1600(Lcom/android/settings/wifi/dslv/DragSortListView;)F

    move-result v5

    mul-float/2addr v5, v1

    .line 1394
    iget-object v6, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-virtual {v6}, Lcom/android/settings/wifi/dslv/DragSortListView;->getWidth()I

    move-result v6

    .line 1395
    iget-object v7, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {v7}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$1600(Lcom/android/settings/wifi/dslv/DragSortListView;)F

    move-result v8

    iget-object v9, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {v9}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$1600(Lcom/android/settings/wifi/dslv/DragSortListView;)F

    move-result v9

    cmpl-float v4, v9, v4

    if-lez v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    int-to-float v4, v4

    mul-float/2addr v4, v1

    int-to-float v1, v6

    mul-float/2addr v4, v1

    add-float/2addr v8, v4

    invoke-static {v7, v8}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$1602(Lcom/android/settings/wifi/dslv/DragSortListView;F)F

    .line 1396
    iget v4, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->mFloatLocX:F

    add-float/2addr v4, v5

    iput v4, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->mFloatLocX:F

    .line 1397
    iget-object v4, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {v4}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$500(Lcom/android/settings/wifi/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->mFloatLocX:F

    float-to-int v7, v5

    iput v7, v4, Landroid/graphics/Point;->x:I

    cmpg-float v1, v5, v1

    if-gez v1, :cond_2

    neg-int v1, v6

    int-to-float v1, v1

    cmpl-float v1, v5, v1

    if-lez v1, :cond_2

    .line 1399
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->mStartTime:J

    .line 1400
    iget-object p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {p0, v3}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$700(Lcom/android/settings/wifi/dslv/DragSortListView;Z)V

    return-void

    :cond_2
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 1406
    iget v4, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    if-ne v4, v2, :cond_3

    .line 1407
    iget-object v4, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    iget v5, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->mFirstPos:I

    invoke-static {v4, v5, v0, v1}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$1800(Lcom/android/settings/wifi/dslv/DragSortListView;ILandroid/view/View;Z)I

    move-result v4

    iput v4, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    .line 1408
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->mFirstStartBlank:F

    .line 1410
    :cond_3
    iget v4, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->mFirstStartBlank:F

    mul-float/2addr v4, p1

    float-to-int v4, v4

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1411
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 1412
    iget v6, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    add-int/2addr v6, v4

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1413
    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1415
    :cond_4
    iget v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->mSecondPos:I

    iget v4, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->mFirstPos:I

    if-eq v0, v4, :cond_6

    .line 1416
    iget-object v4, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    sub-int/2addr v0, p2

    invoke-virtual {v4, v0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 1418
    iget v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    if-ne v0, v2, :cond_5

    .line 1419
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    iget v2, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->mSecondPos:I

    invoke-static {v0, v2, p2, v1}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$1800(Lcom/android/settings/wifi/dslv/DragSortListView;ILandroid/view/View;Z)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    .line 1420
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->mSecondStartBlank:F

    .line 1422
    :cond_5
    iget v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->mSecondStartBlank:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1423
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1424
    iget p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    add-int/2addr p0, p1

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1425
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    return-void
.end method
