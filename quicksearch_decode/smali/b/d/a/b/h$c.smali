.class public Lb/d/a/b/h$c;
.super Ljava/lang/Object;
.source "LoadAndDisplayImageTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/d/a/b/h;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/d/a/b/h;


# direct methods
.method public constructor <init>(Lb/d/a/b/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/d/a/b/h$c;->a:Lb/d/a/b/h;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/d/a/b/h$c;->a:Lb/d/a/b/h;

    iget-object v1, v0, Lb/d/a/b/h;->n:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    iget-object v2, v0, Lb/d/a/b/h;->i:Ljava/lang/String;

    iget-object v0, v0, Lb/d/a/b/h;->k:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    invoke-interface {v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;->onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
