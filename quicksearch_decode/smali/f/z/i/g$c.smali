.class public Lf/z/i/g$c;
.super Lg/a;
.source "Http2Stream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/z/i/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic k:Lf/z/i/g;


# direct methods
.method public constructor <init>(Lf/z/i/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/z/i/g$c;->k:Lf/z/i/g;

    invoke-direct {p0}, Lg/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .line 1
    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ljava/net/SocketTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object v0
.end method

.method public i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/z/i/g$c;->k:Lf/z/i/g;

    sget-object v1, Lf/z/i/b;->g:Lf/z/i/b;

    invoke-virtual {v0, v1}, Lf/z/i/g;->c(Lf/z/i/b;)V

    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/a;->h()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lf/z/i/g$c;->b(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method
