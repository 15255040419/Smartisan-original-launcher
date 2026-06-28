.class public final Landroid/system/ErrnoException;
.super Ljava/lang/Exception;
.source "ErrnoException.java"


# instance fields
.field public final errno:I

.field private final functionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 40
    iput-object p1, p0, Landroid/system/ErrnoException;->functionName:Ljava/lang/String;

    .line 41
    iput p2, p0, Landroid/system/ErrnoException;->errno:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 0

    .line 48
    invoke-direct {p0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 49
    iput-object p1, p0, Landroid/system/ErrnoException;->functionName:Ljava/lang/String;

    .line 50
    iput p2, p0, Landroid/system/ErrnoException;->errno:I

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 3

    .line 59
    iget v0, p0, Landroid/system/ErrnoException;->errno:I

    invoke-static {v0}, Landroid/system/OsConstants;->errnoName(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "errno "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/system/ErrnoException;->errno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    :cond_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget v2, p0, Landroid/system/ErrnoException;->errno:I

    invoke-interface {v1, v2}, Llibcore/io/Os;->strerror(I)Ljava/lang/String;

    move-result-object v1

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Landroid/system/ErrnoException;->functionName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " failed: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ("

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public rethrowAsIOException()Ljava/io/IOException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0, p0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 73
    throw v0
.end method

.method public rethrowAsSocketException()Ljava/net/SocketException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/net/SocketException;

    invoke-virtual {p0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
