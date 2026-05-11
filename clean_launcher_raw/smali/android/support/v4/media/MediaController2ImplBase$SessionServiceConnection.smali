.class Landroid/support/v4/media/MediaController2ImplBase$SessionServiceConnection;
.super Ljava/lang/Object;
.source "MediaController2ImplBase.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaController2ImplBase;


# direct methods
.method private constructor <init>(Landroid/support/v4/media/MediaController2ImplBase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaController2ImplBase$SessionServiceConnection;->this$0:Landroid/support/v4/media/MediaController2ImplBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/media/MediaController2ImplBase;Landroid/support/v4/media/MediaController2ImplBase$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaController2ImplBase$SessionServiceConnection;-><init>(Landroid/support/v4/media/MediaController2ImplBase;)V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplBase$SessionServiceConnection;->this$0:Landroid/support/v4/media/MediaController2ImplBase;

    invoke-virtual {p0}, Landroid/support/v4/media/MediaController2ImplBase;->close()V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    sget-boolean v0, Landroid/support/v4/media/MediaController2ImplBase;->DEBUG:Z

    const-string v1, "MC2ImplBase"

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplBase$SessionServiceConnection;->this$0:Landroid/support/v4/media/MediaController2ImplBase;

    invoke-static {v0}, Landroid/support/v4/media/MediaController2ImplBase;->access$300(Landroid/support/v4/media/MediaController2ImplBase;)Landroid/support/v4/media/SessionToken2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/SessionToken2;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " was connected, but expected pkg="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/support/v4/media/MediaController2ImplBase$SessionServiceConnection;->this$0:Landroid/support/v4/media/MediaController2ImplBase;

    .line 5
    invoke-static {p1}, Landroid/support/v4/media/MediaController2ImplBase;->access$300(Landroid/support/v4/media/MediaController2ImplBase;)Landroid/support/v4/media/SessionToken2;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/media/SessionToken2;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with id="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplBase$SessionServiceConnection;->this$0:Landroid/support/v4/media/MediaController2ImplBase;

    invoke-static {p0}, Landroid/support/v4/media/MediaController2ImplBase;->access$300(Landroid/support/v4/media/MediaController2ImplBase;)Landroid/support/v4/media/SessionToken2;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/media/SessionToken2;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {v1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplBase$SessionServiceConnection;->this$0:Landroid/support/v4/media/MediaController2ImplBase;

    invoke-static {p2}, Landroid/support/v4/media/IMediaSession2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaSession2;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/support/v4/media/MediaController2ImplBase;->access$400(Landroid/support/v4/media/MediaController2ImplBase;Landroid/support/v4/media/IMediaSession2;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    sget-boolean p0, Landroid/support/v4/media/MediaController2ImplBase;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Session service "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is disconnected."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MC2ImplBase"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
