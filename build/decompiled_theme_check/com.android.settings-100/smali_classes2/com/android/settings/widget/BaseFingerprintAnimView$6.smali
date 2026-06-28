.class Lcom/android/settings/widget/BaseFingerprintAnimView$6;
.super Ljava/lang/Object;
.source "BaseFingerprintAnimView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/BaseFingerprintAnimView;->getOverlayAlphaAnimator(IJ)Landroid/animation/Animator;
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

    .line 291
    iput-object p1, p0, Lcom/android/settings/widget/BaseFingerprintAnimView$6;->this$0:Lcom/android/settings/widget/BaseFingerprintAnimView;

    iput p2, p0, Lcom/android/settings/widget/BaseFingerprintAnimView$6;->val$progressIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/android/settings/widget/BaseFingerprintAnimView$6;->this$0:Lcom/android/settings/widget/BaseFingerprintAnimView;

    iget-object v0, v0, Lcom/android/settings/widget/BaseFingerprintAnimView;->overlayAlphaValue:[I

    iget p0, p0, Lcom/android/settings/widget/BaseFingerprintAnimView$6;->val$progressIndex:I

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput p1, v0, p0

    return-void
.end method
