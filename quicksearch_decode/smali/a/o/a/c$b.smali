.class public La/o/a/c$b;
.super Ljava/lang/Object;
.source "GapWorker.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "VisibleForTests"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/o/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:[I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 20
    iget-object v0, p0, La/o/a/c$b;->c:[I

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    .line 21
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    const/4 v0, 0x0

    .line 22
    iput v0, p0, La/o/a/c$b;->d:I

    return-void
.end method

.method public a(II)V
    .locals 0

    .line 1
    iput p1, p0, La/o/a/c$b;->a:I

    .line 2
    iput p2, p0, La/o/a/c$b;->b:I

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;Z)V
    .locals 4

    const/4 v0, 0x0

    .line 3
    iput v0, p0, La/o/a/c$b;->d:I

    .line 4
    iget-object v0, p0, La/o/a/c$b;->c:[I

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    .line 5
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 6
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 7
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->k:Landroidx/recyclerview/widget/RecyclerView$g;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->w()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p2, :cond_1

    .line 9
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->d:Landroidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/AdapterHelper;->c()Z

    move-result v1

    if-nez v1, :cond_2

    .line 10
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->k:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$g;->a()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a(ILandroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->p()Z

    move-result v1

    if-nez v1, :cond_2

    .line 12
    iget v1, p0, La/o/a/c$b;->a:I

    iget v2, p0, La/o/a/c$b;->b:I

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$r;

    invoke-virtual {v0, v1, v2, v3, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a(IILandroidx/recyclerview/widget/RecyclerView$r;Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V

    .line 13
    :cond_2
    :goto_0
    iget v1, p0, La/o/a/c$b;->d:I

    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->m:I

    if-le v1, v2, :cond_3

    .line 14
    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->m:I

    .line 15
    iput-boolean p2, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->n:Z

    .line 16
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->b:Landroidx/recyclerview/widget/RecyclerView$p;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$p;->j()V

    :cond_3
    return-void
.end method

.method public a(I)Z
    .locals 4

    .line 17
    iget-object v0, p0, La/o/a/c$b;->c:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 18
    iget v0, p0, La/o/a/c$b;->d:I

    mul-int/lit8 v0, v0, 0x2

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 19
    iget-object v3, p0, La/o/a/c$b;->c:[I

    aget v3, v3, v2

    if-ne v3, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public addPosition(II)V
    .locals 5

    if-ltz p1, :cond_3

    if-ltz p2, :cond_2

    .line 1
    iget v0, p0, La/o/a/c$b;->d:I

    mul-int/lit8 v0, v0, 0x2

    .line 2
    iget-object v1, p0, La/o/a/c$b;->c:[I

    if-nez v1, :cond_0

    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 3
    iput-object v1, p0, La/o/a/c$b;->c:[I

    .line 4
    iget-object v1, p0, La/o/a/c$b;->c:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    goto :goto_0

    .line 5
    :cond_0
    array-length v2, v1

    if-lt v0, v2, :cond_1

    mul-int/lit8 v2, v0, 0x2

    .line 6
    new-array v2, v2, [I

    iput-object v2, p0, La/o/a/c$b;->c:[I

    .line 7
    iget-object v2, p0, La/o/a/c$b;->c:[I

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    :cond_1
    :goto_0
    iget-object v1, p0, La/o/a/c$b;->c:[I

    aput p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 9
    aput p2, v1, v0

    .line 10
    iget p1, p0, La/o/a/c$b;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, La/o/a/c$b;->d:I

    return-void

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Pixel distance must be non-negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Layout positions must be non-negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
