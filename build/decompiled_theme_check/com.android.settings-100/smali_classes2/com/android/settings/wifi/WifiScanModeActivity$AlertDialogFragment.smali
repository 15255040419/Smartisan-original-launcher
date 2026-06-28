.class public Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;
.super Landroid/app/DialogFragment;
.source "WifiScanModeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiScanModeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertDialogFragment"
.end annotation


# instance fields
.field private final mApp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 125
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;->mApp:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;->mApp:Ljava/lang/String;

    return-void
.end method

.method static newInstance(Ljava/lang/String;)Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;
    .locals 1

    .line 114
    new-instance v0, Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/WifiScanModeActivity;

    invoke-static {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->access$000(Lcom/android/settings/wifi/WifiScanModeActivity;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 131
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;->mApp:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f121865

    .line 132
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment$2;-><init>(Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;)V

    const v1, 0x7f121862

    .line 133
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment$1;-><init>(Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;)V

    const p0, 0x7f121863

    .line 140
    invoke-virtual {p1, p0, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 147
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
