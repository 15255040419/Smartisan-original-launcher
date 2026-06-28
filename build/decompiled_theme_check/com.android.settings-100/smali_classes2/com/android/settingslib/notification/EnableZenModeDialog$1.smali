.class Lcom/android/settingslib/notification/EnableZenModeDialog$1;
.super Ljava/lang/Object;
.source "EnableZenModeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/notification/EnableZenModeDialog;->createDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/notification/EnableZenModeDialog;


# direct methods
.method constructor <init>(Lcom/android/settingslib/notification/EnableZenModeDialog;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$1;->this$0:Lcom/android/settingslib/notification/EnableZenModeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 117
    iget-object p1, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$1;->this$0:Lcom/android/settingslib/notification/EnableZenModeDialog;

    invoke-static {p1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->access$000(Lcom/android/settingslib/notification/EnableZenModeDialog;)Landroid/widget/RadioGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    .line 118
    iget-object p2, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$1;->this$0:Lcom/android/settingslib/notification/EnableZenModeDialog;

    invoke-virtual {p2, p1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->getConditionTagAt(I)Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;

    move-result-object p1

    .line 120
    iget-object p2, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$1;->this$0:Lcom/android/settingslib/notification/EnableZenModeDialog;

    iget-object v0, p1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->condition:Landroid/service/notification/Condition;

    invoke-static {p2, v0}, Lcom/android/settingslib/notification/EnableZenModeDialog;->access$100(Lcom/android/settingslib/notification/EnableZenModeDialog;Landroid/service/notification/Condition;)Z

    move-result p2

    const-string v0, "EnableZenModeDialog"

    if-eqz p2, :cond_0

    .line 121
    iget-object p2, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$1;->this$0:Lcom/android/settingslib/notification/EnableZenModeDialog;

    iget-object p2, p2, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    const/16 v1, 0x4eb

    invoke-static {p2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_0

    .line 124
    :cond_0
    iget-object p2, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$1;->this$0:Lcom/android/settingslib/notification/EnableZenModeDialog;

    iget-object v1, p1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->condition:Landroid/service/notification/Condition;

    invoke-virtual {p2, v1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->isAlarm(Landroid/service/notification/Condition;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 125
    iget-object p2, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$1;->this$0:Lcom/android/settingslib/notification/EnableZenModeDialog;

    iget-object p2, p2, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    const/16 v1, 0x4ed

    invoke-static {p2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_0

    .line 128
    :cond_1
    iget-object p2, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$1;->this$0:Lcom/android/settingslib/notification/EnableZenModeDialog;

    iget-object v1, p1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->condition:Landroid/service/notification/Condition;

    invoke-virtual {p2, v1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->isCountdown(Landroid/service/notification/Condition;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 129
    iget-object p2, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$1;->this$0:Lcom/android/settingslib/notification/EnableZenModeDialog;

    iget-object p2, p2, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    const/16 v1, 0x4ec

    invoke-static {p2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_0

    .line 133
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid manual condition: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->condition:Landroid/service/notification/Condition;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :goto_0
    iget-object p2, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$1;->this$0:Lcom/android/settingslib/notification/EnableZenModeDialog;

    iget-object p2, p2, Lcom/android/settingslib/notification/EnableZenModeDialog;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$1;->this$0:Lcom/android/settingslib/notification/EnableZenModeDialog;

    iget-object p1, p1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->condition:Landroid/service/notification/Condition;

    .line 138
    invoke-static {p0, p1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->access$200(Lcom/android/settingslib/notification/EnableZenModeDialog;Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object p0

    .line 136
    invoke-virtual {p2, v1, p0, v0}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method
