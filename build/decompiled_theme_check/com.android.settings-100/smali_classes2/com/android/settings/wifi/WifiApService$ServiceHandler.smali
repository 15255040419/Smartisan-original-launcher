.class final Lcom/android/settings/wifi/WifiApService$ServiceHandler;
.super Landroid/os/Handler;
.source "WifiApService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiApService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApService;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/WifiApService;Landroid/os/Looper;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApService$ServiceHandler;->this$0:Lcom/android/settings/wifi/WifiApService;

    .line 180
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/WifiApService;Landroid/os/Looper;Lcom/android/settings/wifi/WifiApService$1;)V
    .locals 0

    .line 178
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiApService$ServiceHandler;-><init>(Lcom/android/settings/wifi/WifiApService;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/android/settings/wifi/WifiApService$ServiceHandler;->this$0:Lcom/android/settings/wifi/WifiApService;

    invoke-static {p0, p1}, Lcom/android/settings/wifi/WifiApService;->access$500(Lcom/android/settings/wifi/WifiApService;Landroid/os/Message;)V

    return-void
.end method

.method stop()V
    .locals 1

    const/16 v0, 0x66

    .line 189
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApService$ServiceHandler;->removeMessages(I)V

    return-void
.end method
