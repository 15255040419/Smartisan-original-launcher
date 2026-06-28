.class Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$2;
.super Ljava/lang/Object;
.source "BluetoothPbapObexSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->abort()V
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

    .line 94
    iput-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$2;->this$0:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 96
    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$2;->this$0:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;

    invoke-static {v0}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->access$000(Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;)Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$2;->this$0:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;

    invoke-static {v0}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->access$000(Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;)Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->access$100(Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;)Landroid/bluetooth/client/pbap/BluetoothPbapRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "BluetoothPbapObexSession"

    const-string v1, "Spawning a new thread for aborting"

    .line 97
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$2;->this$0:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;

    invoke-static {p0}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->access$000(Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;)Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;

    move-result-object p0

    invoke-static {p0}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->access$100(Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;)Landroid/bluetooth/client/pbap/BluetoothPbapRequest;

    move-result-object p0

    invoke-virtual {p0}, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;->abort()V

    :cond_0
    return-void
.end method
