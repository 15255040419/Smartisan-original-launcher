.class Lcom/android/settings/wifi/AccessPointEditorDialogFragment$1;
.super Ljava/lang/Object;
.source "AccessPointEditorDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/AccessPointEditorDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/AccessPointEditorDialogFragment;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointEditorDialogFragment$1;->this$0:Lcom/android/settings/wifi/AccessPointEditorDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 62
    iget-object p1, p0, Lcom/android/settings/wifi/AccessPointEditorDialogFragment$1;->this$0:Lcom/android/settings/wifi/AccessPointEditorDialogFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->access$000(Lcom/android/settings/wifi/AccessPointEditorDialogFragment;)Landroid/view/View$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 63
    new-instance p1, Landroid/widget/TextView;

    iget-object p2, p0, Lcom/android/settings/wifi/AccessPointEditorDialogFragment$1;->this$0:Lcom/android/settings/wifi/AccessPointEditorDialogFragment;

    invoke-virtual {p2}, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 64
    iget-object p2, p0, Lcom/android/settings/wifi/AccessPointEditorDialogFragment$1;->this$0:Lcom/android/settings/wifi/AccessPointEditorDialogFragment;

    invoke-static {p2}, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->access$100(Lcom/android/settings/wifi/AccessPointEditorDialogFragment;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointEditorDialogFragment$1;->this$0:Lcom/android/settings/wifi/AccessPointEditorDialogFragment;

    invoke-static {p0}, Lcom/android/settings/wifi/AccessPointEditorDialogFragment;->access$000(Lcom/android/settings/wifi/AccessPointEditorDialogFragment;)Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
