.class Lcom/android/settings/wifi/TrustedNetworkList$2;
.super Landroid/os/Handler;
.source "TrustedNetworkList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/TrustedNetworkList;
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

    .line 107
    iput-object p1, p0, Lcom/android/settings/wifi/TrustedNetworkList$2;->this$0:Lcom/android/settings/wifi/TrustedNetworkList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/settings/wifi/TrustedNetworkList$2;->this$0:Lcom/android/settings/wifi/TrustedNetworkList;

    invoke-static {p0}, Lcom/android/settings/wifi/TrustedNetworkList;->access$200(Lcom/android/settings/wifi/TrustedNetworkList;)V

    return-void
.end method
