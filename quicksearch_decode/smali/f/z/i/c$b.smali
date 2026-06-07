.class public final Lf/z/i/c$b;
.super Ljava/lang/Object;
.source "Hpack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/z/i/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lg/c;

.field public final b:Z

.field public c:I

.field public d:Z

.field public e:I

.field public f:[Lokhttp3/internal/http2/Header;

.field public g:I

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>(IZLg/c;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 3
    iput v0, p0, Lf/z/i/c$b;->c:I

    const/16 v0, 0x8

    new-array v0, v0, [Lokhttp3/internal/http2/Header;

    .line 4
    iput-object v0, p0, Lf/z/i/c$b;->f:[Lokhttp3/internal/http2/Header;

    .line 5
    iget-object v0, p0, Lf/z/i/c$b;->f:[Lokhttp3/internal/http2/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lf/z/i/c$b;->g:I

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lf/z/i/c$b;->h:I

    .line 7
    iput v0, p0, Lf/z/i/c$b;->i:I

    .line 8
    iput p1, p0, Lf/z/i/c$b;->e:I

    .line 9
    iput-boolean p2, p0, Lf/z/i/c$b;->b:Z

    .line 10
    iput-object p3, p0, Lf/z/i/c$b;->a:Lg/c;

    return-void
.end method

.method public constructor <init>(Lg/c;)V
    .locals 2

    const/16 v0, 0x1000

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v1, p1}, Lf/z/i/c$b;-><init>(IZLg/c;)V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 4

    const/4 v0, 0x0

    if-lez p1, :cond_1

    .line 1
    iget-object v1, p0, Lf/z/i/c$b;->f:[Lokhttp3/internal/http2/Header;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    iget v2, p0, Lf/z/i/c$b;->g:I

    if-lt v1, v2, :cond_0

    if-lez p1, :cond_0

    .line 2
    iget-object v2, p0, Lf/z/i/c$b;->f:[Lokhttp3/internal/http2/Header;

    aget-object v3, v2, v1

    iget v3, v3, Lokhttp3/internal/http2/Header;->c:I

    sub-int/2addr p1, v3

    .line 3
    iget v3, p0, Lf/z/i/c$b;->i:I

    aget-object v2, v2, v1

    iget v2, v2, Lokhttp3/internal/http2/Header;->c:I

    sub-int/2addr v3, v2

    iput v3, p0, Lf/z/i/c$b;->i:I

    .line 4
    iget v2, p0, Lf/z/i/c$b;->h:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lf/z/i/c$b;->h:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lf/z/i/c$b;->f:[Lokhttp3/internal/http2/Header;

    iget v1, p0, Lf/z/i/c$b;->g:I

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    iget v3, p0, Lf/z/i/c$b;->h:I

    invoke-static {p1, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget-object p1, p0, Lf/z/i/c$b;->f:[Lokhttp3/internal/http2/Header;

    iget v1, p0, Lf/z/i/c$b;->g:I

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 7
    iget p1, p0, Lf/z/i/c$b;->g:I

    add-int/2addr p1, v0

    iput p1, p0, Lf/z/i/c$b;->g:I

    :cond_1
    return v0
.end method

.method public final a()V
    .locals 2

    .line 64
    iget v0, p0, Lf/z/i/c$b;->e:I

    iget v1, p0, Lf/z/i/c$b;->i:I

    if-ge v0, v1, :cond_1

    if-nez v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lf/z/i/c$b;->b()V

    goto :goto_0

    :cond_0
    sub-int/2addr v1, v0

    .line 66
    invoke-virtual {p0, v1}, Lf/z/i/c$b;->a(I)I

    :cond_1
    :goto_0
    return-void
.end method

.method public a(III)V
    .locals 1

    if-ge p1, p2, :cond_0

    .line 52
    iget-object p2, p0, Lf/z/i/c$b;->a:Lg/c;

    or-int/2addr p1, p3

    invoke-virtual {p2, p1}, Lg/c;->writeByte(I)Lg/c;

    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lf/z/i/c$b;->a:Lg/c;

    or-int/2addr p3, p2

    invoke-virtual {v0, p3}, Lg/c;->writeByte(I)Lg/c;

    sub-int/2addr p1, p2

    :goto_0
    const/16 p2, 0x80

    if-lt p1, p2, :cond_1

    and-int/lit8 p3, p1, 0x7f

    .line 54
    iget-object v0, p0, Lf/z/i/c$b;->a:Lg/c;

    or-int/2addr p2, p3

    invoke-virtual {v0, p2}, Lg/c;->writeByte(I)Lg/c;

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 55
    :cond_1
    iget-object p2, p0, Lf/z/i/c$b;->a:Lg/c;

    invoke-virtual {p2, p1}, Lg/c;->writeByte(I)Lg/c;

    return-void
.end method

.method public a(Lg/d;)V
    .locals 3

    .line 56
    iget-boolean v0, p0, Lf/z/i/c$b;->b:Z

    const/16 v1, 0x7f

    if-eqz v0, :cond_0

    invoke-static {}, Lf/z/i/i;->b()Lf/z/i/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf/z/i/i;->a(Lg/d;)I

    move-result v0

    invoke-virtual {p1}, Lg/d;->f()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 57
    new-instance v0, Lg/c;

    invoke-direct {v0}, Lg/c;-><init>()V

    .line 58
    invoke-static {}, Lf/z/i/i;->b()Lf/z/i/i;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lf/z/i/i;->a(Lg/d;Lokio/BufferedSink;)V

    .line 59
    invoke-virtual {v0}, Lg/c;->readByteString()Lg/d;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lg/d;->f()I

    move-result v0

    const/16 v2, 0x80

    invoke-virtual {p0, v0, v1, v2}, Lf/z/i/c$b;->a(III)V

    .line 61
    iget-object v0, p0, Lf/z/i/c$b;->a:Lg/c;

    invoke-virtual {v0, p1}, Lg/c;->write(Lg/d;)Lg/c;

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p1}, Lg/d;->f()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lf/z/i/c$b;->a(III)V

    .line 63
    iget-object v0, p0, Lf/z/i/c$b;->a:Lg/c;

    invoke-virtual {v0, p1}, Lg/c;->write(Lg/d;)Lg/c;

    :goto_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .line 22
    iget-boolean v0, p0, Lf/z/i/c$b;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 23
    iget v0, p0, Lf/z/i/c$b;->c:I

    iget v2, p0, Lf/z/i/c$b;->e:I

    const/16 v3, 0x20

    const/16 v4, 0x1f

    if-ge v0, v2, :cond_0

    .line 24
    invoke-virtual {p0, v0, v4, v3}, Lf/z/i/c$b;->a(III)V

    .line 25
    :cond_0
    iput-boolean v1, p0, Lf/z/i/c$b;->d:Z

    const v0, 0x7fffffff

    .line 26
    iput v0, p0, Lf/z/i/c$b;->c:I

    .line 27
    iget v0, p0, Lf/z/i/c$b;->e:I

    invoke-virtual {p0, v0, v4, v3}, Lf/z/i/c$b;->a(III)V

    .line 28
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_b

    .line 29
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/internal/http2/Header;

    .line 30
    iget-object v4, v3, Lokhttp3/internal/http2/Header;->a:Lg/d;

    invoke-virtual {v4}, Lg/d;->g()Lg/d;

    move-result-object v4

    .line 31
    iget-object v5, v3, Lokhttp3/internal/http2/Header;->b:Lg/d;

    .line 32
    sget-object v6, Lf/z/i/c;->b:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-eqz v6, :cond_4

    .line 33
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v8

    if-le v6, v8, :cond_3

    const/16 v9, 0x8

    if-ge v6, v9, :cond_3

    .line 34
    sget-object v9, Lf/z/i/c;->a:[Lokhttp3/internal/http2/Header;

    add-int/lit8 v10, v6, -0x1

    aget-object v9, v9, v10

    iget-object v9, v9, Lokhttp3/internal/http2/Header;->b:Lg/d;

    invoke-static {v9, v5}, Lf/z/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_1

    .line 35
    :cond_2
    sget-object v9, Lf/z/i/c;->a:[Lokhttp3/internal/http2/Header;

    aget-object v9, v9, v6

    iget-object v9, v9, Lokhttp3/internal/http2/Header;->b:Lg/d;

    invoke-static {v9, v5}, Lf/z/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    add-int/lit8 v9, v6, 0x1

    move v12, v9

    move v9, v6

    move v6, v12

    goto :goto_2

    :cond_3
    move v9, v6

    move v6, v7

    goto :goto_2

    :cond_4
    move v6, v7

    :goto_1
    move v9, v6

    :goto_2
    if-ne v6, v7, :cond_7

    .line 36
    iget v10, p0, Lf/z/i/c$b;->g:I

    add-int/2addr v10, v8

    iget-object v8, p0, Lf/z/i/c$b;->f:[Lokhttp3/internal/http2/Header;

    array-length v8, v8

    :goto_3
    if-ge v10, v8, :cond_7

    .line 37
    iget-object v11, p0, Lf/z/i/c$b;->f:[Lokhttp3/internal/http2/Header;

    aget-object v11, v11, v10

    iget-object v11, v11, Lokhttp3/internal/http2/Header;->a:Lg/d;

    invoke-static {v11, v4}, Lf/z/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 38
    iget-object v11, p0, Lf/z/i/c$b;->f:[Lokhttp3/internal/http2/Header;

    aget-object v11, v11, v10

    iget-object v11, v11, Lokhttp3/internal/http2/Header;->b:Lg/d;

    invoke-static {v11, v5}, Lf/z/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 39
    iget v6, p0, Lf/z/i/c$b;->g:I

    sub-int/2addr v10, v6

    sget-object v6, Lf/z/i/c;->a:[Lokhttp3/internal/http2/Header;

    array-length v6, v6

    add-int/2addr v6, v10

    goto :goto_4

    :cond_5
    if-ne v9, v7, :cond_6

    .line 40
    iget v9, p0, Lf/z/i/c$b;->g:I

    sub-int v9, v10, v9

    sget-object v11, Lf/z/i/c;->a:[Lokhttp3/internal/http2/Header;

    array-length v11, v11

    add-int/2addr v9, v11

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    if-eq v6, v7, :cond_8

    const/16 v3, 0x7f

    const/16 v4, 0x80

    .line 41
    invoke-virtual {p0, v6, v3, v4}, Lf/z/i/c$b;->a(III)V

    goto :goto_5

    :cond_8
    const/16 v6, 0x40

    if-ne v9, v7, :cond_9

    .line 42
    iget-object v7, p0, Lf/z/i/c$b;->a:Lg/c;

    invoke-virtual {v7, v6}, Lg/c;->writeByte(I)Lg/c;

    .line 43
    invoke-virtual {p0, v4}, Lf/z/i/c$b;->a(Lg/d;)V

    .line 44
    invoke-virtual {p0, v5}, Lf/z/i/c$b;->a(Lg/d;)V

    .line 45
    invoke-virtual {p0, v3}, Lf/z/i/c$b;->a(Lokhttp3/internal/http2/Header;)V

    goto :goto_5

    .line 46
    :cond_9
    sget-object v7, Lokhttp3/internal/http2/Header;->d:Lg/d;

    invoke-virtual {v4, v7}, Lg/d;->b(Lg/d;)Z

    move-result v7

    if-eqz v7, :cond_a

    sget-object v7, Lokhttp3/internal/http2/Header;->i:Lg/d;

    invoke-virtual {v7, v4}, Lg/d;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const/16 v3, 0xf

    .line 47
    invoke-virtual {p0, v9, v3, v1}, Lf/z/i/c$b;->a(III)V

    .line 48
    invoke-virtual {p0, v5}, Lf/z/i/c$b;->a(Lg/d;)V

    goto :goto_5

    :cond_a
    const/16 v4, 0x3f

    .line 49
    invoke-virtual {p0, v9, v4, v6}, Lf/z/i/c$b;->a(III)V

    .line 50
    invoke-virtual {p0, v5}, Lf/z/i/c$b;->a(Lg/d;)V

    .line 51
    invoke-virtual {p0, v3}, Lf/z/i/c$b;->a(Lokhttp3/internal/http2/Header;)V

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public final a(Lokhttp3/internal/http2/Header;)V
    .locals 6

    .line 8
    iget v0, p1, Lokhttp3/internal/http2/Header;->c:I

    .line 9
    iget v1, p0, Lf/z/i/c$b;->e:I

    if-le v0, v1, :cond_0

    .line 10
    invoke-virtual {p0}, Lf/z/i/c$b;->b()V

    return-void

    .line 11
    :cond_0
    iget v2, p0, Lf/z/i/c$b;->i:I

    add-int/2addr v2, v0

    sub-int/2addr v2, v1

    .line 12
    invoke-virtual {p0, v2}, Lf/z/i/c$b;->a(I)I

    .line 13
    iget v1, p0, Lf/z/i/c$b;->h:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lf/z/i/c$b;->f:[Lokhttp3/internal/http2/Header;

    array-length v3, v2

    if-le v1, v3, :cond_1

    .line 14
    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lokhttp3/internal/http2/Header;

    const/4 v3, 0x0

    .line 15
    array-length v4, v2

    array-length v5, v2

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    iget-object v2, p0, Lf/z/i/c$b;->f:[Lokhttp3/internal/http2/Header;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lf/z/i/c$b;->g:I

    .line 17
    iput-object v1, p0, Lf/z/i/c$b;->f:[Lokhttp3/internal/http2/Header;

    .line 18
    :cond_1
    iget v1, p0, Lf/z/i/c$b;->g:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lf/z/i/c$b;->g:I

    .line 19
    iget-object v2, p0, Lf/z/i/c$b;->f:[Lokhttp3/internal/http2/Header;

    aput-object p1, v2, v1

    .line 20
    iget p1, p0, Lf/z/i/c$b;->h:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lf/z/i/c$b;->h:I

    .line 21
    iget p1, p0, Lf/z/i/c$b;->i:I

    add-int/2addr p1, v0

    iput p1, p0, Lf/z/i/c$b;->i:I

    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/z/i/c$b;->f:[Lokhttp3/internal/http2/Header;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lf/z/i/c$b;->f:[Lokhttp3/internal/http2/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lf/z/i/c$b;->g:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lf/z/i/c$b;->h:I

    .line 4
    iput v0, p0, Lf/z/i/c$b;->i:I

    return-void
.end method

.method public b(I)V
    .locals 1

    const/16 v0, 0x4000

    .line 5
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 6
    iget v0, p0, Lf/z/i/c$b;->e:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ge p1, v0, :cond_1

    .line 7
    iget v0, p0, Lf/z/i/c$b;->c:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lf/z/i/c$b;->c:I

    :cond_1
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lf/z/i/c$b;->d:Z

    .line 9
    iput p1, p0, Lf/z/i/c$b;->e:I

    .line 10
    invoke-virtual {p0}, Lf/z/i/c$b;->a()V

    return-void
.end method
