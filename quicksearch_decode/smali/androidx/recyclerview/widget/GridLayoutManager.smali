.class public Landroidx/recyclerview/widget/GridLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;,
        Landroidx/recyclerview/widget/GridLayoutManager$a;,
        Landroidx/recyclerview/widget/GridLayoutManager$b;
    }
.end annotation


# instance fields
.field public I:Z

.field public J:I

.field public K:[I

.field public L:[Landroid/view/View;

.field public final M:Landroid/util/SparseIntArray;

.field public final N:Landroid/util/SparseIntArray;

.field public O:Landroidx/recyclerview/widget/GridLayoutManager$b;

.field public final P:Landroid/graphics/Rect;

.field public Q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:I

    .line 4
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->M:Landroid/util/SparseIntArray;

    .line 5
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->N:Landroid/util/SparseIntArray;

    .line 6
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$a;

    invoke-direct {v0}, Landroidx/recyclerview/widget/GridLayoutManager$a;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$b;

    .line 7
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->P:Landroid/graphics/Rect;

    .line 8
    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$LayoutManager$c;

    move-result-object p1

    .line 9
    iget p1, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$c;->b:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->l(I)V

    return-void
.end method

.method public static a([III)[I
    .locals 5

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 40
    array-length v1, p0

    add-int/lit8 v2, p1, 0x1

    if-ne v1, v2, :cond_0

    array-length v1, p0

    sub-int/2addr v1, v0

    aget v1, p0, v1

    if-eq v1, p2, :cond_1

    :cond_0
    add-int/lit8 p0, p1, 0x1

    .line 41
    new-array p0, p0, [I

    :cond_1
    const/4 v1, 0x0

    .line 42
    aput v1, p0, v1

    .line 43
    div-int v2, p2, p1

    .line 44
    rem-int/2addr p2, p1

    move v3, v1

    :goto_0
    if-gt v0, p1, :cond_3

    add-int/2addr v1, p2

    if-lez v1, :cond_2

    sub-int v4, p1, v1

    if-ge v4, p2, :cond_2

    add-int/lit8 v4, v2, 0x1

    sub-int/2addr v1, p1

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    add-int/2addr v3, v4

    .line 45
    aput v3, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method


# virtual methods
.method public D()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->D:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final W()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->e()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->c(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 3
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->a()I

    move-result v3

    .line 4
    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->M:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->f()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 5
    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->N:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->e()I

    move-result v2

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final X()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->M:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->N:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final Y()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->L:[Landroid/view/View;

    if-eqz v0, :cond_0

    array-length v0, v0

    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:I

    if-eq v0, v1, :cond_1

    .line 2
    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->L:[Landroid/view/View;

    :cond_1
    return-void
.end method

.method public final Z()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->Q()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->r()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->p()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->o()I

    move-result v1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->h()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->n()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->q()I

    move-result v1

    :goto_0
    sub-int/2addr v0, v1

    .line 4
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->k(I)V

    return-void
.end method

.method public a(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;)I
    .locals 0

    .line 51
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->Z()V

    .line 52
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->Y()V

    .line 53
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;)I

    move-result p1

    return p1
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;)I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:I

    return p1

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$r;->a()I

    move-result v0

    if-ge v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$r;->a()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;I)I

    move-result p1

    add-int/2addr p1, v1

    return p1
.end method

.method public final a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;I)I
    .locals 0

    .line 63
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$r;->d()Z

    move-result p2

    if-nez p2, :cond_0

    .line 64
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$b;

    iget p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:I

    invoke-virtual {p1, p3, p2}, Landroidx/recyclerview/widget/GridLayoutManager$b;->a(II)I

    move-result p1

    return p1

    .line 65
    :cond_0
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$p;->a(I)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot find span size for pre layout position. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GridLayoutManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 67
    :cond_1
    iget-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$b;

    iget p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:I

    invoke-virtual {p2, p1, p3}, Landroidx/recyclerview/widget/GridLayoutManager$b;->a(II)I

    move-result p1

    return p1
.end method

.method public a(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;)Landroid/view/View;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    .line 152
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->c(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    .line 153
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 154
    iget v6, v5, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->e:I

    .line 155
    iget v5, v5, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->f:I

    add-int/2addr v5, v6

    .line 156
    invoke-super/range {p0 .. p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_1

    return-object v4

    :cond_1
    move/from16 v7, p2

    .line 157
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->i(I)I

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_2

    move v7, v9

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    .line 158
    :goto_0
    iget-boolean v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:Z

    if-eq v7, v10, :cond_3

    move v7, v9

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    const/4 v10, -0x1

    if-eqz v7, :cond_4

    .line 159
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->e()I

    move-result v7

    sub-int/2addr v7, v9

    move v11, v10

    move v12, v11

    goto :goto_2

    .line 160
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->e()I

    move-result v7

    move v11, v7

    move v12, v9

    const/4 v7, 0x0

    .line 161
    :goto_2
    iget v13, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I

    if-ne v13, v9, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->S()Z

    move-result v13

    if-eqz v13, :cond_5

    move v13, v9

    goto :goto_3

    :cond_5
    const/4 v13, 0x0

    .line 162
    :goto_3
    invoke-virtual {v0, v1, v2, v7}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;I)I

    move-result v14

    move v8, v10

    move/from16 v17, v8

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v10, v4

    :goto_4
    if-eq v7, v11, :cond_17

    .line 163
    invoke-virtual {v0, v1, v2, v7}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;I)I

    move-result v9

    .line 164
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->c(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, v3, :cond_6

    goto/16 :goto_d

    .line 165
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v18

    if-eqz v18, :cond_8

    if-eq v9, v14, :cond_8

    if-eqz v4, :cond_7

    goto/16 :goto_d

    :cond_7
    move-object/from16 v18, v3

    move/from16 v19, v8

    move-object/from16 v21, v10

    move/from16 v20, v11

    move/from16 v8, v16

    move/from16 v10, v17

    goto/16 :goto_b

    .line 166
    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 167
    iget v2, v9, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->e:I

    move-object/from16 v18, v3

    .line 168
    iget v3, v9, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->f:I

    add-int/2addr v3, v2

    .line 169
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-eqz v19, :cond_9

    if-ne v2, v6, :cond_9

    if-ne v3, v5, :cond_9

    return-object v1

    .line 170
    :cond_9
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-eqz v19, :cond_a

    if-eqz v4, :cond_b

    .line 171
    :cond_a
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-nez v19, :cond_c

    if-nez v10, :cond_c

    :cond_b
    move/from16 v19, v8

    move-object/from16 v21, v10

    :goto_5
    move/from16 v20, v11

    move/from16 v8, v16

    move/from16 v10, v17

    :goto_6
    const/4 v11, 0x1

    goto :goto_a

    .line 172
    :cond_c
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 173
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v20

    move-object/from16 v21, v10

    sub-int v10, v20, v19

    .line 174
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-eqz v19, :cond_f

    if-le v10, v15, :cond_d

    :goto_7
    move/from16 v19, v8

    goto :goto_5

    :cond_d
    if-ne v10, v15, :cond_12

    if-le v2, v8, :cond_e

    const/4 v10, 0x1

    goto :goto_8

    :cond_e
    const/4 v10, 0x0

    :goto_8
    if-ne v13, v10, :cond_12

    goto :goto_7

    :cond_f
    if-nez v4, :cond_12

    move/from16 v19, v8

    move/from16 v20, v11

    const/4 v8, 0x0

    const/4 v11, 0x1

    .line 175
    invoke-virtual {v0, v1, v8, v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a(Landroid/view/View;ZZ)Z

    move-result v22

    move/from16 v8, v16

    if-eqz v22, :cond_13

    if-le v10, v8, :cond_10

    move/from16 v10, v17

    goto :goto_a

    :cond_10
    if-ne v10, v8, :cond_13

    move/from16 v10, v17

    if-le v2, v10, :cond_11

    goto :goto_9

    :cond_11
    const/4 v11, 0x0

    :goto_9
    if-ne v13, v11, :cond_14

    goto :goto_6

    :cond_12
    move/from16 v19, v8

    move/from16 v20, v11

    move/from16 v8, v16

    :cond_13
    move/from16 v10, v17

    :cond_14
    const/4 v11, 0x0

    :goto_a
    if-eqz v11, :cond_16

    .line 176
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v11

    if-eqz v11, :cond_15

    .line 177
    iget v4, v9, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->e:I

    .line 178
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 179
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v3, v2

    move v15, v3

    move/from16 v16, v8

    move/from16 v17, v10

    move-object/from16 v10, v21

    move v8, v4

    move-object v4, v1

    goto :goto_c

    .line 180
    :cond_15
    iget v8, v9, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->e:I

    .line 181
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 182
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v3, v2

    move-object v10, v1

    move/from16 v16, v3

    move/from16 v17, v8

    move/from16 v8, v19

    goto :goto_c

    :cond_16
    :goto_b
    move/from16 v16, v8

    move/from16 v17, v10

    move/from16 v8, v19

    move-object/from16 v10, v21

    :goto_c
    add-int/2addr v7, v12

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, v18

    move/from16 v11, v20

    const/4 v9, 0x1

    goto/16 :goto_4

    :cond_17
    :goto_d
    move-object/from16 v21, v10

    if-eqz v4, :cond_18

    goto :goto_e

    :cond_18
    move-object/from16 v4, v21

    :goto_e
    return-object v4
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;III)Landroid/view/View;
    .locals 7

    .line 54
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->F()V

    .line 55
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:La/o/a/g;

    invoke-virtual {v0}, La/o/a/g;->g()I

    move-result v0

    .line 56
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:La/o/a/g;

    invoke-virtual {v1}, La/o/a/g;->b()I

    move-result v1

    if-le p4, p3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    const/4 v3, 0x0

    move-object v4, v3

    :goto_1
    if-eq p3, p4, :cond_6

    .line 57
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->c(I)Landroid/view/View;

    move-result-object v5

    .line 58
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->l(Landroid/view/View;)I

    move-result v6

    if-ltz v6, :cond_5

    if-ge v6, p5, :cond_5

    .line 59
    invoke-virtual {p0, p1, p2, v6}, Landroidx/recyclerview/widget/GridLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;I)I

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_3

    .line 60
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->c()Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v4, :cond_5

    move-object v4, v5

    goto :goto_3

    .line 61
    :cond_2
    iget-object v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:La/o/a/g;

    invoke-virtual {v6, v5}, La/o/a/g;->d(Landroid/view/View;)I

    move-result v6

    if-ge v6, v1, :cond_4

    iget-object v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:La/o/a/g;

    .line 62
    invoke-virtual {v6, v5}, La/o/a/g;->a(Landroid/view/View;)I

    move-result v6

    if-ge v6, v0, :cond_3

    goto :goto_2

    :cond_3
    return-object v5

    :cond_4
    :goto_2
    if-nez v3, :cond_5

    move-object v3, v5

    :cond_5
    :goto_3
    add-int/2addr p3, v2

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    move-object v3, v4

    :goto_4
    return-object v3
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    .line 19
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    .line 20
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 21
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 22
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final a(FI)V
    .locals 1

    .line 141
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 142
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->k(I)V

    return-void
.end method

.method public a(Landroid/graphics/Rect;II)V
    .locals 4

    .line 24
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:[I

    if-nez v0, :cond_0

    .line 25
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a(Landroid/graphics/Rect;II)V

    .line 26
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->o()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->p()I

    move-result v1

    add-int/2addr v0, v1

    .line 27
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->q()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->n()I

    move-result v2

    add-int/2addr v1, v2

    .line 28
    iget v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 29
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, v1

    .line 30
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->l()I

    move-result v1

    invoke-static {p3, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a(III)I

    move-result p1

    .line 31
    iget-object p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:[I

    array-length v1, p3

    sub-int/2addr v1, v3

    aget p3, p3, v1

    add-int/2addr p3, v0

    .line 32
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->m()I

    move-result v0

    .line 33
    invoke-static {p2, p3, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a(III)I

    move-result p2

    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, v0

    .line 35
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->m()I

    move-result v0

    invoke-static {p2, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a(III)I

    move-result p2

    .line 36
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:[I

    array-length v0, p1

    sub-int/2addr v0, v3

    aget p1, p1, v0

    add-int/2addr p1, v1

    .line 37
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->l()I

    move-result v0

    .line 38
    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a(III)I

    move-result p1

    .line 39
    :goto_0
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->c(II)V

    return-void
.end method

.method public final a(Landroid/view/View;IIZ)V
    .locals 1

    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz p4, :cond_0

    .line 144
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    move-result p4

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    move-result p4

    :goto_0
    if-eqz p4, :cond_1

    .line 146
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    :cond_1
    return-void
.end method

.method public final a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;IZ)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p4, :cond_0

    const/4 v1, 0x1

    move p4, v1

    move v1, p3

    move p3, v0

    goto :goto_0

    :cond_0
    add-int/lit8 p3, p3, -0x1

    move p4, v1

    :goto_0
    if-eq p3, v1, :cond_1

    .line 147
    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->L:[Landroid/view/View;

    aget-object v2, v2, p3

    .line 148
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 149
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->l(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p0, p1, p2, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->c(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;I)I

    move-result v2

    iput v2, v3, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->f:I

    .line 150
    iput v0, v3, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->e:I

    .line 151
    iget v2, v3, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->f:I

    add-int/2addr v0, v2

    add-int/2addr p3, p4

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;Landroid/view/View;La/g/h/n/c;)V
    .locals 7

    .line 5
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 6
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    if-nez v1, :cond_0

    .line 7
    invoke-super {p0, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a(Landroid/view/View;La/g/h/n/c;)V

    return-void

    .line 8
    :cond_0
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 9
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->a()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;I)I

    move-result p1

    .line 10
    iget p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I

    if-nez p2, :cond_1

    .line 11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->e()I

    move-result v1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->f()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    .line 12
    invoke-static/range {v1 .. v6}, La/g/h/n/c$c;->a(IIIIZZ)La/g/h/n/c$c;

    move-result-object p1

    invoke-virtual {p4, p1}, La/g/h/n/c;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 13
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->e()I

    move-result v3

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->f()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v1, p1

    .line 14
    invoke-static/range {v1 .. v6}, La/g/h/n/c$c;->a(IIIIZZ)La/g/h/n/c$c;

    move-result-object p1

    invoke-virtual {p4, p1}, La/g/h/n/c;->b(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;Landroidx/recyclerview/widget/LinearLayoutManager$a;I)V
    .locals 1

    .line 46
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;Landroidx/recyclerview/widget/LinearLayoutManager$a;I)V

    .line 47
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->Z()V

    .line 48
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$r;->a()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$r;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/GridLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;Landroidx/recyclerview/widget/LinearLayoutManager$a;I)V

    .line 50
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->Y()V

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/LinearLayoutManager$b;)V
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v7, p4

    .line 74
    iget-object v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->u:La/o/a/g;

    invoke-virtual {v3}, La/o/a/g;->f()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v8, 0x1

    const/4 v5, 0x0

    if-eq v3, v4, :cond_0

    move v9, v8

    goto :goto_0

    :cond_0
    move v9, v5

    .line 75
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->e()I

    move-result v10

    if-lez v10, :cond_1

    iget-object v10, v6, Landroidx/recyclerview/widget/GridLayoutManager;->K:[I

    iget v11, v6, Landroidx/recyclerview/widget/GridLayoutManager;->J:I

    aget v10, v10, v11

    goto :goto_1

    :cond_1
    move v10, v5

    :goto_1
    if-eqz v9, :cond_2

    .line 76
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/GridLayoutManager;->Z()V

    .line 77
    :cond_2
    iget v11, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->e:I

    if-ne v11, v8, :cond_3

    move v11, v8

    goto :goto_2

    :cond_3
    move v11, v5

    .line 78
    :goto_2
    iget v12, v6, Landroidx/recyclerview/widget/GridLayoutManager;->J:I

    if-nez v11, :cond_4

    .line 79
    iget v12, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    invoke-virtual {v6, v0, v1, v12}, Landroidx/recyclerview/widget/GridLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;I)I

    move-result v12

    .line 80
    iget v13, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    invoke-virtual {v6, v0, v1, v13}, Landroidx/recyclerview/widget/GridLayoutManager;->c(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;I)I

    move-result v13

    add-int/2addr v12, v13

    :cond_4
    move v13, v12

    move v12, v5

    .line 81
    :goto_3
    iget v14, v6, Landroidx/recyclerview/widget/GridLayoutManager;->J:I

    if-ge v12, v14, :cond_8

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager$c;->a(Landroidx/recyclerview/widget/RecyclerView$r;)Z

    move-result v14

    if-eqz v14, :cond_8

    if-lez v13, :cond_8

    .line 82
    iget v14, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    .line 83
    invoke-virtual {v6, v0, v1, v14}, Landroidx/recyclerview/widget/GridLayoutManager;->c(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;I)I

    move-result v15

    .line 84
    iget v4, v6, Landroidx/recyclerview/widget/GridLayoutManager;->J:I

    if-gt v15, v4, :cond_7

    sub-int/2addr v13, v15

    if-gez v13, :cond_5

    goto :goto_4

    .line 85
    :cond_5
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager$c;->a(Landroidx/recyclerview/widget/RecyclerView$p;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_6

    goto :goto_4

    .line 86
    :cond_6
    iget-object v14, v6, Landroidx/recyclerview/widget/GridLayoutManager;->L:[Landroid/view/View;

    aput-object v4, v14, v12

    add-int/lit8 v12, v12, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    goto :goto_3

    .line 87
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Item at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " spans but GridLayoutManager has only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Landroidx/recyclerview/widget/GridLayoutManager;->J:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " spans."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_4
    if-nez v12, :cond_9

    .line 88
    iput-boolean v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager$b;->b:Z

    return-void

    :cond_9
    const/4 v4, 0x0

    .line 89
    invoke-virtual {v6, v0, v1, v12, v11}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;IZ)V

    move v0, v5

    move v1, v0

    :goto_5
    if-ge v0, v12, :cond_f

    .line 90
    iget-object v13, v6, Landroidx/recyclerview/widget/GridLayoutManager;->L:[Landroid/view/View;

    aget-object v13, v13, v0

    .line 91
    iget-object v14, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->l:Ljava/util/List;

    if-nez v14, :cond_b

    if-eqz v11, :cond_a

    .line 92
    invoke-virtual {v6, v13}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b(Landroid/view/View;)V

    goto :goto_6

    .line 93
    :cond_a
    invoke-virtual {v6, v13, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b(Landroid/view/View;I)V

    goto :goto_6

    :cond_b
    if-eqz v11, :cond_c

    .line 94
    invoke-virtual {v6, v13}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a(Landroid/view/View;)V

    goto :goto_6

    .line 95
    :cond_c
    invoke-virtual {v6, v13, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a(Landroid/view/View;I)V

    .line 96
    :goto_6
    iget-object v14, v6, Landroidx/recyclerview/widget/GridLayoutManager;->P:Landroid/graphics/Rect;

    invoke-virtual {v6, v13, v14}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 97
    invoke-virtual {v6, v13, v3, v5}, Landroidx/recyclerview/widget/GridLayoutManager;->b(Landroid/view/View;IZ)V

    .line 98
    iget-object v14, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->u:La/o/a/g;

    invoke-virtual {v14, v13}, La/o/a/g;->b(Landroid/view/View;)I

    move-result v14

    if-le v14, v1, :cond_d

    move v1, v14

    .line 99
    :cond_d
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    const/high16 v15, 0x3f800000    # 1.0f

    .line 100
    iget-object v5, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->u:La/o/a/g;

    invoke-virtual {v5, v13}, La/o/a/g;->c(Landroid/view/View;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v15

    iget v13, v14, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->f:I

    int-to-float v13, v13

    div-float/2addr v5, v13

    cmpl-float v13, v5, v4

    if-lez v13, :cond_e

    move v4, v5

    :cond_e
    add-int/lit8 v0, v0, 0x1

    const/4 v5, 0x0

    goto :goto_5

    :cond_f
    if-eqz v9, :cond_11

    .line 101
    invoke-virtual {v6, v4, v10}, Landroidx/recyclerview/widget/GridLayoutManager;->a(FI)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_7
    if-ge v0, v12, :cond_11

    .line 102
    iget-object v3, v6, Landroidx/recyclerview/widget/GridLayoutManager;->L:[Landroid/view/View;

    aget-object v3, v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    .line 103
    invoke-virtual {v6, v3, v4, v8}, Landroidx/recyclerview/widget/GridLayoutManager;->b(Landroid/view/View;IZ)V

    .line 104
    iget-object v4, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->u:La/o/a/g;

    invoke-virtual {v4, v3}, La/o/a/g;->b(Landroid/view/View;)I

    move-result v3

    if-le v3, v1, :cond_10

    move v1, v3

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_11
    const/4 v0, 0x0

    :goto_8
    if-ge v0, v12, :cond_14

    .line 105
    iget-object v3, v6, Landroidx/recyclerview/widget/GridLayoutManager;->L:[Landroid/view/View;

    aget-object v3, v3, v0

    .line 106
    iget-object v4, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->u:La/o/a/g;

    invoke-virtual {v4, v3}, La/o/a/g;->b(Landroid/view/View;)I

    move-result v4

    if-eq v4, v1, :cond_13

    .line 107
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 108
    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->b:Landroid/graphics/Rect;

    .line 109
    iget v9, v5, Landroid/graphics/Rect;->top:I

    iget v10, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    iget v10, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v9, v10

    iget v10, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v9, v10

    .line 110
    iget v10, v5, Landroid/graphics/Rect;->left:I

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v5

    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v10, v5

    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v10, v5

    .line 111
    iget v5, v4, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->e:I

    iget v11, v4, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->f:I

    invoke-virtual {v6, v5, v11}, Landroidx/recyclerview/widget/GridLayoutManager;->i(II)I

    move-result v5

    .line 112
    iget v11, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I

    if-ne v11, v8, :cond_12

    .line 113
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v13, 0x0

    invoke-static {v5, v11, v10, v4, v13}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a(IIIIZ)I

    move-result v4

    sub-int v5, v1, v9

    .line 114
    invoke-static {v5, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_9

    :cond_12
    const/high16 v11, 0x40000000    # 2.0f

    const/4 v13, 0x0

    sub-int v10, v1, v10

    .line 115
    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 116
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v5, v11, v9, v4, v13}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a(IIIIZ)I

    move-result v5

    move v4, v10

    .line 117
    :goto_9
    invoke-virtual {v6, v3, v4, v5, v8}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroid/view/View;IIZ)V

    goto :goto_a

    :cond_13
    const/high16 v11, 0x40000000    # 2.0f

    const/4 v13, 0x0

    :goto_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_14
    const/4 v13, 0x0

    .line 118
    iput v1, v7, Landroidx/recyclerview/widget/LinearLayoutManager$b;->a:I

    .line 119
    iget v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I

    const/4 v3, -0x1

    if-ne v0, v8, :cond_16

    .line 120
    iget v0, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I

    if-ne v0, v3, :cond_15

    .line 121
    iget v5, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    sub-int v0, v5, v1

    move v1, v0

    move v2, v5

    goto :goto_b

    .line 122
    :cond_15
    iget v5, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    add-int v0, v5, v1

    move v2, v0

    move v1, v5

    :goto_b
    move v0, v13

    move v5, v0

    goto :goto_c

    .line 123
    :cond_16
    iget v0, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I

    if-ne v0, v3, :cond_17

    .line 124
    iget v5, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    sub-int v0, v5, v1

    move v1, v13

    move v2, v1

    goto :goto_c

    .line 125
    :cond_17
    iget v5, v2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    add-int v0, v5, v1

    move v1, v13

    move v2, v1

    move/from16 v17, v5

    move v5, v0

    move/from16 v0, v17

    :goto_c
    if-ge v13, v12, :cond_1c

    .line 126
    iget-object v3, v6, Landroidx/recyclerview/widget/GridLayoutManager;->L:[Landroid/view/View;

    aget-object v9, v3, v13

    .line 127
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 128
    iget v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I

    if-ne v3, v8, :cond_19

    .line 129
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->S()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 130
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->o()I

    move-result v0

    iget-object v3, v6, Landroidx/recyclerview/widget/GridLayoutManager;->K:[I

    iget v4, v6, Landroidx/recyclerview/widget/GridLayoutManager;->J:I

    iget v5, v10, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->e:I

    sub-int/2addr v4, v5

    aget v3, v3, v4

    add-int/2addr v0, v3

    .line 131
    iget-object v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->u:La/o/a/g;

    invoke-virtual {v3, v9}, La/o/a/g;->c(Landroid/view/View;)I

    move-result v3

    sub-int v3, v0, v3

    move v15, v0

    move v14, v1

    move/from16 v16, v2

    move v11, v3

    goto :goto_d

    .line 132
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->o()I

    move-result v0

    iget-object v3, v6, Landroidx/recyclerview/widget/GridLayoutManager;->K:[I

    iget v4, v10, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->e:I

    aget v3, v3, v4

    add-int/2addr v0, v3

    .line 133
    iget-object v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->u:La/o/a/g;

    invoke-virtual {v3, v9}, La/o/a/g;->c(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v0

    move v11, v0

    move v14, v1

    move/from16 v16, v2

    move v15, v3

    goto :goto_d

    .line 134
    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->q()I

    move-result v1

    iget-object v2, v6, Landroidx/recyclerview/widget/GridLayoutManager;->K:[I

    iget v3, v10, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->e:I

    aget v2, v2, v3

    add-int/2addr v1, v2

    .line 135
    iget-object v2, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->u:La/o/a/g;

    invoke-virtual {v2, v9}, La/o/a/g;->c(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v1

    move v11, v0

    move v14, v1

    move/from16 v16, v2

    move v15, v5

    :goto_d
    move-object/from16 v0, p0

    move-object v1, v9

    move v2, v11

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    .line 136
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a(Landroid/view/View;IIII)V

    .line 137
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->c()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->b()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 138
    :cond_1a
    iput-boolean v8, v7, Landroidx/recyclerview/widget/LinearLayoutManager$b;->c:Z

    .line 139
    :cond_1b
    iget-boolean v0, v7, Landroidx/recyclerview/widget/LinearLayoutManager$b;->d:Z

    invoke-virtual {v9}, Landroid/view/View;->hasFocusable()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, v7, Landroidx/recyclerview/widget/LinearLayoutManager$b;->d:Z

    add-int/lit8 v13, v13, 0x1

    move v0, v11

    move v1, v14

    move v5, v15

    move/from16 v2, v16

    goto/16 :goto_c

    .line 140
    :cond_1c
    iget-object v0, v6, Landroidx/recyclerview/widget/GridLayoutManager;->L:[Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$r;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 5

    .line 68
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:I

    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .line 69
    :goto_0
    iget v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:I

    if-ge v0, v3, :cond_0

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager$c;->a(Landroidx/recyclerview/widget/RecyclerView$r;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-lez v2, :cond_0

    .line 70
    iget v3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    .line 71
    iget v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-interface {p3, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    .line 72
    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$b;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/GridLayoutManager$b;->a(I)I

    move-result v3

    sub-int/2addr v2, v3

    .line 73
    iget v3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    iget v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->e:I

    add-int/2addr v3, v4

    iput v3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->d:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 0

    .line 17
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$b;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$b;->b()V

    .line 18
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$b;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$b;->a()V

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0

    .line 15
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$b;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$b;->b()V

    .line 16
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$b;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$b;->a()V

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 0

    .line 23
    instance-of p1, p1, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    return p1
.end method

.method public b(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;)I
    .locals 0

    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->Z()V

    .line 10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->Y()V

    .line 11
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;)I

    move-result p1

    return p1
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;)I
    .locals 2

    .line 3
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I

    if-nez v0, :cond_0

    .line 4
    iget p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:I

    return p1

    .line 5
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$r;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$r;->a()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;I)I

    move-result p1

    add-int/2addr p1, v1

    return p1
.end method

.method public final b(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;I)I
    .locals 1

    .line 20
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$r;->d()Z

    move-result p2

    if-nez p2, :cond_0

    .line 21
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$b;

    iget p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:I

    invoke-virtual {p1, p3, p2}, Landroidx/recyclerview/widget/GridLayoutManager$b;->b(II)I

    move-result p1

    return p1

    .line 22
    :cond_0
    iget-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->N:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    if-eq p2, v0, :cond_1

    return p2

    .line 23
    :cond_1
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$p;->a(I)I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GridLayoutManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 25
    :cond_2
    iget-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$b;

    iget p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:I

    invoke-virtual {p2, p1, p3}, Landroidx/recyclerview/widget/GridLayoutManager$b;->b(II)I

    move-result p1

    return p1
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$r;)I
    .locals 1

    .line 37
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->Q:Z

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->l(Landroidx/recyclerview/widget/RecyclerView$r;)I

    move-result p1

    return p1

    .line 39
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$r;)I

    move-result p1

    return p1
.end method

.method public final b(Landroid/view/View;IZ)V
    .locals 8

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 27
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->b:Landroid/graphics/Rect;

    .line 28
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    .line 29
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v1

    .line 30
    iget v1, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->e:I

    iget v4, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->f:I

    invoke-virtual {p0, v1, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->i(II)I

    move-result v1

    .line 31
    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    .line 32
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v1, p2, v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a(IIIIZ)I

    move-result p2

    .line 33
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:La/o/a/g;

    invoke-virtual {v1}, La/o/a/g;->h()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->i()I

    move-result v3

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v1, v3, v2, v0, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a(IIIIZ)I

    move-result v0

    goto :goto_0

    .line 34
    :cond_0
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v1, p2, v2, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a(IIIIZ)I

    move-result p2

    .line 35
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:La/o/a/g;

    invoke-virtual {v1}, La/o/a/g;->h()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->s()I

    move-result v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v1, v2, v3, v0, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a(IIIIZ)I

    move-result v0

    move v7, v0

    move v0, p2

    move p2, v7

    .line 36
    :goto_0
    invoke-virtual {p0, p1, p2, v0, p3}, Landroidx/recyclerview/widget/GridLayoutManager;->a(Landroid/view/View;IIZ)V

    return-void
.end method

.method public final b(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;Landroidx/recyclerview/widget/LinearLayoutManager$a;I)V
    .locals 4

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    move p4, v0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 12
    :goto_0
    iget v1, p3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    invoke-virtual {p0, p1, p2, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;I)I

    move-result v1

    if-eqz p4, :cond_1

    :goto_1
    if-lez v1, :cond_3

    .line 13
    iget p4, p3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    if-lez p4, :cond_3

    add-int/lit8 p4, p4, -0x1

    .line 14
    iput p4, p3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    .line 15
    iget p4, p3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    invoke-virtual {p0, p1, p2, p4}, Landroidx/recyclerview/widget/GridLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;I)I

    move-result v1

    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$r;->a()I

    move-result p4

    sub-int/2addr p4, v0

    .line 17
    iget v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    :goto_2
    if-ge v0, p4, :cond_2

    add-int/lit8 v2, v0, 0x1

    .line 18
    invoke-virtual {p0, p1, p2, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;I)I

    move-result v3

    if-le v3, v1, :cond_2

    move v0, v2

    move v1, v3

    goto :goto_2

    .line 19
    :cond_2
    iput v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager$a;->b:I

    :cond_3
    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 7
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$b;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$b;->b()V

    .line 8
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$b;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$b;->a()V

    return-void
.end method

.method public b(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(Z)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;I)I
    .locals 1

    .line 6
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$r;->d()Z

    move-result p2

    if-nez p2, :cond_0

    .line 7
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$b;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/GridLayoutManager$b;->a(I)I

    move-result p1

    return p1

    .line 8
    :cond_0
    iget-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->M:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    if-eq p2, v0, :cond_1

    return p2

    .line 9
    :cond_1
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$p;->a(I)I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GridLayoutManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    .line 11
    :cond_2
    iget-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$b;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/GridLayoutManager$b;->a(I)I

    move-result p1

    return p1
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$r;)I
    .locals 1

    .line 12
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->Q:Z

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->m(Landroidx/recyclerview/widget/RecyclerView$r;)I

    move-result p1

    return p1

    .line 14
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(Landroidx/recyclerview/widget/RecyclerView$r;)I

    move-result p1

    return p1
.end method

.method public c()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 3

    .line 3
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$b;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$b;->b()V

    .line 2
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$b;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$b;->a()V

    return-void
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$b;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$b;->b()V

    .line 2
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$b;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$b;->a()V

    return-void
.end method

.method public e(Landroidx/recyclerview/widget/RecyclerView$r;)I
    .locals 1

    .line 5
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->Q:Z

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->l(Landroidx/recyclerview/widget/RecyclerView$r;)I

    move-result p1

    return p1

    .line 7
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->e(Landroidx/recyclerview/widget/RecyclerView$r;)I

    move-result p1

    return p1
.end method

.method public e(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$r;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->W()V

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->e(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->X()V

    return-void
.end method

.method public f(Landroidx/recyclerview/widget/RecyclerView$r;)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->Q:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->m(Landroidx/recyclerview/widget/RecyclerView$r;)I

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->f(Landroidx/recyclerview/widget/RecyclerView$r;)I

    move-result p1

    return p1
.end method

.method public g(Landroidx/recyclerview/widget/RecyclerView$r;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->g(Landroidx/recyclerview/widget/RecyclerView$r;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:Z

    return-void
.end method

.method public i(II)I
    .locals 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->s:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:[I

    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:I

    sub-int v2, v1, p1

    aget v2, v0, v2

    sub-int/2addr v1, p1

    sub-int/2addr v1, p2

    aget p1, v0, v1

    sub-int/2addr v2, p1

    return v2

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:[I

    add-int/2addr p2, p1

    aget p2, v0, p2

    aget p1, v0, p1

    sub-int/2addr p2, p1

    return p2
.end method

.method public final k(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:[I

    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:I

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->a([III)[I

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:[I

    return-void
.end method

.method public final l(Landroidx/recyclerview/widget/RecyclerView$r;)I
    .locals 9

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->e()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$r;->a()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->F()V

    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->T()Z

    move-result v0

    xor-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    .line 10
    invoke-virtual {p0, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v2

    xor-int/lit8 v4, v0, 0x1

    .line 11
    invoke-virtual {p0, v4, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v4

    if-eqz v2, :cond_4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 12
    :cond_1
    iget-object v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$b;

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->l(Landroid/view/View;)I

    move-result v6

    iget v7, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:I

    invoke-virtual {v5, v6, v7}, Landroidx/recyclerview/widget/GridLayoutManager$b;->a(II)I

    move-result v5

    .line 13
    iget-object v6, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$b;

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->l(Landroid/view/View;)I

    move-result v7

    iget v8, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:I

    invoke-virtual {v6, v7, v8}, Landroidx/recyclerview/widget/GridLayoutManager$b;->a(II)I

    move-result v6

    .line 14
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 15
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 16
    iget-object v6, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$b;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$r;->a()I

    move-result p1

    sub-int/2addr p1, v3

    iget v8, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:I

    invoke-virtual {v6, p1, v8}, Landroidx/recyclerview/widget/GridLayoutManager$b;->a(II)I

    move-result p1

    add-int/2addr p1, v3

    .line 17
    iget-boolean v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->x:Z

    if-eqz v6, :cond_2

    sub-int/2addr p1, v5

    sub-int/2addr p1, v3

    .line 18
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    .line 19
    :cond_2
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_0
    if-nez v0, :cond_3

    return p1

    .line 20
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:La/o/a/g;

    invoke-virtual {v0, v4}, La/o/a/g;->a(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:La/o/a/g;

    .line 21
    invoke-virtual {v1, v2}, La/o/a/g;->d(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 22
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 23
    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$b;

    .line 24
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->l(Landroid/view/View;)I

    move-result v5

    iget v6, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:I

    invoke-virtual {v1, v5, v6}, Landroidx/recyclerview/widget/GridLayoutManager$b;->a(II)I

    move-result v1

    .line 25
    iget-object v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$b;

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->l(Landroid/view/View;)I

    move-result v4

    iget v6, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:I

    invoke-virtual {v5, v4, v6}, Landroidx/recyclerview/widget/GridLayoutManager$b;->a(II)I

    move-result v4

    sub-int/2addr v4, v1

    add-int/2addr v4, v3

    int-to-float v0, v0

    int-to-float v1, v4

    div-float/2addr v0, v1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    .line 26
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:La/o/a/g;

    invoke-virtual {v0}, La/o/a/g;->g()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:La/o/a/g;

    .line 27
    invoke-virtual {v1, v2}, La/o/a/g;->d(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 28
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method public l(I)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:Z

    if-lt p1, v0, :cond_1

    .line 3
    iput p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:I

    .line 4
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$b;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$b;->b()V

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->z()V

    return-void

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Span count should be at least 1. Provided "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final m(Landroidx/recyclerview/widget/RecyclerView$r;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->e()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$r;->a()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->F()V

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->T()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->T()Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-virtual {p0, v3, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v3

    if-eqz v0, :cond_3

    if-nez v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->T()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$b;

    .line 7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$r;->a()I

    move-result p1

    sub-int/2addr p1, v2

    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:I

    .line 8
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/GridLayoutManager$b;->a(II)I

    move-result p1

    add-int/2addr p1, v2

    return p1

    .line 9
    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:La/o/a/g;

    invoke-virtual {v1, v3}, La/o/a/g;->a(Landroid/view/View;)I

    move-result v1

    iget-object v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:La/o/a/g;

    .line 10
    invoke-virtual {v4, v0}, La/o/a/g;->d(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v1, v4

    .line 11
    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$b;

    .line 12
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->l(Landroid/view/View;)I

    move-result v0

    iget v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:I

    invoke-virtual {v4, v0, v5}, Landroidx/recyclerview/widget/GridLayoutManager$b;->a(II)I

    move-result v0

    .line 13
    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$b;

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->l(Landroid/view/View;)I

    move-result v3

    iget v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:I

    invoke-virtual {v4, v3, v5}, Landroidx/recyclerview/widget/GridLayoutManager$b;->a(II)I

    move-result v3

    .line 14
    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->O:Landroidx/recyclerview/widget/GridLayoutManager$b;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$r;->a()I

    move-result p1

    sub-int/2addr p1, v2

    iget v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:I

    invoke-virtual {v4, p1, v5}, Landroidx/recyclerview/widget/GridLayoutManager$b;->a(II)I

    move-result p1

    add-int/2addr p1, v2

    sub-int/2addr v3, v0

    add-int/2addr v3, v2

    int-to-float v0, v1

    int-to-float v1, v3

    div-float/2addr v0, v1

    int-to-float p1, p1

    mul-float/2addr v0, p1

    float-to-int p1, v0

    return p1

    :cond_3
    :goto_0
    return v1
.end method
