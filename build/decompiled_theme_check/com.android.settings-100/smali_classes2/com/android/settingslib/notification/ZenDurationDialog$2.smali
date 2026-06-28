.class Lcom/android/settingslib/notification/ZenDurationDialog$2;
.super Ljava/lang/Object;
.source "ZenDurationDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/notification/ZenDurationDialog;->bindTag(ILandroid/view/View;I)V
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

    .line 187
    iput-object p1, p0, Lcom/android/settingslib/notification/ZenDurationDialog$2;->this$0:Lcom/android/settingslib/notification/ZenDurationDialog;

    iput-object p2, p0, Lcom/android/settingslib/notification/ZenDurationDialog$2;->val$tag:Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 191
    iget-object p0, p0, Lcom/android/settingslib/notification/ZenDurationDialog$2;->val$tag:Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;

    iget-object p0, p0, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->rb:Landroid/widget/RadioButton;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    return-void
.end method
