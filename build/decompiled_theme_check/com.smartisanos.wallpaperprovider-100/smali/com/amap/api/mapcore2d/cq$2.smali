.class Lcom/amap/api/mapcore2d/cq$2;
.super Ljava/lang/Object;
.source "ZoomControllerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore2d/cq;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/ay;Lcom/amap/api/mapcore2d/ad;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/cq;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/cq;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/amap/api/mapcore2d/cq$2;->a:Lcom/amap/api/mapcore2d/cq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 110
    iget-object p1, p0, Lcom/amap/api/mapcore2d/cq$2;->a:Lcom/amap/api/mapcore2d/cq;

    invoke-static {p1}, Lcom/amap/api/mapcore2d/cq;->e(Lcom/amap/api/mapcore2d/cq;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cq$2;->a:Lcom/amap/api/mapcore2d/cq;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cq;->f(Lcom/amap/api/mapcore2d/cq;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 111
    iget-object p1, p0, Lcom/amap/api/mapcore2d/cq$2;->a:Lcom/amap/api/mapcore2d/cq;

    invoke-static {p1}, Lcom/amap/api/mapcore2d/cq;->c(Lcom/amap/api/mapcore2d/cq;)Lcom/amap/api/mapcore2d/ad;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ad;->e()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore2d/cq;->a(F)V

    .line 113
    iget-object p1, p0, Lcom/amap/api/mapcore2d/cq$2;->a:Lcom/amap/api/mapcore2d/cq;

    invoke-static {p1}, Lcom/amap/api/mapcore2d/cq;->c(Lcom/amap/api/mapcore2d/cq;)Lcom/amap/api/mapcore2d/ad;

    move-result-object p1

    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ad;->e()F

    move-result p1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cq$2;->a:Lcom/amap/api/mapcore2d/cq;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cq;->c(Lcom/amap/api/mapcore2d/cq;)Lcom/amap/api/mapcore2d/ad;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ad;->h()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    .line 115
    iget-object p1, p0, Lcom/amap/api/mapcore2d/cq$2;->a:Lcom/amap/api/mapcore2d/cq;

    invoke-static {p1}, Lcom/amap/api/mapcore2d/cq;->b(Lcom/amap/api/mapcore2d/cq;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cq$2;->a:Lcom/amap/api/mapcore2d/cq;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cq;->h(Lcom/amap/api/mapcore2d/cq;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 117
    :cond_0
    iget-object p1, p0, Lcom/amap/api/mapcore2d/cq$2;->a:Lcom/amap/api/mapcore2d/cq;

    invoke-static {p1}, Lcom/amap/api/mapcore2d/cq;->b(Lcom/amap/api/mapcore2d/cq;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cq$2;->a:Lcom/amap/api/mapcore2d/cq;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cq;->a(Lcom/amap/api/mapcore2d/cq;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 118
    :goto_0
    iget-object p0, p0, Lcom/amap/api/mapcore2d/cq$2;->a:Lcom/amap/api/mapcore2d/cq;

    invoke-static {p0}, Lcom/amap/api/mapcore2d/cq;->g(Lcom/amap/api/mapcore2d/cq;)Lcom/amap/api/mapcore2d/ay;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ay;->d()Z

    return-void
.end method
