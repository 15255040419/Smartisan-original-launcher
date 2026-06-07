.class public final Lf/o;
.super Lf/t;
.source "MultipartBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/o$a;,
        Lf/o$b;
    }
.end annotation


# static fields
.field public static final e:Lf/n;

.field public static final f:Lf/n;

.field public static final g:[B

.field public static final h:[B

.field public static final i:[B


# instance fields
.field public final a:Lg/d;

.field public final b:Lf/n;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/o$b;",
            ">;"
        }
    .end annotation
.end field

.field public d:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "multipart/mixed"

    .line 1
    invoke-static {v0}, Lf/n;->a(Ljava/lang/String;)Lf/n;

    move-result-object v0

    sput-object v0, Lf/o;->e:Lf/n;

    const-string v0, "multipart/alternative"

    .line 2
    invoke-static {v0}, Lf/n;->a(Ljava/lang/String;)Lf/n;

    const-string v0, "multipart/digest"

    .line 3
    invoke-static {v0}, Lf/n;->a(Ljava/lang/String;)Lf/n;

    const-string v0, "multipart/parallel"

    .line 4
    invoke-static {v0}, Lf/n;->a(Ljava/lang/String;)Lf/n;

    const-string v0, "multipart/form-data"

    .line 5
    invoke-static {v0}, Lf/n;->a(Ljava/lang/String;)Lf/n;

    move-result-object v0

    sput-object v0, Lf/o;->f:Lf/n;

    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 6
    fill-array-data v1, :array_0

    sput-object v1, Lf/o;->g:[B

    new-array v1, v0, [B

    .line 7
    fill-array-data v1, :array_1

    sput-object v1, Lf/o;->h:[B

    new-array v0, v0, [B

    .line 8
    fill-array-data v0, :array_2

    sput-object v0, Lf/o;->i:[B

    return-void

    :array_0
    .array-data 1
        0x3at
        0x20t
    .end array-data

    nop

    :array_1
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method public constructor <init>(Lg/d;Lf/n;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/d;",
            "Lf/n;",
            "Ljava/util/List<",
            "Lf/o$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lf/t;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lf/o;->d:J

    .line 3
    iput-object p1, p0, Lf/o;->a:Lg/d;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; boundary="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lg/d;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lf/n;->a(Ljava/lang/String;)Lf/n;

    move-result-object p1

    iput-object p1, p0, Lf/o;->b:Lf/n;

    .line 5
    invoke-static {p3}, Lf/z/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lf/o;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lf/o;->d:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1}, Lf/o;->a(Lokio/BufferedSink;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lf/o;->d:J

    return-wide v0
.end method

.method public final a(Lokio/BufferedSink;Z)J
    .locals 12

    if-eqz p2, :cond_0

    .line 4
    new-instance p1, Lg/c;

    invoke-direct {p1}, Lg/c;-><init>()V

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Lf/o;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-wide v4, v3

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_6

    .line 6
    iget-object v6, p0, Lf/o;->c:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lf/o$b;

    .line 7
    iget-object v7, v6, Lf/o$b;->a:Lf/l;

    .line 8
    iget-object v6, v6, Lf/o$b;->b:Lf/t;

    .line 9
    sget-object v8, Lf/o;->i:[B

    invoke-interface {p1, v8}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 10
    iget-object v8, p0, Lf/o;->a:Lg/d;

    invoke-interface {p1, v8}, Lokio/BufferedSink;->write(Lg/d;)Lokio/BufferedSink;

    .line 11
    sget-object v8, Lf/o;->h:[B

    invoke-interface {p1, v8}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    if-eqz v7, :cond_1

    .line 12
    invoke-virtual {v7}, Lf/l;->b()I

    move-result v8

    move v9, v2

    :goto_2
    if-ge v9, v8, :cond_1

    .line 13
    invoke-virtual {v7, v9}, Lf/l;->a(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v10}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v10

    sget-object v11, Lf/o;->g:[B

    .line 14
    invoke-interface {v10, v11}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    move-result-object v10

    .line 15
    invoke-virtual {v7, v9}, Lf/l;->b(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v10

    sget-object v11, Lf/o;->h:[B

    .line 16
    invoke-interface {v10, v11}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 17
    :cond_1
    invoke-virtual {v6}, Lf/t;->b()Lf/n;

    move-result-object v7

    if-eqz v7, :cond_2

    const-string v8, "Content-Type: "

    .line 18
    invoke-interface {p1, v8}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v8

    .line 19
    invoke-virtual {v7}, Lf/n;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v7

    sget-object v8, Lf/o;->h:[B

    .line 20
    invoke-interface {v7, v8}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 21
    :cond_2
    invoke-virtual {v6}, Lf/t;->a()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v11, v7, v9

    if-eqz v11, :cond_3

    const-string v9, "Content-Length: "

    .line 22
    invoke-interface {p1, v9}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v9

    .line 23
    invoke-interface {v9, v7, v8}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    move-result-object v9

    sget-object v10, Lf/o;->h:[B

    .line 24
    invoke-interface {v9, v10}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    goto :goto_3

    :cond_3
    if-eqz p2, :cond_4

    .line 25
    invoke-virtual {v0}, Lg/c;->a()V

    return-wide v9

    .line 26
    :cond_4
    :goto_3
    sget-object v9, Lf/o;->h:[B

    invoke-interface {p1, v9}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    if-eqz p2, :cond_5

    add-long/2addr v4, v7

    goto :goto_4

    .line 27
    :cond_5
    invoke-virtual {v6, p1}, Lf/t;->a(Lokio/BufferedSink;)V

    .line 28
    :goto_4
    sget-object v6, Lf/o;->h:[B

    invoke-interface {p1, v6}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 29
    :cond_6
    sget-object v1, Lf/o;->i:[B

    invoke-interface {p1, v1}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 30
    iget-object v1, p0, Lf/o;->a:Lg/d;

    invoke-interface {p1, v1}, Lokio/BufferedSink;->write(Lg/d;)Lokio/BufferedSink;

    .line 31
    sget-object v1, Lf/o;->i:[B

    invoke-interface {p1, v1}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 32
    sget-object v1, Lf/o;->h:[B

    invoke-interface {p1, v1}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    if-eqz p2, :cond_7

    .line 33
    invoke-virtual {v0}, Lg/c;->c()J

    move-result-wide p1

    add-long/2addr v4, p1

    .line 34
    invoke-virtual {v0}, Lg/c;->a()V

    :cond_7
    return-wide v4
.end method

.method public a(Lokio/BufferedSink;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lf/o;->a(Lokio/BufferedSink;Z)J

    return-void
.end method

.method public b()Lf/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/o;->b:Lf/n;

    return-object v0
.end method
