.class final Lcom/android/settings/wifi/SortNetworkListActivity$ServiceHandler;
.super Landroid/os/Handler;
.source "SortNetworkListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/SortNetworkListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/SortNetworkListActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/SortNetworkListActivity;Landroid/os/Looper;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/android/settings/wifi/SortNetworkListActivity$ServiceHandler;->this$0:Lcom/android/settings/wifi/SortNetworkListActivity;

    .line 342
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/SortNetworkListActivity;Landroid/os/Looper;Lcom/android/settings/wifi/SortNetworkListActivity$1;)V
    .locals 0

    .line 340
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/SortNetworkListActivity$ServiceHandler;-><init>(Lcom/android/settings/wifi/SortNetworkListActivity;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 346
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SortNetworkListActivity"

    const-string v1, "handleMessage CMD_UPDATE_PRIORITY"

    .line 348
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 350
    iget-object p0, p0, Lcom/android/settings/wifi/SortNetworkListActivity$ServiceHandler;->this$0:Lcom/android/settings/wifi/SortNetworkListActivity;

    invoke-static {p0, p1}, Lcom/android/settings/wifi/SortNetworkListActivity;->access$900(Lcom/android/settings/wifi/SortNetworkListActivity;Ljava/util/List;)V

    :goto_0
    return-void
.end method
