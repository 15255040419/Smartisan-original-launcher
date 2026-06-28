.class public Lcom/amap/api/mapcore2d/cd;
.super Ljava/lang/Object;
.source "TileOverlayDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore2d/aq;


# static fields
.field private static a:I


# instance fields
.field private b:Lcom/amap/api/mapcore2d/ce;

.field private c:Lcom/amap/api/mapcore2d/at;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps2d/model/TileOverlayOptions;Lcom/amap/api/mapcore2d/ce;Lcom/amap/api/mapcore2d/bf;Lcom/amap/api/mapcore2d/bk;Landroid/content/Context;)V
    .locals 9

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p2, p0, Lcom/amap/api/mapcore2d/cd;->b:Lcom/amap/api/mapcore2d/ce;

    .line 52
    new-instance v0, Lcom/amap/api/mapcore2d/at;

    invoke-direct {v0, p3}, Lcom/amap/api/mapcore2d/at;-><init>(Lcom/amap/api/mapcore2d/bf;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/cd;->c:Lcom/amap/api/mapcore2d/at;

    .line 53
    iget-object p3, p0, Lcom/amap/api/mapcore2d/cd;->c:Lcom/amap/api/mapcore2d/at;

    const/4 v0, 0x0

    iput-boolean v0, p3, Lcom/amap/api/mapcore2d/at;->e:Z

    .line 56
    iput-boolean v0, p3, Lcom/amap/api/mapcore2d/at;->g:Z

    .line 57
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/TileOverlayOptions;->getDiskCacheEnabled()Z

    move-result v1

    iput-boolean v1, p3, Lcom/amap/api/mapcore2d/at;->f:Z

    .line 59
    iget-object p3, p0, Lcom/amap/api/mapcore2d/cd;->c:Lcom/amap/api/mapcore2d/at;

    new-instance v1, Lcom/amap/api/mapcore2d/bx;

    invoke-direct {v1}, Lcom/amap/api/mapcore2d/bx;-><init>()V

    iput-object v1, p3, Lcom/amap/api/mapcore2d/at;->p:Lcom/amap/api/mapcore2d/bx;

    .line 60
    iget-object p3, p0, Lcom/amap/api/mapcore2d/cd;->c:Lcom/amap/api/mapcore2d/at;

    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/TileOverlayOptions;->getTileProvider()Lcom/amap/api/maps2d/model/TileProvider;

    move-result-object v1

    iput-object v1, p3, Lcom/amap/api/mapcore2d/at;->k:Lcom/amap/api/maps2d/model/TileProvider;

    .line 61
    iget-object p3, p0, Lcom/amap/api/mapcore2d/cd;->c:Lcom/amap/api/mapcore2d/at;

    new-instance v8, Lcom/amap/api/mapcore2d/bm;

    iget-object v1, p4, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    iget v2, v1, Lcom/amap/api/mapcore2d/bk$a;->e:I

    iget-object v1, p4, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    iget v3, v1, Lcom/amap/api/mapcore2d/bk$a;->f:I

    iget-object v7, p0, Lcom/amap/api/mapcore2d/cd;->c:Lcom/amap/api/mapcore2d/at;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/amap/api/mapcore2d/bm;-><init>(IIZJLcom/amap/api/mapcore2d/at;)V

    iput-object v8, p3, Lcom/amap/api/mapcore2d/at;->n:Lcom/amap/api/mapcore2d/bm;

    .line 66
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/TileOverlayOptions;->getDiskCacheDir()Ljava/lang/String;

    move-result-object p3

    .line 67
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/amap/api/mapcore2d/cd;->c:Lcom/amap/api/mapcore2d/at;

    iput-boolean v0, v1, Lcom/amap/api/mapcore2d/at;->f:Z

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/cd;->c:Lcom/amap/api/mapcore2d/at;

    iput-object p3, v1, Lcom/amap/api/mapcore2d/at;->m:Ljava/lang/String;

    .line 71
    new-instance p3, Lcom/amap/api/mapcore2d/y;

    .line 72
    invoke-virtual {p2}, Lcom/amap/api/mapcore2d/ce;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v2, p0, Lcom/amap/api/mapcore2d/cd;->c:Lcom/amap/api/mapcore2d/at;

    invoke-direct {p3, p2, v0, v2}, Lcom/amap/api/mapcore2d/y;-><init>(Landroid/content/Context;ZLcom/amap/api/mapcore2d/at;)V

    iput-object p3, v1, Lcom/amap/api/mapcore2d/at;->o:Lcom/amap/api/mapcore2d/y;

    .line 74
    new-instance p2, Lcom/amap/api/mapcore2d/cg;

    iget-object p3, p0, Lcom/amap/api/mapcore2d/cd;->c:Lcom/amap/api/mapcore2d/at;

    invoke-direct {p2, p4, p5, p3}, Lcom/amap/api/mapcore2d/cg;-><init>(Lcom/amap/api/mapcore2d/bk;Landroid/content/Context;Lcom/amap/api/mapcore2d/at;)V

    .line 76
    iget-object p3, p0, Lcom/amap/api/mapcore2d/cd;->c:Lcom/amap/api/mapcore2d/at;

    iput-object p2, p3, Lcom/amap/api/mapcore2d/at;->q:Lcom/amap/api/mapcore2d/cg;

    const/4 p2, 0x1

    .line 77
    invoke-virtual {p3, p2}, Lcom/amap/api/mapcore2d/at;->a(Z)V

    .line 78
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/TileOverlayOptions;->isVisible()Z

    move-result p2

    iput-boolean p2, p0, Lcom/amap/api/mapcore2d/cd;->d:Z

    .line 79
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/cd;->c()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore2d/cd;->e:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/TileOverlayOptions;->getZIndex()F

    move-result p1

    iput p1, p0, Lcom/amap/api/mapcore2d/cd;->f:F

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 85
    sget v0, Lcom/amap/api/mapcore2d/cd;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/amap/api/mapcore2d/cd;->a:I

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/amap/api/mapcore2d/cd;->a:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cd;->b:Lcom/amap/api/mapcore2d/ce;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/ce;->b(Lcom/amap/api/mapcore2d/aq;)Z

    .line 94
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cd;->c:Lcom/amap/api/mapcore2d/at;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/at;->b()V

    .line 95
    iget-object p0, p0, Lcom/amap/api/mapcore2d/cd;->c:Lcom/amap/api/mapcore2d/at;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/at;->q:Lcom/amap/api/mapcore2d/cg;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/cg;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "TileOverlayDelegateImp"

    const-string v1, "remove"

    .line 97
    invoke-static {p0, v0, v1}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(F)V
    .locals 0

    .line 123
    iput p1, p0, Lcom/amap/api/mapcore2d/cd;->f:F

    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/amap/api/mapcore2d/cd;->c:Lcom/amap/api/mapcore2d/at;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/at;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 133
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/cd;->d:Z

    .line 134
    iget-object p0, p0, Lcom/amap/api/mapcore2d/cd;->c:Lcom/amap/api/mapcore2d/at;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/at;->a(Z)V

    return-void
.end method

.method public a(Lcom/amap/api/mapcore2d/aq;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public b()V
    .locals 2

    .line 107
    :try_start_0
    iget-object p0, p0, Lcom/amap/api/mapcore2d/cd;->c:Lcom/amap/api/mapcore2d/at;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/at;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "TileOverlayDelegateImp"

    const-string v1, "remove"

    .line 109
    invoke-static {p0, v0, v1}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cd;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "TileOverlay"

    .line 116
    invoke-static {v0}, Lcom/amap/api/mapcore2d/cd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/cd;->e:Ljava/lang/String;

    .line 118
    :cond_0
    iget-object p0, p0, Lcom/amap/api/mapcore2d/cd;->e:Ljava/lang/String;

    return-object p0
.end method

.method public d()F
    .locals 0

    .line 128
    iget p0, p0, Lcom/amap/api/mapcore2d/cd;->f:F

    return p0
.end method

.method public e()Z
    .locals 0

    .line 139
    iget-boolean p0, p0, Lcom/amap/api/mapcore2d/cd;->d:Z

    return p0
.end method

.method public f()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public g()V
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/amap/api/mapcore2d/cd;->c:Lcom/amap/api/mapcore2d/at;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/at;->q:Lcom/amap/api/mapcore2d/cg;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/cg;->c()V

    return-void
.end method

.method public h()V
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/amap/api/mapcore2d/cd;->c:Lcom/amap/api/mapcore2d/at;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/at;->q:Lcom/amap/api/mapcore2d/cg;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/cg;->d()V

    return-void
.end method

.method public i()V
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/amap/api/mapcore2d/cd;->c:Lcom/amap/api/mapcore2d/at;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/at;->q:Lcom/amap/api/mapcore2d/cg;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/cg;->b()V

    return-void
.end method
