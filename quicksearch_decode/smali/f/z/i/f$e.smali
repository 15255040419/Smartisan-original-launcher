.class public Lf/z/i/f$e;
.super Lf/z/b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/z/i/f;->a(ILokio/BufferedSource;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lg/c;

.field public final synthetic d:I

.field public final synthetic e:Z

.field public final synthetic f:Lf/z/i/f;


# direct methods
.method public varargs constructor <init>(Lf/z/i/f;Ljava/lang/String;[Ljava/lang/Object;ILg/c;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/z/i/f$e;->f:Lf/z/i/f;

    iput p4, p0, Lf/z/i/f$e;->b:I

    iput-object p5, p0, Lf/z/i/f$e;->c:Lg/c;

    iput p6, p0, Lf/z/i/f$e;->d:I

    iput-boolean p7, p0, Lf/z/i/f$e;->e:Z

    invoke-direct {p0, p2, p3}, Lf/z/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lf/z/i/f$e;->f:Lf/z/i/f;

    iget-object v0, v0, Lf/z/i/f;->j:Lokhttp3/internal/http2/PushObserver;

    iget v1, p0, Lf/z/i/f$e;->b:I

    iget-object v2, p0, Lf/z/i/f$e;->c:Lg/c;

    iget v3, p0, Lf/z/i/f$e;->d:I

    iget-boolean v4, p0, Lf/z/i/f$e;->e:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lokhttp3/internal/http2/PushObserver;->onData(ILokio/BufferedSource;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lf/z/i/f$e;->f:Lf/z/i/f;

    iget-object v1, v1, Lf/z/i/f;->r:Lf/z/i/h;

    iget v2, p0, Lf/z/i/f$e;->b:I

    sget-object v3, Lf/z/i/b;->g:Lf/z/i/b;

    invoke-virtual {v1, v2, v3}, Lf/z/i/h;->a(ILf/z/i/b;)V

    :cond_0
    if-nez v0, :cond_1

    .line 3
    iget-boolean v0, p0, Lf/z/i/f$e;->e:Z

    if-eqz v0, :cond_2

    .line 4
    :cond_1
    iget-object v0, p0, Lf/z/i/f$e;->f:Lf/z/i/f;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    iget-object v1, p0, Lf/z/i/f$e;->f:Lf/z/i/f;

    iget-object v1, v1, Lf/z/i/f;->t:Ljava/util/Set;

    iget v2, p0, Lf/z/i/f$e;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 6
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method
