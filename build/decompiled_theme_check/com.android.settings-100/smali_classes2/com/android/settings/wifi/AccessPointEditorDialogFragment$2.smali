.class Lcom/android/settings/wifi/AccessPointEditorDialogFragment$2;
.super Ljava/lang/Object;
.source "AccessPointEditorDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->updateSaveButtonEnableState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/AccessPointEditorDialogFragment;

.field final synthetic val$contentValid:Z


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/AccessPointEditorDialogFragment;Z)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointEditorDialogFragment$2;->this$0:Lcom/android/settings/wifi/AccessPointEditorDialogFragment;

    iput-boolean p2, p0, Lcom/android/settings/wifi/AccessPointEditorDialogFragment$2;->val$contentValid:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointEditorDialogFragment$2;->this$0:Lcom/android/settings/wifi/AccessPointEditorDialogFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->access$200(Lcom/android/settings/wifi/AccessPointEditorDialogFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 180
    iget-boolean p0, p0, Lcom/android/settings/wifi/AccessPointEditorDialogFragment$2;->val$contentValid:Z

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
