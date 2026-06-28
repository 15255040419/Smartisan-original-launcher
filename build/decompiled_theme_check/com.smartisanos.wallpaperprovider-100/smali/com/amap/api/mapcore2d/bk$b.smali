.class public Lcom/amap/api/mapcore2d/bk$b;
.super Ljava/lang/Object;
.source "Mediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/bk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field b:I

.field final synthetic c:Lcom/amap/api/mapcore2d/bk;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/bk;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bk$b;->c:Lcom/amap/api/mapcore2d/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 197
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/bk$b;->a:Z

    .line 233
    iput p1, p0, Lcom/amap/api/mapcore2d/bk$b;->b:I

    .line 200
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bk$b;->e()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 237
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$b;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bk$a;->a(Lcom/amap/api/mapcore2d/bk$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$b;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bk$a;->b()V

    .line 240
    :cond_0
    iget v0, p0, Lcom/amap/api/mapcore2d/bk$b;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore2d/bk$b;->b:I

    .line 241
    iget v0, p0, Lcom/amap/api/mapcore2d/bk$b;->b:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_3

    rem-int/2addr v0, v1

    if-eqz v0, :cond_1

    goto :goto_1

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$b;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bx;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$b;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bx;

    .line 247
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bx;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 250
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$b;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bx;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bx;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 252
    iget-object v2, p0, Lcom/amap/api/mapcore2d/bk$b;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bx;

    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore2d/bx;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore2d/at;

    .line 253
    iget-object v2, v2, Lcom/amap/api/mapcore2d/at;->q:Lcom/amap/api/mapcore2d/cg;

    .line 254
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/cg;->i()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public b()V
    .locals 3

    .line 270
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$b;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/amap/api/mapcore2d/bk$d;->a:Z

    .line 272
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$b;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bx;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$b;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bx;

    .line 273
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bx;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$b;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bx;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bx;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 278
    iget-object v2, p0, Lcom/amap/api/mapcore2d/bk$b;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bx;

    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore2d/bx;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore2d/at;

    .line 279
    iget-object v2, v2, Lcom/amap/api/mapcore2d/at;->q:Lcom/amap/api/mapcore2d/cg;

    .line 280
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/cg;->b()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public c()V
    .locals 3

    .line 302
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$b;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bx;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$b;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bx;

    .line 303
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bx;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$b;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bx;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bx;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 308
    iget-object v2, p0, Lcom/amap/api/mapcore2d/bk$b;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bx;

    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore2d/bx;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore2d/at;

    .line 309
    iget-object v2, v2, Lcom/amap/api/mapcore2d/at;->q:Lcom/amap/api/mapcore2d/cg;

    .line 310
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/cg;->d()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public d()V
    .locals 3

    .line 327
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$b;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bx;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$b;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bx;

    .line 328
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bx;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$b;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bx;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bx;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 333
    iget-object v2, p0, Lcom/amap/api/mapcore2d/bk$b;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bx;

    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore2d/bx;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore2d/at;

    .line 334
    iget-object v2, v2, Lcom/amap/api/mapcore2d/at;->q:Lcom/amap/api/mapcore2d/cg;

    .line 335
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/cg;->c()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public e()V
    .locals 3

    .line 352
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$b;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bx;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$b;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bx;

    .line 353
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bx;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$b;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bx;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bx;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 358
    iget-object v2, p0, Lcom/amap/api/mapcore2d/bk$b;->c:Lcom/amap/api/mapcore2d/bk;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bx;

    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore2d/bx;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore2d/at;

    .line 359
    iget-object v2, v2, Lcom/amap/api/mapcore2d/at;->q:Lcom/amap/api/mapcore2d/cg;

    .line 360
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/cg;->h()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
