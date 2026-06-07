.class public Lb/d/a/b/c$a;
.super Ljava/lang/Object;
.source "DisplayImageOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/d/a/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:Landroid/graphics/drawable/Drawable;

.field public f:Landroid/graphics/drawable/Drawable;

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Lb/d/a/b/j/d;

.field public k:Landroid/graphics/BitmapFactory$Options;

.field public l:I

.field public m:Z

.field public n:Ljava/lang/Object;

.field public o:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

.field public p:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

.field public q:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

.field public r:Landroid/os/Handler;

.field public s:Lcom/nostra13/universalimageloader/URIUtils/BusinessLogicProcesser;

.field public t:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lb/d/a/b/c$a;->a:I

    .line 3
    iput v0, p0, Lb/d/a/b/c$a;->b:I

    .line 4
    iput v0, p0, Lb/d/a/b/c$a;->c:I

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lb/d/a/b/c$a;->d:Landroid/graphics/drawable/Drawable;

    .line 6
    iput-object v1, p0, Lb/d/a/b/c$a;->e:Landroid/graphics/drawable/Drawable;

    .line 7
    iput-object v1, p0, Lb/d/a/b/c$a;->f:Landroid/graphics/drawable/Drawable;

    .line 8
    iput-boolean v0, p0, Lb/d/a/b/c$a;->g:Z

    .line 9
    iput-boolean v0, p0, Lb/d/a/b/c$a;->h:Z

    .line 10
    iput-boolean v0, p0, Lb/d/a/b/c$a;->i:Z

    .line 11
    sget-object v2, Lb/d/a/b/j/d;->b:Lb/d/a/b/j/d;

    iput-object v2, p0, Lb/d/a/b/c$a;->j:Lb/d/a/b/j/d;

    .line 12
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v2, p0, Lb/d/a/b/c$a;->k:Landroid/graphics/BitmapFactory$Options;

    .line 13
    iput v0, p0, Lb/d/a/b/c$a;->l:I

    .line 14
    iput-boolean v0, p0, Lb/d/a/b/c$a;->m:Z

    .line 15
    iput-object v1, p0, Lb/d/a/b/c$a;->n:Ljava/lang/Object;

    .line 16
    iput-object v1, p0, Lb/d/a/b/c$a;->o:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    .line 17
    iput-object v1, p0, Lb/d/a/b/c$a;->p:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    .line 18
    invoke-static {}, Lb/d/a/b/a;->a()Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    move-result-object v2

    iput-object v2, p0, Lb/d/a/b/c$a;->q:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    .line 19
    iput-object v1, p0, Lb/d/a/b/c$a;->r:Landroid/os/Handler;

    .line 20
    iput-object v1, p0, Lb/d/a/b/c$a;->s:Lcom/nostra13/universalimageloader/URIUtils/BusinessLogicProcesser;

    .line 21
    iput-boolean v0, p0, Lb/d/a/b/c$a;->t:Z

    .line 22
    iget-object v0, p0, Lb/d/a/b/c$a;->k:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 23
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    return-void
.end method

.method public static synthetic a(Lb/d/a/b/c$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lb/d/a/b/c$a;->a:I

    return p0
.end method

.method public static synthetic b(Lb/d/a/b/c$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lb/d/a/b/c$a;->b:I

    return p0
.end method

.method public static synthetic c(Lb/d/a/b/c$a;)Landroid/graphics/BitmapFactory$Options;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/d/a/b/c$a;->k:Landroid/graphics/BitmapFactory$Options;

    return-object p0
.end method

.method public static synthetic d(Lb/d/a/b/c$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lb/d/a/b/c$a;->l:I

    return p0
.end method

.method public static synthetic e(Lb/d/a/b/c$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lb/d/a/b/c$a;->m:Z

    return p0
.end method

.method public static synthetic f(Lb/d/a/b/c$a;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/d/a/b/c$a;->n:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic g(Lb/d/a/b/c$a;)Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/d/a/b/c$a;->o:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    return-object p0
.end method

.method public static synthetic h(Lb/d/a/b/c$a;)Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/d/a/b/c$a;->p:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    return-object p0
.end method

.method public static synthetic i(Lb/d/a/b/c$a;)Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/d/a/b/c$a;->q:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    return-object p0
.end method

.method public static synthetic j(Lb/d/a/b/c$a;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/d/a/b/c$a;->r:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic k(Lb/d/a/b/c$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lb/d/a/b/c$a;->t:Z

    return p0
.end method

.method public static synthetic l(Lb/d/a/b/c$a;)Lcom/nostra13/universalimageloader/URIUtils/BusinessLogicProcesser;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/d/a/b/c$a;->s:Lcom/nostra13/universalimageloader/URIUtils/BusinessLogicProcesser;

    return-object p0
.end method

.method public static synthetic m(Lb/d/a/b/c$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lb/d/a/b/c$a;->c:I

    return p0
.end method

.method public static synthetic n(Lb/d/a/b/c$a;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/d/a/b/c$a;->d:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic o(Lb/d/a/b/c$a;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/d/a/b/c$a;->e:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic p(Lb/d/a/b/c$a;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/d/a/b/c$a;->f:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic q(Lb/d/a/b/c$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lb/d/a/b/c$a;->g:Z

    return p0
.end method

.method public static synthetic r(Lb/d/a/b/c$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lb/d/a/b/c$a;->h:Z

    return p0
.end method

.method public static synthetic s(Lb/d/a/b/c$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lb/d/a/b/c$a;->i:Z

    return p0
.end method

.method public static synthetic t(Lb/d/a/b/c$a;)Lb/d/a/b/j/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/d/a/b/c$a;->j:Lb/d/a/b/j/d;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap$Config;)Lb/d/a/b/c$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 5
    iget-object v0, p0, Lb/d/a/b/c$a;->k:Landroid/graphics/BitmapFactory$Options;

    iput-object p1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bitmapConfig can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Lb/d/a/b/c$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lb/d/a/b/c$a;->d:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public a(Lb/d/a/b/c;)Lb/d/a/b/c$a;
    .locals 1

    .line 8
    invoke-static {p1}, Lb/d/a/b/c;->a(Lb/d/a/b/c;)I

    move-result v0

    iput v0, p0, Lb/d/a/b/c$a;->a:I

    .line 9
    invoke-static {p1}, Lb/d/a/b/c;->b(Lb/d/a/b/c;)I

    move-result v0

    iput v0, p0, Lb/d/a/b/c$a;->b:I

    .line 10
    invoke-static {p1}, Lb/d/a/b/c;->l(Lb/d/a/b/c;)I

    move-result v0

    iput v0, p0, Lb/d/a/b/c$a;->c:I

    .line 11
    invoke-static {p1}, Lb/d/a/b/c;->m(Lb/d/a/b/c;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lb/d/a/b/c$a;->d:Landroid/graphics/drawable/Drawable;

    .line 12
    invoke-static {p1}, Lb/d/a/b/c;->n(Lb/d/a/b/c;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lb/d/a/b/c$a;->e:Landroid/graphics/drawable/Drawable;

    .line 13
    invoke-static {p1}, Lb/d/a/b/c;->o(Lb/d/a/b/c;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lb/d/a/b/c$a;->f:Landroid/graphics/drawable/Drawable;

    .line 14
    invoke-static {p1}, Lb/d/a/b/c;->p(Lb/d/a/b/c;)Z

    move-result v0

    iput-boolean v0, p0, Lb/d/a/b/c$a;->g:Z

    .line 15
    invoke-static {p1}, Lb/d/a/b/c;->q(Lb/d/a/b/c;)Z

    move-result v0

    iput-boolean v0, p0, Lb/d/a/b/c$a;->h:Z

    .line 16
    invoke-static {p1}, Lb/d/a/b/c;->r(Lb/d/a/b/c;)Z

    move-result v0

    iput-boolean v0, p0, Lb/d/a/b/c$a;->i:Z

    .line 17
    invoke-static {p1}, Lb/d/a/b/c;->s(Lb/d/a/b/c;)Lb/d/a/b/j/d;

    move-result-object v0

    iput-object v0, p0, Lb/d/a/b/c$a;->j:Lb/d/a/b/j/d;

    .line 18
    invoke-static {p1}, Lb/d/a/b/c;->c(Lb/d/a/b/c;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iput-object v0, p0, Lb/d/a/b/c$a;->k:Landroid/graphics/BitmapFactory$Options;

    .line 19
    invoke-static {p1}, Lb/d/a/b/c;->d(Lb/d/a/b/c;)I

    move-result v0

    iput v0, p0, Lb/d/a/b/c$a;->l:I

    .line 20
    invoke-static {p1}, Lb/d/a/b/c;->e(Lb/d/a/b/c;)Z

    move-result v0

    iput-boolean v0, p0, Lb/d/a/b/c$a;->m:Z

    .line 21
    invoke-static {p1}, Lb/d/a/b/c;->f(Lb/d/a/b/c;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lb/d/a/b/c$a;->n:Ljava/lang/Object;

    .line 22
    invoke-static {p1}, Lb/d/a/b/c;->g(Lb/d/a/b/c;)Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    move-result-object v0

    iput-object v0, p0, Lb/d/a/b/c$a;->o:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    .line 23
    invoke-static {p1}, Lb/d/a/b/c;->h(Lb/d/a/b/c;)Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    move-result-object v0

    iput-object v0, p0, Lb/d/a/b/c$a;->p:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    .line 24
    invoke-static {p1}, Lb/d/a/b/c;->i(Lb/d/a/b/c;)Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    move-result-object v0

    iput-object v0, p0, Lb/d/a/b/c$a;->q:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    .line 25
    invoke-static {p1}, Lb/d/a/b/c;->j(Lb/d/a/b/c;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lb/d/a/b/c$a;->r:Landroid/os/Handler;

    .line 26
    invoke-static {p1}, Lb/d/a/b/c;->k(Lb/d/a/b/c;)Z

    move-result p1

    iput-boolean p1, p0, Lb/d/a/b/c$a;->t:Z

    return-object p0
.end method

.method public a(Lb/d/a/b/j/d;)Lb/d/a/b/c$a;
    .locals 0

    .line 4
    iput-object p1, p0, Lb/d/a/b/c$a;->j:Lb/d/a/b/j/d;

    return-object p0
.end method

.method public a(Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;)Lb/d/a/b/c$a;
    .locals 0

    .line 7
    iput-object p1, p0, Lb/d/a/b/c$a;->o:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    return-object p0
.end method

.method public a(Z)Lb/d/a/b/c$a;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lb/d/a/b/c$a;->h:Z

    return-object p0
.end method

.method public a()Lb/d/a/b/c;
    .locals 2

    .line 27
    new-instance v0, Lb/d/a/b/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lb/d/a/b/c;-><init>(Lb/d/a/b/c$a;Lb/d/a/b/c;)V

    return-object v0
.end method

.method public b(Z)Lb/d/a/b/c$a;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lb/d/a/b/c$a;->i:Z

    return-object p0
.end method

.method public c(Z)Lb/d/a/b/c$a;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lb/d/a/b/c$a;->t:Z

    return-object p0
.end method
