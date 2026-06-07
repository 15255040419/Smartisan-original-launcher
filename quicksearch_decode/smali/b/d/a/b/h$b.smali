.class public Lb/d/a/b/h$b;
.super Ljava/lang/Object;
.source "LoadAndDisplayImageTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/d/a/b/h;->a(Lb/d/a/b/j/b$a;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/d/a/b/h;

.field public final synthetic b:Lb/d/a/b/j/b$a;

.field public final synthetic c:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lb/d/a/b/h;Lb/d/a/b/j/b$a;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/d/a/b/h$b;->a:Lb/d/a/b/h;

    iput-object p2, p0, Lb/d/a/b/h$b;->b:Lb/d/a/b/j/b$a;

    iput-object p3, p0, Lb/d/a/b/h$b;->c:Ljava/lang/Throwable;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lb/d/a/b/h$b;->a:Lb/d/a/b/h;

    iget-object v0, v0, Lb/d/a/b/h;->m:Lb/d/a/b/c;

    invoke-virtual {v0}, Lb/d/a/b/c;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/d/a/b/h$b;->a:Lb/d/a/b/h;

    iget-object v1, v0, Lb/d/a/b/h;->k:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    iget-object v2, v0, Lb/d/a/b/h;->m:Lb/d/a/b/c;

    .line 3
    invoke-static {v0}, Lb/d/a/b/h;->a(Lb/d/a/b/h;)Lb/d/a/b/e;

    move-result-object v0

    iget-object v0, v0, Lb/d/a/b/e;->a:Landroid/content/res/Resources;

    invoke-virtual {v2, v0}, Lb/d/a/b/c;->b(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4
    invoke-interface {v1, v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 5
    :cond_0
    iget-object v0, p0, Lb/d/a/b/h$b;->a:Lb/d/a/b/h;

    iget-object v1, v0, Lb/d/a/b/h;->n:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    iget-object v2, v0, Lb/d/a/b/h;->i:Ljava/lang/String;

    iget-object v0, v0, Lb/d/a/b/h;->k:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    invoke-interface {v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v0

    .line 6
    new-instance v3, Lb/d/a/b/j/b;

    iget-object v4, p0, Lb/d/a/b/h$b;->b:Lb/d/a/b/j/b$a;

    iget-object v5, p0, Lb/d/a/b/h$b;->c:Ljava/lang/Throwable;

    invoke-direct {v3, v4, v5}, Lb/d/a/b/j/b;-><init>(Lb/d/a/b/j/b$a;Ljava/lang/Throwable;)V

    .line 7
    invoke-interface {v1, v2, v0, v3}, Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;->onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lb/d/a/b/j/b;)V

    return-void
.end method
