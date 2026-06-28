.class Lcom/android/settings/widget/BaseFingerprintAnimView$4;
.super Ljava/lang/Object;
.source "BaseFingerprintAnimView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/BaseFingerprintAnimView;->getBubbleAnimator(IJ)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/BaseFingerprintAnimView;

.field final synthetic val$progressIndex:I


# direct methods
.method constructor <init>(Lcom/android/settings/widget/BaseFingerprintAnimView;I)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/android/settings/widget/BaseFingerprintAnimView$4;->this$0:Lcom/android/settings/widget/BaseFingerprintAnimView;

    iput p2, p0, Lcom/android/settings/widget/BaseFingerprintAnimView$4;->val$progressIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 254
    iget-object v0, p0, Lcom/android/settings/widget/BaseFingerprintAnimView$4;->this$0:Lcom/android/settings/widget/BaseFingerprintAnimView;

    iget-object v0, v0, Lcom/android/settings/widget/BaseFingerprintAnimView;->animingBubbleRadius:[I

    iget v1, p0, Lcom/android/settings/widget/BaseFingerprintAnimView$4;->val$progressIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput p1, v0, v1

    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 256
    iget-object p1, p0, Lcom/android/settings/widget/BaseFingerprintAnimView$4;->this$0:Lcom/android/settings/widget/BaseFingerprintAnimView;

    iget-wide v2, p1, Lcom/android/settings/widget/BaseFingerprintAnimView;->mLastInvalidViewTime:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x14

    cmp-long p1, v2, v4

    if-lez p1, :cond_0

    .line 258
    iget-object p0, p0, Lcom/android/settings/widget/BaseFingerprintAnimView$4;->this$0:Lcom/android/settings/widget/BaseFingerprintAnimView;

    iput-wide v0, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->mLastInvalidViewTime:J

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/widget/BaseFingerprintAnimView;->invalidate()V

    :cond_0
    return-void
.end method
