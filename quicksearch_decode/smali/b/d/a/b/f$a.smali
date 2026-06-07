.class public Lb/d/a/b/f$a;
.super Ljava/lang/Object;
.source "ImageLoaderEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/d/a/b/f;->a(Lb/d/a/b/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/d/a/b/f;

.field public final synthetic b:Lb/d/a/b/h;


# direct methods
.method public constructor <init>(Lb/d/a/b/f;Lb/d/a/b/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/d/a/b/f$a;->a:Lb/d/a/b/f;

    iput-object p2, p0, Lb/d/a/b/f$a;->b:Lb/d/a/b/h;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/d/a/b/f$a;->a:Lb/d/a/b/f;

    iget-object v0, v0, Lb/d/a/b/f;->a:Lb/d/a/b/e;

    iget-object v0, v0, Lb/d/a/b/e;->o:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    iget-object v1, p0, Lb/d/a/b/f$a;->b:Lb/d/a/b/h;

    invoke-virtual {v1}, Lb/d/a/b/h;->i()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lb/d/a/b/f$a;->a:Lb/d/a/b/f;

    invoke-static {v1}, Lb/d/a/b/f;->a(Lb/d/a/b/f;)V

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lb/d/a/b/f$a;->a:Lb/d/a/b/f;

    invoke-static {v0}, Lb/d/a/b/f;->b(Lb/d/a/b/f;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lb/d/a/b/f$a;->b:Lb/d/a/b/h;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Lb/d/a/b/f$a;->a:Lb/d/a/b/f;

    invoke-static {v0}, Lb/d/a/b/f;->c(Lb/d/a/b/f;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lb/d/a/b/f$a;->b:Lb/d/a/b/h;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method
