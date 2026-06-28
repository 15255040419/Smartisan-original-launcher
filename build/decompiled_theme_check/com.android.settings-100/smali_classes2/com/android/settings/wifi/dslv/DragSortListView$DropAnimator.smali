.class Lcom/android/settings/wifi/dslv/DragSortListView$DropAnimator;
.super Lcom/android/settings/wifi/dslv/DragSortListView$SmoothAnimator;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropAnimator"
.end annotation


# instance fields
.field private mDropPos:I

.field private mInitDeltaX:F

.field private mInitDeltaY:F

.field private srcPos:I

.field final synthetic this$0:Lcom/android/settings/wifi/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/dslv/DragSortListView;FI)V
    .locals 0

    .line 1276
    iput-object p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DropAnimator;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    .line 1277
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/dslv/DragSortListView$SmoothAnimator;-><init>(Lcom/android/settings/wifi/dslv/DragSortListView;FI)V

    return-void
.end method

.method private getTargetY()I
    .locals 4

    .line 1290
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DropAnimator;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1291
    iget-object v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DropAnimator;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {v1}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$1000(Lcom/android/settings/wifi/dslv/DragSortListView;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DropAnimator;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-virtual {v2}, Lcom/android/settings/wifi/dslv/DragSortListView;->getDividerHeight()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 1292
    iget-object v2, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DropAnimator;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    iget v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DropAnimator;->mDropPos:I

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1295
    iget v2, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DropAnimator;->mDropPos:I

    iget v3, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DropAnimator;->srcPos:I

    if-ne v2, v3, :cond_0

    .line 1296
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result p0

    goto :goto_0

    :cond_0
    if-ge v2, v3, :cond_1

    .line 1299
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result p0

    sub-int/2addr p0, v1

    goto :goto_0

    .line 1302
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DropAnimator;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$1100(Lcom/android/settings/wifi/dslv/DragSortListView;)I

    move-result p0

    sub-int p0, v0, p0

    goto :goto_0

    .line 1306
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/dslv/DragSortListView$DropAnimator;->cancel()V

    .line 1307
    iget-object p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DropAnimator;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$1200(Lcom/android/settings/wifi/dslv/DragSortListView;)V

    const/4 p0, -0x1

    :goto_0
    return p0
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 1282
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DropAnimator;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {v0}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$800(Lcom/android/settings/wifi/dslv/DragSortListView;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DropAnimator;->mDropPos:I

    .line 1283
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DropAnimator;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {v0}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$900(Lcom/android/settings/wifi/dslv/DragSortListView;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DropAnimator;->srcPos:I

    .line 1284
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DropAnimator;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$102(Lcom/android/settings/wifi/dslv/DragSortListView;I)I

    .line 1285
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DropAnimator;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {v0}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$500(Lcom/android/settings/wifi/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0}, Lcom/android/settings/wifi/dslv/DragSortListView$DropAnimator;->getTargetY()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DropAnimator;->mInitDeltaY:F

    .line 1286
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DropAnimator;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {v0}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$500(Lcom/android/settings/wifi/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DropAnimator;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-virtual {v1}, Lcom/android/settings/wifi/dslv/DragSortListView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DropAnimator;->mInitDeltaX:F

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1329
    iget-object p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DropAnimator;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {p0}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$1200(Lcom/android/settings/wifi/dslv/DragSortListView;)V

    return-void
.end method

.method public onUpdate(FF)V
    .locals 3

    .line 1315
    invoke-direct {p0}, Lcom/android/settings/wifi/dslv/DragSortListView$DropAnimator;->getTargetY()I

    move-result p1

    .line 1316
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DropAnimator;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/android/settings/wifi/dslv/DragSortListView;->getPaddingLeft()I

    move-result v0

    .line 1317
    iget-object v1, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DropAnimator;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {v1}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$500(Lcom/android/settings/wifi/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, p1

    int-to-float v1, v1

    .line 1318
    iget-object v2, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DropAnimator;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {v2}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$500(Lcom/android/settings/wifi/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    .line 1320
    iget p2, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DropAnimator;->mInitDeltaY:F

    div-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpg-float p2, v2, p2

    if-ltz p2, :cond_0

    iget p2, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DropAnimator;->mInitDeltaX:F

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpg-float p2, v2, p2

    if-gez p2, :cond_1

    .line 1321
    :cond_0
    iget-object p2, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DropAnimator;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {p2}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$500(Lcom/android/settings/wifi/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object p2

    iget v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DropAnimator;->mInitDeltaY:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    add-int/2addr p1, v0

    iput p1, p2, Landroid/graphics/Point;->y:I

    .line 1322
    iget-object p1, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DropAnimator;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-static {p1}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$500(Lcom/android/settings/wifi/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DropAnimator;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    invoke-virtual {p2}, Lcom/android/settings/wifi/dslv/DragSortListView;->getPaddingLeft()I

    move-result p2

    iget v0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DropAnimator;->mInitDeltaX:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Point;->x:I

    .line 1323
    iget-object p0, p0, Lcom/android/settings/wifi/dslv/DragSortListView$DropAnimator;->this$0:Lcom/android/settings/wifi/dslv/DragSortListView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/settings/wifi/dslv/DragSortListView;->access$700(Lcom/android/settings/wifi/dslv/DragSortListView;Z)V

    :cond_1
    return-void
.end method
