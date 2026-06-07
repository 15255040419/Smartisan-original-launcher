.class public final Lb/d/a/b/i;
.super Ljava/lang/Object;
.source "ProcessAndDisplayImageTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lb/d/a/b/f;

.field public final b:Landroid/graphics/Bitmap;

.field public final c:Lb/d/a/b/g;

.field public final d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lb/d/a/b/f;Landroid/graphics/Bitmap;Lb/d/a/b/g;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/d/a/b/i;->a:Lb/d/a/b/f;

    .line 3
    iput-object p2, p0, Lb/d/a/b/i;->b:Landroid/graphics/Bitmap;

    .line 4
    iput-object p3, p0, Lb/d/a/b/i;->c:Lb/d/a/b/g;

    .line 5
    iput-object p4, p0, Lb/d/a/b/i;->d:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lb/d/a/b/i;->c:Lb/d/a/b/g;

    iget-object v1, v1, Lb/d/a/b/g;->b:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "PostProcess image before displaying [%s]"

    invoke-static {v1, v0}, Lb/d/a/c/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lb/d/a/b/i;->c:Lb/d/a/b/g;

    iget-object v0, v0, Lb/d/a/b/g;->e:Lb/d/a/b/c;

    invoke-virtual {v0}, Lb/d/a/b/c;->h()Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lb/d/a/b/i;->b:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4
    new-instance v1, Lb/d/a/b/b;

    iget-object v2, p0, Lb/d/a/b/i;->c:Lb/d/a/b/g;

    iget-object v3, p0, Lb/d/a/b/i;->a:Lb/d/a/b/f;

    .line 5
    sget-object v4, Lb/d/a/b/j/f;->c:Lb/d/a/b/j/f;

    .line 6
    invoke-direct {v1, v0, v2, v3, v4}, Lb/d/a/b/b;-><init>(Landroid/graphics/Bitmap;Lb/d/a/b/g;Lb/d/a/b/f;Lb/d/a/b/j/f;)V

    .line 7
    iget-object v0, p0, Lb/d/a/b/i;->c:Lb/d/a/b/g;

    iget-object v0, v0, Lb/d/a/b/g;->e:Lb/d/a/b/c;

    invoke-virtual {v0}, Lb/d/a/b/c;->n()Z

    move-result v0

    iget-object v2, p0, Lb/d/a/b/i;->d:Landroid/os/Handler;

    iget-object v3, p0, Lb/d/a/b/i;->a:Lb/d/a/b/f;

    invoke-static {v1, v0, v2, v3}, Lb/d/a/b/h;->a(Ljava/lang/Runnable;ZLandroid/os/Handler;Lb/d/a/b/f;)V

    return-void
.end method
