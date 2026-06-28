.class Lcom/android/settings/ApnEditorActivity$3;
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


# direct methods
.method constructor <init>(Lcom/android/settings/ApnEditorActivity;)V
    .locals 0

    .line 917
    iput-object p1, p0, Lcom/android/settings/ApnEditorActivity$3;->this$0:Lcom/android/settings/ApnEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 920
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
