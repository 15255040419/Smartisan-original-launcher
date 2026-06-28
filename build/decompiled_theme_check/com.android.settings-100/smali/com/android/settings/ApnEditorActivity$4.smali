.class Lcom/android/settings/ApnEditorActivity$4;
.super Ljava/lang/Object;
.source "ApnEditorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ApnEditorActivity;->showListDialog(Lcom/android/settings/TitleSummaryItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ApnEditorActivity;

.field final synthetic val$item:Lcom/android/settings/TitleSummaryItem;


# direct methods
.method constructor <init>(Lcom/android/settings/ApnEditorActivity;Lcom/android/settings/TitleSummaryItem;)V
    .locals 0

    .line 923
    iput-object p1, p0, Lcom/android/settings/ApnEditorActivity$4;->this$0:Lcom/android/settings/ApnEditorActivity;

    iput-object p2, p0, Lcom/android/settings/ApnEditorActivity$4;->val$item:Lcom/android/settings/TitleSummaryItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 926
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity$4;->val$item:Lcom/android/settings/TitleSummaryItem;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/TitleSummaryItem;->setClickable(Z)V

    .line 927
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity$4;->val$item:Lcom/android/settings/TitleSummaryItem;

    iget-object v0, p0, Lcom/android/settings/ApnEditorActivity$4;->this$0:Lcom/android/settings/ApnEditorActivity;

    invoke-static {v0}, Lcom/android/settings/ApnEditorActivity;->access$100(Lcom/android/settings/ApnEditorActivity;)Lcom/android/settings/TitleSummaryItem;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 928
    iget-object p0, p0, Lcom/android/settings/ApnEditorActivity$4;->this$0:Lcom/android/settings/ApnEditorActivity;

    invoke-static {p0}, Lcom/android/settings/ApnEditorActivity;->access$100(Lcom/android/settings/ApnEditorActivity;)Lcom/android/settings/TitleSummaryItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/TitleSummaryItem;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/ApnEditorActivity;->access$200(Lcom/android/settings/ApnEditorActivity;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method
