.class public abstract Lf/z/h/a$b;
.super Ljava/lang/Object;
.source "Http1Codec.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/z/h/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "b"
.end annotation


# instance fields
.field public final a:Lg/g;

.field public b:Z

.field public c:J

.field public final synthetic d:Lf/z/h/a;


# direct methods
.method public constructor <init>(Lf/z/h/a;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lf/z/h/a$b;->d:Lf/z/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lg/g;

    iget-object v0, p0, Lf/z/h/a$b;->d:Lf/z/h/a;

    iget-object v0, v0, Lf/z/h/a;->c:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/Source;->timeout()Lg/q;

    move-result-object v0

    invoke-direct {p1, v0}, Lg/g;-><init>(Lg/q;)V

    iput-object p1, p0, Lf/z/h/a$b;->a:Lg/g;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lf/z/h/a$b;->c:J

    return-void
.end method

.method public synthetic constructor <init>(Lf/z/h/a;Lf/z/h/a$a;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lf/z/h/a$b;-><init>(Lf/z/h/a;)V

    return-void
.end method


# virtual methods
.method public final a(ZLjava/io/IOException;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lf/z/h/a$b;->d:Lf/z/h/a;

    iget v1, v0, Lf/z/h/a;->e:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x5

    if-ne v1, v3, :cond_2

    .line 2
    iget-object v1, p0, Lf/z/h/a$b;->a:Lg/g;

    invoke-virtual {v0, v1}, Lf/z/h/a;->a(Lg/g;)V

    .line 3
    iget-object v5, p0, Lf/z/h/a$b;->d:Lf/z/h/a;

    iput v2, v5, Lf/z/h/a;->e:I

    .line 4
    iget-object v3, v5, Lf/z/h/a;->b:Lf/z/f/g;

    if-eqz v3, :cond_1

    xor-int/lit8 v4, p1, 0x1

    .line 5
    iget-wide v6, p0, Lf/z/h/a$b;->c:J

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Lf/z/f/g;->a(ZLokhttp3/internal/http/HttpCodec;JLjava/io/IOException;)V

    :cond_1
    return-void

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lf/z/h/a$b;->d:Lf/z/h/a;

    iget v0, v0, Lf/z/h/a;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read(Lg/c;J)J
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lf/z/h/a$b;->d:Lf/z/h/a;

    iget-object v0, v0, Lf/z/h/a;->c:Lokio/BufferedSource;

    invoke-interface {v0, p1, p2, p3}, Lokio/Source;->read(Lg/c;J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-lez p3, :cond_0

    .line 2
    iget-wide v0, p0, Lf/z/h/a$b;->c:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lf/z/h/a$b;->c:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-wide p1

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p0, p2, p1}, Lf/z/h/a$b;->a(ZLjava/io/IOException;)V

    .line 4
    throw p1
.end method

.method public timeout()Lg/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/z/h/a$b;->a:Lg/g;

    return-object v0
.end method
