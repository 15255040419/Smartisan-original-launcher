.class Lcom/android/settings/ApnEditorActivity$2;
.super Ljava/lang/Object;
.source "ApnEditorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$entries:[Ljava/lang/CharSequence;

.field final synthetic val$item:Lcom/android/settings/TitleSummaryItem;

.field final synthetic val$values:[Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/settings/ApnEditorActivity;Lcom/android/settings/TitleSummaryItem;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 0

    .line 907
    iput-object p1, p0, Lcom/android/settings/ApnEditorActivity$2;->this$0:Lcom/android/settings/ApnEditorActivity;

    iput-object p2, p0, Lcom/android/settings/ApnEditorActivity$2;->val$item:Lcom/android/settings/TitleSummaryItem;

    iput-object p3, p0, Lcom/android/settings/ApnEditorActivity$2;->val$values:[Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/settings/ApnEditorActivity$2;->val$entries:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 910
    iget-object v0, p0, Lcom/android/settings/ApnEditorActivity$2;->val$item:Lcom/android/settings/TitleSummaryItem;

    iget-object v1, p0, Lcom/android/settings/ApnEditorActivity$2;->val$values:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/TitleSummaryItem;->setValue(Ljava/lang/String;)V

    .line 911
    iget-object v0, p0, Lcom/android/settings/ApnEditorActivity$2;->val$item:Lcom/android/settings/TitleSummaryItem;

    iget-object p0, p0, Lcom/android/settings/ApnEditorActivity$2;->val$entries:[Ljava/lang/CharSequence;

    aget-object p0, p0, p2

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/TitleSummaryItem;->setSummary(Ljava/lang/CharSequence;)V

    .line 912
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
