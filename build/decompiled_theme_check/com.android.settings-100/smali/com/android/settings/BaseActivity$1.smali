.class Lcom/android/settings/BaseActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BaseActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/BaseActivity;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/android/settings/BaseActivity$1;->this$0:Lcom/android/settings/BaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 122
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Settings"

    invoke-static {v2, v1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 124
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 125
    iget-object p0, p0, Lcom/android/settings/BaseActivity$1;->this$0:Lcom/android/settings/BaseActivity;

    invoke-static {p0, v1}, Lcom/android/settings/BaseActivity;->access$000(Lcom/android/settings/BaseActivity;Z)V

    goto :goto_0

    .line 127
    :cond_0
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 131
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user leave pwd settings, finish "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/BaseActivity$1;->this$0:Lcom/android/settings/BaseActivity;

    iget-object v3, v3, Lcom/android/settings/BaseActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-static {p1}, Lcom/android/settings/Utils;->isScreenOn(Landroid/content/Context;)Z

    move-result p1

    const-string v0, "isScreenOn"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 134
    iget-object p1, p0, Lcom/android/settings/BaseActivity$1;->this$0:Lcom/android/settings/BaseActivity;

    invoke-virtual {p1}, Lcom/android/settings/BaseActivity;->finish()V

    .line 135
    iget-object p0, p0, Lcom/android/settings/BaseActivity$1;->this$0:Lcom/android/settings/BaseActivity;

    invoke-virtual {p0, v1, v1}, Lcom/android/settings/BaseActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 138
    :cond_2
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 139
    new-instance p2, Lcom/android/settings/BaseActivity$1$1;

    invoke-direct {p2, p0}, Lcom/android/settings/BaseActivity$1$1;-><init>(Lcom/android/settings/BaseActivity$1;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
