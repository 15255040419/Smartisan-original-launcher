.class Lcom/android/settingslib/notification/ZenDurationDialog$3;
.super Ljava/lang/Object;
.source "ZenDurationDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/notification/ZenDurationDialog;->setupUi(Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/notification/ZenDurationDialog;

.field final synthetic val$tag:Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;


# direct methods
.method constructor <init>(Lcom/android/settingslib/notification/ZenDurationDialog;Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/android/settingslib/notification/ZenDurationDialog$3;->this$0:Lcom/android/settingslib/notification/ZenDurationDialog;

    iput-object p2, p0, Lcom/android/settingslib/notification/ZenDurationDialog$3;->val$tag:Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/android/settingslib/notification/ZenDurationDialog$3;->val$tag:Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;

    iget-object p0, p0, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->rb:Landroid/widget/RadioButton;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method
