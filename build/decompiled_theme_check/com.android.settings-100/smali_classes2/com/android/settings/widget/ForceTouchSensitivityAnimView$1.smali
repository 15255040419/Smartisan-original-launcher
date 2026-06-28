.class Lcom/android/settings/widget/ForceTouchSensitivityAnimView$1;
.super Landroid/os/Handler;
.source "ForceTouchSensitivityAnimView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/ForceTouchSensitivityAnimView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/ForceTouchSensitivityAnimView;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/ForceTouchSensitivityAnimView;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$1;->this$0:Lcom/android/settings/widget/ForceTouchSensitivityAnimView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ltan/ForceTouchSensitivityAnimView"

    invoke-static {v1, v0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 p1, 0x4

    const/4 v1, 0x5

    if-eq v0, p1, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    iget-object p0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$1;->this$0:Lcom/android/settings/widget/ForceTouchSensitivityAnimView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->access$200(Lcom/android/settings/widget/ForceTouchSensitivityAnimView;Z)V

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x190

    .line 94
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 89
    :cond_2
    iget p0, p1, Landroid/os/Message;->arg1:I

    .line 90
    invoke-static {p0}, Lcom/android/settings/ToastUtils;->show(I)V

    goto :goto_0

    .line 85
    :cond_3
    iget-object p1, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$1;->this$0:Lcom/android/settings/widget/ForceTouchSensitivityAnimView;

    const v0, 0x7f121500

    invoke-static {p1, v0}, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->access$000(Lcom/android/settings/widget/ForceTouchSensitivityAnimView;I)V

    .line 86
    iget-object p0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$1;->this$0:Lcom/android/settings/widget/ForceTouchSensitivityAnimView;

    invoke-static {p0, v1}, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->access$102(Lcom/android/settings/widget/ForceTouchSensitivityAnimView;Z)Z

    goto :goto_0

    .line 81
    :cond_4
    iget-object p1, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$1;->this$0:Lcom/android/settings/widget/ForceTouchSensitivityAnimView;

    const v0, 0x7f12152a

    invoke-static {p1, v0}, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->access$000(Lcom/android/settings/widget/ForceTouchSensitivityAnimView;I)V

    .line 82
    iget-object p0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$1;->this$0:Lcom/android/settings/widget/ForceTouchSensitivityAnimView;

    invoke-static {p0, v1}, Lcom/android/settings/widget/ForceTouchSensitivityAnimView;->access$102(Lcom/android/settings/widget/ForceTouchSensitivityAnimView;Z)Z

    :goto_0
    return-void
.end method
