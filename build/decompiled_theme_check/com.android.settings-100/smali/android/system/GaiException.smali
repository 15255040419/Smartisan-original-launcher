.class public final Landroid/system/GaiException;
.super Ljava/lang/RuntimeException;
.source "GaiException.java"


# instance fields
.field public final error:I

.field private final functionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 41
    iput-object p1, p0, Landroid/system/GaiException;->functionName:Ljava/lang/String;

    .line 42
    iput p2, p0, Landroid/system/GaiException;->error:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 0

    .line 49
    invoke-direct {p0, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 50
    iput-object p1, p0, Landroid/system/GaiException;->functionName:Ljava/lang/String;

    .line 51
    iput p2, p0, Landroid/system/GaiException;->error:I

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 3

    .line 60
    iget v0, p0, Landroid/system/GaiException;->error:I

    invoke-static {v0}, Landroid/system/OsConstants;->gaiName(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GAI_ error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/system/GaiException;->error:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    :cond_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget v2, p0, Landroid/system/GaiException;->error:I

    invoke-interface {v1, v2}, Llibcore/io/Os;->gai_strerror(I)Ljava/lang/String;

    move-result-object v1

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Landroid/system/GaiException;->functionName:Ljava/lang/String;

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

.method public rethrowAsUnknownHostException()Ljava/net/UnknownHostException;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 81
    invoke-virtual {p0}, Landroid/system/GaiException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/system/GaiException;->rethrowAsUnknownHostException(Ljava/lang/String;)Ljava/net/UnknownHostException;

    move-result-object p0

    throw p0
.end method

.method public rethrowAsUnknownHostException(Ljava/lang/String;)Ljava/net/UnknownHostException;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/net/UnknownHostException;

    invoke-direct {v0, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0, p0}, Ljava/net/UnknownHostException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 74
    throw v0
.end method
