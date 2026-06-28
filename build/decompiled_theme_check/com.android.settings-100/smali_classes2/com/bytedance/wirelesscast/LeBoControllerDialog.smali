.class public Lcom/bytedance/wirelesscast/LeBoControllerDialog;
.super Landroid/app/AlertDialog;
.source "LeBoControllerDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LeBoControllerDialog"


# instance fields
.field private mCustomPanelView:Landroid/view/View;

.field private final mListener:Lcom/bytedance/wirelesscast/SmtLinkInfo$OnConnectedListener;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Lcom/bytedance/wirelesscast/SmtLinkInfo$OnConnectedListener;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 52
    iput-object p3, p0, Lcom/bytedance/wirelesscast/LeBoControllerDialog;->mTitle:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lcom/bytedance/wirelesscast/LeBoControllerDialog;->mListener:Lcom/bytedance/wirelesscast/SmtLinkInfo$OnConnectedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/bytedance/wirelesscast/LeBoControllerDialog;)Lcom/bytedance/wirelesscast/SmtLinkInfo$OnConnectedListener;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/bytedance/wirelesscast/LeBoControllerDialog;->mListener:Lcom/bytedance/wirelesscast/SmtLinkInfo$OnConnectedListener;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 58
    iget-object v0, p0, Lcom/bytedance/wirelesscast/LeBoControllerDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bytedance/wirelesscast/LeBoControllerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {p0}, Lcom/bytedance/wirelesscast/LeBoControllerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040418

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/bytedance/wirelesscast/LeBoControllerDialog$1;

    invoke-direct {v1, p0}, Lcom/bytedance/wirelesscast/LeBoControllerDialog$1;-><init>(Lcom/bytedance/wirelesscast/LeBoControllerDialog;)V

    const/4 v2, -0x2

    invoke-virtual {p0, v2, v0, v1}, Lcom/bytedance/wirelesscast/LeBoControllerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 71
    invoke-virtual {p0}, Lcom/bytedance/wirelesscast/LeBoControllerDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0165

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    .line 72
    invoke-virtual/range {v3 .. v8}, Lcom/bytedance/wirelesscast/LeBoControllerDialog;->setView(Landroid/view/View;IIII)V

    .line 73
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/bytedance/wirelesscast/LeBoControllerDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x1020260

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/wirelesscast/LeBoControllerDialog;->mCustomPanelView:Landroid/view/View;

    .line 75
    iget-object p1, p0, Lcom/bytedance/wirelesscast/LeBoControllerDialog;->mCustomPanelView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 77
    iget-object p0, p0, Lcom/bytedance/wirelesscast/LeBoControllerDialog;->mCustomPanelView:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
