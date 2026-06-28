.class public Lcom/bytedance/wirelesscast/LeBoControllerDialogFragment;
.super Landroid/app/DialogFragment;
.source "LeBoControllerDialogFragment.java"


# instance fields
.field private mListener:Lcom/bytedance/wirelesscast/SmtLinkInfo$OnConnectedListener;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x1

    .line 48
    invoke-virtual {p0, v0}, Lcom/bytedance/wirelesscast/LeBoControllerDialogFragment;->setCancelable(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/wirelesscast/SmtLinkInfo$OnConnectedListener;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/bytedance/wirelesscast/LeBoControllerDialogFragment;->mTitle:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/bytedance/wirelesscast/LeBoControllerDialogFragment;->mListener:Lcom/bytedance/wirelesscast/SmtLinkInfo$OnConnectedListener;

    const/4 p1, 0x1

    .line 44
    invoke-virtual {p0, p1}, Lcom/bytedance/wirelesscast/LeBoControllerDialogFragment;->setCancelable(Z)V

    return-void
.end method


# virtual methods
.method public onCreateControllerDialog(Landroid/content/Context;Landroid/os/Bundle;)Lcom/bytedance/wirelesscast/LeBoControllerDialog;
    .locals 2

    .line 59
    new-instance p2, Lcom/bytedance/wirelesscast/LeBoControllerDialog;

    invoke-virtual {p0}, Lcom/bytedance/wirelesscast/LeBoControllerDialogFragment;->getTheme()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/wirelesscast/LeBoControllerDialogFragment;->mTitle:Ljava/lang/String;

    iget-object p0, p0, Lcom/bytedance/wirelesscast/LeBoControllerDialogFragment;->mListener:Lcom/bytedance/wirelesscast/SmtLinkInfo$OnConnectedListener;

    invoke-direct {p2, p1, v0, v1, p0}, Lcom/bytedance/wirelesscast/LeBoControllerDialog;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/bytedance/wirelesscast/SmtLinkInfo$OnConnectedListener;)V

    return-object p2
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/bytedance/wirelesscast/LeBoControllerDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/wirelesscast/LeBoControllerDialogFragment;->onCreateControllerDialog(Landroid/content/Context;Landroid/os/Bundle;)Lcom/bytedance/wirelesscast/LeBoControllerDialog;

    move-result-object p0

    return-object p0
.end method
