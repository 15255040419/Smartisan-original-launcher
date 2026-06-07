.class public abstract Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ItemAnimator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$a;,
        Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;,
        Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;
    }
.end annotation


# instance fields
.field public a:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;",
            ">;"
        }
    .end annotation
.end field

.field public c:J

.field public d:J

.field public e:J

.field public f:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->a:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->b:Ljava/util/ArrayList;

    const-wide/16 v0, 0x78

    .line 4
    iput-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->c:J

    .line 5
    iput-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->d:J

    const-wide/16 v0, 0xfa

    .line 6
    iput-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->e:J

    .line 7
    iput-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->f:J

    return-void
.end method

.method public static e(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 3

    .line 2
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$u;->j:I

    and-int/lit8 v0, v0, 0xe

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$u;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$u;->k()I

    move-result v1

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$u;->g()I

    move-result p0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-eq p0, v2, :cond_1

    if-eq v1, p0, :cond_1

    or-int/lit16 v0, v0, 0x800

    :cond_1
    return v0
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView$r;Landroidx/recyclerview/widget/RecyclerView$u;)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$a;
    .locals 0

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->h()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$a;->a(Landroidx/recyclerview/widget/RecyclerView$u;)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$a;

    return-object p1
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$r;Landroidx/recyclerview/widget/RecyclerView$u;ILjava/util/List;)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$r;",
            "Landroidx/recyclerview/widget/RecyclerView$u;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$a;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->h()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$a;->a(Landroidx/recyclerview/widget/RecyclerView$u;)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$a;

    return-object p1
.end method

.method public final a()V
    .locals 3

    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 6
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    invoke-interface {v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;->onAnimationsFinished()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->a:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    return-void
.end method

.method public abstract a(Landroidx/recyclerview/widget/RecyclerView$u;)Z
.end method

.method public abstract a(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$a;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$a;)Z
.end method

.method public abstract a(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$a;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$a;)Z
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$u;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$u;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->a(Landroidx/recyclerview/widget/RecyclerView$u;)Z

    move-result p1

    return p1
.end method

.method public abstract b()V
.end method

.method public final b(Landroidx/recyclerview/widget/RecyclerView$u;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->d(Landroidx/recyclerview/widget/RecyclerView$u;)V

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->a:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;->onAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$u;)V

    :cond_0
    return-void
.end method

.method public abstract b(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$a;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$a;)Z
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->c:J

    return-wide v0
.end method

.method public abstract c(Landroidx/recyclerview/widget/RecyclerView$u;)V
.end method

.method public abstract c(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$a;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$a;)Z
.end method

.method public d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->f:J

    return-wide v0
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView$u;)V
    .locals 0

    return-void
.end method

.method public e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->e:J

    return-wide v0
.end method

.method public f()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->d:J

    return-wide v0
.end method

.method public abstract g()Z
.end method

.method public h()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$a;
    .locals 1

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$a;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$a;-><init>()V

    return-object v0
.end method

.method public abstract i()V
.end method
