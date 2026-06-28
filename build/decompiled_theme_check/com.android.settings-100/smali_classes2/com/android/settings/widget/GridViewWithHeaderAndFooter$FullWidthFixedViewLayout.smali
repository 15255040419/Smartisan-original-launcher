.class Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FullWidthFixedViewLayout;
.super Landroid/widget/FrameLayout;
.source "GridViewWithHeaderAndFooter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/GridViewWithHeaderAndFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullWidthFixedViewLayout"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/GridViewWithHeaderAndFooter;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/GridViewWithHeaderAndFooter;Landroid/content/Context;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FullWidthFixedViewLayout;->this$0:Lcom/android/settings/widget/GridViewWithHeaderAndFooter;

    .line 435
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 2

    .line 440
    iget-object v0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FullWidthFixedViewLayout;->this$0:Lcom/android/settings/widget/GridViewWithHeaderAndFooter;

    invoke-virtual {v0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FullWidthFixedViewLayout;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    if-eq v0, p2, :cond_0

    sub-int/2addr v0, p2

    .line 443
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FullWidthFixedViewLayout;->offsetLeftAndRight(I)V

    .line 445
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 450
    iget-object v0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FullWidthFixedViewLayout;->this$0:Lcom/android/settings/widget/GridViewWithHeaderAndFooter;

    invoke-virtual {v0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FullWidthFixedViewLayout;->this$0:Lcom/android/settings/widget/GridViewWithHeaderAndFooter;

    .line 451
    invoke-virtual {v1}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$FullWidthFixedViewLayout;->this$0:Lcom/android/settings/widget/GridViewWithHeaderAndFooter;

    .line 452
    invoke-virtual {v1}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 454
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 453
    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 455
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
