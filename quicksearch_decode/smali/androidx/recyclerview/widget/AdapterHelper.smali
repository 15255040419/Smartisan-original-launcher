.class public Landroidx/recyclerview/widget/AdapterHelper;
.super Ljava/lang/Object;
.source "AdapterHelper.java"

# interfaces
.implements Landroidx/recyclerview/widget/OpReorderer$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/AdapterHelper$Callback;,
        Landroidx/recyclerview/widget/AdapterHelper$a;
    }
.end annotation


# instance fields
.field public a:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Landroidx/recyclerview/widget/AdapterHelper$a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/AdapterHelper$a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/AdapterHelper$a;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Landroidx/recyclerview/widget/AdapterHelper$Callback;

.field public e:Ljava/lang/Runnable;

.field public final f:Z

.field public final g:Landroidx/recyclerview/widget/OpReorderer;

.field public h:I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/AdapterHelper$Callback;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/AdapterHelper;-><init>(Landroidx/recyclerview/widget/AdapterHelper$Callback;Z)V

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/AdapterHelper$Callback;Z)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, La/g/g/d;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, La/g/g/d;-><init>(I)V

    iput-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->a:Landroidx/core/util/Pools$Pool;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->b:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->h:I

    .line 7
    iput-object p1, p0, Landroidx/recyclerview/widget/AdapterHelper;->d:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    .line 8
    iput-boolean p2, p0, Landroidx/recyclerview/widget/AdapterHelper;->f:Z

    .line 9
    new-instance p1, Landroidx/recyclerview/widget/OpReorderer;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/OpReorderer;-><init>(Landroidx/recyclerview/widget/OpReorderer$Callback;)V

    iput-object p1, p0, Landroidx/recyclerview/widget/AdapterHelper;->g:Landroidx/recyclerview/widget/OpReorderer;

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 5

    .line 20
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_7

    .line 21
    iget-object v2, p0, Landroidx/recyclerview/widget/AdapterHelper;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/AdapterHelper$a;

    .line 22
    iget v3, v2, Landroidx/recyclerview/widget/AdapterHelper$a;->a:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 23
    :cond_0
    iget v3, v2, Landroidx/recyclerview/widget/AdapterHelper$a;->b:I

    if-ne v3, p1, :cond_1

    .line 24
    iget p1, v2, Landroidx/recyclerview/widget/AdapterHelper$a;->d:I

    goto :goto_1

    :cond_1
    if-ge v3, p1, :cond_2

    add-int/lit8 p1, p1, -0x1

    .line 25
    :cond_2
    iget v2, v2, Landroidx/recyclerview/widget/AdapterHelper$a;->d:I

    if-gt v2, p1, :cond_6

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 26
    :cond_3
    iget v3, v2, Landroidx/recyclerview/widget/AdapterHelper$a;->b:I

    if-gt v3, p1, :cond_6

    .line 27
    iget v2, v2, Landroidx/recyclerview/widget/AdapterHelper$a;->d:I

    add-int/2addr v3, v2

    if-le v3, p1, :cond_4

    const/4 p1, -0x1

    return p1

    :cond_4
    sub-int/2addr p1, v2

    goto :goto_1

    .line 28
    :cond_5
    iget v3, v2, Landroidx/recyclerview/widget/AdapterHelper$a;->b:I

    if-gt v3, p1, :cond_6

    .line 29
    iget v2, v2, Landroidx/recyclerview/widget/AdapterHelper$a;->d:I

    add-int/2addr p1, v2

    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    return p1
.end method

.method public a(II)I
    .locals 5

    .line 11
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge p2, v0, :cond_6

    .line 12
    iget-object v1, p0, Landroidx/recyclerview/widget/AdapterHelper;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/AdapterHelper$a;

    .line 13
    iget v2, v1, Landroidx/recyclerview/widget/AdapterHelper$a;->a:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    .line 14
    iget v2, v1, Landroidx/recyclerview/widget/AdapterHelper$a;->b:I

    if-ne v2, p1, :cond_0

    .line 15
    iget p1, v1, Landroidx/recyclerview/widget/AdapterHelper$a;->d:I

    goto :goto_1

    :cond_0
    if-ge v2, p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 16
    :cond_1
    iget v1, v1, Landroidx/recyclerview/widget/AdapterHelper$a;->d:I

    if-gt v1, p1, :cond_5

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 17
    :cond_2
    iget v3, v1, Landroidx/recyclerview/widget/AdapterHelper$a;->b:I

    if-gt v3, p1, :cond_5

    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    .line 18
    iget v1, v1, Landroidx/recyclerview/widget/AdapterHelper$a;->d:I

    add-int/2addr v3, v1

    if-ge p1, v3, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    sub-int/2addr p1, v1

    goto :goto_1

    :cond_4
    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 19
    iget v1, v1, Landroidx/recyclerview/widget/AdapterHelper$a;->d:I

    add-int/2addr p1, v1

    :cond_5
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    return p1
.end method

.method public a()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2
    iget-object v3, p0, Landroidx/recyclerview/widget/AdapterHelper;->d:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    iget-object v4, p0, Landroidx/recyclerview/widget/AdapterHelper;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/AdapterHelper$a;

    invoke-interface {v3, v4}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->onDispatchSecondPass(Landroidx/recyclerview/widget/AdapterHelper$a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/AdapterHelper;->a(Ljava/util/List;)V

    .line 4
    iput v1, p0, Landroidx/recyclerview/widget/AdapterHelper;->h:I

    return-void
.end method

.method public final a(Landroidx/recyclerview/widget/AdapterHelper$a;)V
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/AdapterHelper;->f(Landroidx/recyclerview/widget/AdapterHelper$a;)V

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/AdapterHelper$a;I)V
    .locals 2

    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->d:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->onDispatchFirstPass(Landroidx/recyclerview/widget/AdapterHelper$a;)V

    .line 6
    iget v0, p1, Landroidx/recyclerview/widget/AdapterHelper$a;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 7
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->d:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    iget v1, p1, Landroidx/recyclerview/widget/AdapterHelper$a;->d:I

    iget-object p1, p1, Landroidx/recyclerview/widget/AdapterHelper$a;->c:Ljava/lang/Object;

    invoke-interface {v0, p2, v1, p1}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "only remove and update ops can be dispatched in first pass"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->d:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    iget p1, p1, Landroidx/recyclerview/widget/AdapterHelper$a;->d:I

    invoke-interface {v0, p2, p1}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->offsetPositionsForRemovingInvisible(II)V

    :goto_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/AdapterHelper$a;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 31
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/AdapterHelper$a;

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final b(II)I
    .locals 7

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/16 v2, 0x8

    if-ltz v0, :cond_d

    .line 3
    iget-object v3, p0, Landroidx/recyclerview/widget/AdapterHelper;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/AdapterHelper$a;

    .line 4
    iget v4, v3, Landroidx/recyclerview/widget/AdapterHelper$a;->a:I

    const/4 v5, 0x2

    if-ne v4, v2, :cond_8

    .line 5
    iget v2, v3, Landroidx/recyclerview/widget/AdapterHelper$a;->b:I

    iget v4, v3, Landroidx/recyclerview/widget/AdapterHelper$a;->d:I

    if-ge v2, v4, :cond_0

    goto :goto_1

    :cond_0
    move v6, v4

    move v4, v2

    move v2, v6

    :goto_1
    if-lt p1, v2, :cond_6

    if-gt p1, v4, :cond_6

    .line 6
    iget v4, v3, Landroidx/recyclerview/widget/AdapterHelper$a;->b:I

    if-ne v2, v4, :cond_3

    if-ne p2, v1, :cond_1

    .line 7
    iget v2, v3, Landroidx/recyclerview/widget/AdapterHelper$a;->d:I

    add-int/2addr v2, v1

    iput v2, v3, Landroidx/recyclerview/widget/AdapterHelper$a;->d:I

    goto :goto_2

    :cond_1
    if-ne p2, v5, :cond_2

    .line 8
    iget v2, v3, Landroidx/recyclerview/widget/AdapterHelper$a;->d:I

    sub-int/2addr v2, v1

    iput v2, v3, Landroidx/recyclerview/widget/AdapterHelper$a;->d:I

    :cond_2
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_3
    if-ne p2, v1, :cond_4

    add-int/lit8 v4, v4, 0x1

    .line 9
    iput v4, v3, Landroidx/recyclerview/widget/AdapterHelper$a;->b:I

    goto :goto_3

    :cond_4
    if-ne p2, v5, :cond_5

    add-int/lit8 v4, v4, -0x1

    .line 10
    iput v4, v3, Landroidx/recyclerview/widget/AdapterHelper$a;->b:I

    :cond_5
    :goto_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    .line 11
    :cond_6
    iget v2, v3, Landroidx/recyclerview/widget/AdapterHelper$a;->b:I

    if-ge p1, v2, :cond_c

    if-ne p2, v1, :cond_7

    add-int/lit8 v2, v2, 0x1

    .line 12
    iput v2, v3, Landroidx/recyclerview/widget/AdapterHelper$a;->b:I

    .line 13
    iget v2, v3, Landroidx/recyclerview/widget/AdapterHelper$a;->d:I

    add-int/2addr v2, v1

    iput v2, v3, Landroidx/recyclerview/widget/AdapterHelper$a;->d:I

    goto :goto_4

    :cond_7
    if-ne p2, v5, :cond_c

    add-int/lit8 v2, v2, -0x1

    .line 14
    iput v2, v3, Landroidx/recyclerview/widget/AdapterHelper$a;->b:I

    .line 15
    iget v2, v3, Landroidx/recyclerview/widget/AdapterHelper$a;->d:I

    sub-int/2addr v2, v1

    iput v2, v3, Landroidx/recyclerview/widget/AdapterHelper$a;->d:I

    goto :goto_4

    .line 16
    :cond_8
    iget v2, v3, Landroidx/recyclerview/widget/AdapterHelper$a;->b:I

    if-gt v2, p1, :cond_a

    if-ne v4, v1, :cond_9

    .line 17
    iget v2, v3, Landroidx/recyclerview/widget/AdapterHelper$a;->d:I

    sub-int/2addr p1, v2

    goto :goto_4

    :cond_9
    if-ne v4, v5, :cond_c

    .line 18
    iget v2, v3, Landroidx/recyclerview/widget/AdapterHelper$a;->d:I

    add-int/2addr p1, v2

    goto :goto_4

    :cond_a
    if-ne p2, v1, :cond_b

    add-int/lit8 v2, v2, 0x1

    .line 19
    iput v2, v3, Landroidx/recyclerview/widget/AdapterHelper$a;->b:I

    goto :goto_4

    :cond_b
    if-ne p2, v5, :cond_c

    add-int/lit8 v2, v2, -0x1

    .line 20
    iput v2, v3, Landroidx/recyclerview/widget/AdapterHelper$a;->b:I

    :cond_c
    :goto_4
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 21
    :cond_d
    iget-object p2, p0, Landroidx/recyclerview/widget/AdapterHelper;->c:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v1

    :goto_5
    if-ltz p2, :cond_11

    .line 22
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/AdapterHelper$a;

    .line 23
    iget v1, v0, Landroidx/recyclerview/widget/AdapterHelper$a;->a:I

    if-ne v1, v2, :cond_f

    .line 24
    iget v1, v0, Landroidx/recyclerview/widget/AdapterHelper$a;->d:I

    iget v3, v0, Landroidx/recyclerview/widget/AdapterHelper$a;->b:I

    if-eq v1, v3, :cond_e

    if-gez v1, :cond_10

    .line 25
    :cond_e
    iget-object v1, p0, Landroidx/recyclerview/widget/AdapterHelper;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 26
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$a;)V

    goto :goto_6

    .line 27
    :cond_f
    iget v1, v0, Landroidx/recyclerview/widget/AdapterHelper$a;->d:I

    if-gtz v1, :cond_10

    .line 28
    iget-object v1, p0, Landroidx/recyclerview/widget/AdapterHelper;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 29
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$a;)V

    :cond_10
    :goto_6
    add-int/lit8 p2, p2, -0x1

    goto :goto_5

    :cond_11
    return p1
.end method

.method public b()V
    .locals 7

    .line 36
    invoke-virtual {p0}, Landroidx/recyclerview/widget/AdapterHelper;->a()V

    .line 37
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    .line 38
    iget-object v3, p0, Landroidx/recyclerview/widget/AdapterHelper;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/AdapterHelper$a;

    .line 39
    iget v4, v3, Landroidx/recyclerview/widget/AdapterHelper$a;->a:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    goto :goto_1

    .line 40
    :cond_0
    iget-object v4, p0, Landroidx/recyclerview/widget/AdapterHelper;->d:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    invoke-interface {v4, v3}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->onDispatchSecondPass(Landroidx/recyclerview/widget/AdapterHelper$a;)V

    .line 41
    iget-object v4, p0, Landroidx/recyclerview/widget/AdapterHelper;->d:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    iget v5, v3, Landroidx/recyclerview/widget/AdapterHelper$a;->b:I

    iget v3, v3, Landroidx/recyclerview/widget/AdapterHelper$a;->d:I

    invoke-interface {v4, v5, v3}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->offsetPositionsForMove(II)V

    goto :goto_1

    .line 42
    :cond_1
    iget-object v4, p0, Landroidx/recyclerview/widget/AdapterHelper;->d:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    invoke-interface {v4, v3}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->onDispatchSecondPass(Landroidx/recyclerview/widget/AdapterHelper$a;)V

    .line 43
    iget-object v4, p0, Landroidx/recyclerview/widget/AdapterHelper;->d:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    iget v5, v3, Landroidx/recyclerview/widget/AdapterHelper$a;->b:I

    iget v6, v3, Landroidx/recyclerview/widget/AdapterHelper$a;->d:I

    iget-object v3, v3, Landroidx/recyclerview/widget/AdapterHelper$a;->c:Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v3}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    goto :goto_1

    .line 44
    :cond_2
    iget-object v4, p0, Landroidx/recyclerview/widget/AdapterHelper;->d:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    invoke-interface {v4, v3}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->onDispatchSecondPass(Landroidx/recyclerview/widget/AdapterHelper$a;)V

    .line 45
    iget-object v4, p0, Landroidx/recyclerview/widget/AdapterHelper;->d:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    iget v5, v3, Landroidx/recyclerview/widget/AdapterHelper$a;->b:I

    iget v3, v3, Landroidx/recyclerview/widget/AdapterHelper$a;->d:I

    invoke-interface {v4, v5, v3}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->offsetPositionsForRemovingInvisible(II)V

    goto :goto_1

    .line 46
    :cond_3
    iget-object v4, p0, Landroidx/recyclerview/widget/AdapterHelper;->d:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    invoke-interface {v4, v3}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->onDispatchSecondPass(Landroidx/recyclerview/widget/AdapterHelper$a;)V

    .line 47
    iget-object v4, p0, Landroidx/recyclerview/widget/AdapterHelper;->d:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    iget v5, v3, Landroidx/recyclerview/widget/AdapterHelper$a;->b:I

    iget v3, v3, Landroidx/recyclerview/widget/AdapterHelper$a;->d:I

    invoke-interface {v4, v5, v3}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->offsetPositionsForAdd(II)V

    .line 48
    :goto_1
    iget-object v3, p0, Landroidx/recyclerview/widget/AdapterHelper;->e:Ljava/lang/Runnable;

    if-eqz v3, :cond_4

    .line 49
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 50
    :cond_5
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/AdapterHelper;->a(Ljava/util/List;)V

    .line 51
    iput v1, p0, Landroidx/recyclerview/widget/AdapterHelper;->h:I

    return-void
.end method

.method public final b(Landroidx/recyclerview/widget/AdapterHelper$a;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/AdapterHelper;->f(Landroidx/recyclerview/widget/AdapterHelper$a;)V

    return-void
.end method

.method public final b(I)Z
    .locals 7

    .line 30
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 31
    iget-object v3, p0, Landroidx/recyclerview/widget/AdapterHelper;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/AdapterHelper$a;

    .line 32
    iget v4, v3, Landroidx/recyclerview/widget/AdapterHelper$a;->a:I

    const/16 v5, 0x8

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    .line 33
    iget v3, v3, Landroidx/recyclerview/widget/AdapterHelper$a;->d:I

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v3, v4}, Landroidx/recyclerview/widget/AdapterHelper;->a(II)I

    move-result v3

    if-ne v3, p1, :cond_2

    return v6

    :cond_0
    if-ne v4, v6, :cond_2

    .line 34
    iget v4, v3, Landroidx/recyclerview/widget/AdapterHelper$a;->b:I

    iget v3, v3, Landroidx/recyclerview/widget/AdapterHelper$a;->d:I

    add-int/2addr v3, v4

    :goto_1
    if-ge v4, v3, :cond_2

    add-int/lit8 v5, v2, 0x1

    .line 35
    invoke-virtual {p0, v4, v5}, Landroidx/recyclerview/widget/AdapterHelper;->a(II)I

    move-result v5

    if-ne v5, p1, :cond_1

    return v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public c(I)I
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/AdapterHelper;->a(II)I

    move-result p1

    return p1
.end method

.method public final c(Landroidx/recyclerview/widget/AdapterHelper$a;)V
    .locals 10

    .line 1
    iget v0, p1, Landroidx/recyclerview/widget/AdapterHelper$a;->b:I

    .line 2
    iget v1, p1, Landroidx/recyclerview/widget/AdapterHelper$a;->d:I

    add-int/2addr v1, v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    move v4, v2

    move v5, v3

    move v3, v1

    move v1, v0

    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x2

    if-ge v1, v3, :cond_5

    .line 3
    iget-object v8, p0, Landroidx/recyclerview/widget/AdapterHelper;->d:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    invoke-interface {v8, v1}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->findViewHolder(I)Landroidx/recyclerview/widget/RecyclerView$u;

    move-result-object v8

    const/4 v9, 0x1

    if-nez v8, :cond_2

    .line 4
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/AdapterHelper;->b(I)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_2

    :cond_0
    if-ne v5, v9, :cond_1

    .line 5
    invoke-virtual {p0, v7, v0, v4, v6}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$a;

    move-result-object v5

    .line 6
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/AdapterHelper;->f(Landroidx/recyclerview/widget/AdapterHelper$a;)V

    move v5, v9

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    move v6, v2

    goto :goto_4

    :cond_2
    :goto_2
    if-nez v5, :cond_3

    .line 7
    invoke-virtual {p0, v7, v0, v4, v6}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$a;

    move-result-object v5

    .line 8
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/AdapterHelper;->e(Landroidx/recyclerview/widget/AdapterHelper$a;)V

    move v5, v9

    goto :goto_3

    :cond_3
    move v5, v2

    :goto_3
    move v6, v9

    :goto_4
    if-eqz v5, :cond_4

    sub-int/2addr v1, v4

    sub-int/2addr v3, v4

    move v4, v9

    goto :goto_5

    :cond_4
    add-int/lit8 v4, v4, 0x1

    :goto_5
    add-int/2addr v1, v9

    move v5, v6

    goto :goto_0

    .line 9
    :cond_5
    iget v1, p1, Landroidx/recyclerview/widget/AdapterHelper$a;->d:I

    if-eq v4, v1, :cond_6

    .line 10
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$a;)V

    .line 11
    invoke-virtual {p0, v7, v0, v4, v6}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$a;

    move-result-object p1

    :cond_6
    if-nez v5, :cond_7

    .line 12
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/AdapterHelper;->e(Landroidx/recyclerview/widget/AdapterHelper$a;)V

    goto :goto_6

    .line 13
    :cond_7
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/AdapterHelper;->f(Landroidx/recyclerview/widget/AdapterHelper$a;)V

    :goto_6
    return-void
.end method

.method public c()Z
    .locals 1

    .line 14
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final d(Landroidx/recyclerview/widget/AdapterHelper$a;)V
    .locals 9

    .line 1
    iget v0, p1, Landroidx/recyclerview/widget/AdapterHelper$a;->b:I

    .line 2
    iget v1, p1, Landroidx/recyclerview/widget/AdapterHelper$a;->d:I

    add-int/2addr v1, v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    move v4, v0

    move v5, v3

    move v3, v2

    :goto_0
    const/4 v6, 0x4

    if-ge v0, v1, :cond_4

    .line 3
    iget-object v7, p0, Landroidx/recyclerview/widget/AdapterHelper;->d:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    invoke-interface {v7, v0}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->findViewHolder(I)Landroidx/recyclerview/widget/RecyclerView$u;

    move-result-object v7

    const/4 v8, 0x1

    if-nez v7, :cond_2

    .line 4
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/AdapterHelper;->b(I)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    if-ne v5, v8, :cond_1

    .line 5
    iget-object v5, p1, Landroidx/recyclerview/widget/AdapterHelper$a;->c:Ljava/lang/Object;

    invoke-virtual {p0, v6, v4, v3, v5}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$a;

    move-result-object v3

    .line 6
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/AdapterHelper;->f(Landroidx/recyclerview/widget/AdapterHelper$a;)V

    move v4, v0

    move v3, v2

    :cond_1
    move v5, v2

    goto :goto_2

    :cond_2
    :goto_1
    if-nez v5, :cond_3

    .line 7
    iget-object v5, p1, Landroidx/recyclerview/widget/AdapterHelper$a;->c:Ljava/lang/Object;

    invoke-virtual {p0, v6, v4, v3, v5}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$a;

    move-result-object v3

    .line 8
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/AdapterHelper;->e(Landroidx/recyclerview/widget/AdapterHelper$a;)V

    move v4, v0

    move v3, v2

    :cond_3
    move v5, v8

    :goto_2
    add-int/2addr v3, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_4
    iget v0, p1, Landroidx/recyclerview/widget/AdapterHelper$a;->d:I

    if-eq v3, v0, :cond_5

    .line 10
    iget-object v0, p1, Landroidx/recyclerview/widget/AdapterHelper$a;->c:Ljava/lang/Object;

    .line 11
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$a;)V

    .line 12
    invoke-virtual {p0, v6, v4, v3, v0}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$a;

    move-result-object p1

    :cond_5
    if-nez v5, :cond_6

    .line 13
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/AdapterHelper;->e(Landroidx/recyclerview/widget/AdapterHelper$a;)V

    goto :goto_3

    .line 14
    :cond_6
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/AdapterHelper;->f(Landroidx/recyclerview/widget/AdapterHelper$a;)V

    :goto_3
    return-void
.end method

.method public d()Z
    .locals 1

    .line 16
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(I)Z
    .locals 1

    .line 15
    iget v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->h:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->g:Landroidx/recyclerview/widget/OpReorderer;

    iget-object v1, p0, Landroidx/recyclerview/widget/AdapterHelper;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/OpReorderer;->b(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    .line 3
    iget-object v2, p0, Landroidx/recyclerview/widget/AdapterHelper;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/AdapterHelper$a;

    .line 4
    iget v3, v2, Landroidx/recyclerview/widget/AdapterHelper$a;->a:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/AdapterHelper;->b(Landroidx/recyclerview/widget/AdapterHelper$a;)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/AdapterHelper;->d(Landroidx/recyclerview/widget/AdapterHelper$a;)V

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/AdapterHelper;->c(Landroidx/recyclerview/widget/AdapterHelper$a;)V

    goto :goto_1

    .line 8
    :cond_3
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/AdapterHelper;->a(Landroidx/recyclerview/widget/AdapterHelper$a;)V

    .line 9
    :goto_1
    iget-object v2, p0, Landroidx/recyclerview/widget/AdapterHelper;->e:Ljava/lang/Runnable;

    if-eqz v2, :cond_4

    .line 10
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_5
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final e(Landroidx/recyclerview/widget/AdapterHelper$a;)V
    .locals 12

    .line 12
    iget v0, p1, Landroidx/recyclerview/widget/AdapterHelper$a;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/16 v2, 0x8

    if-eq v0, v2, :cond_9

    .line 13
    iget v2, p1, Landroidx/recyclerview/widget/AdapterHelper$a;->b:I

    invoke-virtual {p0, v2, v0}, Landroidx/recyclerview/widget/AdapterHelper;->b(II)I

    move-result v0

    .line 14
    iget v2, p1, Landroidx/recyclerview/widget/AdapterHelper$a;->b:I

    .line 15
    iget v3, p1, Landroidx/recyclerview/widget/AdapterHelper$a;->a:I

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-eq v3, v4, :cond_1

    if-ne v3, v5, :cond_0

    move v3, v1

    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "op should be remove or update."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v3, v6

    :goto_0
    move v7, v0

    move v0, v1

    move v8, v2

    move v2, v0

    .line 17
    :goto_1
    iget v9, p1, Landroidx/recyclerview/widget/AdapterHelper$a;->d:I

    if-ge v0, v9, :cond_7

    .line 18
    iget v9, p1, Landroidx/recyclerview/widget/AdapterHelper$a;->b:I

    mul-int v10, v3, v0

    add-int/2addr v9, v10

    .line 19
    iget v10, p1, Landroidx/recyclerview/widget/AdapterHelper$a;->a:I

    invoke-virtual {p0, v9, v10}, Landroidx/recyclerview/widget/AdapterHelper;->b(II)I

    move-result v9

    .line 20
    iget v10, p1, Landroidx/recyclerview/widget/AdapterHelper$a;->a:I

    if-eq v10, v4, :cond_4

    if-eq v10, v5, :cond_3

    :cond_2
    move v10, v6

    goto :goto_3

    :cond_3
    add-int/lit8 v10, v7, 0x1

    if-ne v9, v10, :cond_2

    :goto_2
    move v10, v1

    goto :goto_3

    :cond_4
    if-ne v9, v7, :cond_2

    goto :goto_2

    :goto_3
    if-eqz v10, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 21
    :cond_5
    iget v10, p1, Landroidx/recyclerview/widget/AdapterHelper$a;->a:I

    iget-object v11, p1, Landroidx/recyclerview/widget/AdapterHelper$a;->c:Ljava/lang/Object;

    invoke-virtual {p0, v10, v7, v2, v11}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$a;

    move-result-object v7

    .line 22
    invoke-virtual {p0, v7, v8}, Landroidx/recyclerview/widget/AdapterHelper;->a(Landroidx/recyclerview/widget/AdapterHelper$a;I)V

    .line 23
    invoke-virtual {p0, v7}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$a;)V

    .line 24
    iget v7, p1, Landroidx/recyclerview/widget/AdapterHelper$a;->a:I

    if-ne v7, v5, :cond_6

    add-int/2addr v8, v2

    :cond_6
    move v2, v1

    move v7, v9

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 25
    :cond_7
    iget-object v0, p1, Landroidx/recyclerview/widget/AdapterHelper$a;->c:Ljava/lang/Object;

    .line 26
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$a;)V

    if-lez v2, :cond_8

    .line 27
    iget p1, p1, Landroidx/recyclerview/widget/AdapterHelper$a;->a:I

    invoke-virtual {p0, p1, v7, v2, v0}, Landroidx/recyclerview/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$a;

    move-result-object p1

    .line 28
    invoke-virtual {p0, p1, v8}, Landroidx/recyclerview/widget/AdapterHelper;->a(Landroidx/recyclerview/widget/AdapterHelper$a;I)V

    .line 29
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/AdapterHelper;->recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$a;)V

    :cond_8
    return-void

    .line 30
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "should not dispatch add or move for pre layout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/AdapterHelper;->a(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/AdapterHelper;->a(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->h:I

    return-void
.end method

.method public final f(Landroidx/recyclerview/widget/AdapterHelper$a;)V
    .locals 3

    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget v0, p1, Landroidx/recyclerview/widget/AdapterHelper$a;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->d:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    iget v1, p1, Landroidx/recyclerview/widget/AdapterHelper$a;->b:I

    iget p1, p1, Landroidx/recyclerview/widget/AdapterHelper$a;->d:I

    invoke-interface {v0, v1, p1}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->offsetPositionsForMove(II)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown update op type for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->d:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    iget v1, p1, Landroidx/recyclerview/widget/AdapterHelper$a;->b:I

    iget v2, p1, Landroidx/recyclerview/widget/AdapterHelper$a;->d:I

    iget-object p1, p1, Landroidx/recyclerview/widget/AdapterHelper$a;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, p1}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->d:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    iget v1, p1, Landroidx/recyclerview/widget/AdapterHelper$a;->b:I

    iget p1, p1, Landroidx/recyclerview/widget/AdapterHelper$a;->d:I

    invoke-interface {v0, v1, p1}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->offsetPositionsForRemovingLaidOutOrNewView(II)V

    goto :goto_0

    .line 10
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->d:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    iget v1, p1, Landroidx/recyclerview/widget/AdapterHelper$a;->b:I

    iget p1, p1, Landroidx/recyclerview/widget/AdapterHelper$a;->d:I

    invoke-interface {v0, v1, p1}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->offsetPositionsForAdd(II)V

    :goto_0
    return-void
.end method

.method public obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->a:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/AdapterHelper$a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/recyclerview/widget/AdapterHelper$a;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/AdapterHelper$a;-><init>(IIILjava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iput p1, v0, Landroidx/recyclerview/widget/AdapterHelper$a;->a:I

    .line 4
    iput p2, v0, Landroidx/recyclerview/widget/AdapterHelper$a;->b:I

    .line 5
    iput p3, v0, Landroidx/recyclerview/widget/AdapterHelper$a;->d:I

    .line 6
    iput-object p4, v0, Landroidx/recyclerview/widget/AdapterHelper$a;->c:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public recycleUpdateOp(Landroidx/recyclerview/widget/AdapterHelper$a;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Landroidx/recyclerview/widget/AdapterHelper$a;->c:Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->a:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
