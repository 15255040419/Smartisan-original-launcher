.class public final Landroid/system/Os;
.super Ljava/lang/Object;
.source "Os.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accept(Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)Ljava/io/FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 41
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->accept(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)Ljava/io/FileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static accept(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)Ljava/io/FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 47
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->accept(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)Ljava/io/FileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static access(Ljava/lang/String;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 52
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->access(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static android_getaddrinfo(Ljava/lang/String;Landroid/system/StructAddrinfo;I)[Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/GaiException;
        }
    .end annotation

    .line 54
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->android_getaddrinfo(Ljava/lang/String;Landroid/system/StructAddrinfo;I)[Ljava/net/InetAddress;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 59
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    return-void
.end method

.method public static bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 61
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    return-void
.end method

.method public static capget(Landroid/system/StructCapUserHeader;)[Landroid/system/StructCapUserData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 69
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->capget(Landroid/system/StructCapUserHeader;)[Landroid/system/StructCapUserData;

    move-result-object p0

    return-object p0
.end method

.method public static capset(Landroid/system/StructCapUserHeader;[Landroid/system/StructCapUserData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 79
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->capset(Landroid/system/StructCapUserHeader;[Landroid/system/StructCapUserData;)V

    return-void
.end method

.method public static chmod(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 85
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->chmod(Ljava/lang/String;I)V

    return-void
.end method

.method public static chown(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 90
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->chown(Ljava/lang/String;II)V

    return-void
.end method

.method public static close(Ljava/io/FileDescriptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 95
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public static connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 100
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    return-void
.end method

.method public static connect(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 102
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    return-void
.end method

.method public static dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 107
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static dup2(Ljava/io/FileDescriptor;I)Ljava/io/FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 112
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->dup2(Ljava/io/FileDescriptor;I)Ljava/io/FileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static environ()[Ljava/lang/String;
    .locals 1

    .line 117
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->environ()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static execv(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 122
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->execv(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static execve(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 127
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->execve(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static fchmod(Ljava/io/FileDescriptor;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 132
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->fchmod(Ljava/io/FileDescriptor;I)V

    return-void
.end method

.method public static fchown(Ljava/io/FileDescriptor;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 137
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->fchown(Ljava/io/FileDescriptor;II)V

    return-void
.end method

.method public static fcntlFlock(Ljava/io/FileDescriptor;ILandroid/system/StructFlock;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 139
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->fcntlFlock(Ljava/io/FileDescriptor;ILandroid/system/StructFlock;)I

    move-result p0

    return p0
.end method

.method public static fcntlInt(Ljava/io/FileDescriptor;II)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 140
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->fcntlInt(Ljava/io/FileDescriptor;II)I

    move-result p0

    return p0
.end method

.method public static fcntlVoid(Ljava/io/FileDescriptor;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 141
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->fcntlVoid(Ljava/io/FileDescriptor;I)I

    move-result p0

    return p0
.end method

.method public static fdatasync(Ljava/io/FileDescriptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 146
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->fdatasync(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public static fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 151
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object p0

    return-object p0
.end method

.method public static fstatvfs(Ljava/io/FileDescriptor;)Landroid/system/StructStatVfs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 156
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->fstatvfs(Ljava/io/FileDescriptor;)Landroid/system/StructStatVfs;

    move-result-object p0

    return-object p0
.end method

.method public static fsync(Ljava/io/FileDescriptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 161
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->fsync(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public static ftruncate(Ljava/io/FileDescriptor;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 166
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->ftruncate(Ljava/io/FileDescriptor;J)V

    return-void
.end method

.method public static gai_strerror(I)Ljava/lang/String;
    .locals 1

    .line 171
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->gai_strerror(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getegid()I
    .locals 1

    .line 176
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->getegid()I

    move-result v0

    return v0
.end method

.method public static getenv(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 191
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static geteuid()I
    .locals 1

    .line 181
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->geteuid()I

    move-result v0

    return v0
.end method

.method public static getgid()I
    .locals 1

    .line 186
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->getgid()I

    move-result v0

    return v0
.end method

.method public static getifaddrs()[Landroid/system/StructIfaddrs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 196
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->getifaddrs()[Landroid/system/StructIfaddrs;

    move-result-object v0

    return-object v0
.end method

.method public static getnameinfo(Ljava/net/InetAddress;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/GaiException;
        }
    .end annotation

    .line 198
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->getnameinfo(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getpeername(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 203
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->getpeername(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object p0

    return-object p0
.end method

.method public static getpgid(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 208
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->getpgid(I)I

    move-result p0

    return p0
.end method

.method public static getpid()I
    .locals 1

    .line 213
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->getpid()I

    move-result v0

    return v0
.end method

.method public static getppid()I
    .locals 1

    .line 218
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->getppid()I

    move-result v0

    return v0
.end method

.method public static getpwnam(Ljava/lang/String;)Landroid/system/StructPasswd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 220
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->getpwnam(Ljava/lang/String;)Landroid/system/StructPasswd;

    move-result-object p0

    return-object p0
.end method

.method public static getpwuid(I)Landroid/system/StructPasswd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 222
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->getpwuid(I)Landroid/system/StructPasswd;

    move-result-object p0

    return-object p0
.end method

.method public static getrlimit(I)Landroid/system/StructRlimit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 224
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->getrlimit(I)Landroid/system/StructRlimit;

    move-result-object p0

    return-object p0
.end method

.method public static getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 229
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object p0

    return-object p0
.end method

.method public static getsockoptByte(Ljava/io/FileDescriptor;II)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 231
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->getsockoptByte(Ljava/io/FileDescriptor;II)I

    move-result p0

    return p0
.end method

.method public static getsockoptInAddr(Ljava/io/FileDescriptor;II)Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 232
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->getsockoptInAddr(Ljava/io/FileDescriptor;II)Ljava/net/InetAddress;

    move-result-object p0

    return-object p0
.end method

.method public static getsockoptInt(Ljava/io/FileDescriptor;II)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 233
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result p0

    return p0
.end method

.method public static getsockoptLinger(Ljava/io/FileDescriptor;II)Landroid/system/StructLinger;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 234
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->getsockoptLinger(Ljava/io/FileDescriptor;II)Landroid/system/StructLinger;

    move-result-object p0

    return-object p0
.end method

.method public static getsockoptTimeval(Ljava/io/FileDescriptor;II)Landroid/system/StructTimeval;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 235
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->getsockoptTimeval(Ljava/io/FileDescriptor;II)Landroid/system/StructTimeval;

    move-result-object p0

    return-object p0
.end method

.method public static getsockoptUcred(Ljava/io/FileDescriptor;II)Landroid/system/StructUcred;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 236
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->getsockoptUcred(Ljava/io/FileDescriptor;II)Landroid/system/StructUcred;

    move-result-object p0

    return-object p0
.end method

.method public static gettid()I
    .locals 1

    .line 241
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->gettid()I

    move-result v0

    return v0
.end method

.method public static getuid()I
    .locals 1

    .line 246
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->getuid()I

    move-result v0

    return v0
.end method

.method public static getxattr(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 251
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->getxattr(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static if_indextoname(I)Ljava/lang/String;
    .locals 1

    .line 256
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->if_indextoname(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static if_nametoindex(Ljava/lang/String;)I
    .locals 1

    .line 261
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->if_nametoindex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static inet_pton(ILjava/lang/String;)Ljava/net/InetAddress;
    .locals 1

    .line 266
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->inet_pton(ILjava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    return-object p0
.end method

.method public static ioctlInetAddress(Ljava/io/FileDescriptor;ILjava/lang/String;)Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 268
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->ioctlInetAddress(Ljava/io/FileDescriptor;ILjava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    return-object p0
.end method

.method public static ioctlInt(Ljava/io/FileDescriptor;ILandroid/system/Int32Ref;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 272
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->ioctlInt(Ljava/io/FileDescriptor;ILandroid/system/Int32Ref;)I

    move-result p0

    return p0
.end method

.method public static isatty(Ljava/io/FileDescriptor;)Z
    .locals 1

    .line 278
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->isatty(Ljava/io/FileDescriptor;)Z

    move-result p0

    return p0
.end method

.method public static kill(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 283
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->kill(II)V

    return-void
.end method

.method public static lchown(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 288
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->lchown(Ljava/lang/String;II)V

    return-void
.end method

.method public static link(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 293
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->link(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static listen(Ljava/io/FileDescriptor;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 298
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->listen(Ljava/io/FileDescriptor;I)V

    return-void
.end method

.method public static listxattr(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 303
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->listxattr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static lseek(Ljava/io/FileDescriptor;JI)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 308
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static lstat(Ljava/lang/String;)Landroid/system/StructStat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 313
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->lstat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object p0

    return-object p0
.end method

.method public static mincore(JJ[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 318
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-wide v1, p0

    move-wide v3, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->mincore(JJ[B)V

    return-void
.end method

.method public static mkdir(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 323
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->mkdir(Ljava/lang/String;I)V

    return-void
.end method

.method public static mkfifo(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 328
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->mkfifo(Ljava/lang/String;I)V

    return-void
.end method

.method public static mlock(JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 333
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->mlock(JJ)V

    return-void
.end method

.method public static mmap(JJIILjava/io/FileDescriptor;J)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 338
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-wide v1, p0

    move-wide v3, p2

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-interface/range {v0 .. v9}, Llibcore/io/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static msync(JJI)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 343
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-wide v1, p0

    move-wide v3, p2

    move v5, p4

    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->msync(JJI)V

    return-void
.end method

.method public static munlock(JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 348
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->munlock(JJ)V

    return-void
.end method

.method public static munmap(JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 353
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->munmap(JJ)V

    return-void
.end method

.method public static open(Ljava/lang/String;II)Ljava/io/FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 358
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static pipe()[Ljava/io/FileDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 363
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Llibcore/io/Os;->pipe2(I)[Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public static pipe2(I)[Ljava/io/FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 365
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->pipe2(I)[Ljava/io/FileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static poll([Landroid/system/StructPollfd;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 374
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->poll([Landroid/system/StructPollfd;I)I

    move-result p0

    return p0
.end method

.method public static posix_fallocate(Ljava/io/FileDescriptor;JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 379
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->posix_fallocate(Ljava/io/FileDescriptor;JJ)V

    return-void
.end method

.method public static prctl(IJJJJ)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 384
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    move-wide/from16 v8, p7

    invoke-interface/range {v0 .. v9}, Llibcore/io/Os;->prctl(IJJJJ)I

    move-result v0

    return v0
.end method

.method public static pread(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 389
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->pread(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I

    move-result p0

    return p0
.end method

.method public static pread(Ljava/io/FileDescriptor;[BIIJ)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 394
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v0 .. v6}, Llibcore/io/Os;->pread(Ljava/io/FileDescriptor;[BIIJ)I

    move-result p0

    return p0
.end method

.method public static pwrite(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 399
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->pwrite(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I

    move-result p0

    return p0
.end method

.method public static pwrite(Ljava/io/FileDescriptor;[BIIJ)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 404
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v0 .. v6}, Llibcore/io/Os;->pwrite(Ljava/io/FileDescriptor;[BIIJ)I

    move-result p0

    return p0
.end method

.method public static read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 409
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method public static read(Ljava/io/FileDescriptor;[BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 414
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result p0

    return p0
.end method

.method public static readlink(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 419
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static readv(Ljava/io/FileDescriptor;[Ljava/lang/Object;[I[I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 429
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->readv(Ljava/io/FileDescriptor;[Ljava/lang/Object;[I[I)I

    move-result p0

    return p0
.end method

.method public static realpath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 424
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->realpath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static recvfrom(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetSocketAddress;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 434
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->recvfrom(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetSocketAddress;)I

    move-result p0

    return p0
.end method

.method public static recvfrom(Ljava/io/FileDescriptor;[BIIILjava/net/InetSocketAddress;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 439
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Llibcore/io/Os;->recvfrom(Ljava/io/FileDescriptor;[BIIILjava/net/InetSocketAddress;)I

    move-result p0

    return p0
.end method

.method public static remove(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 444
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public static removexattr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 449
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->removexattr(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static rename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 454
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sendfile(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/system/Int64Ref;J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 460
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->sendfile(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/system/Int64Ref;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 466
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I

    move-result p0

    return p0
.end method

.method public static sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 471
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Llibcore/io/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I

    move-result p0

    return p0
.end method

.method public static sendto(Ljava/io/FileDescriptor;[BIIILjava/net/SocketAddress;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 476
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Llibcore/io/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/SocketAddress;)I

    move-result p0

    return p0
.end method

.method public static setegid(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 481
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->setegid(I)V

    return-void
.end method

.method public static setenv(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 486
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->setenv(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static seteuid(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 491
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->seteuid(I)V

    return-void
.end method

.method public static setgid(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 496
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->setgid(I)V

    return-void
.end method

.method public static setpgid(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 501
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->setpgid(II)V

    return-void
.end method

.method public static setregid(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 506
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->setregid(II)V

    return-void
.end method

.method public static setreuid(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 511
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->setreuid(II)V

    return-void
.end method

.method public static setsid()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 516
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->setsid()I

    move-result v0

    return v0
.end method

.method public static setsockoptByte(Ljava/io/FileDescriptor;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 518
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->setsockoptByte(Ljava/io/FileDescriptor;III)V

    return-void
.end method

.method public static setsockoptGroupReq(Ljava/io/FileDescriptor;IILandroid/system/StructGroupReq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 527
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->setsockoptGroupReq(Ljava/io/FileDescriptor;IILandroid/system/StructGroupReq;)V

    return-void
.end method

.method public static setsockoptIfreq(Ljava/io/FileDescriptor;IILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 519
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->setsockoptIfreq(Ljava/io/FileDescriptor;IILjava/lang/String;)V

    return-void
.end method

.method public static setsockoptInt(Ljava/io/FileDescriptor;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 524
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    return-void
.end method

.method public static setsockoptIpMreqn(Ljava/io/FileDescriptor;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 526
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->setsockoptIpMreqn(Ljava/io/FileDescriptor;III)V

    return-void
.end method

.method public static setsockoptLinger(Ljava/io/FileDescriptor;IILandroid/system/StructLinger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 528
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->setsockoptLinger(Ljava/io/FileDescriptor;IILandroid/system/StructLinger;)V

    return-void
.end method

.method public static setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 529
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    return-void
.end method

.method public static setuid(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 534
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->setuid(I)V

    return-void
.end method

.method public static setxattr(Ljava/lang/String;Ljava/lang/String;[BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 539
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->setxattr(Ljava/lang/String;Ljava/lang/String;[BI)V

    return-void
.end method

.method public static shutdown(Ljava/io/FileDescriptor;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 544
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->shutdown(Ljava/io/FileDescriptor;I)V

    return-void
.end method

.method public static socket(III)Ljava/io/FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 549
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static socketpair(IIILjava/io/FileDescriptor;Ljava/io/FileDescriptor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 554
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->socketpair(IIILjava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public static splice(Ljava/io/FileDescriptor;Landroid/system/Int64Ref;Ljava/io/FileDescriptor;Landroid/system/Int64Ref;JI)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 560
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move v7, p6

    invoke-interface/range {v0 .. v7}, Llibcore/io/Os;->splice(Ljava/io/FileDescriptor;Landroid/system/Int64Ref;Ljava/io/FileDescriptor;Landroid/system/Int64Ref;JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static stat(Ljava/lang/String;)Landroid/system/StructStat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 565
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object p0

    return-object p0
.end method

.method public static statvfs(Ljava/lang/String;)Landroid/system/StructStatVfs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 570
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->statvfs(Ljava/lang/String;)Landroid/system/StructStatVfs;

    move-result-object p0

    return-object p0
.end method

.method public static strerror(I)Ljava/lang/String;
    .locals 1

    .line 575
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->strerror(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static strsignal(I)Ljava/lang/String;
    .locals 1

    .line 580
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->strsignal(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static symlink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 585
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sysconf(I)J
    .locals 2

    .line 590
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->sysconf(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static tcdrain(Ljava/io/FileDescriptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 595
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->tcdrain(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public static tcsendbreak(Ljava/io/FileDescriptor;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 600
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->tcsendbreak(Ljava/io/FileDescriptor;I)V

    return-void
.end method

.method public static umask(I)I
    .locals 1

    .line 605
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->umask(I)I

    move-result p0

    return p0
.end method

.method public static uname()Landroid/system/StructUtsname;
    .locals 1

    .line 610
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0}, Llibcore/io/Os;->uname()Landroid/system/StructUtsname;

    move-result-object v0

    return-object v0
.end method

.method public static unlink(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 615
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->unlink(Ljava/lang/String;)V

    return-void
.end method

.method public static unsetenv(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 620
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0}, Llibcore/io/Os;->unsetenv(Ljava/lang/String;)V

    return-void
.end method

.method public static waitpid(ILandroid/system/Int32Ref;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 628
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2}, Llibcore/io/Os;->waitpid(ILandroid/system/Int32Ref;I)I

    move-result p0

    return p0
.end method

.method public static write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 634
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1}, Llibcore/io/Os;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method public static write(Ljava/io/FileDescriptor;[BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 639
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->write(Ljava/io/FileDescriptor;[BII)I

    move-result p0

    return p0
.end method

.method public static writev(Ljava/io/FileDescriptor;[Ljava/lang/Object;[I[I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 644
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p0, p1, p2, p3}, Llibcore/io/Os;->writev(Ljava/io/FileDescriptor;[Ljava/lang/Object;[I[I)I

    move-result p0

    return p0
.end method
