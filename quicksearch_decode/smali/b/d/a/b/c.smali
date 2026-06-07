.class public final Lb/d/a/b/c;
.super Ljava/lang/Object;
.source "DisplayImageOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/d/a/b/c$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Landroid/graphics/drawable/Drawable;

.field public final e:Landroid/graphics/drawable/Drawable;

.field public final f:Landroid/graphics/drawable/Drawable;

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:Lb/d/a/b/j/d;

.field public final k:Landroid/graphics/BitmapFactory$Options;

.field public final l:I

.field public final m:Z

.field public final n:Ljava/lang/Object;

.field public final o:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

.field public final p:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

.field public final q:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

.field public final r:Landroid/os/Handler;

.field public final s:Lcom/nostra13/universalimageloader/URIUtils/BusinessLogicProcesser;

.field public final t:Z


# direct methods
.method public constructor <init>(Lb/d/a/b/c$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lb/d/a/b/c$a;->a(Lb/d/a/b/c$a;)I

    move-result v0

    iput v0, p0, Lb/d/a/b/c;->a:I

    .line 3
    invoke-static {p1}, Lb/d/a/b/c$a;->b(Lb/d/a/b/c$a;)I

    move-result v0

    iput v0, p0, Lb/d/a/b/c;->b:I

    .line 4
    invoke-static {p1}, Lb/d/a/b/c$a;->m(Lb/d/a/b/c$a;)I

    move-result v0

    iput v0, p0, Lb/d/a/b/c;->c:I

    .line 5
    invoke-static {p1}, Lb/d/a/b/c$a;->n(Lb/d/a/b/c$a;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lb/d/a/b/c;->d:Landroid/graphics/drawable/Drawable;

    .line 6
    invoke-static {p1}, Lb/d/a/b/c$a;->o(Lb/d/a/b/c$a;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lb/d/a/b/c;->e:Landroid/graphics/drawable/Drawable;

    .line 7
    invoke-static {p1}, Lb/d/a/b/c$a;->p(Lb/d/a/b/c$a;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lb/d/a/b/c;->f:Landroid/graphics/drawable/Drawable;

    .line 8
    invoke-static {p1}, Lb/d/a/b/c$a;->q(Lb/d/a/b/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lb/d/a/b/c;->g:Z

    .line 9
    invoke-static {p1}, Lb/d/a/b/c$a;->r(Lb/d/a/b/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lb/d/a/b/c;->h:Z

    .line 10
    invoke-static {p1}, Lb/d/a/b/c$a;->s(Lb/d/a/b/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lb/d/a/b/c;->i:Z

    .line 11
    invoke-static {p1}, Lb/d/a/b/c$a;->t(Lb/d/a/b/c$a;)Lb/d/a/b/j/d;

    move-result-object v0

    iput-object v0, p0, Lb/d/a/b/c;->j:Lb/d/a/b/j/d;

    .line 12
    invoke-static {p1}, Lb/d/a/b/c$a;->c(Lb/d/a/b/c$a;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iput-object v0, p0, Lb/d/a/b/c;->k:Landroid/graphics/BitmapFactory$Options;

    .line 13
    invoke-static {p1}, Lb/d/a/b/c$a;->d(Lb/d/a/b/c$a;)I

    move-result v0

    iput v0, p0, Lb/d/a/b/c;->l:I

    .line 14
    invoke-static {p1}, Lb/d/a/b/c$a;->e(Lb/d/a/b/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lb/d/a/b/c;->m:Z

    .line 15
    invoke-static {p1}, Lb/d/a/b/c$a;->f(Lb/d/a/b/c$a;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lb/d/a/b/c;->n:Ljava/lang/Object;

    .line 16
    invoke-static {p1}, Lb/d/a/b/c$a;->g(Lb/d/a/b/c$a;)Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    move-result-object v0

    iput-object v0, p0, Lb/d/a/b/c;->o:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    .line 17
    invoke-static {p1}, Lb/d/a/b/c$a;->h(Lb/d/a/b/c$a;)Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    move-result-object v0

    iput-object v0, p0, Lb/d/a/b/c;->p:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    .line 18
    invoke-static {p1}, Lb/d/a/b/c$a;->i(Lb/d/a/b/c$a;)Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    move-result-object v0

    iput-object v0, p0, Lb/d/a/b/c;->q:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    .line 19
    invoke-static {p1}, Lb/d/a/b/c$a;->j(Lb/d/a/b/c$a;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lb/d/a/b/c;->r:Landroid/os/Handler;

    .line 20
    invoke-static {p1}, Lb/d/a/b/c$a;->k(Lb/d/a/b/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lb/d/a/b/c;->t:Z

    .line 21
    invoke-static {p1}, Lb/d/a/b/c$a;->l(Lb/d/a/b/c$a;)Lcom/nostra13/universalimageloader/URIUtils/BusinessLogicProcesser;

    move-result-object p1

    iput-object p1, p0, Lb/d/a/b/c;->s:Lcom/nostra13/universalimageloader/URIUtils/BusinessLogicProcesser;

    return-void
.end method

.method public synthetic constructor <init>(Lb/d/a/b/c$a;Lb/d/a/b/c;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lb/d/a/b/c;-><init>(Lb/d/a/b/c$a;)V

    return-void
.end method

.method public static synthetic a(Lb/d/a/b/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lb/d/a/b/c;->a:I

    return p0
.end method

.method public static synthetic b(Lb/d/a/b/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lb/d/a/b/c;->b:I

    return p0
.end method

.method public static synthetic c(Lb/d/a/b/c;)Landroid/graphics/BitmapFactory$Options;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/d/a/b/c;->k:Landroid/graphics/BitmapFactory$Options;

    return-object p0
.end method

.method public static synthetic d(Lb/d/a/b/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lb/d/a/b/c;->l:I

    return p0
.end method

.method public static synthetic e(Lb/d/a/b/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lb/d/a/b/c;->m:Z

    return p0
.end method

.method public static synthetic f(Lb/d/a/b/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/d/a/b/c;->n:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic g(Lb/d/a/b/c;)Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/d/a/b/c;->o:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    return-object p0
.end method

.method public static synthetic h(Lb/d/a/b/c;)Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/d/a/b/c;->p:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    return-object p0
.end method

.method public static synthetic i(Lb/d/a/b/c;)Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/d/a/b/c;->q:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    return-object p0
.end method

.method public static synthetic j(Lb/d/a/b/c;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/d/a/b/c;->r:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic k(Lb/d/a/b/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lb/d/a/b/c;->t:Z

    return p0
.end method

.method public static synthetic l(Lb/d/a/b/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lb/d/a/b/c;->c:I

    return p0
.end method

.method public static synthetic m(Lb/d/a/b/c;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/d/a/b/c;->d:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic n(Lb/d/a/b/c;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/d/a/b/c;->e:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic o(Lb/d/a/b/c;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/d/a/b/c;->f:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic p(Lb/d/a/b/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lb/d/a/b/c;->g:Z

    return p0
.end method

.method public static synthetic q(Lb/d/a/b/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lb/d/a/b/c;->h:Z

    return p0
.end method

.method public static synthetic r(Lb/d/a/b/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lb/d/a/b/c;->i:Z

    return p0
.end method

.method public static synthetic s(Lb/d/a/b/c;)Lb/d/a/b/j/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/d/a/b/c;->j:Lb/d/a/b/j/d;

    return-object p0
.end method

.method public static u()Lb/d/a/b/c;
    .locals 1

    .line 1
    new-instance v0, Lb/d/a/b/c$a;

    invoke-direct {v0}, Lb/d/a/b/c$a;-><init>()V

    invoke-virtual {v0}, Lb/d/a/b/c$a;->a()Lb/d/a/b/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 2
    iget v0, p0, Lb/d/a/b/c;->b:I

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lb/d/a/b/c;->e:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object p1
.end method

.method public a()Lcom/nostra13/universalimageloader/URIUtils/BusinessLogicProcesser;
    .locals 1

    .line 4
    iget-object v0, p0, Lb/d/a/b/c;->s:Lcom/nostra13/universalimageloader/URIUtils/BusinessLogicProcesser;

    return-object v0
.end method

.method public b()Landroid/graphics/BitmapFactory$Options;
    .locals 1

    .line 4
    iget-object v0, p0, Lb/d/a/b/c;->k:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method public b(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 2
    iget v0, p0, Lb/d/a/b/c;->c:I

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lb/d/a/b/c;->f:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object p1
.end method

.method public c()I
    .locals 1

    .line 4
    iget v0, p0, Lb/d/a/b/c;->l:I

    return v0
.end method

.method public c(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 2
    iget v0, p0, Lb/d/a/b/c;->a:I

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lb/d/a/b/c;->d:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object p1
.end method

.method public d()Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;
    .locals 1

    .line 2
    iget-object v0, p0, Lb/d/a/b/c;->q:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    return-object v0
.end method

.method public e()Ljava/lang/Object;
    .locals 1

    .line 2
    iget-object v0, p0, Lb/d/a/b/c;->n:Ljava/lang/Object;

    return-object v0
.end method

.method public f()Landroid/os/Handler;
    .locals 1

    .line 2
    iget-object v0, p0, Lb/d/a/b/c;->r:Landroid/os/Handler;

    return-object v0
.end method

.method public g()Lb/d/a/b/j/d;
    .locals 1

    .line 2
    iget-object v0, p0, Lb/d/a/b/c;->j:Lb/d/a/b/j/d;

    return-object v0
.end method

.method public h()Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
    .locals 1

    .line 2
    iget-object v0, p0, Lb/d/a/b/c;->p:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    return-object v0
.end method

.method public i()Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;
    .locals 1

    .line 2
    iget-object v0, p0, Lb/d/a/b/c;->o:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    return-object v0
.end method

.method public j()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lb/d/a/b/c;->h:Z

    return v0
.end method

.method public k()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lb/d/a/b/c;->i:Z

    return v0
.end method

.method public l()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lb/d/a/b/c;->m:Z

    return v0
.end method

.method public m()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lb/d/a/b/c;->g:Z

    return v0
.end method

.method public n()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lb/d/a/b/c;->t:Z

    return v0
.end method

.method public o()Z
    .locals 1

    .line 2
    iget v0, p0, Lb/d/a/b/c;->l:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public p()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lb/d/a/b/c;->p:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public q()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lb/d/a/b/c;->o:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public r()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lb/d/a/b/c;->e:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lb/d/a/b/c;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public s()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lb/d/a/b/c;->f:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lb/d/a/b/c;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public t()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/d/a/b/c;->d:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lb/d/a/b/c;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
