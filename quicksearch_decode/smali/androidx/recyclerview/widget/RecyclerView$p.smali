.class public final Landroidx/recyclerview/widget/RecyclerView$p;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "p"
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$u;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$u;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$u;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$u;",
            ">;"
        }
    .end annotation
.end field

.field public e:I

.field public f:I

.field public g:Landroidx/recyclerview/widget/RecyclerView$o;

.field public h:Landroidx/recyclerview/widget/RecyclerView$s;

.field public final synthetic i:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    .line 5
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    .line 6
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->d:Ljava/util/List;

    const/4 p1, 0x2

    .line 7
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->e:I

    .line 8
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:I

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 3

    if-ltz p1, :cond_1

    .line 14
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$r;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$r;->a()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 15
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$r;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$r;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 16
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->d:Landroidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/AdapterHelper;->c(I)I

    move-result p1

    return p1

    .line 17
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". State item count is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$r;

    .line 18
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$r;->a()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->n()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(IZ)Landroidx/recyclerview/widget/RecyclerView$u;
    .locals 5

    .line 122
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 123
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$u;

    .line 124
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$u;->B()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$u;->j()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 125
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$u;->p()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$r;

    iget-boolean v4, v4, Landroidx/recyclerview/widget/RecyclerView$r;->h:Z

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$u;->r()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const/16 p1, 0x20

    .line 126
    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/RecyclerView$u;->a(I)V

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez p2, :cond_4

    .line 127
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ChildHelper;->b(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 128
    invoke-static {v0}, Landroidx/recyclerview/widget/RecyclerView;->n(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$u;

    move-result-object p1

    .line 129
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/ChildHelper;->g(Landroid/view/View;)V

    .line 130
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/ChildHelper;->c(Landroid/view/View;)I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_3

    .line 131
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v1, p2}, Landroidx/recyclerview/widget/ChildHelper;->a(I)V

    .line 132
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$p;->c(Landroid/view/View;)V

    const/16 p2, 0x2020

    .line 133
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$u;->a(I)V

    return-object p1

    .line 134
    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "layout index should not be -1 after unhiding a view:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 135
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->n()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 136
    :cond_4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_7

    .line 137
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$u;

    .line 138
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$u;->p()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$u;->j()I

    move-result v3

    if-ne v3, p1, :cond_6

    .line 139
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$u;->n()Z

    move-result v3

    if-nez v3, :cond_6

    if-nez p2, :cond_5

    .line 140
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_5
    return-object v2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(IZJ)Landroidx/recyclerview/widget/RecyclerView$u;
    .locals 16

    move-object/from16 v6, p0

    move/from16 v3, p1

    move/from16 v0, p2

    if-ltz v3, :cond_17

    .line 19
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$r;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$r;->a()I

    move-result v1

    if-ge v3, v1, :cond_17

    .line 20
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$r;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$r;->d()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    .line 21
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView$p;->b(I)Landroidx/recyclerview/widget/RecyclerView$u;

    move-result-object v1

    if-eqz v1, :cond_1

    move v4, v7

    goto :goto_0

    :cond_0
    move-object v1, v2

    :cond_1
    move v4, v8

    :goto_0
    if-nez v1, :cond_6

    .line 22
    invoke-virtual/range {p0 .. p2}, Landroidx/recyclerview/widget/RecyclerView$p;->a(IZ)Landroidx/recyclerview/widget/RecyclerView$u;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 23
    invoke-virtual {v6, v1}, Landroidx/recyclerview/widget/RecyclerView$p;->f(Landroidx/recyclerview/widget/RecyclerView$u;)Z

    move-result v5

    if-nez v5, :cond_5

    if-nez v0, :cond_4

    const/4 v5, 0x4

    .line 24
    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView$u;->a(I)V

    .line 25
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$u;->s()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 26
    iget-object v5, v6, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v9, v1, Landroidx/recyclerview/widget/RecyclerView$u;->a:Landroid/view/View;

    invoke-virtual {v5, v9, v8}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 27
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$u;->A()V

    goto :goto_1

    .line 28
    :cond_2
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$u;->B()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 29
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$u;->c()V

    .line 30
    :cond_3
    :goto_1
    invoke-virtual {v6, v1}, Landroidx/recyclerview/widget/RecyclerView$p;->d(Landroidx/recyclerview/widget/RecyclerView$u;)V

    :cond_4
    move-object v1, v2

    goto :goto_2

    :cond_5
    move v4, v7

    :cond_6
    :goto_2
    if-nez v1, :cond_f

    .line 31
    iget-object v5, v6, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->d:Landroidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/AdapterHelper;->c(I)I

    move-result v5

    if-ltz v5, :cond_e

    .line 32
    iget-object v9, v6, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->k:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$g;->a()I

    move-result v9

    if-ge v5, v9, :cond_e

    .line 33
    iget-object v9, v6, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->k:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v9, v5}, Landroidx/recyclerview/widget/RecyclerView$g;->b(I)I

    move-result v9

    .line 34
    iget-object v10, v6, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView;->k:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$g;->b()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 35
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->k:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView$g;->a(I)J

    move-result-wide v10

    invoke-virtual {v6, v10, v11, v9, v0}, Landroidx/recyclerview/widget/RecyclerView$p;->a(JIZ)Landroidx/recyclerview/widget/RecyclerView$u;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 36
    iput v5, v1, Landroidx/recyclerview/widget/RecyclerView$u;->c:I

    move v4, v7

    :cond_7
    if-nez v1, :cond_a

    .line 37
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$p;->h:Landroidx/recyclerview/widget/RecyclerView$s;

    if-eqz v0, :cond_a

    .line 38
    invoke-virtual {v0, v6, v3, v9}, Landroidx/recyclerview/widget/RecyclerView$s;->a(Landroidx/recyclerview/widget/RecyclerView$p;II)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 39
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->g(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$u;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 40
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$u;->z()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_3

    .line 41
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 42
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 44
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_3
    if-nez v1, :cond_b

    .line 45
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$p;->d()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroidx/recyclerview/widget/RecyclerView$o;->a(I)Landroidx/recyclerview/widget/RecyclerView$u;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 46
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$u;->w()V

    .line 47
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->y0:Z

    if-eqz v0, :cond_b

    .line 48
    invoke-virtual {v6, v1}, Landroidx/recyclerview/widget/RecyclerView$p;->c(Landroidx/recyclerview/widget/RecyclerView$u;)V

    :cond_b
    if-nez v1, :cond_f

    .line 49
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v0

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v5, p3, v10

    if-eqz v5, :cond_c

    .line 50
    iget-object v10, v6, Landroidx/recyclerview/widget/RecyclerView$p;->g:Landroidx/recyclerview/widget/RecyclerView$o;

    move v11, v9

    move-wide v12, v0

    move-wide/from16 v14, p3

    .line 51
    invoke-virtual/range {v10 .. v15}, Landroidx/recyclerview/widget/RecyclerView$o;->b(IJJ)Z

    move-result v5

    if-nez v5, :cond_c

    return-object v2

    .line 52
    :cond_c
    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView;->k:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v5, v2, v9}, Landroidx/recyclerview/widget/RecyclerView$g;->a(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$u;

    move-result-object v2

    .line 53
    sget-boolean v5, Landroidx/recyclerview/widget/RecyclerView;->A0:Z

    if-eqz v5, :cond_d

    .line 54
    iget-object v5, v2, Landroidx/recyclerview/widget/RecyclerView$u;->a:Landroid/view/View;

    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->m(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 55
    new-instance v10, Ljava/lang/ref/WeakReference;

    invoke-direct {v10, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v10, v2, Landroidx/recyclerview/widget/RecyclerView$u;->b:Ljava/lang/ref/WeakReference;

    .line 56
    :cond_d
    iget-object v5, v6, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v10

    .line 57
    iget-object v5, v6, Landroidx/recyclerview/widget/RecyclerView$p;->g:Landroidx/recyclerview/widget/RecyclerView$o;

    sub-long/2addr v10, v0

    invoke-virtual {v5, v9, v10, v11}, Landroidx/recyclerview/widget/RecyclerView$o;->b(IJ)V

    move-object v10, v2

    goto :goto_4

    .line 58
    :cond_e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistency detected. Invalid item position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "(offset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ").state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$r;

    .line 59
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$r;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    move-object v10, v1

    :goto_4
    move v9, v4

    if-eqz v9, :cond_10

    .line 60
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$r;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$r;->d()Z

    move-result v0

    if-nez v0, :cond_10

    const/16 v0, 0x2000

    .line 61
    invoke-virtual {v10, v0}, Landroidx/recyclerview/widget/RecyclerView$u;->b(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 62
    invoke-virtual {v10, v8, v0}, Landroidx/recyclerview/widget/RecyclerView$u;->a(II)V

    .line 63
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$r;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView$r;->k:Z

    if-eqz v0, :cond_10

    .line 64
    invoke-static {v10}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->e(Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result v0

    or-int/lit16 v0, v0, 0x1000

    .line 65
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->L:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$r;

    .line 66
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$u;->l()Ljava/util/List;

    move-result-object v4

    .line 67
    invoke-virtual {v2, v1, v10, v0, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->a(Landroidx/recyclerview/widget/RecyclerView$r;Landroidx/recyclerview/widget/RecyclerView$u;ILjava/util/List;)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$a;

    move-result-object v0

    .line 68
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v10, v0}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$a;)V

    .line 69
    :cond_10
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$r;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$r;->d()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$u;->o()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 70
    iput v3, v10, Landroidx/recyclerview/widget/RecyclerView$u;->g:I

    goto :goto_5

    .line 71
    :cond_11
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$u;->o()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$u;->v()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$u;->p()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_6

    :cond_12
    :goto_5
    move v0, v8

    goto :goto_7

    .line 72
    :cond_13
    :goto_6
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->d:Landroidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/AdapterHelper;->c(I)I

    move-result v2

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v3, p1

    move-wide/from16 v4, p3

    .line 73
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView$p;->a(Landroidx/recyclerview/widget/RecyclerView$u;IIJ)Z

    move-result v0

    .line 74
    :goto_7
    iget-object v1, v10, Landroidx/recyclerview/widget/RecyclerView$u;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_14

    .line 75
    iget-object v1, v6, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 76
    iget-object v2, v10, Landroidx/recyclerview/widget/RecyclerView$u;->a:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8

    .line 77
    :cond_14
    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 78
    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 79
    iget-object v2, v10, Landroidx/recyclerview/widget/RecyclerView$u;->a:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8

    .line 80
    :cond_15
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 81
    :goto_8
    iput-object v10, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->a:Landroidx/recyclerview/widget/RecyclerView$u;

    if-eqz v9, :cond_16

    if-eqz v0, :cond_16

    goto :goto_9

    :cond_16
    move v7, v8

    .line 82
    :goto_9
    iput-boolean v7, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->d:Z

    return-object v10

    .line 83
    :cond_17
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid item position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "). Item count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$r;

    .line 84
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$r;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 85
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(JIZ)Landroidx/recyclerview/widget/RecyclerView$u;
    .locals 5

    .line 141
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 142
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$u;

    .line 143
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$u;->h()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$u;->B()Z

    move-result v2

    if-nez v2, :cond_2

    .line 144
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$u;->i()I

    move-result v2

    if-ne p3, v2, :cond_1

    const/16 p1, 0x20

    .line 145
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$u;->a(I)V

    .line 146
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$u;->r()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 147
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$r;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$r;->d()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x2

    const/16 p2, 0xe

    .line 148
    invoke-virtual {v1, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$u;->a(II)V

    :cond_0
    return-object v1

    :cond_1
    if-nez p4, :cond_2

    .line 149
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 150
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$u;->a:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 151
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$u;->a:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$p;->a(Landroid/view/View;)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 152
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    const/4 v1, 0x0

    if-ltz v0, :cond_7

    .line 153
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$u;

    .line 154
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$u;->h()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_6

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$u;->n()Z

    move-result v3

    if-nez v3, :cond_6

    .line 155
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$u;->i()I

    move-result v3

    if-ne p3, v3, :cond_5

    if-nez p4, :cond_4

    .line 156
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    return-object v2

    :cond_5
    if-nez p4, :cond_6

    .line 157
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$p;->e(I)V

    return-object v1

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_7
    return-object v1
.end method

.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$p;->i()V

    return-void
.end method

.method public a(II)V
    .locals 4

    .line 160
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 161
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$u;

    if-eqz v2, :cond_0

    .line 162
    iget v3, v2, Landroidx/recyclerview/widget/RecyclerView$u;->c:I

    if-lt v3, p1, :cond_0

    const/4 v3, 0x1

    .line 163
    invoke-virtual {v2, p2, v3}, Landroidx/recyclerview/widget/RecyclerView$u;->a(IZ)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(IIZ)V
    .locals 4

    add-int v0, p1, p2

    .line 164
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 165
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$u;

    if-eqz v2, :cond_1

    .line 166
    iget v3, v2, Landroidx/recyclerview/widget/RecyclerView$u;->c:I

    if-lt v3, v0, :cond_0

    neg-int v3, p2

    .line 167
    invoke-virtual {v2, v3, p3}, Landroidx/recyclerview/widget/RecyclerView$u;->a(IZ)V

    goto :goto_1

    :cond_0
    if-lt v3, p1, :cond_1

    const/16 v3, 0x8

    .line 168
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$u;->a(I)V

    .line 169
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$p;->e(I)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .line 117
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->n(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$u;

    move-result-object p1

    const/4 v0, 0x0

    .line 118
    iput-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$u;->n:Landroidx/recyclerview/widget/RecyclerView$p;

    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView$u;->o:Z

    .line 120
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u;->c()V

    .line 121
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$p;->d(Landroidx/recyclerview/widget/RecyclerView$u;)V

    return-void
.end method

.method public final a(Landroid/view/ViewGroup;Z)V
    .locals 4

    .line 96
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 97
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 98
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 99
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {p0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$p;->a(Landroid/view/ViewGroup;Z)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    return-void

    .line 100
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    const/4 p2, 0x0

    .line 101
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 102
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 103
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p2

    .line 104
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 105
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$g;Landroidx/recyclerview/widget/RecyclerView$g;Z)V
    .locals 1

    .line 158
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$p;->a()V

    .line 159
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$p;->d()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$o;->a(Landroidx/recyclerview/widget/RecyclerView$g;Landroidx/recyclerview/widget/RecyclerView$g;Z)V

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$o;)V
    .locals 1

    .line 171
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->g:Landroidx/recyclerview/widget/RecyclerView$o;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$o;->c()V

    .line 173
    :cond_0
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->g:Landroidx/recyclerview/widget/RecyclerView$o;

    .line 174
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->g:Landroidx/recyclerview/widget/RecyclerView$o;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 175
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->g:Landroidx/recyclerview/widget/RecyclerView$o;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->a()V

    :cond_1
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$s;)V
    .locals 0

    .line 170
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->h:Landroidx/recyclerview/widget/RecyclerView$s;

    return-void
.end method

.method public final a(Landroidx/recyclerview/widget/RecyclerView$u;)V
    .locals 2

    .line 86
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->v()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 87
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$u;->a:Landroid/view/View;

    .line 88
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->k(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 89
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->f(Landroid/view/View;I)V

    .line 90
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->n0:La/o/a/h;

    if-nez v0, :cond_1

    return-void

    .line 91
    :cond_1
    invoke-virtual {v0}, La/o/a/h;->b()La/g/h/a;

    move-result-object v0

    .line 92
    instance-of v1, v0, La/o/a/h$a;

    if-eqz v1, :cond_2

    .line 93
    move-object v1, v0

    check-cast v1, La/o/a/h$a;

    .line 94
    invoke-virtual {v1, p1}, La/o/a/h$a;->d(Landroid/view/View;)V

    .line 95
    :cond_2
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->a(Landroid/view/View;La/g/h/a;)V

    :cond_3
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$u;Z)V
    .locals 4

    .line 106
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->e(Landroidx/recyclerview/widget/RecyclerView$u;)V

    .line 107
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$u;->a:Landroid/view/View;

    .line 108
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->n0:La/o/a/h;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 109
    invoke-virtual {v1}, La/o/a/h;->b()La/g/h/a;

    move-result-object v1

    .line 110
    instance-of v3, v1, La/o/a/h$a;

    if-eqz v3, :cond_0

    .line 111
    check-cast v1, La/o/a/h$a;

    .line 112
    invoke-virtual {v1, v0}, La/o/a/h$a;->c(Landroid/view/View;)La/g/h/a;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 113
    :goto_0
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->a(Landroid/view/View;La/g/h/a;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 114
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$p;->b(Landroidx/recyclerview/widget/RecyclerView$u;)V

    .line 115
    :cond_2
    iput-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$u;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 116
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$p;->d()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->a(Landroidx/recyclerview/widget/RecyclerView$u;)V

    return-void
.end method

.method public final a(Landroidx/recyclerview/widget/RecyclerView$u;IIJ)Z
    .locals 9

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$u;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u;->i()I

    move-result v2

    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v7

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p4, v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->g:Landroidx/recyclerview/widget/RecyclerView$o;

    move-wide v3, v7

    move-wide v5, p4

    .line 7
    invoke-virtual/range {v1 .. v6}, Landroidx/recyclerview/widget/RecyclerView$o;->a(IJJ)Z

    move-result p4

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return p1

    .line 8
    :cond_0
    iget-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p4, p4, Landroidx/recyclerview/widget/RecyclerView;->k:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {p4, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$g;->a(Landroidx/recyclerview/widget/RecyclerView$u;I)V

    .line 9
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide p4

    .line 10
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$p;->g:Landroidx/recyclerview/widget/RecyclerView$o;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u;->i()I

    move-result v0

    sub-long/2addr p4, v7

    invoke-virtual {p2, v0, p4, p5}, Landroidx/recyclerview/widget/RecyclerView$o;->a(IJ)V

    .line 11
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$p;->a(Landroidx/recyclerview/widget/RecyclerView$u;)V

    .line 12
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$r;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$r;->d()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 13
    iput p3, p1, Landroidx/recyclerview/widget/RecyclerView$u;->g:I

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public b(IZ)Landroid/view/View;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$p;->a(IZJ)Landroidx/recyclerview/widget/RecyclerView$u;

    move-result-object p1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$u;->a:Landroid/view/View;

    return-object p1
.end method

.method public b(I)Landroidx/recyclerview/widget/RecyclerView$u;
    .locals 9

    .line 12
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x20

    if-ge v3, v0, :cond_2

    .line 13
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$u;

    .line 14
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$u;->B()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$u;->j()I

    move-result v6

    if-ne v6, p1, :cond_1

    .line 15
    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView$u;->a(I)V

    return-object v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 16
    :cond_2
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->k:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$g;->b()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 17
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->d:Landroidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/AdapterHelper;->c(I)I

    move-result p1

    if-lez p1, :cond_4

    .line 18
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->k:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$g;->a()I

    move-result v3

    if-ge p1, v3, :cond_4

    .line 19
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->k:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->a(I)J

    move-result-wide v5

    :goto_1
    if-ge v2, v0, :cond_4

    .line 20
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$u;

    .line 21
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u;->B()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u;->h()J

    move-result-wide v7

    cmp-long v3, v7, v5

    if-nez v3, :cond_3

    .line 22
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$u;->a(I)V

    return-object p1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-object v1
.end method

.method public b()V
    .locals 4

    .line 34
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 35
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$u;

    .line 36
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$u;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_1

    .line 38
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$u;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$u;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 39
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 40
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_2

    .line 41
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$u;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$u;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public b(II)V
    .locals 8

    if-ge p1, p2, :cond_0

    const/4 v0, -0x1

    move v1, p2

    move v2, v0

    move v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    move v1, p1

    move v2, v0

    move v0, p2

    .line 29
    :goto_0
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_4

    .line 30
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$u;

    if-eqz v6, :cond_3

    .line 31
    iget v7, v6, Landroidx/recyclerview/widget/RecyclerView$u;->c:I

    if-lt v7, v0, :cond_3

    if-le v7, v1, :cond_1

    goto :goto_2

    :cond_1
    if-ne v7, p1, :cond_2

    sub-int v7, p2, p1

    .line 32
    invoke-virtual {v6, v7, v4}, Landroidx/recyclerview/widget/RecyclerView$u;->a(IZ)V

    goto :goto_2

    .line 33
    :cond_2
    invoke-virtual {v6, v2, v4}, Landroidx/recyclerview/widget/RecyclerView$u;->a(IZ)V

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 3

    .line 2
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->n(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$u;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$u;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$u;->s()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$u;->A()V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$u;->B()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$u;->c()V

    .line 9
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$p;->d(Landroidx/recyclerview/widget/RecyclerView$u;)V

    .line 10
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->L:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$u;->q()Z

    move-result p1

    if-nez p1, :cond_3

    .line 11
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->L:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->c(Landroidx/recyclerview/widget/RecyclerView$u;)V

    :cond_3
    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$u;)V
    .locals 2

    .line 23
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;

    if-eqz v0, :cond_0

    .line 24
    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$RecyclerListener;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$u;)V

    .line 25
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->k:Landroidx/recyclerview/widget/RecyclerView$g;

    if-eqz v0, :cond_1

    .line 26
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->d(Landroidx/recyclerview/widget/RecyclerView$u;)V

    .line 27
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$r;

    if-eqz v1, :cond_2

    .line 28
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->f:Landroidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ViewInfoStore;->h(Landroidx/recyclerview/widget/RecyclerView$u;)V

    :cond_2
    return-void
.end method

.method public c(I)Landroid/view/View;
    .locals 1

    .line 15
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$u;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$u;->a:Landroid/view/View;

    return-object p1
.end method

.method public c()V
    .locals 1

    .line 16
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 17
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public c(II)V
    .locals 3

    add-int/2addr p2, p1

    .line 19
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 20
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$u;

    if-nez v1, :cond_0

    goto :goto_1

    .line 21
    :cond_0
    iget v2, v1, Landroidx/recyclerview/widget/RecyclerView$u;->c:I

    if-lt v2, p1, :cond_1

    if-ge v2, p2, :cond_1

    const/4 v2, 0x2

    .line 22
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$u;->a(I)V

    .line 23
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$p;->e(I)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 2

    .line 3
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->n(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$u;

    move-result-object p1

    const/16 v0, 0xc

    .line 4
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$u;->b(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->b(Landroidx/recyclerview/widget/RecyclerView$u;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    :cond_1
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p1, p0, v0}, Landroidx/recyclerview/widget/RecyclerView$u;->a(Landroidx/recyclerview/widget/RecyclerView$p;Z)V

    .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 10
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u;->p()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u;->r()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->k:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, p0, v0}, Landroidx/recyclerview/widget/RecyclerView$u;->a(Landroidx/recyclerview/widget/RecyclerView$p;Z)V

    .line 14
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    return-void
.end method

.method public final c(Landroidx/recyclerview/widget/RecyclerView$u;)V
    .locals 1

    .line 1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$u;->a:Landroid/view/View;

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$p;->a(Landroid/view/ViewGroup;Z)V

    :cond_0
    return-void
.end method

.method public d(I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$p;->b(IZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public d()Landroidx/recyclerview/widget/RecyclerView$o;
    .locals 1

    .line 29
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->g:Landroidx/recyclerview/widget/RecyclerView$o;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$o;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$o;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->g:Landroidx/recyclerview/widget/RecyclerView$o;

    .line 31
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->g:Landroidx/recyclerview/widget/RecyclerView$o;

    return-object v0
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView$u;)V
    .locals 6

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u;->s()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_d

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$u;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u;->t()Z

    move-result v0

    if-nez v0, :cond_c

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u;->z()Z

    move-result v0

    if-nez v0, :cond_b

    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u;->f()Z

    move-result v0

    .line 6
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->k:Landroidx/recyclerview/widget/RecyclerView$g;

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->a(Landroidx/recyclerview/widget/RecyclerView$u;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    if-nez v3, :cond_3

    .line 8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u;->q()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v1

    goto :goto_5

    .line 9
    :cond_3
    :goto_1
    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:I

    if-lez v3, :cond_8

    const/16 v3, 0x20e

    .line 10
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$u;->b(I)Z

    move-result v3

    if-nez v3, :cond_8

    .line 11
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 12
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:I

    if-lt v3, v4, :cond_4

    if-lez v3, :cond_4

    .line 13
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$p;->e(I)V

    add-int/lit8 v3, v3, -0x1

    .line 14
    :cond_4
    sget-boolean v4, Landroidx/recyclerview/widget/RecyclerView;->A0:Z

    if-eqz v4, :cond_7

    if-lez v3, :cond_7

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->f0:La/o/a/c$b;

    iget v5, p1, Landroidx/recyclerview/widget/RecyclerView$u;->c:I

    .line 15
    invoke-virtual {v4, v5}, La/o/a/c$b;->a(I)Z

    move-result v4

    if-nez v4, :cond_7

    add-int/lit8 v3, v3, -0x1

    :goto_2
    if-ltz v3, :cond_6

    .line 16
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$u;

    iget v4, v4, Landroidx/recyclerview/widget/RecyclerView$u;->c:I

    .line 17
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->f0:La/o/a/c$b;

    invoke-virtual {v5, v4}, La/o/a/c$b;->a(I)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_6
    :goto_3
    add-int/2addr v3, v2

    .line 18
    :cond_7
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v3, v2

    goto :goto_4

    :cond_8
    move v3, v1

    :goto_4
    if-nez v3, :cond_9

    .line 19
    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/RecyclerView$p;->a(Landroidx/recyclerview/widget/RecyclerView$u;Z)V

    move v1, v2

    .line 20
    :cond_9
    :goto_5
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->f:Landroidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/ViewInfoStore;->h(Landroidx/recyclerview/widget/RecyclerView$u;)V

    if-nez v3, :cond_a

    if-nez v1, :cond_a

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 21
    iput-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$u;->r:Landroidx/recyclerview/widget/RecyclerView;

    :cond_a
    return-void

    .line 22
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 23
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->n()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_d
    :goto_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u;->s()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isAttached:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$u;->a:Landroid/view/View;

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_e

    move v1, v2

    :cond_e
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->n()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()I
    .locals 1

    .line 10
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public e(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$u;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$p;->a(Landroidx/recyclerview/widget/RecyclerView$u;Z)V

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public e(Landroidx/recyclerview/widget/RecyclerView$u;)V
    .locals 1

    .line 4
    iget-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView$u;->o:Z

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    const/4 v0, 0x0

    .line 7
    iput-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$u;->n:Landroidx/recyclerview/widget/RecyclerView$p;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView$u;->o:Z

    .line 9
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u;->c()V

    return-void
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$u;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->d:Ljava/util/List;

    return-object v0
.end method

.method public f(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->e:I

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$p;->j()V

    return-void
.end method

.method public f(Landroidx/recyclerview/widget/RecyclerView$u;)Z
    .locals 7

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$r;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$r;->d()Z

    move-result p1

    return p1

    .line 6
    :cond_0
    iget v0, p1, Landroidx/recyclerview/widget/RecyclerView$u;->c:I

    if-ltz v0, :cond_4

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->k:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$g;->a()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 7
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$r;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$r;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->k:Landroidx/recyclerview/widget/RecyclerView$g;

    iget v2, p1, Landroidx/recyclerview/widget/RecyclerView$u;->c:I

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$g;->b(I)I

    move-result v0

    .line 9
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u;->i()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    .line 10
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->k:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->b()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u;->h()J

    move-result-wide v3

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->k:Landroidx/recyclerview/widget/RecyclerView$g;

    iget p1, p1, Landroidx/recyclerview/widget/RecyclerView$u;->c:I

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->a(I)J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    return v2

    .line 12
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistency detected. Invalid view holder adapter position"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->n()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$u;

    .line 3
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$u;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 4
    iput-boolean v3, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->c:Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public h()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$u;

    if-eqz v2, :cond_0

    const/4 v3, 0x6

    .line 3
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$u;->a(I)V

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$u;->a(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->k:Landroidx/recyclerview/widget/RecyclerView$g;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->b()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$p;->i()V

    :cond_3
    return-void
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$p;->e(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->A0:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->f0:La/o/a/c$b;

    invoke-virtual {v0}, La/o/a/c$b;->a()V

    :cond_1
    return-void
.end method

.method public j()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->m:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->e:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:I

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 4
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$p;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView$p;->f:I

    if-le v1, v2, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$p;->e(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method
