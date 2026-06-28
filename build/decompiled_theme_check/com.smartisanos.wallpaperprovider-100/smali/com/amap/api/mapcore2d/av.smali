.class Lcom/amap/api/mapcore2d/av;
.super Landroid/widget/LinearLayout;
.source "LocationView.java"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/widget/ImageView;

.field private e:Lcom/amap/api/mapcore2d/ad;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/bb;Lcom/amap/api/mapcore2d/ad;)V
    .locals 1

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 95
    iput-boolean p2, p0, Lcom/amap/api/mapcore2d/av;->f:Z

    .line 41
    iput-object p3, p0, Lcom/amap/api/mapcore2d/av;->e:Lcom/amap/api/mapcore2d/ad;

    :try_start_0
    const-string p3, "location_selected2d.png"

    .line 43
    invoke-static {p3}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p3

    iput-object p3, p0, Lcom/amap/api/mapcore2d/av;->a:Landroid/graphics/Bitmap;

    const-string p3, "location_pressed2d.png"

    .line 44
    invoke-static {p3}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p3

    iput-object p3, p0, Lcom/amap/api/mapcore2d/av;->b:Landroid/graphics/Bitmap;

    .line 45
    iget-object p3, p0, Lcom/amap/api/mapcore2d/av;->a:Landroid/graphics/Bitmap;

    sget v0, Lcom/amap/api/mapcore2d/v;->a:F

    invoke-static {p3, v0}, Lcom/amap/api/mapcore2d/cz;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p3

    iput-object p3, p0, Lcom/amap/api/mapcore2d/av;->a:Landroid/graphics/Bitmap;

    .line 46
    iget-object p3, p0, Lcom/amap/api/mapcore2d/av;->b:Landroid/graphics/Bitmap;

    sget v0, Lcom/amap/api/mapcore2d/v;->a:F

    invoke-static {p3, v0}, Lcom/amap/api/mapcore2d/cz;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p3

    iput-object p3, p0, Lcom/amap/api/mapcore2d/av;->b:Landroid/graphics/Bitmap;

    const-string p3, "location_unselected2d.png"

    .line 47
    invoke-static {p3}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p3

    iput-object p3, p0, Lcom/amap/api/mapcore2d/av;->c:Landroid/graphics/Bitmap;

    .line 48
    iget-object p3, p0, Lcom/amap/api/mapcore2d/av;->c:Landroid/graphics/Bitmap;

    sget v0, Lcom/amap/api/mapcore2d/v;->a:F

    invoke-static {p3, v0}, Lcom/amap/api/mapcore2d/cz;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p3

    iput-object p3, p0, Lcom/amap/api/mapcore2d/av;->c:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    const-string v0, "LocationView"

    .line 50
    invoke-static {p3, v0, v0}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :goto_0
    new-instance p3, Landroid/widget/ImageView;

    invoke-direct {p3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/amap/api/mapcore2d/av;->d:Landroid/widget/ImageView;

    .line 53
    iget-object p1, p0, Lcom/amap/api/mapcore2d/av;->d:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/amap/api/mapcore2d/av;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 54
    iget-object p1, p0, Lcom/amap/api/mapcore2d/av;->d:Landroid/widget/ImageView;

    const/16 p3, 0x14

    invoke-virtual {p1, p2, p3, p3, p2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 55
    iget-object p1, p0, Lcom/amap/api/mapcore2d/av;->d:Landroid/widget/ImageView;

    new-instance p2, Lcom/amap/api/mapcore2d/av$1;

    invoke-direct {p2, p0}, Lcom/amap/api/mapcore2d/av$1;-><init>(Lcom/amap/api/mapcore2d/av;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object p1, p0, Lcom/amap/api/mapcore2d/av;->d:Landroid/widget/ImageView;

    new-instance p2, Lcom/amap/api/mapcore2d/av$2;

    invoke-direct {p2, p0}, Lcom/amap/api/mapcore2d/av$2;-><init>(Lcom/amap/api/mapcore2d/av;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 92
    iget-object p1, p0, Lcom/amap/api/mapcore2d/av;->d:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/av;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/av;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/amap/api/mapcore2d/av;->f:Z

    return p0
.end method

.method static synthetic b(Lcom/amap/api/mapcore2d/av;)Landroid/graphics/Bitmap;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/amap/api/mapcore2d/av;->b:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic c(Lcom/amap/api/mapcore2d/av;)Landroid/widget/ImageView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/amap/api/mapcore2d/av;->d:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic d(Lcom/amap/api/mapcore2d/av;)Landroid/graphics/Bitmap;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/amap/api/mapcore2d/av;->a:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic e(Lcom/amap/api/mapcore2d/av;)Lcom/amap/api/mapcore2d/ad;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/amap/api/mapcore2d/av;->e:Lcom/amap/api/mapcore2d/ad;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/av;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 29
    iget-object v0, p0, Lcom/amap/api/mapcore2d/av;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 30
    iget-object v0, p0, Lcom/amap/api/mapcore2d/av;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/amap/api/mapcore2d/av;->a:Landroid/graphics/Bitmap;

    .line 32
    iput-object v0, p0, Lcom/amap/api/mapcore2d/av;->b:Landroid/graphics/Bitmap;

    .line 33
    iput-object v0, p0, Lcom/amap/api/mapcore2d/av;->c:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "destory"

    const-string v1, "LocationView"

    .line 35
    invoke-static {p0, v1, v0}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 98
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/av;->f:Z

    if-eqz p1, :cond_0

    .line 100
    iget-object p1, p0, Lcom/amap/api/mapcore2d/av;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/av;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/amap/api/mapcore2d/av;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/av;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 104
    :goto_0
    iget-object p0, p0, Lcom/amap/api/mapcore2d/av;->d:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
