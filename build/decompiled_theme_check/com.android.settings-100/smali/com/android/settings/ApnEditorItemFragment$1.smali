.class Lcom/android/settings/ApnEditorItemFragment$1;
.super Ljava/lang/Object;
.source "ApnEditorItemFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ApnEditorItemFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ApnEditorItemFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ApnEditorItemFragment;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/android/settings/ApnEditorItemFragment$1;->this$0:Lcom/android/settings/ApnEditorItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/settings/ApnEditorItemFragment$1;->this$0:Lcom/android/settings/ApnEditorItemFragment;

    invoke-static {p0}, Lcom/android/settings/ApnEditorItemFragment;->access$000(Lcom/android/settings/ApnEditorItemFragment;)V

    return-void
.end method
