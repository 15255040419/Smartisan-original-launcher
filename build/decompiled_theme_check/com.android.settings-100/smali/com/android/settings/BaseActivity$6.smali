.class Lcom/android/settings/BaseActivity$6;
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

    .line 548
    iput-object p1, p0, Lcom/android/settings/BaseActivity$6;->this$0:Lcom/android/settings/BaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 551
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 552
    iget-object p0, p0, Lcom/android/settings/BaseActivity$6;->this$0:Lcom/android/settings/BaseActivity;

    invoke-virtual {p0}, Lcom/android/settings/BaseActivity;->finish()V

    :cond_0
    return-void
.end method
