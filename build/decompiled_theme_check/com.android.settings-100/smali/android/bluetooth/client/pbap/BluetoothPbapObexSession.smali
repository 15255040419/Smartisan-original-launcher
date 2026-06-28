.class final Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;
.super Ljava/lang/Object;
.source "BluetoothPbapObexSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;
    }
.end annotation


# static fields
.field static final OBEX_SESSION_AUTHENTICATION_REQUEST:I = 0x69

.field static final OBEX_SESSION_AUTHENTICATION_TIMEOUT:I = 0x6a

.field static final OBEX_SESSION_CONNECTED:I = 0x64

.field static final OBEX_SESSION_DISCONNECTED:I = 0x66

.field static final OBEX_SESSION_FAILED:I = 0x65

.field static final OBEX_SESSION_REQUEST_COMPLETED:I = 0x67

.field static final OBEX_SESSION_REQUEST_FAILED:I = 0x68

.field private static final PBAP_TARGET:[B

.field private static final TAG:Ljava/lang/String; = "BluetoothPbapObexSession"


# instance fields
.field private mAuth:Landroid/bluetooth/client/pbap/BluetoothPbapObexAuthenticator;

.field private mObexClientThread:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;

.field private mSessionHandler:Landroid/os/Handler;

.field private final mTransport:Ljavax/obex/ObexTransport;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 32
    fill-array-data v0, :array_0

    sput-object v0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->PBAP_TARGET:[B

    return-void

    :array_0
    .array-data 1
        0x79t
        0x61t
        0x35t
        -0x10t
        -0x10t
        -0x3bt
        0x11t
        -0x28t
        0x9t
        0x66t
        0x8t
        0x0t
        0x20t
        0xct
        -0x66t
        0x66t
    .end array-data
.end method

.method public constructor <init>(Ljavax/obex/ObexTransport;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->mAuth:Landroid/bluetooth/client/pbap/BluetoothPbapObexAuthenticator;

    .line 51
    iput-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->mTransport:Ljavax/obex/ObexTransport;

    return-void
.end method

.method static synthetic access$000(Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;)Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;
    .locals 0

    .line 29
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->mObexClientThread:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;

    return-object p0
.end method

.method static synthetic access$002(Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;)Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;
    .locals 0

    .line 29
    iput-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->mObexClientThread:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;

    return-object p1
.end method

.method static synthetic access$200(Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;)Landroid/os/Handler;
    .locals 0

    .line 29
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->mSessionHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;)Ljavax/obex/ObexTransport;
    .locals 0

    .line 29
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->mTransport:Ljavax/obex/ObexTransport;

    return-object p0
.end method

.method static synthetic access$400(Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;)Landroid/bluetooth/client/pbap/BluetoothPbapObexAuthenticator;
    .locals 0

    .line 29
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->mAuth:Landroid/bluetooth/client/pbap/BluetoothPbapObexAuthenticator;

    return-object p0
.end method

.method static synthetic access$500()[B
    .locals 1

    .line 29
    sget-object v0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->PBAP_TARGET:[B

    return-object v0
.end method


# virtual methods
.method public abort()V
    .locals 3

    const-string v0, "BluetoothPbapObexSession"

    const-string v1, "abort"

    .line 86
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->mObexClientThread:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->access$100(Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;)Landroid/bluetooth/client/pbap/BluetoothPbapRequest;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "aborting the ongoing request"

    .line 93
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$2;

    invoke-direct {v2, p0}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$2;-><init>(Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 102
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const-string p0, "Exiting from the abort thread"

    .line 103
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public schedule(Landroid/bluetooth/client/pbap/BluetoothPbapRequest;)Z
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "schedule: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothPbapObexSession"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->mObexClientThread:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;

    if-nez p0, :cond_0

    const-string p0, "OBEX session not started"

    .line 111
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 115
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->schedule(Landroid/bluetooth/client/pbap/BluetoothPbapRequest;)Z

    move-result p0

    return p0
.end method

.method public setAuthReply(Ljava/lang/String;)Z
    .locals 2

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAuthReply key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothPbapObexSession"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->mAuth:Landroid/bluetooth/client/pbap/BluetoothPbapObexAuthenticator;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 125
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/client/pbap/BluetoothPbapObexAuthenticator;->setReply(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public start(Landroid/os/Handler;)V
    .locals 2

    const-string v0, "BluetoothPbapObexSession"

    const-string/jumbo v1, "start"

    .line 55
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iput-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->mSessionHandler:Landroid/os/Handler;

    .line 58
    new-instance p1, Landroid/bluetooth/client/pbap/BluetoothPbapObexAuthenticator;

    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->mSessionHandler:Landroid/os/Handler;

    invoke-direct {p1, v0}, Landroid/bluetooth/client/pbap/BluetoothPbapObexAuthenticator;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->mAuth:Landroid/bluetooth/client/pbap/BluetoothPbapObexAuthenticator;

    .line 60
    new-instance p1, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;

    invoke-direct {p1, p0}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;-><init>(Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;)V

    iput-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->mObexClientThread:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;

    .line 61
    iget-object p0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->mObexClientThread:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;

    invoke-virtual {p0}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->start()V

    return-void
.end method

.method public stop()V
    .locals 3

    const-string v0, "BluetoothPbapObexSession"

    const-string/jumbo v1, "stop"

    .line 65
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->mObexClientThread:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {p0}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->abort()V

    .line 69
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$1;

    invoke-direct {v2, p0}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$1;-><init>(Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 80
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const-string p0, "Exiting from the stopping thread"

    .line 81
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
