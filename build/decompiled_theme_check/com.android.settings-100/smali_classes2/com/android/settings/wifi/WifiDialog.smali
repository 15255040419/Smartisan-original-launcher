.class Lcom/android/settings/wifi/WifiDialog;
.super Landroid/app/AlertDialog;
.source "WifiDialog.java"

# interfaces
.implements Lcom/android/settings/wifi/WifiConfigUiBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;
    }
.end annotation


# static fields
.field static final BUTTON_FORGET:I = -0x3

.field static final BUTTON_SUBMIT:I = -0x1


# instance fields
.field private final mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private mController:Lcom/android/settings/wifi/WifiConfigController;

.field private mHideSubmitButton:Z

.field private final mListener:Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;

.field private final mMode:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;Lcom/android/settings/wifi/AccessPoint;I)V
    .locals 1

    const v0, 0x7f1301be

    .line 56
    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 57
    iput p4, p0, Lcom/android/settings/wifi/WifiDialog;->mMode:I

    .line 58
    iput-object p2, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;

    .line 59
    iput-object p3, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    const/4 p1, 0x0

    .line 60
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiDialog;->mHideSubmitButton:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;Lcom/android/settings/wifi/AccessPoint;IZ)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;Lcom/android/settings/wifi/AccessPoint;I)V

    .line 51
    iput-boolean p5, p0, Lcom/android/settings/wifi/WifiDialog;->mHideSubmitButton:Z

    return-void
.end method


# virtual methods
.method public dispatchSubmit()V
    .locals 0

    return-void
.end method

.method public getCancelButton()Landroid/widget/Button;
    .locals 1

    const/4 v0, -0x2

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    return-object p0
.end method

.method public getController()Lcom/android/settings/wifi/WifiConfigController;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/settings/wifi/WifiDialog;->mController:Lcom/android/settings/wifi/WifiConfigController;

    return-object p0
.end method

.method public getForgetButton()Landroid/widget/Button;
    .locals 1

    const/4 v0, -0x3

    .line 111
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    return-object p0
.end method

.method public getMode()I
    .locals 0

    .line 96
    iget p0, p0, Lcom/android/settings/wifi/WifiDialog;->mMode:I

    return p0
.end method

.method public getSubmitButton()Landroid/widget/Button;
    .locals 1

    const/4 v0, -0x1

    .line 106
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d034f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    .line 71
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiDialog;->setView(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 72
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiDialog;->setInverseBackgroundForced(Z)V

    .line 73
    new-instance v0, Lcom/android/settings/wifi/WifiConfigController;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v3, p0, Lcom/android/settings/wifi/WifiDialog;->mMode:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/settings/wifi/WifiConfigController;-><init>(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mController:Lcom/android/settings/wifi/WifiConfigController;

    .line 74
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 76
    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiDialog;->mHideSubmitButton:Z

    if-eqz p1, :cond_0

    .line 77
    iget-object p1, p0, Lcom/android/settings/wifi/WifiDialog;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->hideSubmitButton()V

    goto :goto_0

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiDialog;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 84
    :goto_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez p1, :cond_1

    .line 85
    iget-object p0, p0, Lcom/android/settings/wifi/WifiDialog;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->hideForgetButton()V

    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 90
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 91
    iget-object p0, p0, Lcom/android/settings/wifi/WifiDialog;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->updatePassword()V

    return-void
.end method

.method public setCancelButton(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public setForgetButton(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public setSubmitButton(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method
