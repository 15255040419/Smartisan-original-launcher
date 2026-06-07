.class public final Lf/z/m/a;
.super Ljava/lang/Object;
.source "RealWebSocket.java"

# interfaces
.implements Lokhttp3/WebSocket;
.implements Lokhttp3/internal/ws/WebSocketReader$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/z/m/a$c;,
        Lf/z/m/a$g;,
        Lf/z/m/a$d;,
        Lf/z/m/a$e;,
        Lf/z/m/a$f;
    }
.end annotation


# static fields
.field public static final x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/q;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lf/s;

.field public final b:Lf/y;

.field public final c:Ljava/util/Random;

.field public final d:J

.field public final e:Ljava/lang/String;

.field public f:Lokhttp3/Call;

.field public final g:Ljava/lang/Runnable;

.field public h:Lokhttp3/internal/ws/WebSocketReader;

.field public i:Lf/z/m/c;

.field public j:Ljava/util/concurrent/ScheduledExecutorService;

.field public k:Lf/z/m/a$g;

.field public final l:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lg/d;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public n:J

.field public o:Z

.field public p:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field public q:I

.field public r:Ljava/lang/String;

.field public s:Z

.field public t:I

.field public u:I

.field public v:I

.field public w:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lf/q;->c:Lf/q;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lf/z/m/a;->x:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lf/s;Lf/y;Ljava/util/Random;J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lf/z/m/a;->l:Ljava/util/ArrayDeque;

    .line 3
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lf/z/m/a;->m:Ljava/util/ArrayDeque;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lf/z/m/a;->q:I

    .line 5
    invoke-virtual {p1}, Lf/s;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iput-object p1, p0, Lf/z/m/a;->a:Lf/s;

    .line 7
    iput-object p2, p0, Lf/z/m/a;->b:Lf/y;

    .line 8
    iput-object p3, p0, Lf/z/m/a;->c:Ljava/util/Random;

    .line 9
    iput-wide p4, p0, Lf/z/m/a;->d:J

    const/16 p1, 0x10

    new-array p1, p1, [B

    .line 10
    invoke-virtual {p3, p1}, Ljava/util/Random;->nextBytes([B)V

    .line 11
    invoke-static {p1}, Lg/d;->a([B)Lg/d;

    move-result-object p1

    invoke-virtual {p1}, Lg/d;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lf/z/m/a;->e:Ljava/lang/String;

    .line 12
    new-instance p1, Lf/z/m/a$a;

    invoke-direct {p1, p0}, Lf/z/m/a$a;-><init>(Lf/z/m/a;)V

    iput-object p1, p0, Lf/z/m/a;->g:Ljava/lang/Runnable;

    return-void

    .line 13
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Request must be GET: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lf/s;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 39
    :goto_0
    iget v0, p0, Lf/z/m/a;->q:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 40
    iget-object v0, p0, Lf/z/m/a;->h:Lokhttp3/internal/ws/WebSocketReader;

    invoke-virtual {v0}, Lokhttp3/internal/ws/WebSocketReader;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lf/p;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lf/p;->q()Lf/p$b;

    move-result-object p1

    sget-object v0, Lokhttp3/EventListener;->a:Lokhttp3/EventListener;

    .line 2
    invoke-virtual {p1, v0}, Lf/p$b;->a(Lokhttp3/EventListener;)Lf/p$b;

    sget-object v0, Lf/z/m/a;->x:Ljava/util/List;

    .line 3
    invoke-virtual {p1, v0}, Lf/p$b;->a(Ljava/util/List;)Lf/p$b;

    .line 4
    invoke-virtual {p1}, Lf/p$b;->a()Lf/p;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lf/z/m/a;->a:Lf/s;

    invoke-virtual {v0}, Lf/s;->f()Lf/s$a;

    move-result-object v0

    const-string v1, "Upgrade"

    const-string v2, "websocket"

    .line 6
    invoke-virtual {v0, v1, v2}, Lf/s$a;->b(Ljava/lang/String;Ljava/lang/String;)Lf/s$a;

    const-string v2, "Connection"

    .line 7
    invoke-virtual {v0, v2, v1}, Lf/s$a;->b(Ljava/lang/String;Ljava/lang/String;)Lf/s$a;

    iget-object v1, p0, Lf/z/m/a;->e:Ljava/lang/String;

    const-string v2, "Sec-WebSocket-Key"

    .line 8
    invoke-virtual {v0, v2, v1}, Lf/s$a;->b(Ljava/lang/String;Ljava/lang/String;)Lf/s$a;

    const-string v1, "Sec-WebSocket-Version"

    const-string v2, "13"

    .line 9
    invoke-virtual {v0, v1, v2}, Lf/s$a;->b(Ljava/lang/String;Ljava/lang/String;)Lf/s$a;

    .line 10
    invoke-virtual {v0}, Lf/s$a;->a()Lf/s;

    move-result-object v0

    .line 11
    sget-object v1, Lf/z/a;->a:Lf/z/a;

    invoke-virtual {v1, p1, v0}, Lf/z/a;->a(Lf/p;Lf/s;)Lokhttp3/Call;

    move-result-object p1

    iput-object p1, p0, Lf/z/m/a;->f:Lokhttp3/Call;

    .line 12
    iget-object p1, p0, Lf/z/m/a;->f:Lokhttp3/Call;

    invoke-interface {p1}, Lokhttp3/Call;->timeout()Lg/q;

    move-result-object p1

    invoke-virtual {p1}, Lg/q;->b()Lg/q;

    .line 13
    iget-object p1, p0, Lf/z/m/a;->f:Lokhttp3/Call;

    new-instance v1, Lf/z/m/a$b;

    invoke-direct {v1, p0, v0}, Lf/z/m/a$b;-><init>(Lf/z/m/a;Lf/s;)V

    invoke-interface {p1, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public a(Lf/u;)V
    .locals 5

    .line 14
    invoke-virtual {p1}, Lf/u;->c()I

    move-result v0

    const-string v1, "\'"

    const/16 v2, 0x65

    if-ne v0, v2, :cond_3

    const-string v0, "Connection"

    .line 15
    invoke-virtual {p1, v0}, Lf/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Upgrade"

    .line 16
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 17
    invoke-virtual {p1, v2}, Lf/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "websocket"

    .line 18
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "Sec-WebSocket-Accept"

    .line 19
    invoke-virtual {p1, v0}, Lf/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lf/z/m/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/d;->c(Ljava/lang/String;)Lg/d;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lg/d;->d()Lg/d;

    move-result-object v0

    invoke-virtual {v0}, Lg/d;->a()Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 23
    :cond_0
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected \'Sec-WebSocket-Accept\' header value \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' but was \'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 24
    :cond_1
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected \'Upgrade\' header value \'websocket\' but was \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_2
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected \'Connection\' header value \'Upgrade\' but was \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_3
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected HTTP 101 response but was \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p1}, Lf/u;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lf/u;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/Exception;Lf/u;)V
    .locals 3

    .line 60
    monitor-enter p0

    .line 61
    :try_start_0
    iget-boolean v0, p0, Lf/z/m/a;->s:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lf/z/m/a;->s:Z

    .line 63
    iget-object v0, p0, Lf/z/m/a;->k:Lf/z/m/a$g;

    const/4 v1, 0x0

    .line 64
    iput-object v1, p0, Lf/z/m/a;->k:Lf/z/m/a$g;

    .line 65
    iget-object v1, p0, Lf/z/m/a;->p:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lf/z/m/a;->p:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 66
    :cond_1
    iget-object v1, p0, Lf/z/m/a;->j:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lf/z/m/a;->j:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 67
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 68
    :try_start_1
    iget-object v1, p0, Lf/z/m/a;->b:Lf/y;

    invoke-virtual {v1, p0, p1, p2}, Lf/y;->a(Lokhttp3/WebSocket;Ljava/lang/Throwable;Lf/u;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    invoke-static {v0}, Lf/z/c;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lf/z/c;->a(Ljava/io/Closeable;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 70
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public a(Ljava/lang/String;Lf/z/m/a$g;)V
    .locals 7

    .line 28
    monitor-enter p0

    .line 29
    :try_start_0
    iput-object p2, p0, Lf/z/m/a;->k:Lf/z/m/a$g;

    .line 30
    new-instance v0, Lf/z/m/c;

    iget-boolean v1, p2, Lf/z/m/a$g;->a:Z

    iget-object v2, p2, Lf/z/m/a$g;->c:Lokio/BufferedSink;

    iget-object v3, p0, Lf/z/m/a;->c:Ljava/util/Random;

    invoke-direct {v0, v1, v2, v3}, Lf/z/m/c;-><init>(ZLokio/BufferedSink;Ljava/util/Random;)V

    iput-object v0, p0, Lf/z/m/a;->i:Lf/z/m/c;

    .line 31
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lf/z/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lf/z/m/a;->j:Ljava/util/concurrent/ScheduledExecutorService;

    .line 32
    iget-wide v0, p0, Lf/z/m/a;->d:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 33
    iget-object v0, p0, Lf/z/m/a;->j:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lf/z/m/a$f;

    invoke-direct {v1, p0}, Lf/z/m/a$f;-><init>(Lf/z/m/a;)V

    iget-wide v2, p0, Lf/z/m/a;->d:J

    iget-wide v4, p0, Lf/z/m/a;->d:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 34
    :cond_0
    iget-object p1, p0, Lf/z/m/a;->m:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 35
    invoke-virtual {p0}, Lf/z/m/a;->b()V

    .line 36
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    new-instance p1, Lokhttp3/internal/ws/WebSocketReader;

    iget-boolean v0, p2, Lf/z/m/a$g;->a:Z

    iget-object p2, p2, Lf/z/m/a$g;->b:Lokio/BufferedSource;

    invoke-direct {p1, v0, p2, p0}, Lokhttp3/internal/ws/WebSocketReader;-><init>(ZLokio/BufferedSource;Lokhttp3/internal/ws/WebSocketReader$FrameCallback;)V

    iput-object p1, p0, Lf/z/m/a;->h:Lokhttp3/internal/ws/WebSocketReader;

    return-void

    :catchall_0
    move-exception p1

    .line 38
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized a(ILjava/lang/String;J)Z
    .locals 5

    monitor-enter p0

    .line 50
    :try_start_0
    invoke-static {p1}, Lf/z/m/b;->b(I)V

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 51
    invoke-static {p2}, Lg/d;->c(Ljava/lang/String;)Lg/d;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lg/d;->f()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x7b

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "reason.size() > 123: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_1
    :goto_0
    iget-boolean p2, p0, Lf/z/m/a;->s:Z

    if-nez p2, :cond_3

    iget-boolean p2, p0, Lf/z/m/a;->o:Z

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x1

    .line 55
    iput-boolean p2, p0, Lf/z/m/a;->o:Z

    .line 56
    iget-object v1, p0, Lf/z/m/a;->m:Ljava/util/ArrayDeque;

    new-instance v2, Lf/z/m/a$d;

    invoke-direct {v2, p1, v0, p3, p4}, Lf/z/m/a$d;-><init>(ILg/d;J)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {p0}, Lf/z/m/a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return p2

    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 59
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Lg/d;I)Z
    .locals 6

    monitor-enter p0

    .line 41
    :try_start_0
    iget-boolean v0, p0, Lf/z/m/a;->s:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lf/z/m/a;->o:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    iget-wide v2, p0, Lf/z/m/a;->n:J

    invoke-virtual {p1}, Lg/d;->f()I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    const-wide/32 v4, 0x1000000

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const/16 p1, 0x3e9

    const/4 p2, 0x0

    .line 43
    invoke-virtual {p0, p1, p2}, Lf/z/m/a;->close(ILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit p0

    return v1

    .line 45
    :cond_1
    :try_start_1
    iget-wide v0, p0, Lf/z/m/a;->n:J

    invoke-virtual {p1}, Lg/d;->f()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lf/z/m/a;->n:J

    .line 46
    iget-object v0, p0, Lf/z/m/a;->m:Ljava/util/ArrayDeque;

    new-instance v1, Lf/z/m/a$e;

    invoke-direct {v1, p2, p1}, Lf/z/m/a$e;-><init>(ILg/d;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-virtual {p0}, Lf/z/m/a;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 48
    monitor-exit p0

    return p1

    .line 49
    :cond_2
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/z/m/a;->j:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lf/z/m/a;->g:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 11

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lf/z/m/a;->s:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    monitor-exit p0

    return v1

    .line 4
    :cond_0
    iget-object v0, p0, Lf/z/m/a;->i:Lf/z/m/c;

    .line 5
    iget-object v2, p0, Lf/z/m/a;->l:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/d;

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez v2, :cond_4

    .line 6
    iget-object v5, p0, Lf/z/m/a;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v5

    .line 7
    instance-of v6, v5, Lf/z/m/a$d;

    if-eqz v6, :cond_2

    .line 8
    iget v1, p0, Lf/z/m/a;->q:I

    .line 9
    iget-object v6, p0, Lf/z/m/a;->r:Ljava/lang/String;

    if-eq v1, v3, :cond_1

    .line 10
    iget-object v3, p0, Lf/z/m/a;->k:Lf/z/m/a$g;

    .line 11
    iput-object v4, p0, Lf/z/m/a;->k:Lf/z/m/a$g;

    .line 12
    iget-object v4, p0, Lf/z/m/a;->j:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v4}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    move-object v4, v3

    goto :goto_0

    .line 13
    :cond_1
    iget-object v3, p0, Lf/z/m/a;->j:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Lf/z/m/a$c;

    invoke-direct {v7, p0}, Lf/z/m/a$c;-><init>(Lf/z/m/a;)V

    move-object v8, v5

    check-cast v8, Lf/z/m/a$d;

    iget-wide v8, v8, Lf/z/m/a$d;->c:J

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v7, v8, v9, v10}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v3

    iput-object v3, p0, Lf/z/m/a;->p:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    :cond_2
    if-nez v5, :cond_3

    .line 14
    monitor-exit p0

    return v1

    :cond_3
    move v1, v3

    move-object v6, v4

    goto :goto_0

    :cond_4
    move v1, v3

    move-object v5, v4

    move-object v6, v5

    .line 15
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v2, :cond_5

    .line 16
    :try_start_1
    invoke-virtual {v0, v2}, Lf/z/m/c;->b(Lg/d;)V

    goto :goto_1

    .line 17
    :cond_5
    instance-of v2, v5, Lf/z/m/a$e;

    if-eqz v2, :cond_6

    .line 18
    move-object v1, v5

    check-cast v1, Lf/z/m/a$e;

    iget-object v1, v1, Lf/z/m/a$e;->b:Lg/d;

    .line 19
    check-cast v5, Lf/z/m/a$e;

    iget v2, v5, Lf/z/m/a$e;->a:I

    .line 20
    invoke-virtual {v1}, Lg/d;->f()I

    move-result v3

    int-to-long v5, v3

    .line 21
    invoke-virtual {v0, v2, v5, v6}, Lf/z/m/c;->a(IJ)Lokio/Sink;

    move-result-object v0

    invoke-static {v0}, Lg/j;->a(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    .line 22
    invoke-interface {v0, v1}, Lokio/BufferedSink;->write(Lg/d;)Lokio/BufferedSink;

    .line 23
    invoke-interface {v0}, Lokio/Sink;->close()V

    .line 24
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25
    :try_start_2
    iget-wide v2, p0, Lf/z/m/a;->n:J

    invoke-virtual {v1}, Lg/d;->f()I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lf/z/m/a;->n:J

    .line 26
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0

    .line 27
    :cond_6
    instance-of v2, v5, Lf/z/m/a$d;

    if-eqz v2, :cond_8

    .line 28
    check-cast v5, Lf/z/m/a$d;

    .line 29
    iget v2, v5, Lf/z/m/a$d;->a:I

    iget-object v3, v5, Lf/z/m/a$d;->b:Lg/d;

    invoke-virtual {v0, v2, v3}, Lf/z/m/c;->a(ILg/d;)V

    if-eqz v4, :cond_7

    .line 30
    iget-object v0, p0, Lf/z/m/a;->b:Lf/y;

    invoke-virtual {v0, p0, v1, v6}, Lf/y;->a(Lokhttp3/WebSocket;ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_7
    :goto_1
    const/4 v0, 0x1

    .line 31
    invoke-static {v4}, Lf/z/c;->a(Ljava/io/Closeable;)V

    return v0

    .line 32
    :cond_8
    :try_start_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    .line 33
    invoke-static {v4}, Lf/z/c;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_2
    move-exception v0

    .line 34
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/z/m/a;->f:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    return-void
.end method

.method public close(ILjava/lang/String;)Z
    .locals 2

    const-wide/32 v0, 0xea60

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Lf/z/m/a;->a(ILjava/lang/String;J)Z

    move-result p1

    return p1
.end method

.method public d()V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lf/z/m/a;->s:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lf/z/m/a;->i:Lf/z/m/c;

    .line 4
    iget-boolean v1, p0, Lf/z/m/a;->w:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    iget v1, p0, Lf/z/m/a;->t:I

    goto :goto_0

    :cond_1
    move v1, v2

    .line 5
    :goto_0
    iget v3, p0, Lf/z/m/a;->t:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lf/z/m/a;->t:I

    .line 6
    iput-boolean v4, p0, Lf/z/m/a;->w:Z

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    .line 8
    new-instance v0, Ljava/net/SocketTimeoutException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sent ping but didn\'t receive pong within "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lf/z/m/a;->d:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms (after "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v1, v4

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " successful ping/pongs)"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v3}, Lf/z/m/a;->a(Ljava/lang/Exception;Lf/u;)V

    return-void

    .line 9
    :cond_2
    :try_start_1
    sget-object v1, Lg/d;->e:Lg/d;

    invoke-virtual {v0, v1}, Lf/z/m/c;->a(Lg/d;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {p0, v0, v3}, Lf/z/m/a;->a(Ljava/lang/Exception;Lf/u;)V

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    .line 11
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public onReadClose(ILjava/lang/String;)V
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v1, p0, Lf/z/m/a;->q:I

    if-ne v1, v0, :cond_3

    .line 3
    iput p1, p0, Lf/z/m/a;->q:I

    .line 4
    iput-object p2, p0, Lf/z/m/a;->r:Ljava/lang/String;

    .line 5
    iget-boolean v0, p0, Lf/z/m/a;->o:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lf/z/m/a;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lf/z/m/a;->k:Lf/z/m/a$g;

    .line 7
    iput-object v1, p0, Lf/z/m/a;->k:Lf/z/m/a$g;

    .line 8
    iget-object v1, p0, Lf/z/m/a;->p:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lf/z/m/a;->p:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 9
    :cond_0
    iget-object v1, p0, Lf/z/m/a;->j:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 10
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    iget-object v1, p0, Lf/z/m/a;->b:Lf/y;

    invoke-virtual {v1, p0, p1, p2}, Lf/y;->b(Lokhttp3/WebSocket;ILjava/lang/String;)V

    if-eqz v0, :cond_2

    .line 12
    iget-object v1, p0, Lf/z/m/a;->b:Lf/y;

    invoke-virtual {v1, p0, p1, p2}, Lf/y;->a(Lokhttp3/WebSocket;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :cond_2
    invoke-static {v0}, Lf/z/c;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lf/z/c;->a(Ljava/io/Closeable;)V

    throw p1

    .line 14
    :cond_3
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "already closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 15
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 16
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public onReadMessage(Lg/d;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lf/z/m/a;->b:Lf/y;

    invoke-virtual {v0, p0, p1}, Lf/y;->a(Lokhttp3/WebSocket;Lg/d;)V

    return-void
.end method

.method public onReadMessage(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/z/m/a;->b:Lf/y;

    invoke-virtual {v0, p0, p1}, Lf/y;->a(Lokhttp3/WebSocket;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized onReadPing(Lg/d;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lf/z/m/a;->s:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lf/z/m/a;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/z/m/a;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lf/z/m/a;->l:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0}, Lf/z/m/a;->b()V

    .line 4
    iget p1, p0, Lf/z/m/a;->u:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lf/z/m/a;->u:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onReadPong(Lg/d;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iget p1, p0, Lf/z/m/a;->v:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lf/z/m/a;->v:I

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lf/z/m/a;->w:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized queueSize()J
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lf/z/m/a;->n:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public request()Lf/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/z/m/a;->a:Lf/s;

    return-object v0
.end method

.method public send(Lg/d;)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 3
    invoke-virtual {p0, p1, v0}, Lf/z/m/a;->a(Lg/d;I)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "bytes == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public send(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Lg/d;->c(Ljava/lang/String;)Lg/d;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lf/z/m/a;->a(Lg/d;I)Z

    move-result p1

    return p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "text == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
