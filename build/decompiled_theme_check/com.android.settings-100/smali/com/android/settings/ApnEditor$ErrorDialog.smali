.class public Lcom/android/settings/ApnEditor$ErrorDialog;
.super Landroid/app/DialogFragment;
.source "ApnEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ApnEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 768
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static showError(Lcom/android/settings/ApnEditor;)V
    .locals 2

    .line 771
    new-instance v0, Lcom/android/settings/ApnEditor$ErrorDialog;

    invoke-direct {v0}, Lcom/android/settings/ApnEditor$ErrorDialog;-><init>()V

    const/4 v1, 0x0

    .line 772
    invoke-virtual {v0, p0, v1}, Lcom/android/settings/ApnEditor$ErrorDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 773
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v1, "error"

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/ApnEditor$ErrorDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 778
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor$ErrorDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/ApnEditor;

    invoke-static {p1}, Lcom/android/settings/ApnEditor;->access$000(Lcom/android/settings/ApnEditor;)Ljava/lang/String;

    move-result-object p1

    .line 780
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor$ErrorDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f12079c

    .line 781
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x104000a

    const/4 v1, 0x0

    .line 782
    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 783
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 784
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
