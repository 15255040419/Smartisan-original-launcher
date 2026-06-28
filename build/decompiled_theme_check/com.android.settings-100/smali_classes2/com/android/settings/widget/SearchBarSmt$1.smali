.class Lcom/android/settings/widget/SearchBarSmt$1;
.super Ljava/lang/Object;
.source "SearchBarSmt.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/SearchBarSmt;->showSortByPopupWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/SearchBarSmt;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/SearchBarSmt;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/android/settings/widget/SearchBarSmt$1;->this$0:Lcom/android/settings/widget/SearchBarSmt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/android/settings/widget/SearchBarSmt$1;->this$0:Lcom/android/settings/widget/SearchBarSmt;

    invoke-static {v0}, Lcom/android/settings/widget/SearchBarSmt;->access$300(Lcom/android/settings/widget/SearchBarSmt;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 180
    iget-object p0, p0, Lcom/android/settings/widget/SearchBarSmt$1;->this$0:Lcom/android/settings/widget/SearchBarSmt;

    invoke-static {p0}, Lcom/android/settings/widget/SearchBarSmt;->access$400(Lcom/android/settings/widget/SearchBarSmt;)Landroid/widget/EditText;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void
.end method
