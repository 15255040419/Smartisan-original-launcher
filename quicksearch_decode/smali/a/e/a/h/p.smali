.class public La/e/a/h/p;
.super Ljava/lang/Object;
.source "Snapshot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/e/a/h/p$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "La/e/a/h/p$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(La/e/a/h/f;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/e/a/h/p;->e:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p1}, La/e/a/h/f;->w()I

    move-result v0

    iput v0, p0, La/e/a/h/p;->a:I

    .line 4
    invoke-virtual {p1}, La/e/a/h/f;->x()I

    move-result v0

    iput v0, p0, La/e/a/h/p;->b:I

    .line 5
    invoke-virtual {p1}, La/e/a/h/f;->t()I

    move-result v0

    iput v0, p0, La/e/a/h/p;->c:I

    .line 6
    invoke-virtual {p1}, La/e/a/h/f;->j()I

    move-result v0

    iput v0, p0, La/e/a/h/p;->d:I

    .line 7
    invoke-virtual {p1}, La/e/a/h/f;->c()Ljava/util/ArrayList;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/e/a/h/e;

    .line 10
    iget-object v3, p0, La/e/a/h/p;->e:Ljava/util/ArrayList;

    new-instance v4, La/e/a/h/p$a;

    invoke-direct {v4, v2}, La/e/a/h/p$a;-><init>(La/e/a/h/e;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(La/e/a/h/f;)V
    .locals 3

    .line 1
    iget v0, p0, La/e/a/h/p;->a:I

    invoke-virtual {p1, v0}, La/e/a/h/f;->s(I)V

    .line 2
    iget v0, p0, La/e/a/h/p;->b:I

    invoke-virtual {p1, v0}, La/e/a/h/f;->t(I)V

    .line 3
    iget v0, p0, La/e/a/h/p;->c:I

    invoke-virtual {p1, v0}, La/e/a/h/f;->p(I)V

    .line 4
    iget v0, p0, La/e/a/h/p;->d:I

    invoke-virtual {p1, v0}, La/e/a/h/f;->h(I)V

    .line 5
    iget-object v0, p0, La/e/a/h/p;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 6
    iget-object v2, p0, La/e/a/h/p;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/e/a/h/p$a;

    .line 7
    invoke-virtual {v2, p1}, La/e/a/h/p$a;->a(La/e/a/h/f;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(La/e/a/h/f;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, La/e/a/h/f;->w()I

    move-result v0

    iput v0, p0, La/e/a/h/p;->a:I

    .line 2
    invoke-virtual {p1}, La/e/a/h/f;->x()I

    move-result v0

    iput v0, p0, La/e/a/h/p;->b:I

    .line 3
    invoke-virtual {p1}, La/e/a/h/f;->t()I

    move-result v0

    iput v0, p0, La/e/a/h/p;->c:I

    .line 4
    invoke-virtual {p1}, La/e/a/h/f;->j()I

    move-result v0

    iput v0, p0, La/e/a/h/p;->d:I

    .line 5
    iget-object v0, p0, La/e/a/h/p;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 6
    iget-object v2, p0, La/e/a/h/p;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/e/a/h/p$a;

    .line 7
    invoke-virtual {v2, p1}, La/e/a/h/p$a;->b(La/e/a/h/f;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
