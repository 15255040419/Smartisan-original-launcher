.class Lcom/android/settings/widget/SimulateMotionDelaySubTestView$1;
.super Ljava/lang/Object;
.source "SimulateMotionDelaySubTestView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->initViews(IILcom/android/settings/widget/SimulateMotionDelaySubTestView$onSubTestViewListener;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/SimulateMotionDelaySubTestView;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$1;->this$0:Lcom/android/settings/widget/SimulateMotionDelaySubTestView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Confirm button clicked tag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmdSubTestView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 129
    iget-object p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$1;->this$0:Lcom/android/settings/widget/SimulateMotionDelaySubTestView;

    invoke-static {p1}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->access$700(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;)Lcom/android/settings/widget/SimulateMotionDelaySubTestView$onSubTestViewListener;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$1;->this$0:Lcom/android/settings/widget/SimulateMotionDelaySubTestView;

    invoke-static {v2}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->access$200(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$1;->this$0:Lcom/android/settings/widget/SimulateMotionDelaySubTestView;

    invoke-static {v3}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->access$300(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;)I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$1;->this$0:Lcom/android/settings/widget/SimulateMotionDelaySubTestView;

    .line 130
    invoke-static {v4}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->access$400(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;)I

    move-result v4

    add-int/2addr v4, v0

    iget-object v5, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$1;->this$0:Lcom/android/settings/widget/SimulateMotionDelaySubTestView;

    invoke-static {v5}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->access$500(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->access$600(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;I)Ljava/lang/String;

    move-result-object v5

    .line 129
    invoke-interface {p1, v2, v3, v4, v5}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$onSubTestViewListener;->onConfirmed(IIILjava/lang/String;)V

    .line 131
    iget-object p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$1;->this$0:Lcom/android/settings/widget/SimulateMotionDelaySubTestView;

    invoke-static {p1}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->access$800(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;)Landroid/widget/Button;

    move-result-object p1

    const v2, 0x7f120c87

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(I)V

    .line 132
    iget-object p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$1;->this$0:Lcom/android/settings/widget/SimulateMotionDelaySubTestView;

    invoke-static {p1}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->access$800(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;)Landroid/widget/Button;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 133
    iget-object p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$1;->this$0:Lcom/android/settings/widget/SimulateMotionDelaySubTestView;

    invoke-static {p1, v1}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->access$900(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;Z)V

    .line 134
    iget-object p0, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$1;->this$0:Lcom/android/settings/widget/SimulateMotionDelaySubTestView;

    invoke-static {p0, v0}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->access$1002(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;Z)Z

    goto/16 :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    .line 136
    iget-object p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$1;->this$0:Lcom/android/settings/widget/SimulateMotionDelaySubTestView;

    invoke-static {p1, v0}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->access$900(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;Z)V

    .line 137
    iget-object p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$1;->this$0:Lcom/android/settings/widget/SimulateMotionDelaySubTestView;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->access$402(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;I)I

    .line 138
    iget-object p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$1;->this$0:Lcom/android/settings/widget/SimulateMotionDelaySubTestView;

    invoke-static {p1}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->access$1100(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;)Landroid/widget/BaseAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 139
    iget-object p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$1;->this$0:Lcom/android/settings/widget/SimulateMotionDelaySubTestView;

    invoke-static {p1, v1}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->access$1202(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;Z)Z

    .line 140
    iget-object p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$1;->this$0:Lcom/android/settings/widget/SimulateMotionDelaySubTestView;

    invoke-static {p1, v1}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->access$502(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;I)I

    .line 141
    iget-object p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$1;->this$0:Lcom/android/settings/widget/SimulateMotionDelaySubTestView;

    invoke-static {p1}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->access$1300(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;)Landroid/widget/BaseAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 142
    iget-object p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$1;->this$0:Lcom/android/settings/widget/SimulateMotionDelaySubTestView;

    invoke-static {p1, v1}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->access$1402(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;Z)Z

    .line 143
    iget-object p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$1;->this$0:Lcom/android/settings/widget/SimulateMotionDelaySubTestView;

    invoke-static {p1}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->access$700(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;)Lcom/android/settings/widget/SimulateMotionDelaySubTestView$onSubTestViewListener;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$1;->this$0:Lcom/android/settings/widget/SimulateMotionDelaySubTestView;

    invoke-static {v0}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->access$200(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;)I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$1;->this$0:Lcom/android/settings/widget/SimulateMotionDelaySubTestView;

    invoke-static {v2}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->access$300(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;)I

    move-result v2

    invoke-interface {p1, v0, v2}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$onSubTestViewListener;->onTestAgain(II)V

    .line 144
    iget-object p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$1;->this$0:Lcom/android/settings/widget/SimulateMotionDelaySubTestView;

    invoke-static {p1}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->access$800(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;)Landroid/widget/Button;

    move-result-object p1

    const v0, 0x7f120e0e

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 145
    iget-object p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$1;->this$0:Lcom/android/settings/widget/SimulateMotionDelaySubTestView;

    invoke-static {p1}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->access$800(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;)Landroid/widget/Button;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 146
    iget-object p0, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$1;->this$0:Lcom/android/settings/widget/SimulateMotionDelaySubTestView;

    invoke-static {p0}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->access$800(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    const p0, 0x7f120c84

    .line 147
    invoke-static {p0}, Lcom/android/settings/ToastUtils;->show(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 149
    iget-object p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$1;->this$0:Lcom/android/settings/widget/SimulateMotionDelaySubTestView;

    invoke-virtual {p1}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->startSubTest()V

    .line 150
    iget-object p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$1;->this$0:Lcom/android/settings/widget/SimulateMotionDelaySubTestView;

    invoke-static {p1}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->access$700(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;)Lcom/android/settings/widget/SimulateMotionDelaySubTestView$onSubTestViewListener;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$1;->this$0:Lcom/android/settings/widget/SimulateMotionDelaySubTestView;

    invoke-static {v0}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->access$200(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;)I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$1;->this$0:Lcom/android/settings/widget/SimulateMotionDelaySubTestView;

    invoke-static {v2}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->access$300(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;)I

    move-result v2

    invoke-interface {p1, v0, v2}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$onSubTestViewListener;->onTestStart(II)V

    .line 151
    iget-object p0, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$1;->this$0:Lcom/android/settings/widget/SimulateMotionDelaySubTestView;

    invoke-static {p0}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->access$800(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    :goto_0
    return-void
.end method
