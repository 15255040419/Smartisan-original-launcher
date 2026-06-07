.class public Lf/z/i/e$a;
.super Lg/f;
.source "Http2Codec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/z/i/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public b:Z

.field public c:J

.field public final synthetic d:Lf/z/i/e;


# direct methods
.method public constructor <init>(Lf/z/i/e;Lokio/Source;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/z/i/e$a;->d:Lf/z/i/e;

    .line 2
    invoke-direct {p0, p2}, Lg/f;-><init>(Lokio/Source;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lf/z/i/e$a;->b:Z

    const-wide/16 p1, 0x0

    .line 4
    iput-wide p1, p0, Lf/z/i/e$a;->c:J

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/IOException;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lf/z/i/e$a;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lf/z/i/e$a;->b:Z

    .line 3
    iget-object v3, p0, Lf/z/i/e$a;->d:Lf/z/i/e;

    iget-object v1, v3, Lf/z/i/e;->b:Lf/z/f/g;

    const/4 v2, 0x0

    iget-wide v4, p0, Lf/z/i/e$a;->c:J

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lf/z/f/g;->a(ZLokhttp3/internal/http/HttpCodec;JLjava/io/IOException;)V

    return-void
.end method

.method public close()V
    .locals 1

    .line 1
    invoke-super {p0}, Lg/f;->close()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lf/z/i/e$a;->a(Ljava/io/IOException;)V

    return-void
.end method

.method public read(Lg/c;J)J
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lg/f;->a()Lokio/Source;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lokio/Source;->read(Lg/c;J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-lez p3, :cond_0

    .line 2
    iget-wide v0, p0, Lf/z/i/e$a;->c:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lf/z/i/e$a;->c:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-wide p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p0, p1}, Lf/z/i/e$a;->a(Ljava/io/IOException;)V

    .line 4
    throw p1
.end method
