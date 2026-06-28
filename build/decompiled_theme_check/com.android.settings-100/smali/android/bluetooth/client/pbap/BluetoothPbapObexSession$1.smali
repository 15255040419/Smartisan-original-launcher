.class Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$1;
.super Ljava/lang/Object;
.source "BluetoothPbapObexSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;


# direct methods
.method constructor <init>(Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;)V
    .locals 0

    .line 69
    iput-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$1;->this$0:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "BluetoothPbapObexSession"

    const-string v1, "Spawning a new thread for stopping obex session"

    .line 71
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$1;->this$0:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;

    invoke-static {v0}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->access$000(Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;)Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->interrupt()V

    .line 74
    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$1;->this$0:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;

    invoke-static {v0}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->access$000(Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;)Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->join()V

    .line 75
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$1;->this$0:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->access$002(Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;)Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
