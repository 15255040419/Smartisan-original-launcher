.class Lcom/android/settings/wifi/SortNetworkListActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SortNetworkListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/SortNetworkListActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/SortNetworkListActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/SortNetworkListActivity;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/android/settings/wifi/SortNetworkListActivity$1;->this$0:Lcom/android/settings/wifi/SortNetworkListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccessPointAdapter action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SortNetworkListActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object p0, p0, Lcom/android/settings/wifi/SortNetworkListActivity$1;->this$0:Lcom/android/settings/wifi/SortNetworkListActivity;

    invoke-static {p0, p1, p2}, Lcom/android/settings/wifi/SortNetworkListActivity;->access$000(Lcom/android/settings/wifi/SortNetworkListActivity;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
