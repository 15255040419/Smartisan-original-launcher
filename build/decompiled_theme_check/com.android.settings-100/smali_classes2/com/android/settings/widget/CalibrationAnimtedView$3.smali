.class Lcom/android/settings/widget/CalibrationAnimtedView$3;
.super Lcom/android/settings/widget/CalibrationAnimtedView$AnimatorListenerWrapper;
.source "CalibrationAnimtedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/CalibrationAnimtedView;->initSelectedAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/CalibrationAnimtedView;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/CalibrationAnimtedView;)V
    .locals 1

    .line 120
    iput-object p1, p0, Lcom/android/settings/widget/CalibrationAnimtedView$3;->this$0:Lcom/android/settings/widget/CalibrationAnimtedView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/CalibrationAnimtedView$AnimatorListenerWrapper;-><init>(Lcom/android/settings/widget/CalibrationAnimtedView;Lcom/android/settings/widget/CalibrationAnimtedView$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/android/settings/widget/CalibrationAnimtedView$3;->this$0:Lcom/android/settings/widget/CalibrationAnimtedView;

    invoke-static {p0}, Lcom/android/settings/widget/CalibrationAnimtedView;->access$100(Lcom/android/settings/widget/CalibrationAnimtedView;)Landroid/widget/ImageView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
