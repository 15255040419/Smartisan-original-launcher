.class Landroid/support/v4/media/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLayout;
.super Landroid/widget/LinearLayout;
.source "ClosedCaptionRenderer.java"

# interfaces
.implements Landroid/support/v4/media/subtitle/ClosedCaptionWidget$ClosedCaptionLayout;


# static fields
.field private static final MAX_ROWS:I = 0xf

.field private static final SAFE_AREA_RATIO:F = 0.9f


# instance fields
.field private final mLineBoxes:[Landroid/support/v4/media/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;

.field final synthetic this$1:Landroid/support/v4/media/subtitle/ClosedCaptionRenderer$Cea608CCWidget;


# direct methods
.method constructor <init>(Landroid/support/v4/media/subtitle/ClosedCaptionRenderer$Cea608CCWidget;Landroid/content/Context;)V
    .locals 4

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLayout;->this$1:Landroid/support/v4/media/subtitle/ClosedCaptionRenderer$Cea608CCWidget;

    .line 2
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 p2, 0xf

    new-array v0, p2, [Landroid/support/v4/media/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;

    .line 3
    iput-object v0, p0, Landroid/support/v4/media/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLayout;->mLineBoxes:[Landroid/support/v4/media/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;

    const v0, 0x800003

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 6
    iget-object v1, p0, Landroid/support/v4/media/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLayout;->mLineBoxes:[Landroid/support/v4/media/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;

    new-instance v2, Landroid/support/v4/media/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/support/v4/media/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;-><init>(Landroid/support/v4/media/subtitle/ClosedCaptionRenderer$Cea608CCWidget;Landroid/content/Context;)V

    aput-object v2, v1, v0

    .line 7
    iget-object v1, p0, Landroid/support/v4/media/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLayout;->mLineBoxes:[Landroid/support/v4/media/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;

    aget-object v1, v1, v0

    const/4 v2, -0x2

    invoke-virtual {p0, v1, v2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 5

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    mul-int/lit8 p1, p4, 0x3

    mul-int/lit8 p2, p5, 0x4

    if-lt p1, p2, :cond_0

    .line 1
    div-int/lit8 p1, p2, 0x3

    move p2, p5

    goto :goto_0

    .line 2
    :cond_0
    div-int/lit8 p1, p1, 0x4

    move p2, p1

    move p1, p4

    :goto_0
    int-to-float p1, p1

    const p3, 0x3f666666    # 0.9f

    mul-float/2addr p1, p3

    float-to-int p1, p1

    int-to-float p2, p2

    mul-float/2addr p2, p3

    float-to-int p2, p2

    sub-int/2addr p4, p1

    .line 3
    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p5, p2

    .line 4
    div-int/lit8 p5, p5, 0x2

    const/4 p3, 0x0

    :goto_1
    const/16 v0, 0xf

    if-ge p3, v0, :cond_1

    .line 5
    iget-object v1, p0, Landroid/support/v4/media/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLayout;->mLineBoxes:[Landroid/support/v4/media/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;

    aget-object v1, v1, p3

    mul-int v2, p2, p3

    div-int/2addr v2, v0

    add-int/2addr v2, p5

    add-int v3, p4, p1

    add-int/lit8 p3, p3, 0x1

    mul-int v4, p2, p3

    div-int/2addr v4, v0

    add-int/2addr v4, p5

    invoke-virtual {v1, p4, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p2

    mul-int/lit8 v0, p1, 0x3

    mul-int/lit8 v1, p2, 0x4

    if-lt v0, v1, :cond_0

    .line 4
    div-int/lit8 p1, v1, 0x3

    goto :goto_0

    .line 5
    :cond_0
    div-int/lit8 p2, v0, 0x4

    :goto_0
    int-to-float p1, p1

    const v0, 0x3f666666    # 0.9f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float p2, p2

    mul-float/2addr p2, v0

    float-to-int p2, p2

    const/16 v0, 0xf

    .line 6
    div-int/2addr p2, v0

    const/high16 v1, 0x40000000    # 2.0f

    .line 7
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 8
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 9
    iget-object v2, p0, Landroid/support/v4/media/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLayout;->mLineBoxes:[Landroid/support/v4/media/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Landroid/widget/TextView;->measure(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    .line 1
    iget-object v1, p0, Landroid/support/v4/media/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLayout;->mLineBoxes:[Landroid/support/v4/media/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/support/v4/media/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setFontScale(F)V
    .locals 0

    return-void
.end method

.method update([Landroid/text/SpannableStringBuilder;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xf

    if-ge v1, v2, :cond_1

    .line 1
    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 2
    iget-object v2, p0, Landroid/support/v4/media/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLayout;->mLineBoxes:[Landroid/support/v4/media/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;

    aget-object v2, v2, v1

    aget-object v3, p1, v1

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 3
    iget-object v2, p0, Landroid/support/v4/media/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLayout;->mLineBoxes:[Landroid/support/v4/media/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 4
    :cond_0
    iget-object v2, p0, Landroid/support/v4/media/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLayout;->mLineBoxes:[Landroid/support/v4/media/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;

    aget-object v2, v2, v1

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
