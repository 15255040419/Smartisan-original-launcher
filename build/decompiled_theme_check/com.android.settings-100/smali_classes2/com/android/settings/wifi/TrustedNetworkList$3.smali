.class Lcom/android/settings/wifi/TrustedNetworkList$3;
.super Ljava/lang/Object;
.source "TrustedNetworkList.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/TrustedNetworkList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/TrustedNetworkList;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/TrustedNetworkList;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/android/settings/wifi/TrustedNetworkList$3;->this$0:Lcom/android/settings/wifi/TrustedNetworkList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 2

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TrustedNetwork"

    invoke-static {v0, p1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object p1, p0, Lcom/android/settings/wifi/TrustedNetworkList$3;->this$0:Lcom/android/settings/wifi/TrustedNetworkList;

    invoke-virtual {p1}, Lcom/android/settings/wifi/TrustedNetworkList;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const v1, 0x7f1217fe

    .line 140
    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 142
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 144
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/TrustedNetworkList$3;->this$0:Lcom/android/settings/wifi/TrustedNetworkList;

    invoke-static {p0}, Lcom/android/settings/wifi/TrustedNetworkList;->access$300(Lcom/android/settings/wifi/TrustedNetworkList;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onSuccess()V
    .locals 2

    const-string v0, "TrustedNetworkList"

    const-string v1, "ActionListener.onSuccess"

    .line 131
    invoke-static {v0, v1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object p0, p0, Lcom/android/settings/wifi/TrustedNetworkList$3;->this$0:Lcom/android/settings/wifi/TrustedNetworkList;

    invoke-static {p0}, Lcom/android/settings/wifi/TrustedNetworkList;->access$300(Lcom/android/settings/wifi/TrustedNetworkList;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
