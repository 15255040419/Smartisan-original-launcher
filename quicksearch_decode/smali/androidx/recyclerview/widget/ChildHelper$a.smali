.class public Landroidx/recyclerview/widget/ChildHelper$a;
.super Ljava/lang/Object;
.source "ChildHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/ChildHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:Landroidx/recyclerview/widget/ChildHelper$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Landroidx/recyclerview/widget/ChildHelper$a;->a:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/ChildHelper$a;->b:Landroidx/recyclerview/widget/ChildHelper$a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/recyclerview/widget/ChildHelper$a;

    invoke-direct {v0}, Landroidx/recyclerview/widget/ChildHelper$a;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/ChildHelper$a;->b:Landroidx/recyclerview/widget/ChildHelper$a;

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 4

    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/ChildHelper$a;->b:Landroidx/recyclerview/widget/ChildHelper$a;

    if-eqz v1, :cond_1

    sub-int/2addr p1, v0

    .line 4
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/ChildHelper$a;->a(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-wide v0, p0, Landroidx/recyclerview/widget/ChildHelper$a;->a:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    not-long v2, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/recyclerview/widget/ChildHelper$a;->a:J

    :cond_1
    :goto_0
    return-void
.end method

.method public a(IZ)V
    .locals 9

    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ChildHelper$a;->a()V

    .line 7
    iget-object v1, p0, Landroidx/recyclerview/widget/ChildHelper$a;->b:Landroidx/recyclerview/widget/ChildHelper$a;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1, p2}, Landroidx/recyclerview/widget/ChildHelper$a;->a(IZ)V

    goto :goto_2

    .line 8
    :cond_0
    iget-wide v0, p0, Landroidx/recyclerview/widget/ChildHelper$a;->a:J

    const-wide/high16 v2, -0x8000000000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    const-wide/16 v3, 0x1

    shl-long v5, v3, p1

    sub-long/2addr v5, v3

    .line 9
    iget-wide v3, p0, Landroidx/recyclerview/widget/ChildHelper$a;->a:J

    and-long v7, v3, v5

    not-long v5, v5

    and-long/2addr v3, v5

    shl-long/2addr v3, v1

    or-long/2addr v3, v7

    .line 10
    iput-wide v3, p0, Landroidx/recyclerview/widget/ChildHelper$a;->a:J

    if-eqz p2, :cond_2

    .line 11
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ChildHelper$a;->e(I)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ChildHelper$a;->a(I)V

    :goto_1
    if-nez v0, :cond_3

    .line 13
    iget-object p1, p0, Landroidx/recyclerview/widget/ChildHelper$a;->b:Landroidx/recyclerview/widget/ChildHelper$a;

    if-eqz p1, :cond_4

    .line 14
    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ChildHelper$a;->a()V

    .line 15
    iget-object p1, p0, Landroidx/recyclerview/widget/ChildHelper$a;->b:Landroidx/recyclerview/widget/ChildHelper$a;

    invoke-virtual {p1, v2, v0}, Landroidx/recyclerview/widget/ChildHelper$a;->a(IZ)V

    :cond_4
    :goto_2
    return-void
.end method

.method public b(I)I
    .locals 6

    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/ChildHelper$a;->b:Landroidx/recyclerview/widget/ChildHelper$a;

    const/16 v1, 0x40

    const-wide/16 v2, 0x1

    if-nez v0, :cond_1

    if-lt p1, v1, :cond_0

    .line 5
    iget-wide v0, p0, Landroidx/recyclerview/widget/ChildHelper$a;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result p1

    return p1

    .line 6
    :cond_0
    iget-wide v0, p0, Landroidx/recyclerview/widget/ChildHelper$a;->a:J

    shl-long v4, v2, p1

    sub-long/2addr v4, v2

    and-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result p1

    return p1

    :cond_1
    if-ge p1, v1, :cond_2

    .line 7
    iget-wide v0, p0, Landroidx/recyclerview/widget/ChildHelper$a;->a:J

    shl-long v4, v2, p1

    sub-long/2addr v4, v2

    and-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result p1

    return p1

    :cond_2
    sub-int/2addr p1, v1

    .line 8
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ChildHelper$a;->b(I)I

    move-result p1

    iget-wide v0, p0, Landroidx/recyclerview/widget/ChildHelper$a;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method public b()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Landroidx/recyclerview/widget/ChildHelper$a;->a:J

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/ChildHelper$a;->b:Landroidx/recyclerview/widget/ChildHelper$a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper$a;->b()V

    :cond_0
    return-void
.end method

.method public c(I)Z
    .locals 4

    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ChildHelper$a;->a()V

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/ChildHelper$a;->b:Landroidx/recyclerview/widget/ChildHelper$a;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/ChildHelper$a;->c(I)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-wide v0, p0, Landroidx/recyclerview/widget/ChildHelper$a;->a:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d(I)Z
    .locals 10

    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ChildHelper$a;->a()V

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/ChildHelper$a;->b:Landroidx/recyclerview/widget/ChildHelper$a;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/ChildHelper$a;->d(I)Z

    move-result p1

    return p1

    :cond_0
    const-wide/16 v0, 0x1

    shl-long v2, v0, p1

    .line 3
    iget-wide v4, p0, Landroidx/recyclerview/widget/ChildHelper$a;->a:J

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    move p1, v4

    goto :goto_0

    :cond_1
    move p1, v5

    .line 4
    :goto_0
    iget-wide v6, p0, Landroidx/recyclerview/widget/ChildHelper$a;->a:J

    not-long v8, v2

    and-long/2addr v6, v8

    iput-wide v6, p0, Landroidx/recyclerview/widget/ChildHelper$a;->a:J

    sub-long/2addr v2, v0

    .line 5
    iget-wide v0, p0, Landroidx/recyclerview/widget/ChildHelper$a;->a:J

    and-long v6, v0, v2

    not-long v2, v2

    and-long/2addr v0, v2

    .line 6
    invoke-static {v0, v1, v4}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    or-long/2addr v0, v6

    .line 7
    iput-wide v0, p0, Landroidx/recyclerview/widget/ChildHelper$a;->a:J

    .line 8
    iget-object v0, p0, Landroidx/recyclerview/widget/ChildHelper$a;->b:Landroidx/recyclerview/widget/ChildHelper$a;

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/ChildHelper$a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x3f

    .line 10
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/ChildHelper$a;->e(I)V

    .line 11
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/ChildHelper$a;->b:Landroidx/recyclerview/widget/ChildHelper$a;

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/ChildHelper$a;->d(I)Z

    :cond_3
    return p1
.end method

.method public e(I)V
    .locals 4

    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ChildHelper$a;->a()V

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/ChildHelper$a;->b:Landroidx/recyclerview/widget/ChildHelper$a;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/ChildHelper$a;->e(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-wide v0, p0, Landroidx/recyclerview/widget/ChildHelper$a;->a:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/recyclerview/widget/ChildHelper$a;->a:J

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/ChildHelper$a;->b:Landroidx/recyclerview/widget/ChildHelper$a;

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroidx/recyclerview/widget/ChildHelper$a;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/recyclerview/widget/ChildHelper$a;->b:Landroidx/recyclerview/widget/ChildHelper$a;

    .line 2
    invoke-virtual {v1}, Landroidx/recyclerview/widget/ChildHelper$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "xx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/recyclerview/widget/ChildHelper$a;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
