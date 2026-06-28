.class Lcom/android/settings/AdvancedSettingsFragment$1;
.super Ljava/lang/Object;
.source "AdvancedSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AdvancedSettingsFragment;->addInfoButtonForEldershipItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDialogController:Lcom/android/settings/PopInfoDialogController;

.field final synthetic this$0:Lcom/android/settings/AdvancedSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/AdvancedSettingsFragment;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment$1;->this$0:Lcom/android/settings/AdvancedSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 190
    iget-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment$1;->mDialogController:Lcom/android/settings/PopInfoDialogController;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/PopInfoDialogController;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 191
    iget-object p0, p0, Lcom/android/settings/AdvancedSettingsFragment$1;->mDialogController:Lcom/android/settings/PopInfoDialogController;

    invoke-virtual {p0}, Lcom/android/settings/PopInfoDialogController;->dismissDialog()V

    return-void

    .line 194
    :cond_0
    new-instance p1, Lcom/android/settings/PopInfoDialogController;

    iget-object v0, p0, Lcom/android/settings/AdvancedSettingsFragment$1;->this$0:Lcom/android/settings/AdvancedSettingsFragment;

    iget-object v0, v0, Lcom/android/settings/AdvancedSettingsFragment;->_mActivity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/android/settings/PopInfoDialogController;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment$1;->mDialogController:Lcom/android/settings/PopInfoDialogController;

    .line 195
    iget-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment$1;->mDialogController:Lcom/android/settings/PopInfoDialogController;

    iget-object v0, p0, Lcom/android/settings/AdvancedSettingsFragment$1;->this$0:Lcom/android/settings/AdvancedSettingsFragment;

    const v1, 0x7f12072b

    invoke-virtual {v0, v1}, Lcom/android/settings/AdvancedSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/PopInfoDialogController;->setupDialog(Ljava/lang/String;)V

    .line 196
    iget-object p0, p0, Lcom/android/settings/AdvancedSettingsFragment$1;->mDialogController:Lcom/android/settings/PopInfoDialogController;

    invoke-virtual {p0}, Lcom/android/settings/PopInfoDialogController;->showDialog()V

    return-void
.end method
