.class Lcom/android/settings/ApnEditorItemFragment$2;
.super Ljava/lang/Object;
.source "ApnEditorItemFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ApnEditorItemFragment;->createDialogView(Ljava/lang/String;)Landroid/view/View;
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

    .line 96
    iput-object p1, p0, Lcom/android/settings/ApnEditorItemFragment$2;->this$0:Lcom/android/settings/ApnEditorItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 100
    iget-object p1, p0, Lcom/android/settings/ApnEditorItemFragment$2;->this$0:Lcom/android/settings/ApnEditorItemFragment;

    invoke-static {p1}, Lcom/android/settings/ApnEditorItemFragment;->access$000(Lcom/android/settings/ApnEditorItemFragment;)V

    .line 101
    iget-object p0, p0, Lcom/android/settings/ApnEditorItemFragment$2;->this$0:Lcom/android/settings/ApnEditorItemFragment;

    invoke-static {p0}, Lcom/android/settings/ApnEditorItemFragment;->access$100(Lcom/android/settings/ApnEditorItemFragment;)Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
