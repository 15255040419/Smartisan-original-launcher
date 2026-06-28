.class Lcom/android/settings/widget/CalibrationAnimtedView$1;
.super Ljava/lang/Object;
.source "CalibrationAnimtedView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/CalibrationAnimtedView;->initWaveAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/CalibrationAnimtedView;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/CalibrationAnimtedView;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/android/settings/widget/CalibrationAnimtedView$1;->this$0:Lcom/android/settings/widget/CalibrationAnimtedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 66
    iget-object p0, p0, Lcom/android/settings/widget/CalibrationAnimtedView$1;->this$0:Lcom/android/settings/widget/CalibrationAnimtedView;

    const-string v0, "scaleX"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/settings/widget/CalibrationAnimtedView;->scaleValue:F

    return-void
.end method
