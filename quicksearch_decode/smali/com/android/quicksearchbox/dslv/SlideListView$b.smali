.class public final Lcom/android/quicksearchbox/dslv/SlideListView$b;
.super Ljava/lang/Object;
.source "SlideListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/dslv/SlideListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public c:Z

.field public d:F

.field public e:J

.field public f:J

.field public final synthetic g:Lcom/android/quicksearchbox/dslv/SlideListView;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/dslv/SlideListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->g:Lcom/android/quicksearchbox/dslv/SlideListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quicksearchbox/dslv/SlideListView;Lcom/android/quicksearchbox/dslv/SlideListView$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/dslv/SlideListView$b;-><init>(Lcom/android/quicksearchbox/dslv/SlideListView;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->c:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->a:Z

    .line 4
    iput p1, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->b:I

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->e:J

    .line 6
    iget-object p1, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->g:Lcom/android/quicksearchbox/dslv/SlideListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .line 7
    iget-boolean v0, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->c:Z

    return v0
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->g:Lcom/android/quicksearchbox/dslv/SlideListView;

    invoke-static {v0}, Lcom/android/quicksearchbox/dslv/SlideListView;->a(Lcom/android/quicksearchbox/dslv/SlideListView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->g:Lcom/android/quicksearchbox/dslv/SlideListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->g:Lcom/android/quicksearchbox/dslv/SlideListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/quicksearchbox/dslv/SlideListView;->a(Lcom/android/quicksearchbox/dslv/SlideListView;I)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->g:Lcom/android/quicksearchbox/dslv/SlideListView;

    invoke-static {v0}, Lcom/android/quicksearchbox/dslv/SlideListView;->a(Lcom/android/quicksearchbox/dslv/SlideListView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->g:Lcom/android/quicksearchbox/dslv/SlideListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->g:Lcom/android/quicksearchbox/dslv/SlideListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->g:Lcom/android/quicksearchbox/dslv/SlideListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/quicksearchbox/dslv/SlideListView;->a(Lcom/android/quicksearchbox/dslv/SlideListView;I)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->g:Lcom/android/quicksearchbox/dslv/SlideListView;

    invoke-static {v0}, Lcom/android/quicksearchbox/dslv/SlideListView;->a(Lcom/android/quicksearchbox/dslv/SlideListView;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->g:Lcom/android/quicksearchbox/dslv/SlideListView;

    invoke-static {v2}, Lcom/android/quicksearchbox/dslv/SlideListView;->a(Lcom/android/quicksearchbox/dslv/SlideListView;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->g:Lcom/android/quicksearchbox/dslv/SlideListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    iget-object v2, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->g:Lcom/android/quicksearchbox/dslv/SlideListView;

    invoke-static {v2}, Lcom/android/quicksearchbox/dslv/SlideListView;->d(Lcom/android/quicksearchbox/dslv/SlideListView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 8
    iget-object v1, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->g:Lcom/android/quicksearchbox/dslv/SlideListView;

    invoke-static {v1, v0}, Lcom/android/quicksearchbox/dslv/SlideListView;->a(Lcom/android/quicksearchbox/dslv/SlideListView;I)V

    :cond_2
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->g:Lcom/android/quicksearchbox/dslv/SlideListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->c:Z

    return-void
.end method

.method public run()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->a:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->g:Lcom/android/quicksearchbox/dslv/SlideListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->g:Lcom/android/quicksearchbox/dslv/SlideListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->g:Lcom/android/quicksearchbox/dslv/SlideListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    .line 5
    iget-object v3, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->g:Lcom/android/quicksearchbox/dslv/SlideListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v3

    .line 6
    iget-object v4, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->g:Lcom/android/quicksearchbox/dslv/SlideListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeight()I

    move-result v4

    sub-int/2addr v4, v3

    iget-object v5, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->g:Lcom/android/quicksearchbox/dslv/SlideListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 7
    invoke-virtual {p0}, Lcom/android/quicksearchbox/dslv/SlideListView$b;->b()V

    .line 8
    iget v5, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->b:I

    const v6, 0x3c23d70a    # 0.01f

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v5, v7, :cond_4

    .line 9
    iget-object v1, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->g:Lcom/android/quicksearchbox/dslv/SlideListView;

    invoke-virtual {v1, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_1

    .line 10
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    if-ne v0, v3, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->g:Lcom/android/quicksearchbox/dslv/SlideListView;

    invoke-static {v0}, Lcom/android/quicksearchbox/dslv/SlideListView;->a(Lcom/android/quicksearchbox/dslv/SlideListView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-ge v0, v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->g:Lcom/android/quicksearchbox/dslv/SlideListView;

    invoke-static {v0}, Lcom/android/quicksearchbox/dslv/SlideListView;->a(Lcom/android/quicksearchbox/dslv/SlideListView;)Landroid/graphics/Point;

    move-result-object v0

    iget v3, v0, Landroid/graphics/Point;->y:I

    :goto_0
    int-to-float v0, v3

    .line 12
    iget-object v1, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->g:Lcom/android/quicksearchbox/dslv/SlideListView;

    invoke-static {v1}, Lcom/android/quicksearchbox/dslv/SlideListView;->b(Lcom/android/quicksearchbox/dslv/SlideListView;)F

    move-result v1

    sub-float/2addr v0, v1

    mul-float/2addr v0, v6

    iput v0, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->d:F

    goto :goto_3

    .line 13
    :cond_3
    :goto_1
    iput-boolean v8, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->c:Z

    return-void

    .line 14
    :cond_4
    iget-object v5, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->g:Lcom/android/quicksearchbox/dslv/SlideListView;

    sub-int v0, v1, v0

    invoke-virtual {v5, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    sub-int/2addr v2, v7

    if-ne v1, v2, :cond_5

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    add-int/2addr v4, v3

    if-gt v0, v4, :cond_5

    goto :goto_4

    .line 16
    :cond_5
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->g:Lcom/android/quicksearchbox/dslv/SlideListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->g:Lcom/android/quicksearchbox/dslv/SlideListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 17
    iget-object v1, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->g:Lcom/android/quicksearchbox/dslv/SlideListView;

    invoke-static {v1}, Lcom/android/quicksearchbox/dslv/SlideListView;->a(Lcom/android/quicksearchbox/dslv/SlideListView;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le v1, v0, :cond_6

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->g:Lcom/android/quicksearchbox/dslv/SlideListView;

    invoke-static {v0}, Lcom/android/quicksearchbox/dslv/SlideListView;->a(Lcom/android/quicksearchbox/dslv/SlideListView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    :goto_2
    int-to-float v0, v0

    .line 18
    iget-object v1, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->g:Lcom/android/quicksearchbox/dslv/SlideListView;

    invoke-static {v1}, Lcom/android/quicksearchbox/dslv/SlideListView;->c(Lcom/android/quicksearchbox/dslv/SlideListView;)F

    move-result v1

    sub-float/2addr v0, v1

    mul-float/2addr v0, v6

    iput v0, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->d:F

    .line 19
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->f:J

    .line 20
    iget-wide v0, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->f:J

    iget-wide v2, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->e:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    .line 21
    iget v1, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->d:F

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 22
    iget-object v2, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->g:Lcom/android/quicksearchbox/dslv/SlideListView;

    float-to-int v0, v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/ListView;->smoothScrollBy(II)V

    .line 23
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->g:Lcom/android/quicksearchbox/dslv/SlideListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    .line 24
    iget-wide v0, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->f:J

    iput-wide v0, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->e:J

    .line 25
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->g:Lcom/android/quicksearchbox/dslv/SlideListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 26
    :cond_7
    :goto_4
    iput-boolean v8, p0, Lcom/android/quicksearchbox/dslv/SlideListView$b;->c:Z

    return-void
.end method
