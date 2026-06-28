.class Lcom/amap/api/mapcore2d/cq;
.super Landroid/widget/LinearLayout;
.source "ZoomControllerView.java"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/graphics/Bitmap;

.field private e:Landroid/graphics/Bitmap;

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Lcom/amap/api/mapcore2d/ay;

.field private j:Lcom/amap/api/mapcore2d/ad;

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/ay;Lcom/amap/api/mapcore2d/ad;)V
    .locals 1

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/amap/api/mapcore2d/cq;->k:I

    .line 53
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/cq;->setWillNotDraw(Z)V

    .line 55
    iput-object p2, p0, Lcom/amap/api/mapcore2d/cq;->i:Lcom/amap/api/mapcore2d/ay;

    .line 56
    iput-object p3, p0, Lcom/amap/api/mapcore2d/cq;->j:Lcom/amap/api/mapcore2d/ad;

    :try_start_0
    const-string p2, "zoomin_selected2d.png"

    .line 59
    invoke-static {p2}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore2d/cq;->a:Landroid/graphics/Bitmap;

    .line 60
    iget-object p2, p0, Lcom/amap/api/mapcore2d/cq;->a:Landroid/graphics/Bitmap;

    sget p3, Lcom/amap/api/mapcore2d/v;->a:F

    invoke-static {p2, p3}, Lcom/amap/api/mapcore2d/cz;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore2d/cq;->a:Landroid/graphics/Bitmap;

    const-string p2, "zoomin_unselected2d.png"

    .line 62
    invoke-static {p2}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore2d/cq;->b:Landroid/graphics/Bitmap;

    .line 63
    iget-object p2, p0, Lcom/amap/api/mapcore2d/cq;->b:Landroid/graphics/Bitmap;

    sget p3, Lcom/amap/api/mapcore2d/v;->a:F

    invoke-static {p2, p3}, Lcom/amap/api/mapcore2d/cz;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore2d/cq;->b:Landroid/graphics/Bitmap;

    const-string p2, "zoomout_selected2d.png"

    .line 66
    invoke-static {p2}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore2d/cq;->c:Landroid/graphics/Bitmap;

    .line 67
    iget-object p2, p0, Lcom/amap/api/mapcore2d/cq;->c:Landroid/graphics/Bitmap;

    sget p3, Lcom/amap/api/mapcore2d/v;->a:F

    invoke-static {p2, p3}, Lcom/amap/api/mapcore2d/cz;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore2d/cq;->c:Landroid/graphics/Bitmap;

    const-string p2, "zoomout_unselected2d.png"

    .line 69
    invoke-static {p2}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore2d/cq;->d:Landroid/graphics/Bitmap;

    .line 70
    iget-object p2, p0, Lcom/amap/api/mapcore2d/cq;->d:Landroid/graphics/Bitmap;

    sget p3, Lcom/amap/api/mapcore2d/v;->a:F

    invoke-static {p2, p3}, Lcom/amap/api/mapcore2d/cz;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore2d/cq;->d:Landroid/graphics/Bitmap;

    const-string p2, "zoomin_pressed2d.png"

    .line 73
    invoke-static {p2}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore2d/cq;->e:Landroid/graphics/Bitmap;

    const-string p2, "zoomout_pressed2d.png"

    .line 74
    invoke-static {p2}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore2d/cq;->f:Landroid/graphics/Bitmap;

    .line 76
    iget-object p2, p0, Lcom/amap/api/mapcore2d/cq;->e:Landroid/graphics/Bitmap;

    sget p3, Lcom/amap/api/mapcore2d/v;->a:F

    invoke-static {p2, p3}, Lcom/amap/api/mapcore2d/cz;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore2d/cq;->e:Landroid/graphics/Bitmap;

    .line 78
    iget-object p2, p0, Lcom/amap/api/mapcore2d/cq;->f:Landroid/graphics/Bitmap;

    sget p3, Lcom/amap/api/mapcore2d/v;->a:F

    invoke-static {p2, p3}, Lcom/amap/api/mapcore2d/cz;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore2d/cq;->f:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string p3, "ZoomControllerView"

    .line 82
    invoke-static {p2, p3, p3}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :goto_0
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amap/api/mapcore2d/cq;->g:Landroid/widget/ImageView;

    .line 86
    iget-object p2, p0, Lcom/amap/api/mapcore2d/cq;->g:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/amap/api/mapcore2d/cq;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 87
    iget-object p2, p0, Lcom/amap/api/mapcore2d/cq;->g:Landroid/widget/ImageView;

    new-instance p3, Lcom/amap/api/mapcore2d/cq$1;

    invoke-direct {p3, p0}, Lcom/amap/api/mapcore2d/cq$1;-><init>(Lcom/amap/api/mapcore2d/cq;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amap/api/mapcore2d/cq;->h:Landroid/widget/ImageView;

    .line 104
    iget-object p1, p0, Lcom/amap/api/mapcore2d/cq;->h:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/amap/api/mapcore2d/cq;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 106
    iget-object p1, p0, Lcom/amap/api/mapcore2d/cq;->h:Landroid/widget/ImageView;

    new-instance p2, Lcom/amap/api/mapcore2d/cq$2;

    invoke-direct {p2, p0}, Lcom/amap/api/mapcore2d/cq$2;-><init>(Lcom/amap/api/mapcore2d/cq;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object p1, p0, Lcom/amap/api/mapcore2d/cq;->g:Landroid/widget/ImageView;

    new-instance p2, Lcom/amap/api/mapcore2d/cq$3;

    invoke-direct {p2, p0}, Lcom/amap/api/mapcore2d/cq$3;-><init>(Lcom/amap/api/mapcore2d/cq;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 144
    iget-object p1, p0, Lcom/amap/api/mapcore2d/cq;->h:Landroid/widget/ImageView;

    new-instance p2, Lcom/amap/api/mapcore2d/cq$4;

    invoke-direct {p2, p0}, Lcom/amap/api/mapcore2d/cq$4;-><init>(Lcom/amap/api/mapcore2d/cq;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 167
    iget-object p1, p0, Lcom/amap/api/mapcore2d/cq;->g:Landroid/widget/ImageView;

    const/4 p2, -0x2

    const/16 p3, 0x14

    invoke-virtual {p1, v0, v0, p3, p2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 168
    iget-object p1, p0, Lcom/amap/api/mapcore2d/cq;->h:Landroid/widget/ImageView;

    invoke-virtual {p1, v0, v0, p3, p3}, Landroid/widget/ImageView;->setPadding(IIII)V

    const/4 p1, 0x1

    .line 169
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/cq;->setOrientation(I)V

    .line 171
    iget-object p1, p0, Lcom/amap/api/mapcore2d/cq;->g:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/cq;->addView(Landroid/view/View;)V

    .line 172
    iget-object p1, p0, Lcom/amap/api/mapcore2d/cq;->h:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/cq;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/cq;)Landroid/graphics/Bitmap;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amap/api/mapcore2d/cq;->c:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic b(Lcom/amap/api/mapcore2d/cq;)Landroid/widget/ImageView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amap/api/mapcore2d/cq;->h:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic c(Lcom/amap/api/mapcore2d/cq;)Lcom/amap/api/mapcore2d/ad;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amap/api/mapcore2d/cq;->j:Lcom/amap/api/mapcore2d/ad;

    return-object p0
.end method

.method static synthetic d(Lcom/amap/api/mapcore2d/cq;)Landroid/graphics/Bitmap;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amap/api/mapcore2d/cq;->b:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic e(Lcom/amap/api/mapcore2d/cq;)Landroid/widget/ImageView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amap/api/mapcore2d/cq;->g:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic f(Lcom/amap/api/mapcore2d/cq;)Landroid/graphics/Bitmap;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amap/api/mapcore2d/cq;->a:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic g(Lcom/amap/api/mapcore2d/cq;)Lcom/amap/api/mapcore2d/ay;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amap/api/mapcore2d/cq;->i:Lcom/amap/api/mapcore2d/ay;

    return-object p0
.end method

.method static synthetic h(Lcom/amap/api/mapcore2d/cq;)Landroid/graphics/Bitmap;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amap/api/mapcore2d/cq;->d:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic i(Lcom/amap/api/mapcore2d/cq;)Landroid/graphics/Bitmap;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amap/api/mapcore2d/cq;->e:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic j(Lcom/amap/api/mapcore2d/cq;)Landroid/graphics/Bitmap;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amap/api/mapcore2d/cq;->f:Landroid/graphics/Bitmap;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cq;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 31
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cq;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 32
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cq;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 33
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cq;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 34
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cq;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 35
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cq;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/amap/api/mapcore2d/cq;->a:Landroid/graphics/Bitmap;

    .line 38
    iput-object v0, p0, Lcom/amap/api/mapcore2d/cq;->b:Landroid/graphics/Bitmap;

    .line 39
    iput-object v0, p0, Lcom/amap/api/mapcore2d/cq;->c:Landroid/graphics/Bitmap;

    .line 40
    iput-object v0, p0, Lcom/amap/api/mapcore2d/cq;->d:Landroid/graphics/Bitmap;

    .line 41
    iput-object v0, p0, Lcom/amap/api/mapcore2d/cq;->e:Landroid/graphics/Bitmap;

    .line 42
    iput-object v0, p0, Lcom/amap/api/mapcore2d/cq;->f:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "destory"

    const-string v1, "ZoomControllerView"

    .line 44
    invoke-static {p0, v1, v0}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(F)V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cq;->j:Lcom/amap/api/mapcore2d/ad;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ad;->g()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cq;->j:Lcom/amap/api/mapcore2d/ad;

    .line 190
    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ad;->h()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 191
    iget-object p1, p0, Lcom/amap/api/mapcore2d/cq;->g:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cq;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 192
    iget-object p1, p0, Lcom/amap/api/mapcore2d/cq;->h:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/cq;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cq;->j:Lcom/amap/api/mapcore2d/ad;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ad;->h()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 194
    iget-object p1, p0, Lcom/amap/api/mapcore2d/cq;->h:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cq;->d:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 195
    iget-object p1, p0, Lcom/amap/api/mapcore2d/cq;->g:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/cq;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cq;->j:Lcom/amap/api/mapcore2d/ad;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ad;->g()F

    move-result v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_2

    .line 197
    iget-object p1, p0, Lcom/amap/api/mapcore2d/cq;->g:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cq;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 198
    iget-object p1, p0, Lcom/amap/api/mapcore2d/cq;->h:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/cq;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 177
    iput p1, p0, Lcom/amap/api/mapcore2d/cq;->k:I

    .line 178
    iget-object p1, p0, Lcom/amap/api/mapcore2d/cq;->g:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/cq;->removeView(Landroid/view/View;)V

    .line 179
    iget-object p1, p0, Lcom/amap/api/mapcore2d/cq;->h:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/cq;->removeView(Landroid/view/View;)V

    .line 180
    iget-object p1, p0, Lcom/amap/api/mapcore2d/cq;->g:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/cq;->addView(Landroid/view/View;)V

    .line 181
    iget-object p1, p0, Lcom/amap/api/mapcore2d/cq;->h:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/cq;->addView(Landroid/view/View;)V

    return-void
.end method

.method public b()I
    .locals 0

    .line 185
    iget p0, p0, Lcom/amap/api/mapcore2d/cq;->k:I

    return p0
.end method
