.class Lcom/bytedance/wirelesscast/LeBoControllerDialog$1;
.super Ljava/lang/Object;
.source "LeBoControllerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/wirelesscast/LeBoControllerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bytedance/wirelesscast/LeBoControllerDialog;


# direct methods
.method constructor <init>(Lcom/bytedance/wirelesscast/LeBoControllerDialog;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/bytedance/wirelesscast/LeBoControllerDialog$1;->this$0:Lcom/bytedance/wirelesscast/LeBoControllerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 64
    iget-object p1, p0, Lcom/bytedance/wirelesscast/LeBoControllerDialog$1;->this$0:Lcom/bytedance/wirelesscast/LeBoControllerDialog;

    invoke-static {p1}, Lcom/bytedance/wirelesscast/LeBoControllerDialog;->access$000(Lcom/bytedance/wirelesscast/LeBoControllerDialog;)Lcom/bytedance/wirelesscast/SmtLinkInfo$OnConnectedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 65
    iget-object p1, p0, Lcom/bytedance/wirelesscast/LeBoControllerDialog$1;->this$0:Lcom/bytedance/wirelesscast/LeBoControllerDialog;

    invoke-static {p1}, Lcom/bytedance/wirelesscast/LeBoControllerDialog;->access$000(Lcom/bytedance/wirelesscast/LeBoControllerDialog;)Lcom/bytedance/wirelesscast/SmtLinkInfo$OnConnectedListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/wirelesscast/SmtLinkInfo$OnConnectedListener;->disconnect()V

    .line 67
    :cond_0
    iget-object p0, p0, Lcom/bytedance/wirelesscast/LeBoControllerDialog$1;->this$0:Lcom/bytedance/wirelesscast/LeBoControllerDialog;

    invoke-virtual {p0}, Lcom/bytedance/wirelesscast/LeBoControllerDialog;->dismiss()V

    return-void
.end method
