.class public Lb/d/a/b/h$a;
.super Ljava/lang/Object;
.source "LoadAndDisplayImageTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/d/a/b/h;->a(II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/d/a/b/h;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Lb/d/a/b/h;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/d/a/b/h$a;->a:Lb/d/a/b/h;

    iput p2, p0, Lb/d/a/b/h$a;->b:I

    iput p3, p0, Lb/d/a/b/h$a;->c:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lb/d/a/b/h$a;->a:Lb/d/a/b/h;

    iget-object v1, v0, Lb/d/a/b/h;->o:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;

    iget-object v2, v0, Lb/d/a/b/h;->i:Ljava/lang/String;

    .line 2
    iget-object v0, v0, Lb/d/a/b/h;->k:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    invoke-interface {v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v0

    iget v3, p0, Lb/d/a/b/h$a;->b:I

    iget v4, p0, Lb/d/a/b/h$a;->c:I

    .line 3
    invoke-interface {v1, v2, v0, v3, v4}, Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;->onProgressUpdate(Ljava/lang/String;Landroid/view/View;II)V

    return-void
.end method
