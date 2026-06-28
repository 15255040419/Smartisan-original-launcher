.class Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;
.super Landroid/widget/TextView;
.source "FloatingLabelSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/FloatingLabelSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LabelView"
.end annotation


# instance fields
.field private mDownAnim:Landroid/view/animation/Animation;

.field private mDownYDelta:I

.field private mLabel:Lcom/android/settings/widget/FloatingLabelSeekBar$ProgressLabel;

.field private mUpAnim:Landroid/view/animation/Animation;

.field private mUpYDelta:I

.field final synthetic this$0:Lcom/android/settings/widget/FloatingLabelSeekBar;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/FloatingLabelSeekBar;Lcom/android/settings/widget/FloatingLabelSeekBar$ProgressLabel;)V
    .locals 1

    .line 265
    iput-object p1, p0, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->this$0:Lcom/android/settings/widget/FloatingLabelSeekBar;

    .line 266
    invoke-virtual {p1}, Lcom/android/settings/widget/FloatingLabelSeekBar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 267
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p1, 0x50

    .line 268
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->setGravity(I)V

    .line 269
    invoke-virtual {p0, p2}, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->setLabel(Lcom/android/settings/widget/FloatingLabelSeekBar$ProgressLabel;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;)V
    .locals 0

    .line 256
    invoke-direct {p0}, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->updateAppearance()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;)Lcom/android/settings/widget/FloatingLabelSeekBar$ProgressLabel;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->mLabel:Lcom/android/settings/widget/FloatingLabelSeekBar$ProgressLabel;

    return-object p0
.end method

.method private updateAppearance()V
    .locals 3

    .line 311
    invoke-virtual {p0}, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->isSelected()Z

    move-result v0

    .line 312
    iget-object v1, p0, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->this$0:Lcom/android/settings/widget/FloatingLabelSeekBar;

    invoke-static {v1}, Lcom/android/settings/widget/FloatingLabelSeekBar;->access$600(Lcom/android/settings/widget/FloatingLabelSeekBar;)F

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->setTextSize(IF)V

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->this$0:Lcom/android/settings/widget/FloatingLabelSeekBar;

    invoke-static {v1}, Lcom/android/settings/widget/FloatingLabelSeekBar;->access$700(Lcom/android/settings/widget/FloatingLabelSeekBar;)I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->this$0:Lcom/android/settings/widget/FloatingLabelSeekBar;

    invoke-static {v1}, Lcom/android/settings/widget/FloatingLabelSeekBar;->access$800(Lcom/android/settings/widget/FloatingLabelSeekBar;)I

    move-result v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->setTextColor(I)V

    .line 314
    invoke-virtual {p0}, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    return-void
.end method


# virtual methods
.method public floatingDown()V
    .locals 3

    .line 295
    iget v0, p0, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->mDownYDelta:I

    iget-object v1, p0, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->this$0:Lcom/android/settings/widget/FloatingLabelSeekBar;

    invoke-static {v1}, Lcom/android/settings/widget/FloatingLabelSeekBar;->access$400(Lcom/android/settings/widget/FloatingLabelSeekBar;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->this$0:Lcom/android/settings/widget/FloatingLabelSeekBar;

    invoke-static {v0}, Lcom/android/settings/widget/FloatingLabelSeekBar;->access$400(Lcom/android/settings/widget/FloatingLabelSeekBar;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->mDownYDelta:I

    const/4 v0, 0x0

    .line 297
    iput-object v0, p0, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->mUpAnim:Landroid/view/animation/Animation;

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->mDownAnim:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    .line 300
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->this$0:Lcom/android/settings/widget/FloatingLabelSeekBar;

    invoke-static {v1}, Lcom/android/settings/widget/FloatingLabelSeekBar;->access$400(Lcom/android/settings/widget/FloatingLabelSeekBar;)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->mDownAnim:Landroid/view/animation/Animation;

    .line 301
    iget-object v0, p0, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->mDownAnim:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->mDownAnim:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->this$0:Lcom/android/settings/widget/FloatingLabelSeekBar;

    invoke-static {v1}, Lcom/android/settings/widget/FloatingLabelSeekBar;->access$500(Lcom/android/settings/widget/FloatingLabelSeekBar;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 304
    invoke-virtual {p0}, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->clearAnimation()V

    .line 305
    iget-object v0, p0, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->mDownAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x0

    .line 306
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->setSelected(Z)V

    .line 307
    invoke-direct {p0}, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->updateAppearance()V

    return-void
.end method

.method public floatingUp()V
    .locals 4

    .line 279
    iget v0, p0, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->mUpYDelta:I

    iget-object v1, p0, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->this$0:Lcom/android/settings/widget/FloatingLabelSeekBar;

    invoke-static {v1}, Lcom/android/settings/widget/FloatingLabelSeekBar;->access$400(Lcom/android/settings/widget/FloatingLabelSeekBar;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->this$0:Lcom/android/settings/widget/FloatingLabelSeekBar;

    invoke-static {v0}, Lcom/android/settings/widget/FloatingLabelSeekBar;->access$400(Lcom/android/settings/widget/FloatingLabelSeekBar;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->mUpYDelta:I

    const/4 v0, 0x0

    .line 281
    iput-object v0, p0, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->mUpAnim:Landroid/view/animation/Animation;

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->mUpAnim:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 284
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v2, p0, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->this$0:Lcom/android/settings/widget/FloatingLabelSeekBar;

    invoke-static {v2}, Lcom/android/settings/widget/FloatingLabelSeekBar;->access$400(Lcom/android/settings/widget/FloatingLabelSeekBar;)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v3, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->mUpAnim:Landroid/view/animation/Animation;

    .line 285
    iget-object v0, p0, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->mUpAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->mUpAnim:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->this$0:Lcom/android/settings/widget/FloatingLabelSeekBar;

    invoke-static {v2}, Lcom/android/settings/widget/FloatingLabelSeekBar;->access$500(Lcom/android/settings/widget/FloatingLabelSeekBar;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 288
    invoke-virtual {p0}, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->clearAnimation()V

    .line 289
    iget-object v0, p0, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->mUpAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 290
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->setSelected(Z)V

    .line 291
    invoke-direct {p0}, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->updateAppearance()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 319
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 320
    invoke-virtual {p0}, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->getMeasuredWidth()I

    move-result p1

    .line 321
    invoke-virtual {p0}, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->getMeasuredHeight()I

    move-result p2

    iget-object v0, p0, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->this$0:Lcom/android/settings/widget/FloatingLabelSeekBar;

    invoke-static {v0}, Lcom/android/settings/widget/FloatingLabelSeekBar;->access$400(Lcom/android/settings/widget/FloatingLabelSeekBar;)I

    move-result v0

    add-int/2addr p2, v0

    .line 322
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 327
    invoke-super {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 328
    invoke-direct {p0}, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->updateAppearance()V

    return-void
.end method

.method public setLabel(Lcom/android/settings/widget/FloatingLabelSeekBar$ProgressLabel;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->mLabel:Lcom/android/settings/widget/FloatingLabelSeekBar$ProgressLabel;

    if-eqz p1, :cond_0

    .line 274
    invoke-static {p1}, Lcom/android/settings/widget/FloatingLabelSeekBar$ProgressLabel;->access$300(Lcom/android/settings/widget/FloatingLabelSeekBar$ProgressLabel;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    invoke-direct {p0}, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->updateAppearance()V

    return-void
.end method
