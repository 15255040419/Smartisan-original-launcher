.class Lcom/amap/api/mapcore2d/cg;
.super Lcom/amap/api/mapcore2d/j;
.source "TileServer.java"

# interfaces
.implements Lcom/amap/api/mapcore2d/co;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/mapcore2d/j<",
        "Lcom/amap/api/mapcore2d/cc;",
        "Lcom/amap/api/mapcore2d/cc;",
        ">;",
        "Lcom/amap/api/mapcore2d/co;"
    }
.end annotation


# instance fields
.field private d:Landroid/content/Context;

.field private e:Lcom/amap/api/mapcore2d/at;

.field private f:Lcom/amap/api/mapcore2d/bk;

.field private g:Lcom/amap/api/mapcore2d/as;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/bk;Landroid/content/Context;Lcom/amap/api/mapcore2d/at;)V
    .locals 1

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore2d/j;-><init>(Lcom/amap/api/mapcore2d/bk;Landroid/content/Context;)V

    .line 313
    new-instance v0, Lcom/amap/api/mapcore2d/as;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/as;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/cg;->g:Lcom/amap/api/mapcore2d/as;

    .line 37
    iput-object p3, p0, Lcom/amap/api/mapcore2d/cg;->e:Lcom/amap/api/mapcore2d/at;

    .line 38
    iput-object p2, p0, Lcom/amap/api/mapcore2d/cg;->d:Landroid/content/Context;

    .line 39
    new-instance p2, Lcom/amap/api/mapcore2d/cb;

    invoke-direct {p2}, Lcom/amap/api/mapcore2d/cb;-><init>()V

    iput-object p2, p0, Lcom/amap/api/mapcore2d/cg;->a:Lcom/amap/api/mapcore2d/by;

    .line 40
    iget-object p2, p1, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {p2, p0}, Lcom/amap/api/mapcore2d/bk$d;->a(Lcom/amap/api/mapcore2d/co;)V

    .line 41
    iput-object p1, p0, Lcom/amap/api/mapcore2d/cg;->f:Lcom/amap/api/mapcore2d/bk;

    .line 42
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/cg;->a()V

    return-void
.end method

.method private a(Ljava/util/ArrayList;Lcom/amap/api/mapcore2d/at;FZ)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/mapcore2d/cc;",
            ">;",
            "Lcom/amap/api/mapcore2d/at;",
            "FZ)",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/mapcore2d/cc;",
            ">;"
        }
    .end annotation

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 201
    :cond_0
    invoke-virtual {p2}, Lcom/amap/api/mapcore2d/at;->a()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 204
    :cond_1
    iget-object v2, p2, Lcom/amap/api/mapcore2d/at;->p:Lcom/amap/api/mapcore2d/bx;

    if-nez v2, :cond_2

    return-object v1

    .line 208
    :cond_2
    iget-object v2, p2, Lcom/amap/api/mapcore2d/at;->p:Lcom/amap/api/mapcore2d/bx;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/bx;->clear()V

    .line 211
    iget v2, p2, Lcom/amap/api/mapcore2d/at;->c:I

    int-to-float v2, v2

    cmpl-float v2, p3, v2

    if-gtz v2, :cond_9

    iget v2, p2, Lcom/amap/api/mapcore2d/at;->d:I

    int-to-float v2, v2

    cmpg-float p3, p3, v2

    if-gez p3, :cond_3

    goto :goto_2

    .line 215
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-gtz p3, :cond_4

    return-object v1

    :cond_4
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_8

    .line 225
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore2d/cc;

    if-nez v2, :cond_5

    goto :goto_1

    .line 229
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    iget v4, v2, Lcom/amap/api/mapcore2d/cc;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "-"

    .line 231
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    iget v5, v2, Lcom/amap/api/mapcore2d/cc;->c:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    iget v4, v2, Lcom/amap/api/mapcore2d/cc;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 236
    iget-object v4, p2, Lcom/amap/api/mapcore2d/at;->n:Lcom/amap/api/mapcore2d/bm;

    .line 237
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/amap/api/mapcore2d/bm;->a(Ljava/lang/String;)I

    move-result v3

    .line 239
    new-instance v4, Lcom/amap/api/mapcore2d/cc;

    iget v5, v2, Lcom/amap/api/mapcore2d/cc;->b:I

    iget v6, v2, Lcom/amap/api/mapcore2d/cc;->c:I

    iget v7, v2, Lcom/amap/api/mapcore2d/cc;->d:I

    iget v8, p2, Lcom/amap/api/mapcore2d/at;->l:I

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/amap/api/mapcore2d/cc;-><init>(IIII)V

    .line 242
    iput v3, v4, Lcom/amap/api/mapcore2d/cc;->g:I

    .line 243
    iget-object v2, v2, Lcom/amap/api/mapcore2d/cc;->f:Landroid/graphics/PointF;

    iput-object v2, v4, Lcom/amap/api/mapcore2d/cc;->f:Landroid/graphics/PointF;

    .line 245
    iget-object v2, p2, Lcom/amap/api/mapcore2d/at;->p:Lcom/amap/api/mapcore2d/bx;

    invoke-virtual {v2, v4}, Lcom/amap/api/mapcore2d/bx;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-direct {p0, v4}, Lcom/amap/api/mapcore2d/cg;->a(Lcom/amap/api/mapcore2d/cc;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez p4, :cond_7

    .line 251
    iget-object v2, p0, Lcom/amap/api/mapcore2d/cg;->g:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v2, v4}, Lcom/amap/api/mapcore2d/as;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 252
    iget-boolean v2, p2, Lcom/amap/api/mapcore2d/at;->f:Z

    if-nez v2, :cond_6

    const/4 v2, -0x1

    .line 253
    iput v2, v4, Lcom/amap/api/mapcore2d/cc;->a:I

    .line 255
    :cond_6
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    return-object v0

    :cond_9
    :goto_2
    return-object v1
.end method

.method private a(Ljava/util/ArrayList;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/mapcore2d/cc;",
            ">;Z)V"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cg;->a:Lcom/amap/api/mapcore2d/by;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    iget-object p0, p0, Lcom/amap/api/mapcore2d/cg;->a:Lcom/amap/api/mapcore2d/by;

    invoke-virtual {p0, p1, p2}, Lcom/amap/api/mapcore2d/by;->a(Ljava/util/List;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Lcom/amap/api/mapcore2d/cc;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 310
    iget p0, p1, Lcom/amap/api/mapcore2d/cc;->g:I

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private c(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/mapcore2d/cc;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 130
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cg;->g:Lcom/amap/api/mapcore2d/as;

    if-nez v0, :cond_0

    goto :goto_1

    .line 133
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 138
    iget-object v2, p0, Lcom/amap/api/mapcore2d/cg;->g:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/mapcore2d/cc;

    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore2d/as;->a(Lcom/amap/api/mapcore2d/cc;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private j()Z
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cg;->b:Lcom/amap/api/mapcore2d/bk;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cg;->b:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    if-nez v0, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cg;->b:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bx;

    if-nez v0, :cond_1

    return v1

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cg;->b:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bx;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bx;->size()I

    move-result v0

    if-gtz v0, :cond_2

    return v1

    .line 187
    :cond_2
    iget-object p0, p0, Lcom/amap/api/mapcore2d/cg;->e:Lcom/amap/api/mapcore2d/at;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/at;->a()Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v1
.end method


# virtual methods
.method protected a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/mapcore2d/cc;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/mapcore2d/cc;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/AMapException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 52
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/cg;->b:Lcom/amap/api/mapcore2d/bk;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/amap/api/mapcore2d/cg;->b:Lcom/amap/api/mapcore2d/bk;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/amap/api/mapcore2d/cg;->b:Lcom/amap/api/mapcore2d/bk;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bx;

    if-nez v1, :cond_1

    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/cg;->a(Ljava/util/List;)V

    .line 74
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    .line 86
    :cond_2
    iget-object v1, p0, Lcom/amap/api/mapcore2d/cg;->e:Lcom/amap/api/mapcore2d/at;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/at;->j:Lcom/amap/api/mapcore2d/cn;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/mapcore2d/cg;->e:Lcom/amap/api/mapcore2d/at;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/at;->k:Lcom/amap/api/maps2d/model/TileProvider;

    if-eqz v1, :cond_4

    .line 88
    :cond_3
    new-instance v1, Lcom/amap/api/mapcore2d/ch;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/cg;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/cg;->e:Lcom/amap/api/mapcore2d/at;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/at;->k:Lcom/amap/api/maps2d/model/TileProvider;

    invoke-direct {v1, v2, p1, v3}, Lcom/amap/api/mapcore2d/ch;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/amap/api/maps2d/model/TileProvider;)V

    .line 92
    iget-object v2, p0, Lcom/amap/api/mapcore2d/cg;->e:Lcom/amap/api/mapcore2d/at;

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore2d/ch;->a(Lcom/amap/api/mapcore2d/at;)V

    .line 94
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/ch;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 95
    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/ch;->a(Lcom/amap/api/mapcore2d/at;)V

    move-object v0, v2

    .line 101
    :cond_4
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/cg;->c(Ljava/util/ArrayList;)V

    .line 102
    iget-object p1, p0, Lcom/amap/api/mapcore2d/cg;->b:Lcom/amap/api/mapcore2d/bk;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/amap/api/mapcore2d/cg;->b:Lcom/amap/api/mapcore2d/bk;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    if-nez p1, :cond_5

    goto :goto_0

    .line 105
    :cond_5
    iget-object p0, p0, Lcom/amap/api/mapcore2d/cg;->b:Lcom/amap/api/mapcore2d/bk;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bk$a;->b()V

    :cond_6
    :goto_0
    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/mapcore2d/cc;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 115
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 120
    iget-object v2, p0, Lcom/amap/api/mapcore2d/cg;->g:Lcom/amap/api/mapcore2d/as;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/mapcore2d/cc;

    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore2d/as;->b(Lcom/amap/api/mapcore2d/cc;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 122
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public a(ZZ)V
    .locals 4

    .line 264
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/cg;->j()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 268
    :cond_0
    iget-object p1, p0, Lcom/amap/api/mapcore2d/cg;->b:Lcom/amap/api/mapcore2d/bk;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cg;->b:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bf;->l:Lcom/amap/api/mapcore2d/ab;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/cg;->b:Lcom/amap/api/mapcore2d/bk;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    .line 271
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bf;->b()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore2d/cg;->b:Lcom/amap/api/mapcore2d/bk;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    .line 272
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/bk$d;->c()I

    move-result v2

    iget-object v3, p0, Lcom/amap/api/mapcore2d/cg;->b:Lcom/amap/api/mapcore2d/bk;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    .line 273
    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/bk$d;->d()I

    move-result v3

    .line 269
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/amap/api/mapcore2d/bf;->a(Lcom/amap/api/mapcore2d/ab;III)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 280
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    return-void

    .line 285
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cg;->e:Lcom/amap/api/mapcore2d/at;

    const/4 v1, 0x1

    .line 291
    iget-object v2, p0, Lcom/amap/api/mapcore2d/cg;->b:Lcom/amap/api/mapcore2d/bk;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    .line 292
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/bk$d;->e()F

    move-result v2

    .line 291
    invoke-direct {p0, p1, v0, v2, p2}, Lcom/amap/api/mapcore2d/cg;->a(Ljava/util/ArrayList;Lcom/amap/api/mapcore2d/at;FZ)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 295
    invoke-direct {p0, p2, v1}, Lcom/amap/api/mapcore2d/cg;->a(Ljava/util/ArrayList;Z)V

    .line 299
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 304
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 306
    iget-object p0, p0, Lcom/amap/api/mapcore2d/cg;->b:Lcom/amap/api/mapcore2d/bk;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bk$d;->g()Lcom/amap/api/mapcore2d/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    return-void
.end method

.method protected b(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/mapcore2d/cc;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/mapcore2d/cc;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 335
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const/4 v2, 0x0

    move-object v4, v0

    move v3, v1

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_c

    .line 346
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amap/api/mapcore2d/cc;

    if-nez v5, :cond_2

    goto/16 :goto_3

    .line 350
    :cond_2
    iget-object v6, p0, Lcom/amap/api/mapcore2d/cg;->b:Lcom/amap/api/mapcore2d/bk;

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/amap/api/mapcore2d/cg;->b:Lcom/amap/api/mapcore2d/bk;

    iget-object v6, v6, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/amap/api/mapcore2d/cg;->b:Lcom/amap/api/mapcore2d/bk;

    iget-object v6, v6, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    iget-object v6, v6, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bx;

    if-nez v6, :cond_3

    goto :goto_4

    .line 354
    :cond_3
    iget-object v6, p0, Lcom/amap/api/mapcore2d/cg;->b:Lcom/amap/api/mapcore2d/bk;

    iget-object v6, v6, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    iget-object v6, v6, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bx;

    invoke-virtual {v6}, Lcom/amap/api/mapcore2d/bx;->size()I

    .line 363
    iget-object v6, p0, Lcom/amap/api/mapcore2d/cg;->e:Lcom/amap/api/mapcore2d/at;

    iget-boolean v6, v6, Lcom/amap/api/mapcore2d/at;->f:Z

    if-nez v6, :cond_4

    goto :goto_3

    .line 370
    :cond_4
    iget-object v6, p0, Lcom/amap/api/mapcore2d/cg;->e:Lcom/amap/api/mapcore2d/at;

    iget-object v6, v6, Lcom/amap/api/mapcore2d/at;->o:Lcom/amap/api/mapcore2d/y;

    invoke-virtual {v6, v5}, Lcom/amap/api/mapcore2d/y;->a(Lcom/amap/api/mapcore2d/cc;)I

    move-result v6

    if-ltz v6, :cond_8

    .line 373
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v1, v1, -0x1

    .line 379
    iget-object v7, p0, Lcom/amap/api/mapcore2d/cg;->e:Lcom/amap/api/mapcore2d/at;

    iget-object v7, v7, Lcom/amap/api/mapcore2d/at;->p:Lcom/amap/api/mapcore2d/bx;

    if-nez v7, :cond_5

    goto :goto_3

    .line 385
    :cond_5
    invoke-virtual {v7}, Lcom/amap/api/mapcore2d/bx;->size()I

    move-result v8

    move v9, v2

    :goto_1
    if-ge v9, v8, :cond_a

    .line 389
    invoke-virtual {v7, v9}, Lcom/amap/api/mapcore2d/bx;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/amap/api/mapcore2d/cc;

    if-nez v10, :cond_6

    goto :goto_2

    .line 393
    :cond_6
    invoke-virtual {v10, v5}, Lcom/amap/api/mapcore2d/cc;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 394
    iput v6, v10, Lcom/amap/api/mapcore2d/cc;->g:I

    .line 395
    iget-object v5, p0, Lcom/amap/api/mapcore2d/cg;->b:Lcom/amap/api/mapcore2d/bk;

    iget-object v5, v5, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    invoke-virtual {v5}, Lcom/amap/api/mapcore2d/bk$a;->b()V

    goto :goto_3

    :cond_7
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_8
    if-nez v4, :cond_9

    .line 401
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 403
    :cond_9
    new-instance v6, Lcom/amap/api/mapcore2d/cc;

    invoke-direct {v6, v5}, Lcom/amap/api/mapcore2d/cc;-><init>(Lcom/amap/api/mapcore2d/cc;)V

    const/4 v5, -0x1

    .line 404
    iput v5, v6, Lcom/amap/api/mapcore2d/cc;->a:I

    .line 405
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_b
    :goto_4
    return-object v0

    :cond_c
    return-object v4
.end method

.method public b()V
    .locals 1

    .line 27
    invoke-super {p0}, Lcom/amap/api/mapcore2d/j;->b()V

    .line 28
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cg;->g:Lcom/amap/api/mapcore2d/as;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/as;->clear()V

    .line 29
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cg;->f:Lcom/amap/api/mapcore2d/bk;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cg;->f:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/bk$d;->b(Lcom/amap/api/mapcore2d/co;)V

    :cond_0
    return-void
.end method

.method protected f()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method protected g()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x0

    .line 158
    invoke-virtual {p0, v0, v0}, Lcom/amap/api/mapcore2d/cg;->a(ZZ)V

    return-void
.end method
