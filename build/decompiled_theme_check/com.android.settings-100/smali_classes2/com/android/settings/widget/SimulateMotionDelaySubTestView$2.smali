.class Lcom/android/settings/widget/SimulateMotionDelaySubTestView$2;
.super Landroid/os/CountDownTimer;
.source "SimulateMotionDelaySubTestView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->startCountdown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/SimulateMotionDelaySubTestView;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;JJ)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$2;->this$0:Lcom/android/settings/widget/SimulateMotionDelaySubTestView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    const-string v0, "SmdSubTestView"

    const-string v1, "Countdown finished."

    .line 224
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$2;->this$0:Lcom/android/settings/widget/SimulateMotionDelaySubTestView;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->access$1500(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;J)V

    .line 226
    iget-object v0, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$2;->this$0:Lcom/android/settings/widget/SimulateMotionDelaySubTestView;

    invoke-static {v0}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->access$1600(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;)V

    .line 227
    iget-object p0, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$2;->this$0:Lcom/android/settings/widget/SimulateMotionDelaySubTestView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->access$1702(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;Z)Z

    return-void
.end method

.method public onTick(J)V
    .locals 0

    .line 219
    iget-object p0, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$2;->this$0:Lcom/android/settings/widget/SimulateMotionDelaySubTestView;

    invoke-static {p0, p1, p2}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->access$1500(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;J)V

    return-void
.end method
