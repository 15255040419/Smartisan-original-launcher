.class Lcom/android/settings/wifi/WifiStatusTest$4;
.super Ljava/lang/Object;
.source "WifiStatusTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiStatusTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiStatusTest;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiStatusTest;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/android/settings/wifi/WifiStatusTest$4;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 190
    iget-object p1, p0, Lcom/android/settings/wifi/WifiStatusTest$4;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiStatusTest;->access$600(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    .line 192
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest$4;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiStatusTest;->access$600(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiStatusTest;->access$700(Lcom/android/settings/wifi/WifiStatusTest;I)V

    .line 193
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest$4;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiStatusTest;->access$800(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest$4;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiStatusTest;->access$900(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getHiddenSSID()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    .line 196
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    and-int/lit16 v2, v0, 0xff

    .line 197
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    ushr-int/lit8 v0, v0, 0x8

    and-int/lit16 v3, v0, 0xff

    .line 198
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    ushr-int/lit8 v0, v0, 0x8

    and-int/lit16 v3, v0, 0xff

    .line 199
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    ushr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 200
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 202
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest$4;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiStatusTest;->access$1000(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest$4;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiStatusTest;->access$1100(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Mbps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest$4;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiStatusTest;->access$1200(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest$4;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiStatusTest;->access$1300(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest$4;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiStatusTest;->access$1400(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest$4;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiStatusTest;->access$1500(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object p1

    .line 210
    iget-object p0, p0, Lcom/android/settings/wifi/WifiStatusTest$4;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    invoke-static {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->access$1600(Lcom/android/settings/wifi/WifiStatusTest;Landroid/net/wifi/SupplicantState;)V

    return-void
.end method
