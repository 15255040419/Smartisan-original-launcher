.class public final Lg/c$c;
.super Ljava/lang/Object;
.source "Buffer.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public a:Lg/c;

.field public b:Z

.field public c:Lg/n;

.field public d:J

.field public e:[B

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lg/c$c;->d:J

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lg/c$c;->f:I

    .line 4
    iput v0, p0, Lg/c$c;->g:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lg/c$c;->d:J

    iget-object v2, p0, Lg/c$c;->a:Lg/c;

    iget-wide v2, v2, Lg/c;->b:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Lg/c$c;->a(J)I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget v2, p0, Lg/c$c;->g:I

    iget v3, p0, Lg/c$c;->f:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lg/c$c;->a(J)I

    move-result v0

    return v0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final a(J)I
    .locals 11

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-ltz v0, :cond_8

    .line 5
    iget-object v1, p0, Lg/c$c;->a:Lg/c;

    iget-wide v2, v1, Lg/c;->b:J

    cmp-long v4, p1, v2

    if-gtz v4, :cond_8

    if-eqz v0, :cond_7

    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const-wide/16 v4, 0x0

    .line 6
    iget-object v0, v1, Lg/c;->a:Lg/n;

    .line 7
    iget-object v1, p0, Lg/c$c;->c:Lg/n;

    if-eqz v1, :cond_2

    .line 8
    iget-wide v6, p0, Lg/c$c;->d:J

    iget v8, p0, Lg/c$c;->f:I

    iget v9, v1, Lg/n;->b:I

    sub-int/2addr v8, v9

    int-to-long v8, v8

    sub-long/2addr v6, v8

    cmp-long v8, v6, p1

    if-lez v8, :cond_1

    move-wide v2, v6

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_0

    :cond_1
    move-wide v4, v6

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    sub-long v6, v2, p1

    sub-long v8, p1, v4

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    .line 9
    :goto_1
    iget v0, v1, Lg/n;->c:I

    iget v2, v1, Lg/n;->b:I

    sub-int v3, v0, v2

    int-to-long v6, v3

    add-long/2addr v6, v4

    cmp-long v3, p1, v6

    if-ltz v3, :cond_4

    sub-int/2addr v0, v2

    int-to-long v2, v0

    add-long/2addr v4, v2

    .line 10
    iget-object v1, v1, Lg/n;->f:Lg/n;

    goto :goto_1

    :cond_3
    move-object v1, v0

    move-wide v4, v2

    :goto_2
    cmp-long v0, v4, p1

    if-lez v0, :cond_4

    .line 11
    iget-object v1, v1, Lg/n;->g:Lg/n;

    .line 12
    iget v0, v1, Lg/n;->c:I

    iget v2, v1, Lg/n;->b:I

    sub-int/2addr v0, v2

    int-to-long v2, v0

    sub-long/2addr v4, v2

    goto :goto_2

    .line 13
    :cond_4
    iget-boolean v0, p0, Lg/c$c;->b:Z

    if-eqz v0, :cond_6

    iget-boolean v0, v1, Lg/n;->d:Z

    if-eqz v0, :cond_6

    .line 14
    invoke-virtual {v1}, Lg/n;->d()Lg/n;

    move-result-object v0

    .line 15
    iget-object v2, p0, Lg/c$c;->a:Lg/c;

    iget-object v3, v2, Lg/c;->a:Lg/n;

    if-ne v3, v1, :cond_5

    .line 16
    iput-object v0, v2, Lg/c;->a:Lg/n;

    .line 17
    :cond_5
    invoke-virtual {v1, v0}, Lg/n;->a(Lg/n;)Lg/n;

    .line 18
    iget-object v1, v0, Lg/n;->g:Lg/n;

    invoke-virtual {v1}, Lg/n;->b()Lg/n;

    goto :goto_3

    :cond_6
    move-object v0, v1

    .line 19
    :goto_3
    iput-object v0, p0, Lg/c$c;->c:Lg/n;

    .line 20
    iput-wide p1, p0, Lg/c$c;->d:J

    .line 21
    iget-object v1, v0, Lg/n;->a:[B

    iput-object v1, p0, Lg/c$c;->e:[B

    .line 22
    iget v1, v0, Lg/n;->b:I

    sub-long/2addr p1, v4

    long-to-int p1, p1

    add-int/2addr v1, p1

    iput v1, p0, Lg/c$c;->f:I

    .line 23
    iget p1, v0, Lg/n;->c:I

    iput p1, p0, Lg/c$c;->g:I

    .line 24
    iget p1, p0, Lg/c$c;->g:I

    iget p2, p0, Lg/c$c;->f:I

    sub-int/2addr p1, p2

    return p1

    :cond_7
    :goto_4
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lg/c$c;->c:Lg/n;

    .line 26
    iput-wide p1, p0, Lg/c$c;->d:J

    .line 27
    iput-object v0, p0, Lg/c$c;->e:[B

    const/4 p1, -0x1

    .line 28
    iput p1, p0, Lg/c$c;->f:I

    .line 29
    iput p1, p0, Lg/c$c;->g:I

    return p1

    .line 30
    :cond_8
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 31
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    iget-object p2, p0, Lg/c$c;->a:Lg/c;

    iget-wide v2, p2, Lg/c;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "offset=%s > size=%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lg/c$c;->a:Lg/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lg/c$c;->a:Lg/c;

    .line 3
    iput-object v0, p0, Lg/c$c;->c:Lg/n;

    const-wide/16 v1, -0x1

    .line 4
    iput-wide v1, p0, Lg/c$c;->d:J

    .line 5
    iput-object v0, p0, Lg/c$c;->e:[B

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lg/c$c;->f:I

    .line 7
    iput v0, p0, Lg/c$c;->g:I

    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not attached to a buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
