.class Lcom/android/settings/wifi/AccessPointDetailFragment$6;
.super Ljava/lang/Object;
.source "AccessPointDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/AccessPointDetailFragment;->updateAccessPointInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/AccessPointDetailFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/AccessPointDetailFragment;)V
    .locals 0

    .line 480
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment$6;->this$0:Lcom/android/settings/wifi/AccessPointDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 487
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment$6;->this$0:Lcom/android/settings/wifi/AccessPointDetailFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPointDetailFragment;->access$500(Lcom/android/settings/wifi/AccessPointDetailFragment;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 489
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    const/4 v0, 0x0

    .line 491
    :goto_0
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment$6;->this$0:Lcom/android/settings/wifi/AccessPointDetailFragment;

    invoke-static {p0}, Lcom/android/settings/wifi/AccessPointDetailFragment;->access$600(Lcom/android/settings/wifi/AccessPointDetailFragment;)Landroid/os/Handler;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 492
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
