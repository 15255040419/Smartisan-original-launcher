.class Lcom/android/settings/wifi/WifiStatusTest$7;
.super Ljava/lang/Thread;
.source "WifiStatusTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiStatusTest;->updatePingState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiStatusTest;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$updatePingResults:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiStatusTest;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/android/settings/wifi/WifiStatusTest$7;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiStatusTest$7;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/settings/wifi/WifiStatusTest$7;->val$updatePingResults:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest$7;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiStatusTest;->access$2200(Lcom/android/settings/wifi/WifiStatusTest;)V

    .line 347
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest$7;->val$handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiStatusTest$7;->val$updatePingResults:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
