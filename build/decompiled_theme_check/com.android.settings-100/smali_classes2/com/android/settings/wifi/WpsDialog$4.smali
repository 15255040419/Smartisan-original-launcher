.class Lcom/android/settings/wifi/WpsDialog$4;
.super Ljava/lang/Object;
.source "WpsDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WpsDialog;->updateDialog(Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WpsDialog;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$state:Lcom/android/settings/wifi/WpsDialog$DialogState;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WpsDialog;Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/android/settings/wifi/WpsDialog$4;->this$0:Lcom/android/settings/wifi/WpsDialog;

    iput-object p2, p0, Lcom/android/settings/wifi/WpsDialog$4;->val$state:Lcom/android/settings/wifi/WpsDialog$DialogState;

    iput-object p3, p0, Lcom/android/settings/wifi/WpsDialog$4;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 240
    sget-object v0, Lcom/android/settings/wifi/WpsDialog$5;->$SwitchMap$com$android$settings$wifi$WpsDialog$DialogState:[I

    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog$4;->val$state:Lcom/android/settings/wifi/WpsDialog$DialogState;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WpsDialog$DialogState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog$4;->this$0:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsDialog;->access$600(Lcom/android/settings/wifi/WpsDialog;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog$4;->this$0:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {v1}, Lcom/android/settings/wifi/WpsDialog;->access$000(Lcom/android/settings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f1206c9

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog$4;->this$0:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsDialog;->access$300(Lcom/android/settings/wifi/WpsDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog$4;->this$0:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsDialog;->access$500(Lcom/android/settings/wifi/WpsDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog$4;->this$0:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsDialog;->access$700(Lcom/android/settings/wifi/WpsDialog;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog$4;->this$0:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsDialog;->access$000(Lcom/android/settings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog$4;->this$0:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {v1}, Lcom/android/settings/wifi/WpsDialog;->access$700(Lcom/android/settings/wifi/WpsDialog;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 252
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog$4;->this$0:Lcom/android/settings/wifi/WpsDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WpsDialog;->access$702(Lcom/android/settings/wifi/WpsDialog;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    goto :goto_0

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog$4;->this$0:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsDialog;->access$300(Lcom/android/settings/wifi/WpsDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog$4;->this$0:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsDialog;->access$500(Lcom/android/settings/wifi/WpsDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 256
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog$4;->this$0:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsDialog;->access$800(Lcom/android/settings/wifi/WpsDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/wifi/WpsDialog$4;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
