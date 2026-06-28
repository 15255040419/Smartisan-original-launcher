.class Lcom/android/settings/ApnEditorActivity$1;
.super Ljava/lang/Object;
.source "ApnEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ApnEditorActivity;->showEditDialog(Lcom/android/settings/TitleSummaryItem;)V
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

    .line 882
    iput-object p1, p0, Lcom/android/settings/ApnEditorActivity$1;->this$0:Lcom/android/settings/ApnEditorActivity;

    iput-object p2, p0, Lcom/android/settings/ApnEditorActivity$1;->val$item:Lcom/android/settings/TitleSummaryItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 885
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 886
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/android/settings/ApnEditorActivity$1;->val$item:Lcom/android/settings/TitleSummaryItem;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/TitleSummaryItem;->setText(Ljava/lang/String;)V

    .line 888
    iget-object p0, p0, Lcom/android/settings/ApnEditorActivity$1;->val$item:Lcom/android/settings/TitleSummaryItem;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/TitleSummaryItem;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 890
    :cond_0
    iget-object p1, p0, Lcom/android/settings/ApnEditorActivity$1;->val$item:Lcom/android/settings/TitleSummaryItem;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/android/settings/TitleSummaryItem;->setText(Ljava/lang/String;)V

    .line 891
    iget-object p0, p0, Lcom/android/settings/ApnEditorActivity$1;->val$item:Lcom/android/settings/TitleSummaryItem;

    invoke-static {}, Lcom/android/settings/ApnEditorActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/TitleSummaryItem;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
