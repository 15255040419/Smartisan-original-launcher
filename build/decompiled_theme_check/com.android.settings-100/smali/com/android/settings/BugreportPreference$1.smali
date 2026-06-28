.class Lcom/android/settings/BugreportPreference$1;
.super Ljava/lang/Object;
.source "BugreportPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/BugreportPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BugreportPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/BugreportPreference;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/android/settings/BugreportPreference$1;->this$0:Lcom/android/settings/BugreportPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/android/settings/BugreportPreference$1;->this$0:Lcom/android/settings/BugreportPreference;

    invoke-static {v0}, Lcom/android/settings/BugreportPreference;->access$000(Lcom/android/settings/BugreportPreference;)Landroid/widget/CheckedTextView;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/BugreportPreference$1;->this$0:Lcom/android/settings/BugreportPreference;

    invoke-static {v0}, Lcom/android/settings/BugreportPreference;->access$100(Lcom/android/settings/BugreportPreference;)Landroid/widget/TextView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/settings/BugreportPreference$1;->this$0:Lcom/android/settings/BugreportPreference;

    invoke-static {v0}, Lcom/android/settings/BugreportPreference;->access$200(Lcom/android/settings/BugreportPreference;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 67
    iget-object v0, p0, Lcom/android/settings/BugreportPreference$1;->this$0:Lcom/android/settings/BugreportPreference;

    invoke-static {v0}, Lcom/android/settings/BugreportPreference;->access$000(Lcom/android/settings/BugreportPreference;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/android/settings/BugreportPreference$1;->this$0:Lcom/android/settings/BugreportPreference;

    invoke-static {v0}, Lcom/android/settings/BugreportPreference;->access$200(Lcom/android/settings/BugreportPreference;)Landroid/widget/CheckedTextView;

    move-result-object v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/BugreportPreference$1;->this$0:Lcom/android/settings/BugreportPreference;

    invoke-static {v0}, Lcom/android/settings/BugreportPreference;->access$300(Lcom/android/settings/BugreportPreference;)Landroid/widget/TextView;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 70
    :cond_2
    iget-object p1, p0, Lcom/android/settings/BugreportPreference$1;->this$0:Lcom/android/settings/BugreportPreference;

    invoke-static {p1}, Lcom/android/settings/BugreportPreference;->access$200(Lcom/android/settings/BugreportPreference;)Landroid/widget/CheckedTextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 71
    iget-object p0, p0, Lcom/android/settings/BugreportPreference$1;->this$0:Lcom/android/settings/BugreportPreference;

    invoke-static {p0}, Lcom/android/settings/BugreportPreference;->access$000(Lcom/android/settings/BugreportPreference;)Landroid/widget/CheckedTextView;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :cond_3
    return-void
.end method
