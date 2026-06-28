.class public Lcom/amap/api/mapcore2d/be$a;
.super Landroid/view/ViewGroup$LayoutParams;
.source "MapOverlayViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Lcom/amap/api/maps2d/model/LatLng;

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(IILcom/amap/api/maps2d/model/LatLng;III)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 p1, 0x1

    .line 42
    iput p1, p0, Lcom/amap/api/mapcore2d/be$a;->a:I

    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lcom/amap/api/mapcore2d/be$a;->b:Lcom/amap/api/maps2d/model/LatLng;

    const/4 p1, 0x0

    .line 44
    iput p1, p0, Lcom/amap/api/mapcore2d/be$a;->c:I

    .line 45
    iput p1, p0, Lcom/amap/api/mapcore2d/be$a;->d:I

    const/16 p2, 0x33

    .line 46
    iput p2, p0, Lcom/amap/api/mapcore2d/be$a;->e:I

    .line 55
    iput p1, p0, Lcom/amap/api/mapcore2d/be$a;->a:I

    .line 56
    iput-object p3, p0, Lcom/amap/api/mapcore2d/be$a;->b:Lcom/amap/api/maps2d/model/LatLng;

    .line 57
    iput p4, p0, Lcom/amap/api/mapcore2d/be$a;->c:I

    .line 58
    iput p5, p0, Lcom/amap/api/mapcore2d/be$a;->d:I

    .line 59
    iput p6, p0, Lcom/amap/api/mapcore2d/be$a;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 42
    iput p1, p0, Lcom/amap/api/mapcore2d/be$a;->a:I

    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lcom/amap/api/mapcore2d/be$a;->b:Lcom/amap/api/maps2d/model/LatLng;

    const/4 p1, 0x0

    .line 44
    iput p1, p0, Lcom/amap/api/mapcore2d/be$a;->c:I

    .line 45
    iput p1, p0, Lcom/amap/api/mapcore2d/be$a;->d:I

    const/16 p1, 0x33

    .line 46
    iput p1, p0, Lcom/amap/api/mapcore2d/be$a;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 42
    iput p1, p0, Lcom/amap/api/mapcore2d/be$a;->a:I

    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lcom/amap/api/mapcore2d/be$a;->b:Lcom/amap/api/maps2d/model/LatLng;

    const/4 p1, 0x0

    .line 44
    iput p1, p0, Lcom/amap/api/mapcore2d/be$a;->c:I

    .line 45
    iput p1, p0, Lcom/amap/api/mapcore2d/be$a;->d:I

    const/16 p1, 0x33

    .line 46
    iput p1, p0, Lcom/amap/api/mapcore2d/be$a;->e:I

    return-void
.end method
