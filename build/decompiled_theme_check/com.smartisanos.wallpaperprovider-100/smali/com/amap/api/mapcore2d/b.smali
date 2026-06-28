.class Lcom/amap/api/mapcore2d/b;
.super Landroid/view/View;
.source "AMapDelegateImpGLSurfaceView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Lcom/amap/api/mapcore2d/ad;
.implements Lcom/amap/api/mapcore2d/bn$b;
.implements Lcom/amap/api/mapcore2d/bw$a;
.implements Lcom/amap/api/mapcore2d/q$a;
.implements Lcom/amap/api/mapcore2d/s$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/b$b;,
        Lcom/amap/api/mapcore2d/b$a;
    }
.end annotation


# static fields
.field private static aB:I

.field private static aC:Landroid/graphics/Paint;

.field private static aD:Landroid/graphics/Bitmap;


# instance fields
.field private A:Lcom/amap/api/mapcore2d/bv;

.field private B:Lcom/amap/api/maps2d/LocationSource;

.field private C:Lcom/amap/api/mapcore2d/u;

.field private D:Lcom/amap/api/mapcore2d/a;

.field private E:Z

.field private F:Z

.field private G:Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;

.field private H:Lcom/amap/api/mapcore2d/p;

.field private I:Lcom/amap/api/maps2d/AMap$CancelableCallback;

.field private J:Lcom/amap/api/mapcore2d/bf;

.field private K:Z

.field private L:Z

.field private M:Landroid/view/View;

.field private N:Lcom/amap/api/maps2d/AMap$OnInfoWindowClickListener;

.field private O:Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;

.field private P:Lcom/amap/api/mapcore2d/bi;

.field private Q:Lcom/amap/api/maps2d/AMap$OnMarkerClickListener;

.field private R:Landroid/graphics/drawable/Drawable;

.field private S:Lcom/amap/api/mapcore2d/an;

.field private T:Z

.field private U:Z

.field private V:Z

.field private W:Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;

.field private Z:Lcom/amap/api/maps2d/AMap$OnMapTouchListener;

.field a:Lcom/amap/api/mapcore2d/bk;

.field private aA:I

.field private aE:I

.field private aF:Z

.field private aG:Lcom/amap/api/mapcore2d/b$a;

.field private aH:Ljava/lang/Thread;

.field private aa:Lcom/amap/api/maps2d/AMap$OnMapLongClickListener;

.field private ab:Lcom/amap/api/maps2d/AMap$OnMapLoadedListener;

.field private ac:Lcom/amap/api/maps2d/AMap$OnMapClickListener;

.field private ad:Z

.field private ae:Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;

.field private af:Ljava/util/Timer;

.field private ag:Ljava/util/TimerTask;

.field private ah:Landroid/os/Handler;

.field private ai:Landroid/os/Handler;

.field private aj:Landroid/graphics/Point;

.field private ak:Landroid/view/GestureDetector;

.field private al:Lcom/amap/api/mapcore2d/bn$a;

.field private am:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/GestureDetector$OnGestureListener;",
            ">;"
        }
    .end annotation
.end field

.field private an:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/mapcore2d/bn$b;",
            ">;"
        }
    .end annotation
.end field

.field private ao:Landroid/widget/Scroller;

.field private ap:I

.field private aq:I

.field private ar:Landroid/graphics/Matrix;

.field private as:F

.field private at:Z

.field private au:F

.field private av:F

.field private aw:I

.field private ax:I

.field private ay:J

.field private az:I

.field public b:Lcom/amap/api/mapcore2d/ay;

.field c:[F

.field d:Z

.field e:Lcom/amap/api/mapcore2d/bb;

.field f:Lcom/amap/api/mapcore2d/cq;

.field public g:Lcom/amap/api/mapcore2d/be;

.field protected h:Lcom/amap/api/mapcore2d/ar;

.field public i:Lcom/amap/api/mapcore2d/ce;

.field public j:Lcom/amap/api/mapcore2d/bc;

.field final k:Landroid/os/Handler;

.field private l:Landroid/content/Context;

.field private m:Z

.field private n:Z

.field private o:Lcom/amap/api/maps2d/model/Marker;

.field private p:Lcom/amap/api/mapcore2d/ah;

.field private final q:[I

.field private r:Z

.field private s:I

.field private t:Lcom/amap/api/mapcore2d/av;

.field private u:Landroid/location/Location;

.field private v:Lcom/amap/api/mapcore2d/g;

.field private w:Lcom/amap/api/maps2d/AMap$OnMyLocationChangeListener;

.field private x:Z

.field private y:Lcom/amap/api/mapcore2d/bo;

.field private z:Lcom/amap/api/mapcore2d/cp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xde

    const/16 v1, 0xd7

    const/16 v2, 0xd6

    .line 1886
    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/amap/api/mapcore2d/b;->aB:I

    const/4 v0, 0x0

    .line 1887
    sput-object v0, Lcom/amap/api/mapcore2d/b;->aC:Landroid/graphics/Paint;

    .line 1888
    sput-object v0, Lcom/amap/api/mapcore2d/b;->aD:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1280
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->m:Z

    const/4 v1, 0x1

    .line 96
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/b;->n:Z

    const/16 v2, 0x15

    new-array v2, v2, [I

    .line 99
    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/amap/api/mapcore2d/b;->q:[I

    .line 102
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/b;->r:Z

    .line 103
    iput v1, p0, Lcom/amap/api/mapcore2d/b;->s:I

    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 104
    iput-object v2, p0, Lcom/amap/api/mapcore2d/b;->c:[F

    .line 108
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->d:Z

    .line 113
    new-instance v2, Lcom/amap/api/mapcore2d/bb;

    invoke-direct {v2, p0}, Lcom/amap/api/mapcore2d/bb;-><init>(Lcom/amap/api/mapcore2d/b;)V

    iput-object v2, p0, Lcom/amap/api/mapcore2d/b;->e:Lcom/amap/api/mapcore2d/bb;

    .line 120
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/b;->x:Z

    const/4 v2, 0x0

    .line 129
    iput-object v2, p0, Lcom/amap/api/mapcore2d/b;->D:Lcom/amap/api/mapcore2d/a;

    .line 130
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->E:Z

    .line 131
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->F:Z

    .line 148
    iput-object v2, p0, Lcom/amap/api/mapcore2d/b;->I:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    .line 150
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->K:Z

    .line 151
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->L:Z

    .line 157
    iput-object v2, p0, Lcom/amap/api/mapcore2d/b;->R:Landroid/graphics/drawable/Drawable;

    .line 159
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->T:Z

    .line 160
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->U:Z

    .line 161
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->V:Z

    .line 167
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->ad:Z

    .line 168
    iput-object v2, p0, Lcom/amap/api/mapcore2d/b;->ae:Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;

    .line 172
    iput-object v2, p0, Lcom/amap/api/mapcore2d/b;->af:Ljava/util/Timer;

    .line 174
    new-instance v3, Lcom/amap/api/mapcore2d/c;

    invoke-direct {v3, p0}, Lcom/amap/api/mapcore2d/c;-><init>(Lcom/amap/api/mapcore2d/b;)V

    iput-object v3, p0, Lcom/amap/api/mapcore2d/b;->ag:Ljava/util/TimerTask;

    .line 180
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/amap/api/mapcore2d/b;->ah:Landroid/os/Handler;

    .line 182
    new-instance v3, Lcom/amap/api/mapcore2d/d;

    invoke-direct {v3, p0}, Lcom/amap/api/mapcore2d/d;-><init>(Lcom/amap/api/mapcore2d/b;)V

    iput-object v3, p0, Lcom/amap/api/mapcore2d/b;->ai:Landroid/os/Handler;

    .line 198
    new-instance v3, Lcom/amap/api/mapcore2d/e;

    invoke-direct {v3, p0}, Lcom/amap/api/mapcore2d/e;-><init>(Lcom/amap/api/mapcore2d/b;)V

    iput-object v3, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/os/Handler;

    .line 1853
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/amap/api/mapcore2d/b;->am:Ljava/util/ArrayList;

    .line 1854
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/amap/api/mapcore2d/b;->an:Ljava/util/ArrayList;

    .line 1856
    iput v0, p0, Lcom/amap/api/mapcore2d/b;->ap:I

    .line 1857
    iput v0, p0, Lcom/amap/api/mapcore2d/b;->aq:I

    .line 1858
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/amap/api/mapcore2d/b;->ar:Landroid/graphics/Matrix;

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1859
    iput v3, p0, Lcom/amap/api/mapcore2d/b;->as:F

    .line 1860
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->at:Z

    const-wide/16 v3, 0x0

    .line 1865
    iput-wide v3, p0, Lcom/amap/api/mapcore2d/b;->ay:J

    .line 1866
    iput v0, p0, Lcom/amap/api/mapcore2d/b;->az:I

    .line 1867
    iput v0, p0, Lcom/amap/api/mapcore2d/b;->aA:I

    .line 2313
    iput v0, p0, Lcom/amap/api/mapcore2d/b;->aE:I

    .line 2315
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->aF:Z

    .line 2531
    iput-object v2, p0, Lcom/amap/api/mapcore2d/b;->aG:Lcom/amap/api/mapcore2d/b$a;

    .line 2785
    new-instance v0, Lcom/amap/api/mapcore2d/f;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/f;-><init>(Lcom/amap/api/mapcore2d/b;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->aH:Ljava/lang/Thread;

    .line 1281
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->T()V

    .line 1282
    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore2d/b;->setClickable(Z)V

    .line 1283
    invoke-direct {p0, p1, v2}, Lcom/amap/api/mapcore2d/b;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x989680
        0x4c4b40
        0x1e8480
        0xf4240
        0x7a120
        0x30d40
        0x186a0
        0xc350
        0x7530
        0x4e20
        0x2710
        0x1388
        0x7d0
        0x3e8
        0x1f4
        0xc8
        0x64
        0x32
        0x19
        0xa
        0x5
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1287
    invoke-direct {p0, p1, p2, v0}, Lcom/amap/api/mapcore2d/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1288
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore2d/b;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 1300
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 95
    iput-boolean p3, p0, Lcom/amap/api/mapcore2d/b;->m:Z

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->n:Z

    const/16 v1, 0x15

    new-array v1, v1, [I

    .line 99
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/amap/api/mapcore2d/b;->q:[I

    .line 102
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->r:Z

    .line 103
    iput v0, p0, Lcom/amap/api/mapcore2d/b;->s:I

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 104
    iput-object v1, p0, Lcom/amap/api/mapcore2d/b;->c:[F

    .line 108
    iput-boolean p3, p0, Lcom/amap/api/mapcore2d/b;->d:Z

    .line 113
    new-instance v1, Lcom/amap/api/mapcore2d/bb;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore2d/bb;-><init>(Lcom/amap/api/mapcore2d/b;)V

    iput-object v1, p0, Lcom/amap/api/mapcore2d/b;->e:Lcom/amap/api/mapcore2d/bb;

    .line 120
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->x:Z

    const/4 v1, 0x0

    .line 129
    iput-object v1, p0, Lcom/amap/api/mapcore2d/b;->D:Lcom/amap/api/mapcore2d/a;

    .line 130
    iput-boolean p3, p0, Lcom/amap/api/mapcore2d/b;->E:Z

    .line 131
    iput-boolean p3, p0, Lcom/amap/api/mapcore2d/b;->F:Z

    .line 148
    iput-object v1, p0, Lcom/amap/api/mapcore2d/b;->I:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    .line 150
    iput-boolean p3, p0, Lcom/amap/api/mapcore2d/b;->K:Z

    .line 151
    iput-boolean p3, p0, Lcom/amap/api/mapcore2d/b;->L:Z

    .line 157
    iput-object v1, p0, Lcom/amap/api/mapcore2d/b;->R:Landroid/graphics/drawable/Drawable;

    .line 159
    iput-boolean p3, p0, Lcom/amap/api/mapcore2d/b;->T:Z

    .line 160
    iput-boolean p3, p0, Lcom/amap/api/mapcore2d/b;->U:Z

    .line 161
    iput-boolean p3, p0, Lcom/amap/api/mapcore2d/b;->V:Z

    .line 167
    iput-boolean p3, p0, Lcom/amap/api/mapcore2d/b;->ad:Z

    .line 168
    iput-object v1, p0, Lcom/amap/api/mapcore2d/b;->ae:Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;

    .line 172
    iput-object v1, p0, Lcom/amap/api/mapcore2d/b;->af:Ljava/util/Timer;

    .line 174
    new-instance v2, Lcom/amap/api/mapcore2d/c;

    invoke-direct {v2, p0}, Lcom/amap/api/mapcore2d/c;-><init>(Lcom/amap/api/mapcore2d/b;)V

    iput-object v2, p0, Lcom/amap/api/mapcore2d/b;->ag:Ljava/util/TimerTask;

    .line 180
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/amap/api/mapcore2d/b;->ah:Landroid/os/Handler;

    .line 182
    new-instance v2, Lcom/amap/api/mapcore2d/d;

    invoke-direct {v2, p0}, Lcom/amap/api/mapcore2d/d;-><init>(Lcom/amap/api/mapcore2d/b;)V

    iput-object v2, p0, Lcom/amap/api/mapcore2d/b;->ai:Landroid/os/Handler;

    .line 198
    new-instance v2, Lcom/amap/api/mapcore2d/e;

    invoke-direct {v2, p0}, Lcom/amap/api/mapcore2d/e;-><init>(Lcom/amap/api/mapcore2d/b;)V

    iput-object v2, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/os/Handler;

    .line 1853
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/amap/api/mapcore2d/b;->am:Ljava/util/ArrayList;

    .line 1854
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/amap/api/mapcore2d/b;->an:Ljava/util/ArrayList;

    .line 1856
    iput p3, p0, Lcom/amap/api/mapcore2d/b;->ap:I

    .line 1857
    iput p3, p0, Lcom/amap/api/mapcore2d/b;->aq:I

    .line 1858
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/amap/api/mapcore2d/b;->ar:Landroid/graphics/Matrix;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1859
    iput v2, p0, Lcom/amap/api/mapcore2d/b;->as:F

    .line 1860
    iput-boolean p3, p0, Lcom/amap/api/mapcore2d/b;->at:Z

    const-wide/16 v2, 0x0

    .line 1865
    iput-wide v2, p0, Lcom/amap/api/mapcore2d/b;->ay:J

    .line 1866
    iput p3, p0, Lcom/amap/api/mapcore2d/b;->az:I

    .line 1867
    iput p3, p0, Lcom/amap/api/mapcore2d/b;->aA:I

    .line 2313
    iput p3, p0, Lcom/amap/api/mapcore2d/b;->aE:I

    .line 2315
    iput-boolean p3, p0, Lcom/amap/api/mapcore2d/b;->aF:Z

    .line 2531
    iput-object v1, p0, Lcom/amap/api/mapcore2d/b;->aG:Lcom/amap/api/mapcore2d/b$a;

    .line 2785
    new-instance v1, Lcom/amap/api/mapcore2d/f;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore2d/f;-><init>(Lcom/amap/api/mapcore2d/b;)V

    iput-object v1, p0, Lcom/amap/api/mapcore2d/b;->aH:Ljava/lang/Thread;

    .line 1301
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->T()V

    .line 1302
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->l:Landroid/content/Context;

    new-array v0, v0, [I

    const v1, 0x1010211

    aput v1, v0, p3

    .line 1305
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1307
    invoke-virtual {v0, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 1308
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore2d/b;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void

    :array_0
    .array-data 4
        0x989680
        0x4c4b40
        0x1e8480
        0xf4240
        0x7a120
        0x30d40
        0x186a0
        0xc350
        0x7530
        0x4e20
        0x2710
        0x1388
        0x7d0
        0x3e8
        0x1f4
        0xc8
        0x64
        0x32
        0x19
        0xa
        0x5
    .end array-data
.end method

.method public static G()I
    .locals 1

    .line 1891
    sget v0, Lcom/amap/api/mapcore2d/b;->aB:I

    return v0
.end method

.method public static declared-synchronized H()Landroid/graphics/Paint;
    .locals 5

    const-class v0, Lcom/amap/api/mapcore2d/b;

    monitor-enter v0

    .line 1895
    :try_start_0
    sget-object v1, Lcom/amap/api/mapcore2d/b;->aC:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 1896
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/amap/api/mapcore2d/b;->aC:Landroid/graphics/Paint;

    .line 1897
    sget-object v1, Lcom/amap/api/mapcore2d/b;->aC:Landroid/graphics/Paint;

    const v2, -0x777778

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1898
    sget-object v1, Lcom/amap/api/mapcore2d/b;->aC:Landroid/graphics/Paint;

    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1899
    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    aput v4, v2, v3

    const/4 v3, 0x1

    const/high16 v4, 0x40200000    # 2.5f

    aput v4, v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 1901
    sget-object v2, Lcom/amap/api/mapcore2d/b;->aC:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 1903
    :cond_0
    sget-object v1, Lcom/amap/api/mapcore2d/b;->aC:Landroid/graphics/Paint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private T()V
    .locals 8

    .line 1250
    const-class v0, Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1252
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, "setLayerType"

    const/4 v5, 0x0

    if-ge v3, v1, :cond_1

    aget-object v6, v0, v3

    .line 1253
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v6, v5

    :goto_1
    if-eqz v6, :cond_2

    .line 1261
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "LAYER_TYPE_SOFTWARE"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 1262
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object v5, v1, v0

    invoke-virtual {v6, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string v0, "AMapDelegateImpGLSurfaceView"

    .line 1264
    invoke-static {p0, v0, v4}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method private U()V
    .locals 3

    .line 1422
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->l:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/b;->a(Landroid/content/Context;)V

    .line 1423
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1426
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/be;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Lcom/amap/api/mapcore2d/be;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private V()V
    .locals 2

    .line 1664
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bk;->a()V

    .line 1665
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ay;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1666
    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/ay;->a(Z)V

    .line 1667
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ay;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay;->e()V

    :cond_0
    const/4 v0, 0x0

    .line 1669
    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ay;

    .line 1671
    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    return-void
.end method

.method private W()V
    .locals 4

    .line 1677
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->K:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1678
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/b;->K:Z

    .line 1679
    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->V:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1680
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/b;->V:Z

    .line 1682
    invoke-static {}, Lcom/amap/api/mapcore2d/r;->a()Lcom/amap/api/mapcore2d/r;

    move-result-object v0

    .line 1683
    iput-boolean v2, v0, Lcom/amap/api/mapcore2d/r;->i:Z

    .line 1684
    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->e:Lcom/amap/api/mapcore2d/bb;

    invoke-virtual {v3, v0}, Lcom/amap/api/mapcore2d/bb;->a(Lcom/amap/api/mapcore2d/r;)V

    .line 1686
    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->L:Z

    if-eqz v0, :cond_2

    .line 1687
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/b;->L:Z

    .line 1689
    invoke-static {}, Lcom/amap/api/mapcore2d/r;->a()Lcom/amap/api/mapcore2d/r;

    move-result-object v0

    .line 1690
    iput-boolean v2, v0, Lcom/amap/api/mapcore2d/r;->i:Z

    .line 1691
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->e:Lcom/amap/api/mapcore2d/bb;

    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore2d/bb;->a(Lcom/amap/api/mapcore2d/r;)V

    .line 1693
    :cond_2
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/b;->U:Z

    .line 1694
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->W:Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->o:Lcom/amap/api/maps2d/model/Marker;

    if-eqz v1, :cond_3

    .line 1695
    invoke-interface {v0, v1}, Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;->onMarkerDragEnd(Lcom/amap/api/maps2d/model/Marker;)V

    const/4 v0, 0x0

    .line 1696
    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->o:Lcom/amap/api/maps2d/model/Marker;

    .line 1697
    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->p:Lcom/amap/api/mapcore2d/ah;

    :cond_3
    return-void
.end method

.method private X()V
    .locals 5

    .line 1985
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->aj:Landroid/graphics/Point;

    if-nez v0, :cond_0

    return-void

    .line 1988
    :cond_0
    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/amap/api/mapcore2d/b;->az:I

    sub-int/2addr v0, v1

    .line 1989
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->aj:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/amap/api/mapcore2d/b;->aA:I

    sub-int/2addr v1, v2

    .line 1990
    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->aj:Landroid/graphics/Point;

    iget v4, p0, Lcom/amap/api/mapcore2d/b;->az:I

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 1991
    iput v2, v3, Landroid/graphics/Point;->y:I

    .line 1992
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ay;

    invoke-virtual {p0, v0, v1}, Lcom/amap/api/mapcore2d/ay;->b(II)V

    return-void
.end method

.method private Y()Lcom/amap/api/maps2d/model/CameraPosition;
    .locals 7

    .line 2023
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->B()Lcom/amap/api/mapcore2d/ab;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2027
    :cond_0
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ab;->b()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x412e848000000000L    # 1000000.0

    div-double/2addr v1, v3

    .line 2028
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ab;->a()I

    move-result v0

    int-to-double v5, v0

    div-double/2addr v5, v3

    .line 2029
    new-instance v0, Lcom/amap/api/maps2d/model/LatLng;

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    .line 2030
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->e()F

    move-result p0

    .line 2031
    invoke-static {v0, p0}, Lcom/amap/api/maps2d/model/CameraPosition;->fromLatLngZoom(Lcom/amap/api/maps2d/model/LatLng;F)Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object p0

    return-object p0
.end method

.method private Z()V
    .locals 7

    .line 2633
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->A:Lcom/amap/api/mapcore2d/bv;

    if-nez v0, :cond_0

    return-void

    .line 2636
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v0

    .line 2637
    new-instance v1, Lcom/amap/api/mapcore2d/x;

    invoke-direct {v1}, Lcom/amap/api/mapcore2d/x;-><init>()V

    .line 2638
    new-instance v2, Lcom/amap/api/mapcore2d/x;

    invoke-direct {v2}, Lcom/amap/api/mapcore2d/x;-><init>()V

    const/4 v3, 0x0

    .line 2639
    invoke-virtual {p0, v3, v3, v1}, Lcom/amap/api/mapcore2d/b;->a(IILcom/amap/api/mapcore2d/x;)V

    .line 2640
    invoke-virtual {p0, v0, v3, v2}, Lcom/amap/api/mapcore2d/b;->a(IILcom/amap/api/mapcore2d/x;)V

    .line 2641
    new-instance v0, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v3, v1, Lcom/amap/api/mapcore2d/x;->b:D

    iget-wide v5, v1, Lcom/amap/api/mapcore2d/x;->a:D

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    new-instance v1, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v3, v2, Lcom/amap/api/mapcore2d/x;->b:D

    iget-wide v5, v2, Lcom/amap/api/mapcore2d/x;->a:D

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/cz;->a(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;)D

    .line 2644
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->e()F

    move-result v0

    float-to-int v0, v0

    .line 2645
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->q:[I

    aget v0, v1, v0

    .line 2650
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iget v1, v1, Lcom/amap/api/mapcore2d/bf;->b:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iget v1, v1, Lcom/amap/api/mapcore2d/bf;->a:I

    div-int/2addr v0, v1

    .line 2655
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iget v1, v1, Lcom/amap/api/mapcore2d/bf;->b:I

    div-int/lit8 v1, v1, 0x4

    .line 2657
    invoke-static {v0}, Lcom/amap/api/mapcore2d/cz;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 2658
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->A:Lcom/amap/api/mapcore2d/bv;

    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore2d/bv;->a(I)V

    .line 2659
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->A:Lcom/amap/api/mapcore2d/bv;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/bv;->a(Ljava/lang/String;)V

    .line 2660
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->A:Lcom/amap/api/mapcore2d/bv;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bv;->invalidate()V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/b;Lcom/amap/api/maps2d/AMap$CancelableCallback;)Lcom/amap/api/maps2d/AMap$CancelableCallback;
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->I:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/b;Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;)Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->ae:Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$OnMapTouchListener;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->Z:Lcom/amap/api/maps2d/AMap$OnMapTouchListener;

    return-object p0
.end method

.method private a(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLng;
    .locals 7

    .line 2122
    new-instance v6, Lcom/amap/api/mapcore2d/ak;

    invoke-direct {v6}, Lcom/amap/api/mapcore2d/ak;-><init>()V

    .line 2123
    iget-wide v1, p1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v3, p1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    move-object v0, p0

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/mapcore2d/b;->b(DDLcom/amap/api/mapcore2d/ak;)V

    .line 2124
    iget p1, v6, Lcom/amap/api/mapcore2d/ak;->b:I

    add-int/lit8 p1, p1, -0x3c

    iput p1, v6, Lcom/amap/api/mapcore2d/ak;->b:I

    .line 2125
    new-instance p1, Lcom/amap/api/mapcore2d/x;

    invoke-direct {p1}, Lcom/amap/api/mapcore2d/x;-><init>()V

    .line 2126
    iget v0, v6, Lcom/amap/api/mapcore2d/ak;->a:I

    iget v1, v6, Lcom/amap/api/mapcore2d/ak;->b:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/amap/api/mapcore2d/b;->a(IILcom/amap/api/mapcore2d/x;)V

    .line 2127
    new-instance p0, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v0, p1, Lcom/amap/api/mapcore2d/x;->b:D

    iget-wide v2, p1, Lcom/amap/api/mapcore2d/x;->a:D

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    return-object p0
.end method

.method private a(FLandroid/graphics/PointF;FF)V
    .locals 3

    .line 2437
    :try_start_0
    iget-object p2, p0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/ar;

    invoke-interface {p2}, Lcom/amap/api/mapcore2d/ar;->f()Z

    move-result p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_0

    return-void

    :catch_0
    move-exception p2

    const-string p3, "doScale"

    const-string p4, "AMapDelegateImpGLSurfaceView"

    .line 2441
    invoke-static {p2, p4, p3}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p2, 0x2

    .line 2444
    iput p2, p0, Lcom/amap/api/mapcore2d/b;->aE:I

    .line 2445
    iget-object p3, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object p3, p3, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {p3}, Lcom/amap/api/mapcore2d/bk$d;->c()I

    move-result p3

    div-int/2addr p3, p2

    .line 2446
    iget-object p4, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object p4, p4, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {p4}, Lcom/amap/api/mapcore2d/bk$d;->d()I

    move-result p4

    div-int/2addr p4, p2

    float-to-double p1, p1

    .line 2447
    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    div-double/2addr p1, v0

    .line 2448
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bk$d;->e()F

    move-result v0

    float-to-double v0, v0

    add-double/2addr v0, p1

    double-to-float p1, v0

    .line 2449
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/b;->a(F)F

    move-result p1

    .line 2450
    iget-object p2, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object p2, p2, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {p2}, Lcom/amap/api/mapcore2d/bk$d;->e()F

    move-result p2

    cmpl-float p2, p1, p2

    if-eqz p2, :cond_1

    .line 2451
    iget-object p2, p0, Lcom/amap/api/mapcore2d/b;->c:[F

    const/4 v0, 0x1

    aget v1, p2, v0

    const/4 v2, 0x0

    aput v1, p2, v2

    .line 2452
    aput p1, p2, v0

    .line 2453
    aget v1, p2, v2

    aget p2, p2, v0

    cmpl-float p2, v1, p2

    if-eqz p2, :cond_1

    .line 2454
    iget-object p2, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object p2, p2, Lcom/amap/api/mapcore2d/bk;->b:Lcom/amap/api/mapcore2d/bk$e;

    invoke-virtual {p2, p3, p4}, Lcom/amap/api/mapcore2d/bk$e;->a(II)Lcom/amap/api/mapcore2d/ab;

    move-result-object p2

    .line 2455
    iget-object p3, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object p3, p3, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {p3, p1}, Lcom/amap/api/mapcore2d/bk$d;->a(F)V

    .line 2456
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {p1, p2}, Lcom/amap/api/mapcore2d/bk$d;->a(Lcom/amap/api/mapcore2d/ab;)V

    .line 2457
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->Z()V

    :cond_1
    return-void
.end method

.method private a(II)V
    .locals 1

    .line 1996
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->aj:Landroid/graphics/Point;

    if-nez v0, :cond_0

    return-void

    .line 1999
    :cond_0
    iput p1, p0, Lcom/amap/api/mapcore2d/b;->az:I

    .line 2000
    iput p2, p0, Lcom/amap/api/mapcore2d/b;->aA:I

    .line 2001
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->X()V

    return-void
.end method

.method private a(IILcom/amap/api/mapcore2d/ak;)V
    .locals 7

    .line 2687
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->e()F

    .line 2688
    new-instance v1, Landroid/graphics/PointF;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-direct {v1, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2689
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/mapcore2d/bf;

    iget-object v2, v0, Lcom/amap/api/mapcore2d/bf;->l:Lcom/amap/api/mapcore2d/ab;

    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/mapcore2d/bf;

    iget-object v3, p1, Lcom/amap/api/mapcore2d/bf;->n:Landroid/graphics/Point;

    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/mapcore2d/bf;

    iget-wide v4, p1, Lcom/amap/api/mapcore2d/bf;->k:D

    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/mapcore2d/bf;

    iget-object v6, p0, Lcom/amap/api/mapcore2d/bf;->o:Lcom/amap/api/mapcore2d/bf$a;

    invoke-virtual/range {v0 .. v6}, Lcom/amap/api/mapcore2d/bf;->a(Landroid/graphics/PointF;Lcom/amap/api/mapcore2d/ab;Landroid/graphics/Point;DLcom/amap/api/mapcore2d/bf$a;)Lcom/amap/api/mapcore2d/ab;

    move-result-object p0

    if-eqz p3, :cond_0

    .line 2694
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ab;->e()D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p3, Lcom/amap/api/mapcore2d/ak;->a:I

    .line 2695
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ab;->f()D

    move-result-wide p0

    double-to-int p0, p0

    iput p0, p3, Lcom/amap/api/mapcore2d/ak;->b:I

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1870
    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->aj:Landroid/graphics/Point;

    .line 1871
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->ak:Landroid/view/GestureDetector;

    .line 1872
    invoke-static {p1, p0}, Lcom/amap/api/mapcore2d/bn;->a(Landroid/content/Context;Lcom/amap/api/mapcore2d/bn$b;)Lcom/amap/api/mapcore2d/bn$a;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->al:Lcom/amap/api/mapcore2d/bn$a;

    .line 1873
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->ao:Landroid/widget/Scroller;

    .line 1874
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1875
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 1876
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/amap/api/mapcore2d/b;->aw:I

    .line 1877
    iget v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/amap/api/mapcore2d/b;->ax:I

    .line 1878
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amap/api/mapcore2d/b;->ap:I

    .line 1879
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/amap/api/mapcore2d/b;->aq:I

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12

    const-string v0, "AMapDelegateImpGLSurfaceView"

    .line 1316
    invoke-static {p1}, Lcom/amap/api/mapcore2d/db;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amap/api/mapcore2d/v;->b:Ljava/lang/String;

    const-string v1, "initEnviornment"

    .line 1318
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->l:Landroid/content/Context;

    .line 1319
    new-instance v2, Lcom/amap/api/mapcore2d/bt;

    invoke-direct {v2, p0}, Lcom/amap/api/mapcore2d/bt;-><init>(Lcom/amap/api/mapcore2d/ad;)V

    iput-object v2, p0, Lcom/amap/api/mapcore2d/b;->S:Lcom/amap/api/mapcore2d/an;

    const/16 v2, 0xde

    const/16 v3, 0xd7

    const/16 v4, 0xd6

    .line 1320
    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/amap/api/mapcore2d/b;->setBackgroundColor(I)V

    .line 1322
    invoke-static {}, Lcom/amap/api/mapcore2d/s;->a()Lcom/amap/api/mapcore2d/s;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/amap/api/mapcore2d/s;->a(Lcom/amap/api/mapcore2d/s$a;)V

    .line 1323
    invoke-static {}, Lcom/amap/api/mapcore2d/bw;->a()Lcom/amap/api/mapcore2d/bw;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/amap/api/mapcore2d/bw;->a(Lcom/amap/api/mapcore2d/bw$a;)V

    .line 1324
    invoke-static {}, Lcom/amap/api/mapcore2d/q;->a()Lcom/amap/api/mapcore2d/q;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/amap/api/mapcore2d/q;->a(Lcom/amap/api/mapcore2d/q$a;)V

    .line 1325
    new-instance v2, Lcom/amap/api/mapcore2d/a;

    invoke-direct {v2, p0}, Lcom/amap/api/mapcore2d/a;-><init>(Lcom/amap/api/mapcore2d/b;)V

    iput-object v2, p0, Lcom/amap/api/mapcore2d/b;->D:Lcom/amap/api/mapcore2d/a;

    .line 1326
    new-instance v2, Lcom/amap/api/mapcore2d/g;

    invoke-direct {v2, p0}, Lcom/amap/api/mapcore2d/g;-><init>(Lcom/amap/api/mapcore2d/ad;)V

    iput-object v2, p0, Lcom/amap/api/mapcore2d/b;->v:Lcom/amap/api/mapcore2d/g;

    .line 1327
    new-instance v2, Lcom/amap/api/mapcore2d/p;

    invoke-direct {v2, p1}, Lcom/amap/api/mapcore2d/p;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/amap/api/mapcore2d/b;->H:Lcom/amap/api/mapcore2d/p;

    .line 1328
    new-instance p1, Lcom/amap/api/mapcore2d/ce;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->l:Landroid/content/Context;

    invoke-direct {p1, v2, p0}, Lcom/amap/api/mapcore2d/ce;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/ad;)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/ce;

    .line 1329
    new-instance p1, Lcom/amap/api/mapcore2d/bk;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->l:Landroid/content/Context;

    sget v3, Lcom/amap/api/mapcore2d/v;->i:I

    invoke-direct {p1, v2, p0, v3}, Lcom/amap/api/mapcore2d/bk;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/b;I)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    .line 1330
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/ce;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/amap/api/mapcore2d/ce;->a(Z)V

    .line 1331
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/mapcore2d/bf;

    .line 1333
    new-instance p1, Lcom/amap/api/mapcore2d/ay;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    invoke-direct {p1, v2}, Lcom/amap/api/mapcore2d/ay;-><init>(Lcom/amap/api/mapcore2d/bk;)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ay;

    .line 1334
    new-instance p1, Lcom/amap/api/mapcore2d/cl;

    invoke-direct {p1, p0}, Lcom/amap/api/mapcore2d/cl;-><init>(Lcom/amap/api/mapcore2d/ad;)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/ar;

    .line 1337
    new-instance p1, Lcom/amap/api/mapcore2d/cq;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->l:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ay;

    invoke-direct {p1, v2, v3, p0}, Lcom/amap/api/mapcore2d/cq;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/ay;Lcom/amap/api/mapcore2d/ad;)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/cq;

    .line 1338
    new-instance p1, Lcom/amap/api/mapcore2d/be;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->l:Landroid/content/Context;

    invoke-direct {p1, v2, p0}, Lcom/amap/api/mapcore2d/be;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/ad;)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/be;

    .line 1339
    new-instance p1, Lcom/amap/api/mapcore2d/av;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->l:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->e:Lcom/amap/api/mapcore2d/bb;

    invoke-direct {p1, v2, v3, p0}, Lcom/amap/api/mapcore2d/av;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/bb;Lcom/amap/api/mapcore2d/ad;)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->t:Lcom/amap/api/mapcore2d/av;

    .line 1340
    new-instance p1, Lcom/amap/api/mapcore2d/cp;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->l:Landroid/content/Context;

    invoke-direct {p1, v2, p0}, Lcom/amap/api/mapcore2d/cp;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/b;)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/cp;

    .line 1341
    new-instance p1, Lcom/amap/api/mapcore2d/bv;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->l:Landroid/content/Context;

    invoke-direct {p1, v2, p0}, Lcom/amap/api/mapcore2d/bv;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/b;)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->A:Lcom/amap/api/mapcore2d/bv;

    .line 1342
    new-instance p1, Lcom/amap/api/mapcore2d/u;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->l:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->e:Lcom/amap/api/mapcore2d/bb;

    invoke-direct {p1, v2, v3, p0}, Lcom/amap/api/mapcore2d/u;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/bb;Lcom/amap/api/mapcore2d/ad;)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->C:Lcom/amap/api/mapcore2d/u;

    .line 1343
    new-instance p1, Lcom/amap/api/mapcore2d/bc;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->l:Landroid/content/Context;

    invoke-direct {p1, v2, p2, p0}, Lcom/amap/api/mapcore2d/bc;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/amap/api/mapcore2d/b;)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/bc;

    .line 1344
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1347
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->U()V

    .line 1348
    iget-object p2, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/be;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/ce;

    invoke-virtual {p2, v2, p1}, Lcom/amap/api/mapcore2d/be;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1349
    iget-object p2, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/be;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/cp;

    invoke-virtual {p2, v2, p1}, Lcom/amap/api/mapcore2d/be;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1350
    iget-object p2, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/be;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->A:Lcom/amap/api/mapcore2d/bv;

    invoke-virtual {p2, v2, p1}, Lcom/amap/api/mapcore2d/be;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1351
    new-instance p2, Lcom/amap/api/mapcore2d/be$a;

    invoke-direct {p2, p1}, Lcom/amap/api/mapcore2d/be$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1353
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/be;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/bc;

    invoke-virtual {p1, v2, p2}, Lcom/amap/api/mapcore2d/be;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1354
    new-instance p1, Lcom/amap/api/mapcore2d/be$a;

    new-instance v6, Lcom/amap/api/maps2d/model/LatLng;

    const-wide/16 v10, 0x0

    invoke-direct {v6, v10, v11, v10, v11}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x53

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lcom/amap/api/mapcore2d/be$a;-><init>(IILcom/amap/api/maps2d/model/LatLng;III)V

    .line 1358
    iget-object p2, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/be;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/cq;

    invoke-virtual {p2, v2, p1}, Lcom/amap/api/mapcore2d/be;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1359
    new-instance p1, Lcom/amap/api/mapcore2d/be$a;

    new-instance v6, Lcom/amap/api/maps2d/model/LatLng;

    invoke-direct {v6, v10, v11, v10, v11}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lcom/amap/api/mapcore2d/be$a;-><init>(IILcom/amap/api/maps2d/model/LatLng;III)V

    .line 1364
    iget-object p2, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/be;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->t:Lcom/amap/api/mapcore2d/av;

    invoke-virtual {p2, v2, p1}, Lcom/amap/api/mapcore2d/be;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p1, 0x8

    .line 1366
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->p()Lcom/amap/api/mapcore2d/ar;

    move-result-object p2

    invoke-interface {p2}, Lcom/amap/api/mapcore2d/ar;->d()Z

    move-result p2

    if-nez p2, :cond_0

    .line 1367
    iget-object p2, p0, Lcom/amap/api/mapcore2d/b;->t:Lcom/amap/api/mapcore2d/av;

    invoke-virtual {p2, p1}, Lcom/amap/api/mapcore2d/av;->setVisibility(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1370
    invoke-static {p2, v0, v1}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/amap/api/mapcore2d/b;->C:Lcom/amap/api/mapcore2d/u;

    invoke-virtual {p2, p1}, Lcom/amap/api/mapcore2d/u;->setVisibility(I)V

    .line 1373
    new-instance p1, Lcom/amap/api/mapcore2d/be$a;

    const/4 v3, -0x2

    const/4 v4, -0x2

    new-instance v5, Lcom/amap/api/maps2d/model/LatLng;

    invoke-direct {v5, v10, v11, v10, v11}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x33

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/amap/api/mapcore2d/be$a;-><init>(IILcom/amap/api/maps2d/model/LatLng;III)V

    .line 1378
    iget-object p2, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/be;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->C:Lcom/amap/api/mapcore2d/u;

    invoke-virtual {p2, v2, p1}, Lcom/amap/api/mapcore2d/be;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1379
    new-instance p1, Lcom/amap/api/mapcore2d/bo;

    invoke-direct {p1, p0}, Lcom/amap/api/mapcore2d/bo;-><init>(Lcom/amap/api/mapcore2d/ad;)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->y:Lcom/amap/api/mapcore2d/bo;

    .line 1380
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/cq;

    sget p2, Lcom/amap/api/mapcore2d/m;->a:I

    invoke-virtual {p1, p2}, Lcom/amap/api/mapcore2d/cq;->setId(I)V

    .line 1382
    :try_start_1
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->aH:Ljava/lang/Thread;

    const-string p2, "AuthThread"

    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1383
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->aH:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 1384
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->af:Ljava/util/Timer;

    if-nez p1, :cond_1

    .line 1385
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->af:Ljava/util/Timer;

    .line 1386
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->af:Ljava/util/Timer;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->ag:Ljava/util/TimerTask;

    const-wide/16 v4, 0x2710

    const-wide/16 v6, 0x3e8

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 1389
    invoke-static {p0, v0, v1}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 4

    .line 1702
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->U:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->p:Lcom/amap/api/mapcore2d/ah;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->o:Lcom/amap/api/maps2d/model/Marker;

    if-eqz v0, :cond_0

    .line 1703
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 1704
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/high16 v1, 0x42700000    # 60.0f

    sub-float/2addr p1, v1

    float-to-int p1, p1

    .line 1705
    new-instance v1, Lcom/amap/api/mapcore2d/x;

    invoke-direct {v1}, Lcom/amap/api/mapcore2d/x;-><init>()V

    .line 1706
    invoke-virtual {p0, v0, p1, v1}, Lcom/amap/api/mapcore2d/b;->a(IILcom/amap/api/mapcore2d/x;)V

    .line 1707
    new-instance p1, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v1, Lcom/amap/api/mapcore2d/x;->b:D

    iget-wide v0, v1, Lcom/amap/api/mapcore2d/x;->a:D

    invoke-direct {p1, v2, v3, v0, v1}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    .line 1708
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->p:Lcom/amap/api/mapcore2d/ah;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ah;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1709
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->p:Lcom/amap/api/mapcore2d/ah;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ah;->a(Lcom/amap/api/maps2d/model/LatLng;)V

    .line 1710
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->W:Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;

    if-eqz p1, :cond_0

    .line 1711
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->o:Lcom/amap/api/maps2d/model/Marker;

    invoke-interface {p1, p0}, Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;->onMarkerDrag(Lcom/amap/api/maps2d/model/Marker;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/b;ZLcom/amap/api/maps2d/model/CameraPosition;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore2d/b;->a(ZLcom/amap/api/maps2d/model/CameraPosition;)V

    return-void
.end method

.method private a(ZLcom/amap/api/maps2d/model/CameraPosition;)V
    .locals 2

    .line 2581
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->G:Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;

    if-nez p1, :cond_0

    return-void

    .line 2584
    :cond_0
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->H:Lcom/amap/api/mapcore2d/p;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/p;->a()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2587
    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    if-nez p2, :cond_3

    .line 2592
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->f()Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "cameraChangeFinish"

    const-string v1, "AMapDelegateImpGLSurfaceView"

    .line 2594
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2598
    :cond_3
    :goto_0
    :try_start_1
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->G:Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;

    invoke-interface {p0, p2}, Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;->onCameraChangeFinish(Lcom/amap/api/maps2d/model/CameraPosition;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 2600
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/b;Z)Z
    .locals 0

    .line 86
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/b;->E:Z

    return p1
.end method

.method private aa()Lcom/amap/api/maps2d/model/LatLng;
    .locals 4

    .line 2767
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->B()Lcom/amap/api/mapcore2d/ab;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2771
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ab;->b()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/w;->a(J)D

    move-result-wide v0

    .line 2772
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ab;->a()I

    move-result p0

    int-to-long v2, p0

    invoke-static {v2, v3}, Lcom/amap/api/mapcore2d/w;->a(J)D

    move-result-wide v2

    .line 2773
    new-instance p0, Lcom/amap/api/maps2d/model/LatLng;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    return-object p0
.end method

.method private ab()Lcom/amap/api/mapcore2d/ak;
    .locals 3

    .line 2778
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->B()Lcom/amap/api/mapcore2d/ab;

    move-result-object p0

    .line 2779
    new-instance v0, Lcom/amap/api/mapcore2d/ak;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/ak;-><init>()V

    .line 2780
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ab;->e()D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lcom/amap/api/mapcore2d/ak;->a:I

    .line 2781
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ab;->f()D

    move-result-wide v1

    double-to-int p0, v1

    iput p0, v0, Lcom/amap/api/mapcore2d/ak;->b:I

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/mapcore2d/b;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->Z()V

    return-void
.end method

.method private b(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 2006
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->al:Lcom/amap/api/mapcore2d/bn$a;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getHeight()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/amap/api/mapcore2d/bn$a;->a(Landroid/view/MotionEvent;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2008
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ak:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2010
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/amap/api/mapcore2d/b;->V:Z

    if-eqz v1, :cond_1

    .line 2011
    invoke-static {}, Lcom/amap/api/mapcore2d/q;->a()Lcom/amap/api/mapcore2d/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/q;->b()V

    .line 2013
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 2014
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/b;->a(Landroid/view/MotionEvent;)V

    .line 2016
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_3

    .line 2017
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->W()V

    :cond_3
    return v0
.end method

.method static synthetic b(Lcom/amap/api/mapcore2d/b;Z)Z
    .locals 0

    .line 86
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/b;->F:Z

    return p1
.end method

.method static synthetic c(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$OnMapLoadedListener;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->ab:Lcom/amap/api/maps2d/AMap$OnMapLoadedListener;

    return-object p0
.end method

.method static synthetic d(Lcom/amap/api/mapcore2d/b;)Landroid/content/Context;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->l:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/cp;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/cp;

    return-object p0
.end method

.method static synthetic f(Lcom/amap/api/mapcore2d/b;)Landroid/view/View;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->M:Landroid/view/View;

    return-object p0
.end method

.method static synthetic g(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/bi;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->P:Lcom/amap/api/mapcore2d/bi;

    return-object p0
.end method

.method static synthetic h(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->ae:Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;

    return-object p0
.end method

.method static synthetic i(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/model/CameraPosition;
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->Y()Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->G:Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;

    return-object p0
.end method

.method static synthetic k(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/AMap$CancelableCallback;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->I:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    return-object p0
.end method

.method static synthetic l(Lcom/amap/api/mapcore2d/b;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lcom/amap/api/mapcore2d/b;->F:Z

    return p0
.end method

.method static synthetic m(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/maps2d/model/LatLng;
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->aa()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object p0

    return-object p0
.end method

.method static synthetic n(Lcom/amap/api/mapcore2d/b;)Lcom/amap/api/mapcore2d/p;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->H:Lcom/amap/api/mapcore2d/p;

    return-object p0
.end method


# virtual methods
.method public A()Z
    .locals 0

    .line 1399
    iget-boolean p0, p0, Lcom/amap/api/mapcore2d/b;->n:Z

    return p0
.end method

.method public B()Lcom/amap/api/mapcore2d/ab;
    .locals 1

    .line 1411
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1414
    :cond_0
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bk$d;->f()Lcom/amap/api/mapcore2d/ab;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public C()Lcom/amap/api/mapcore2d/ay;
    .locals 0

    .line 1418
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ay;

    return-object p0
.end method

.method public D()Z
    .locals 2

    .line 1507
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1510
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bk;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    .line 1511
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bk;

    move-result-object p0

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk$a;->h:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/bk$a;->b(Ljava/lang/String;)Lcom/amap/api/mapcore2d/at;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1513
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/at;->a()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public E()Z
    .locals 2

    .line 1646
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bk;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1654
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bk;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk$a;->i:Ljava/lang/String;

    .line 1656
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bk;

    move-result-object p0

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/bk$a;->b(Ljava/lang/String;)Lcom/amap/api/mapcore2d/at;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1658
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/at;->a()Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method public F()Lcom/amap/api/mapcore2d/bn;
    .locals 0

    .line 1883
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->al:Lcom/amap/api/mapcore2d/bn$a;

    return-object p0
.end method

.method public I()F
    .locals 0

    .line 1954
    iget p0, p0, Lcom/amap/api/mapcore2d/b;->as:F

    return p0
.end method

.method public J()V
    .locals 1

    const/4 v0, 0x0

    .line 1958
    iput v0, p0, Lcom/amap/api/mapcore2d/b;->au:F

    .line 1959
    iput v0, p0, Lcom/amap/api/mapcore2d/b;->av:F

    return-void
.end method

.method public K()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected L()V
    .locals 1

    .line 2611
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/os/Handler;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method M()V
    .locals 1

    .line 2625
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/os/Handler;

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public N()V
    .locals 0

    .line 2828
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->I:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    if-eqz p0, :cond_0

    .line 2829
    invoke-interface {p0}, Lcom/amap/api/maps2d/AMap$CancelableCallback;->onCancel()V

    :cond_0
    return-void
.end method

.method public O()V
    .locals 0

    .line 2835
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->I:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    if-eqz p0, :cond_0

    .line 2836
    invoke-interface {p0}, Lcom/amap/api/maps2d/AMap$CancelableCallback;->onFinish()V

    :cond_0
    return-void
.end method

.method public P()V
    .locals 1

    .line 2842
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/os/Handler;

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public Q()V
    .locals 0

    .line 2850
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    .line 2851
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/be;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/be;->postInvalidate()V

    return-void
.end method

.method public R()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/maps2d/model/Marker;",
            ">;"
        }
    .end annotation

    .line 2856
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 2857
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "\u5730\u56fe\u672a\u521d\u59cb\u5316\u5b8c\u6210\uff01"

    .line 2856
    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/cw;->a(ZLjava/lang/Object;)V

    .line 2858
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/bc;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bc;->g()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public S()V
    .locals 1

    const/4 v0, 0x0

    .line 2901
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/maps2d/AMap$OnCacheRemoveListener;)V

    return-void
.end method

.method public a(F)F
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bk$d;->b()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 467
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/bk$d;->b()I

    move-result p1

    int-to-float p1, p1

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bk$d;->a()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 470
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bk$d;->a()I

    move-result p0

    int-to-float p1, p0

    :cond_1
    return p1
.end method

.method public a(Lcom/amap/api/maps2d/model/CircleOptions;)Lcom/amap/api/mapcore2d/ae;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 681
    new-instance v0, Lcom/amap/api/mapcore2d/t;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/t;-><init>(Lcom/amap/api/mapcore2d/b;)V

    .line 682
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/CircleOptions;->getFillColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/t;->b(I)V

    .line 683
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/CircleOptions;->getCenter()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/t;->a(Lcom/amap/api/maps2d/model/LatLng;)V

    .line 684
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/CircleOptions;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/t;->a(Z)V

    .line 685
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/CircleOptions;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/t;->b(F)V

    .line 686
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/CircleOptions;->getZIndex()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/t;->a(F)V

    .line 687
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/CircleOptions;->getStrokeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/t;->a(I)V

    .line 688
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/CircleOptions;->getRadius()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore2d/t;->a(D)V

    .line 690
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 693
    :cond_0
    iget-object p1, p1, Lcom/amap/api/mapcore2d/bk;->g:Lcom/amap/api/mapcore2d/z;

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore2d/z;->a(Lcom/amap/api/mapcore2d/aj;)V

    .line 694
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    return-object v0
.end method

.method public a(Lcom/amap/api/maps2d/model/GroundOverlayOptions;)Lcom/amap/api/mapcore2d/af;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 701
    new-instance v0, Lcom/amap/api/mapcore2d/ac;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/ac;-><init>(Lcom/amap/api/mapcore2d/b;)V

    .line 703
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->getAnchorU()F

    move-result v1

    .line 704
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->getAnchorV()F

    move-result v2

    .line 703
    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore2d/ac;->b(FF)V

    .line 705
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->getBearing()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/ac;->c(F)V

    .line 706
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->getWidth()F

    move-result v1

    .line 707
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->getHeight()F

    move-result v2

    .line 706
    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore2d/ac;->a(FF)V

    .line 708
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->getImage()Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/ac;->a(Lcom/amap/api/maps2d/model/BitmapDescriptor;)V

    .line 709
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->getLocation()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/ac;->a(Lcom/amap/api/maps2d/model/LatLng;)V

    .line 710
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->getBounds()Lcom/amap/api/maps2d/model/LatLngBounds;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/ac;->a(Lcom/amap/api/maps2d/model/LatLngBounds;)V

    .line 711
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->getTransparency()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/ac;->d(F)V

    .line 712
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/ac;->a(Z)V

    .line 713
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->getZIndex()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/ac;->a(F)V

    .line 715
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 718
    :cond_0
    iget-object p1, p1, Lcom/amap/api/mapcore2d/bk;->g:Lcom/amap/api/mapcore2d/z;

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore2d/z;->a(Lcom/amap/api/mapcore2d/aj;)V

    .line 719
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    return-object v0
.end method

.method public a(Lcom/amap/api/maps2d/model/PolygonOptions;)Lcom/amap/api/mapcore2d/al;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 726
    new-instance v0, Lcom/amap/api/mapcore2d/bq;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/bq;-><init>(Lcom/amap/api/mapcore2d/b;)V

    .line 727
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/PolygonOptions;->getFillColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bq;->a(I)V

    .line 728
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/PolygonOptions;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bq;->a(Ljava/util/List;)V

    .line 729
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/PolygonOptions;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bq;->a(Z)V

    .line 730
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/PolygonOptions;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bq;->b(F)V

    .line 731
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/PolygonOptions;->getZIndex()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bq;->a(F)V

    .line 732
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/PolygonOptions;->getStrokeColor()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/bq;->b(I)V

    .line 734
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 737
    :cond_0
    iget-object p1, p1, Lcom/amap/api/mapcore2d/bk;->g:Lcom/amap/api/mapcore2d/z;

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore2d/z;->a(Lcom/amap/api/mapcore2d/aj;)V

    .line 738
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    return-object v0
.end method

.method public a(Lcom/amap/api/maps2d/model/PolylineOptions;)Lcom/amap/api/mapcore2d/am;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 661
    new-instance v0, Lcom/amap/api/mapcore2d/br;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/br;-><init>(Lcom/amap/api/mapcore2d/b;)V

    .line 662
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/PolylineOptions;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/br;->a(I)V

    .line 663
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/PolylineOptions;->isDottedLine()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/br;->b(Z)V

    .line 664
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/PolylineOptions;->isGeodesic()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/br;->c(Z)V

    .line 665
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/PolylineOptions;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/br;->a(Ljava/util/List;)V

    .line 666
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/PolylineOptions;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/br;->a(Z)V

    .line 667
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/PolylineOptions;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/br;->b(F)V

    .line 668
    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/PolylineOptions;->getZIndex()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/br;->a(F)V

    .line 670
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 673
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bk;

    move-result-object p1

    iget-object p1, p1, Lcom/amap/api/mapcore2d/bk;->g:Lcom/amap/api/mapcore2d/z;

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore2d/z;->a(Lcom/amap/api/mapcore2d/aj;)V

    .line 674
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    return-object v0
.end method

.method public a()Lcom/amap/api/mapcore2d/bk;
    .locals 0

    .line 363
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    return-object p0
.end method

.method public a(Lcom/amap/api/maps2d/model/MarkerOptions;)Lcom/amap/api/maps2d/model/Marker;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 744
    new-instance v0, Lcom/amap/api/mapcore2d/bi;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/bc;

    invoke-direct {v0, p1, v1}, Lcom/amap/api/mapcore2d/bi;-><init>(Lcom/amap/api/maps2d/model/MarkerOptions;Lcom/amap/api/mapcore2d/bc;)V

    .line 747
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/bc;

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore2d/bc;->a(Lcom/amap/api/mapcore2d/ah;)V

    .line 748
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    .line 749
    new-instance p0, Lcom/amap/api/maps2d/model/Marker;

    invoke-direct {p0, v0}, Lcom/amap/api/maps2d/model/Marker;-><init>(Lcom/amap/api/mapcore2d/ah;)V

    return-object p0
.end method

.method public a(Lcom/amap/api/maps2d/model/TextOptions;)Lcom/amap/api/maps2d/model/Text;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2952
    new-instance v0, Lcom/amap/api/mapcore2d/bz;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/bc;

    invoke-direct {v0, p0, p1, v1}, Lcom/amap/api/mapcore2d/bz;-><init>(Lcom/amap/api/mapcore2d/ad;Lcom/amap/api/maps2d/model/TextOptions;Lcom/amap/api/mapcore2d/bc;)V

    .line 2954
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/bc;

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore2d/bc;->a(Lcom/amap/api/mapcore2d/ap;)V

    .line 2955
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    .line 2956
    new-instance p0, Lcom/amap/api/maps2d/model/Text;

    invoke-direct {p0, v0}, Lcom/amap/api/maps2d/model/Text;-><init>(Lcom/amap/api/mapcore2d/ap;)V

    return-object p0
.end method

.method public a(Lcom/amap/api/maps2d/model/TileOverlayOptions;)Lcom/amap/api/maps2d/model/TileOverlay;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 768
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 771
    :cond_0
    new-instance v6, Lcom/amap/api/mapcore2d/cd;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/ce;

    iget-object v3, v0, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iget-object v4, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object v5, p0, Lcom/amap/api/mapcore2d/b;->l:Landroid/content/Context;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore2d/cd;-><init>(Lcom/amap/api/maps2d/model/TileOverlayOptions;Lcom/amap/api/mapcore2d/ce;Lcom/amap/api/mapcore2d/bf;Lcom/amap/api/mapcore2d/bk;Landroid/content/Context;)V

    .line 777
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/ce;

    invoke-virtual {p1, v6}, Lcom/amap/api/mapcore2d/ce;->a(Lcom/amap/api/mapcore2d/aq;)V

    .line 778
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    .line 779
    new-instance p0, Lcom/amap/api/maps2d/model/TileOverlay;

    invoke-direct {p0, v6}, Lcom/amap/api/maps2d/model/TileOverlay;-><init>(Lcom/amap/api/mapcore2d/aq;)V

    return-object p0
.end method

.method public a(DDLcom/amap/api/mapcore2d/ak;)V
    .locals 3

    .line 2716
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/mapcore2d/bf;

    new-instance v0, Lcom/amap/api/mapcore2d/ab;

    const-wide v1, 0x412e848000000000L    # 1000000.0

    mul-double/2addr p1, v1

    double-to-int p1, p1

    mul-double/2addr p3, v1

    double-to-int p2, p3

    invoke-direct {v0, p1, p2}, Lcom/amap/api/mapcore2d/ab;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/bf;->b(Lcom/amap/api/mapcore2d/ab;)Lcom/amap/api/mapcore2d/ab;

    move-result-object p0

    .line 2718
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ab;->a()I

    move-result p1

    iput p1, p5, Lcom/amap/api/mapcore2d/ak;->a:I

    .line 2719
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ab;->b()I

    move-result p0

    iput p0, p5, Lcom/amap/api/mapcore2d/ak;->b:I

    return-void
.end method

.method public a(DDLcom/amap/api/mapcore2d/x;)V
    .locals 6

    .line 2701
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->e()F

    .line 2702
    invoke-static {p1, p2}, Lcom/amap/api/mapcore2d/w;->a(D)J

    move-result-wide p1

    long-to-int p1, p1

    .line 2703
    invoke-static {p3, p4}, Lcom/amap/api/mapcore2d/w;->a(D)J

    move-result-wide p2

    long-to-int p2, p2

    .line 2704
    new-instance v1, Lcom/amap/api/mapcore2d/ab;

    invoke-direct {v1, p1, p2}, Lcom/amap/api/mapcore2d/ab;-><init>(II)V

    .line 2705
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/mapcore2d/bf;

    iget-object v2, v0, Lcom/amap/api/mapcore2d/bf;->l:Lcom/amap/api/mapcore2d/ab;

    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/mapcore2d/bf;

    iget-object v3, p1, Lcom/amap/api/mapcore2d/bf;->n:Landroid/graphics/Point;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/mapcore2d/bf;

    iget-wide v4, p0, Lcom/amap/api/mapcore2d/bf;->k:D

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/mapcore2d/bf;->b(Lcom/amap/api/mapcore2d/ab;Lcom/amap/api/mapcore2d/ab;Landroid/graphics/Point;D)Landroid/graphics/PointF;

    move-result-object p0

    if-eqz p5, :cond_0

    .line 2709
    iget p1, p0, Landroid/graphics/PointF;->x:F

    float-to-double p1, p1

    iput-wide p1, p5, Lcom/amap/api/mapcore2d/x;->a:D

    .line 2710
    iget p0, p0, Landroid/graphics/PointF;->y:F

    float-to-double p0, p0

    iput-wide p0, p5, Lcom/amap/api/mapcore2d/x;->b:D

    :cond_0
    return-void
.end method

.method public a(FLandroid/graphics/Point;Z)V
    .locals 9

    .line 607
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ay;

    if-nez v0, :cond_0

    return-void

    .line 611
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->e()F

    move-result v0

    add-float v1, v0, p1

    .line 612
    invoke-static {v1}, Lcom/amap/api/mapcore2d/cz;->b(F)F

    move-result v1

    sub-float/2addr v1, v0

    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-nez v0, :cond_1

    return-void

    .line 617
    :cond_1
    new-instance v0, Lcom/amap/api/mapcore2d/ak;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/ak;-><init>()V

    .line 618
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->ab()Lcom/amap/api/mapcore2d/ak;

    move-result-object v0

    if-eqz p2, :cond_3

    .line 622
    new-instance v1, Lcom/amap/api/mapcore2d/ak;

    invoke-direct {v1}, Lcom/amap/api/mapcore2d/ak;-><init>()V

    .line 623
    iget v2, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v2, p2, v1}, Lcom/amap/api/mapcore2d/b;->a(IILcom/amap/api/mapcore2d/ak;)V

    .line 624
    iget p2, v0, Lcom/amap/api/mapcore2d/ak;->a:I

    iget v2, v1, Lcom/amap/api/mapcore2d/ak;->a:I

    sub-int/2addr p2, v2

    .line 625
    iget v2, v0, Lcom/amap/api/mapcore2d/ak;->b:I

    iget v3, v1, Lcom/amap/api/mapcore2d/ak;->b:I

    sub-int/2addr v2, v3

    int-to-double v3, p2

    float-to-double p1, p1

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 626
    invoke-static {v5, v6, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    div-double v7, v3, v7

    sub-double/2addr v7, v3

    double-to-int v3, v7

    int-to-double v7, v2

    .line 627
    invoke-static {v5, v6, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    div-double p1, v7, p1

    sub-double/2addr p1, v7

    double-to-int p1, p1

    .line 628
    iget p2, v1, Lcom/amap/api/mapcore2d/ak;->a:I

    add-int/2addr p2, v3

    iput p2, v0, Lcom/amap/api/mapcore2d/ak;->a:I

    .line 629
    iget p2, v1, Lcom/amap/api/mapcore2d/ak;->b:I

    add-int/2addr p2, p1

    iput p2, v0, Lcom/amap/api/mapcore2d/ak;->b:I

    .line 630
    new-instance p1, Lcom/amap/api/mapcore2d/ab;

    iget p2, v0, Lcom/amap/api/mapcore2d/ak;->b:I

    int-to-double v2, p2

    iget p2, v0, Lcom/amap/api/mapcore2d/ak;->a:I

    int-to-double v4, p2

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/mapcore2d/ab;-><init>(DDZ)V

    .line 631
    iget-object p2, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object p2, p2, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    .line 632
    invoke-virtual {p2, p1}, Lcom/amap/api/mapcore2d/bf;->b(Lcom/amap/api/mapcore2d/ab;)Lcom/amap/api/mapcore2d/ab;

    move-result-object p1

    if-eqz p3, :cond_2

    .line 634
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ay;

    const/16 p2, 0x3e8

    invoke-virtual {p0, p1, p2}, Lcom/amap/api/mapcore2d/ay;->a(Lcom/amap/api/mapcore2d/ab;I)V

    goto :goto_0

    .line 636
    :cond_2
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ay;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/ay;->a(Lcom/amap/api/mapcore2d/ab;)V

    .line 637
    invoke-static {}, Lcom/amap/api/mapcore2d/q;->a()Lcom/amap/api/mapcore2d/q;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/q;->b()V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 818
    iput v0, p0, Lcom/amap/api/mapcore2d/b;->s:I

    .line 819
    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore2d/b;->h(Z)V

    .line 820
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/cp;

    invoke-virtual {p1, v1}, Lcom/amap/api/mapcore2d/cp;->a(Z)V

    goto :goto_0

    .line 822
    :cond_0
    iput v1, p0, Lcom/amap/api/mapcore2d/b;->s:I

    const/4 p1, 0x0

    .line 823
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/b;->h(Z)V

    .line 824
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/cp;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/cp;->a(Z)V

    .line 826
    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    return-void
.end method

.method public a(IILcom/amap/api/mapcore2d/x;)V
    .locals 7

    .line 2673
    new-instance v1, Landroid/graphics/PointF;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-direct {v1, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2674
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/mapcore2d/bf;

    iget-object v2, v0, Lcom/amap/api/mapcore2d/bf;->l:Lcom/amap/api/mapcore2d/ab;

    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/mapcore2d/bf;

    iget-object v3, p1, Lcom/amap/api/mapcore2d/bf;->n:Landroid/graphics/Point;

    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/mapcore2d/bf;

    iget-wide v4, p1, Lcom/amap/api/mapcore2d/bf;->k:D

    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/mapcore2d/bf;

    iget-object v6, p0, Lcom/amap/api/mapcore2d/bf;->o:Lcom/amap/api/mapcore2d/bf$a;

    invoke-virtual/range {v0 .. v6}, Lcom/amap/api/mapcore2d/bf;->a(Landroid/graphics/PointF;Lcom/amap/api/mapcore2d/ab;Landroid/graphics/Point;DLcom/amap/api/mapcore2d/bf$a;)Lcom/amap/api/mapcore2d/ab;

    move-result-object p0

    if-eqz p3, :cond_0

    .line 2679
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ab;->b()I

    move-result p1

    int-to-long p1, p1

    invoke-static {p1, p2}, Lcom/amap/api/mapcore2d/w;->a(J)D

    move-result-wide p1

    .line 2680
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ab;->a()I

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/w;->a(J)D

    move-result-wide v0

    .line 2681
    iput-wide p1, p3, Lcom/amap/api/mapcore2d/x;->b:D

    .line 2682
    iput-wide v0, p3, Lcom/amap/api/mapcore2d/x;->a:D

    :cond_0
    return-void
.end method

.method public a(Landroid/location/Location;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 407
    :cond_0
    new-instance v0, Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    .line 408
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    .line 410
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->m()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->B:Lcom/amap/api/maps2d/LocationSource;

    if-nez v1, :cond_1

    goto :goto_0

    .line 415
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->y:Lcom/amap/api/mapcore2d/bo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->u:Landroid/location/Location;

    if-nez v1, :cond_5

    .line 416
    :cond_2
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->y:Lcom/amap/api/mapcore2d/bo;

    if-nez v1, :cond_3

    .line 417
    new-instance v1, Lcom/amap/api/mapcore2d/bo;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore2d/bo;-><init>(Lcom/amap/api/mapcore2d/ad;)V

    iput-object v1, p0, Lcom/amap/api/mapcore2d/b;->y:Lcom/amap/api/mapcore2d/bo;

    .line 420
    :cond_3
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    .line 421
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bk$d;->e()F

    move-result v1

    .line 420
    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/r;->a(Lcom/amap/api/maps2d/model/LatLng;F)Lcom/amap/api/mapcore2d/r;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/mapcore2d/r;)V

    goto :goto_1

    .line 411
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->y:Lcom/amap/api/mapcore2d/bo;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bo;->a()V

    const/4 v1, 0x0

    .line 412
    iput-object v1, p0, Lcom/amap/api/mapcore2d/b;->y:Lcom/amap/api/mapcore2d/bo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v2, "showMyLocationOverlay"

    const-string v3, "AMapDelegateImpGLSurfaceView"

    .line 425
    invoke-static {v1, v3, v2}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->y:Lcom/amap/api/mapcore2d/bo;

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/amap/api/mapcore2d/bo;->a(Lcom/amap/api/maps2d/model/LatLng;D)V

    .line 428
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->w:Lcom/amap/api/maps2d/AMap$OnMyLocationChangeListener;

    if-eqz v0, :cond_7

    .line 429
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->u:Landroid/location/Location;

    if-eqz v0, :cond_6

    .line 430
    invoke-virtual {v0}, Landroid/location/Location;->getBearing()F

    move-result v0

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->u:Landroid/location/Location;

    .line 431
    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->u:Landroid/location/Location;

    .line 432
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->u:Landroid/location/Location;

    .line 433
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_7

    .line 434
    :cond_6
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->w:Lcom/amap/api/maps2d/AMap$OnMyLocationChangeListener;

    invoke-interface {v0, p1}, Lcom/amap/api/maps2d/AMap$OnMyLocationChangeListener;->onMyLocationChange(Landroid/location/Location;)V

    .line 437
    :cond_7
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->u:Landroid/location/Location;

    return-void
.end method

.method public a(Lcom/amap/api/mapcore2d/ah;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 982
    :cond_0
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ah;->f()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ah;->g()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 986
    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->s()V

    .line 987
    new-instance v0, Lcom/amap/api/maps2d/model/Marker;

    invoke-direct {v0, p1}, Lcom/amap/api/maps2d/model/Marker;-><init>(Lcom/amap/api/mapcore2d/ah;)V

    .line 988
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->O:Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;

    if-eqz v1, :cond_2

    .line 989
    invoke-interface {v1, v0}, Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;->getInfoWindow(Lcom/amap/api/maps2d/model/Marker;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore2d/b;->M:Landroid/view/View;

    .line 992
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->R:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    .line 993
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->l:Landroid/content/Context;

    const-string v2, "infowindow_bg2d.9.png"

    invoke-static {v1, v2}, Lcom/amap/api/mapcore2d/bp;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore2d/b;->R:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "showInfoWindow"

    const-string v3, "AMapDelegateImpGLSurfaceView"

    .line 997
    invoke-static {v1, v3, v2}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->M:Landroid/view/View;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->O:Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;

    if-eqz v1, :cond_4

    .line 1001
    invoke-interface {v1, v0}, Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;->getInfoContents(Lcom/amap/api/maps2d/model/Marker;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->M:Landroid/view/View;

    .line 1003
    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->M:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 1004
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_6

    .line 1005
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->M:Landroid/view/View;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->R:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1008
    :cond_5
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->l:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1009
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->R:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1010
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->l:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1011
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ah;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, -0x1000000

    .line 1012
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1013
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/amap/api/mapcore2d/b;->l:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1014
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1015
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ah;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1016
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1017
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1018
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1019
    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->M:Landroid/view/View;

    .line 1021
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->M:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1022
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->M:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1023
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->M:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setDrawingCacheQuality(I)V

    .line 1024
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ah;->e()Lcom/amap/api/mapcore2d/x;

    move-result-object v1

    const/4 v2, -0x2

    if-eqz v0, :cond_7

    .line 1028
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1029
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move v5, v0

    move v4, v2

    goto :goto_2

    :cond_7
    move v4, v2

    move v5, v4

    .line 1031
    :goto_2
    new-instance v0, Lcom/amap/api/mapcore2d/be$a;

    .line 1032
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ah;->c()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v6

    iget-wide v2, v1, Lcom/amap/api/mapcore2d/x;->a:D

    double-to-int v2, v2

    neg-int v2, v2

    .line 1033
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ah;->n()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v7, v2, v3

    iget-wide v1, v1, Lcom/amap/api/mapcore2d/x;->b:D

    double-to-int v1, v1

    neg-int v1, v1

    add-int/lit8 v8, v1, 0x2

    const/16 v9, 0x51

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/amap/api/mapcore2d/be$a;-><init>(IILcom/amap/api/maps2d/model/LatLng;III)V

    .line 1036
    check-cast p1, Lcom/amap/api/mapcore2d/bi;

    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->P:Lcom/amap/api/mapcore2d/bi;

    .line 1037
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/be;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->M:Landroid/view/View;

    invoke-virtual {p1, p0, v0}, Lcom/amap/api/mapcore2d/be;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public a(Lcom/amap/api/mapcore2d/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 523
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->D:Lcom/amap/api/mapcore2d/a;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/a;->a(Lcom/amap/api/mapcore2d/r;)V

    return-void
.end method

.method public a(Lcom/amap/api/mapcore2d/r;JLcom/amap/api/maps2d/AMap$CancelableCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 546
    iget-object v0, p1, Lcom/amap/api/mapcore2d/r;->a:Lcom/amap/api/mapcore2d/r$a;

    sget-object v1, Lcom/amap/api/mapcore2d/r$a;->j:Lcom/amap/api/mapcore2d/r$a;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 547
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 548
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "the map must have a size"

    .line 547
    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/cw;->a(ZLjava/lang/Object;)V

    .line 550
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ay;

    if-nez v0, :cond_2

    return-void

    .line 553
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->H:Lcom/amap/api/mapcore2d/p;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/p;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 554
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->H:Lcom/amap/api/mapcore2d/p;

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/p;->a(Z)V

    .line 555
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->I:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    if-eqz v0, :cond_3

    .line 556
    invoke-interface {v0}, Lcom/amap/api/maps2d/AMap$CancelableCallback;->onCancel()V

    .line 558
    :cond_3
    iput-object p4, p0, Lcom/amap/api/mapcore2d/b;->I:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    .line 559
    iget-boolean p4, p0, Lcom/amap/api/mapcore2d/b;->E:Z

    if-eqz p4, :cond_4

    .line 560
    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->F:Z

    .line 562
    :cond_4
    iget-object p4, p1, Lcom/amap/api/mapcore2d/r;->a:Lcom/amap/api/mapcore2d/r$a;

    sget-object v0, Lcom/amap/api/mapcore2d/r$a;->h:Lcom/amap/api/mapcore2d/r$a;

    if-ne p4, v0, :cond_7

    .line 563
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->L()V

    .line 564
    iget-object p2, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    if-nez p2, :cond_5

    return-void

    .line 567
    :cond_5
    iget-boolean p2, p0, Lcom/amap/api/mapcore2d/b;->m:Z

    if-nez p2, :cond_6

    return-void

    .line 570
    :cond_6
    iget-object p2, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ay;

    iget p3, p1, Lcom/amap/api/mapcore2d/r;->b:F

    float-to-int p3, p3

    iget p1, p1, Lcom/amap/api/mapcore2d/r;->c:F

    float-to-int p1, p1

    invoke-virtual {p2, p3, p1}, Lcom/amap/api/mapcore2d/ay;->b(II)V

    .line 572
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    goto/16 :goto_2

    .line 573
    :cond_7
    iget-object p4, p1, Lcom/amap/api/mapcore2d/r;->a:Lcom/amap/api/mapcore2d/r$a;

    sget-object v0, Lcom/amap/api/mapcore2d/r$a;->b:Lcom/amap/api/mapcore2d/r$a;

    if-ne p4, v0, :cond_8

    .line 574
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ay;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ay;->c()Z

    goto/16 :goto_2

    .line 575
    :cond_8
    iget-object p4, p1, Lcom/amap/api/mapcore2d/r;->a:Lcom/amap/api/mapcore2d/r$a;

    sget-object v0, Lcom/amap/api/mapcore2d/r$a;->e:Lcom/amap/api/mapcore2d/r$a;

    if-ne p4, v0, :cond_9

    .line 576
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ay;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ay;->d()Z

    goto/16 :goto_2

    .line 577
    :cond_9
    iget-object p4, p1, Lcom/amap/api/mapcore2d/r;->a:Lcom/amap/api/mapcore2d/r$a;

    sget-object v0, Lcom/amap/api/mapcore2d/r$a;->f:Lcom/amap/api/mapcore2d/r$a;

    if-ne p4, v0, :cond_a

    .line 578
    iget p1, p1, Lcom/amap/api/mapcore2d/r;->d:F

    .line 579
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ay;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/ay;->c(F)F

    goto/16 :goto_2

    .line 580
    :cond_a
    iget-object p4, p1, Lcom/amap/api/mapcore2d/r;->a:Lcom/amap/api/mapcore2d/r$a;

    sget-object v0, Lcom/amap/api/mapcore2d/r$a;->g:Lcom/amap/api/mapcore2d/r$a;

    if-ne p4, v0, :cond_b

    .line 581
    iget p2, p1, Lcom/amap/api/mapcore2d/r;->e:F

    .line 582
    iget-object p1, p1, Lcom/amap/api/mapcore2d/r;->h:Landroid/graphics/Point;

    .line 583
    invoke-virtual {p0, p2, p1, v2}, Lcom/amap/api/mapcore2d/b;->a(FLandroid/graphics/Point;Z)V

    goto :goto_2

    .line 584
    :cond_b
    iget-object p4, p1, Lcom/amap/api/mapcore2d/r;->a:Lcom/amap/api/mapcore2d/r$a;

    sget-object v0, Lcom/amap/api/mapcore2d/r$a;->i:Lcom/amap/api/mapcore2d/r$a;

    const-wide v3, 0x412e848000000000L    # 1000000.0

    if-ne p4, v0, :cond_c

    .line 585
    iget-object p1, p1, Lcom/amap/api/mapcore2d/r;->f:Lcom/amap/api/maps2d/model/CameraPosition;

    .line 586
    iget-object p4, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ay;

    iget v0, p1, Lcom/amap/api/maps2d/model/CameraPosition;->zoom:F

    invoke-virtual {p4, v0}, Lcom/amap/api/mapcore2d/ay;->c(F)F

    .line 587
    iget-object p4, p1, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v0, p4, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    mul-double/2addr v0, v3

    double-to-int p4, v0

    .line 588
    iget-object p1, p1, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v0, p1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    mul-double/2addr v0, v3

    double-to-int p1, v0

    .line 589
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ay;

    new-instance v0, Lcom/amap/api/mapcore2d/ab;

    invoke-direct {v0, p4, p1}, Lcom/amap/api/mapcore2d/ab;-><init>(II)V

    long-to-int p1, p2

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/mapcore2d/ay;->a(Lcom/amap/api/mapcore2d/ab;I)V

    goto :goto_2

    .line 590
    :cond_c
    iget-object p4, p1, Lcom/amap/api/mapcore2d/r;->a:Lcom/amap/api/mapcore2d/r$a;

    sget-object v0, Lcom/amap/api/mapcore2d/r$a;->c:Lcom/amap/api/mapcore2d/r$a;

    if-ne p4, v0, :cond_d

    .line 591
    iget-object p1, p1, Lcom/amap/api/mapcore2d/r;->f:Lcom/amap/api/maps2d/model/CameraPosition;

    .line 592
    iget-object p4, p1, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v0, p4, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    mul-double/2addr v0, v3

    double-to-int p4, v0

    .line 593
    iget-object p1, p1, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v0, p1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    mul-double/2addr v0, v3

    double-to-int p1, v0

    .line 594
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ay;

    new-instance v0, Lcom/amap/api/mapcore2d/ab;

    invoke-direct {v0, p4, p1}, Lcom/amap/api/mapcore2d/ab;-><init>(II)V

    long-to-int p1, p2

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/mapcore2d/ay;->a(Lcom/amap/api/mapcore2d/ab;I)V

    goto :goto_2

    .line 595
    :cond_d
    iget-object p4, p1, Lcom/amap/api/mapcore2d/r;->a:Lcom/amap/api/mapcore2d/r$a;

    sget-object v0, Lcom/amap/api/mapcore2d/r$a;->j:Lcom/amap/api/mapcore2d/r$a;

    if-eq p4, v0, :cond_f

    iget-object p4, p1, Lcom/amap/api/mapcore2d/r;->a:Lcom/amap/api/mapcore2d/r$a;

    sget-object v0, Lcom/amap/api/mapcore2d/r$a;->k:Lcom/amap/api/mapcore2d/r$a;

    if-ne p4, v0, :cond_e

    goto :goto_1

    .line 601
    :cond_e
    iput-boolean v2, p1, Lcom/amap/api/mapcore2d/r;->i:Z

    .line 602
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->e:Lcom/amap/api/mapcore2d/bb;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/bb;->a(Lcom/amap/api/mapcore2d/r;)V

    goto :goto_2

    .line 597
    :cond_f
    :goto_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->L()V

    .line 598
    invoke-virtual {p0, p1, v2, p2, p3}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/mapcore2d/r;ZJ)V

    :goto_2
    return-void
.end method

.method public a(Lcom/amap/api/mapcore2d/r;Lcom/amap/api/maps2d/AMap$CancelableCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide/16 v0, 0xfa

    .line 537
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/mapcore2d/r;JLcom/amap/api/maps2d/AMap$CancelableCallback;)V

    return-void
.end method

.method protected a(Lcom/amap/api/mapcore2d/r;ZJ)V
    .locals 14

    move-object v0, p0

    .line 2865
    iget-object v1, v0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ay;

    if-nez v1, :cond_0

    return-void

    :cond_0
    move-object v1, p1

    .line 2869
    :try_start_0
    iget-object v1, v1, Lcom/amap/api/mapcore2d/r;->g:Lcom/amap/api/maps2d/model/LatLngBounds;

    .line 2870
    iget-object v2, v1, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    const-wide v4, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v2, v4

    iget-object v6, v1, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v6, v6, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    mul-double/2addr v6, v4

    sub-double/2addr v2, v6

    double-to-float v2, v2

    .line 2871
    iget-object v3, v1, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v6, v3, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    mul-double/2addr v6, v4

    iget-object v3, v1, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v8, v3, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    mul-double/2addr v8, v4

    sub-double/2addr v6, v8

    double-to-float v3, v6

    .line 2872
    iget-object v6, v1, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v6, v6, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    mul-double/2addr v6, v4

    iget-object v8, v1, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v8, v8, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    mul-double/2addr v8, v4

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    double-to-int v6, v6

    .line 2873
    iget-object v7, v1, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v10, v7, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    mul-double/2addr v10, v4

    iget-object v1, v1, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v12, v1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    mul-double/2addr v12, v4

    add-double/2addr v10, v12

    div-double/2addr v10, v8

    double-to-int v1, v10

    .line 2874
    new-instance v4, Lcom/amap/api/mapcore2d/ab;

    invoke-direct {v4, v6, v1}, Lcom/amap/api/mapcore2d/ab;-><init>(II)V

    if-eqz p2, :cond_1

    .line 2876
    iget-object v1, v0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ay;

    move-wide/from16 v5, p3

    long-to-int v5, v5

    invoke-virtual {v1, v4, v5}, Lcom/amap/api/mapcore2d/ay;->a(Lcom/amap/api/mapcore2d/ab;I)V

    goto :goto_0

    .line 2878
    :cond_1
    iget-object v1, v0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ay;

    invoke-virtual {v1, v4}, Lcom/amap/api/mapcore2d/ay;->a(Lcom/amap/api/mapcore2d/ab;)V

    .line 2880
    :goto_0
    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ay;

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/mapcore2d/ay;->a(FF)V

    .line 2881
    invoke-static {}, Lcom/amap/api/mapcore2d/q;->a()Lcom/amap/api/mapcore2d/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/q;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "newLatLngBoundsWithSize"

    const-string v2, "AMapDelegateImpGLSurfaceView"

    .line 2883
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public a(Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 972
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->O:Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;

    return-void
.end method

.method public a(Lcom/amap/api/maps2d/AMap$OnCacheRemoveListener;)V
    .locals 2

    .line 2905
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ah:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2907
    :try_start_0
    new-instance v0, Lcom/amap/api/mapcore2d/b$b;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->l:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/amap/api/mapcore2d/b$b;-><init>(Lcom/amap/api/mapcore2d/b;Landroid/content/Context;Lcom/amap/api/maps2d/AMap$OnCacheRemoveListener;)V

    .line 2909
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->ah:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2910
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->ah:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "AMapDelegateImpGLSurfaceView"

    const-string v0, "removecache"

    .line 2912
    invoke-static {p0, p1, v0}, Lcom/amap/api/mapcore2d/dn;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2914
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2607
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->G:Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;

    return-void
.end method

.method public a(Lcom/amap/api/maps2d/AMap$OnInfoWindowClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 966
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->N:Lcom/amap/api/maps2d/AMap$OnInfoWindowClickListener;

    return-void
.end method

.method public a(Lcom/amap/api/maps2d/AMap$OnMapClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 929
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->ac:Lcom/amap/api/maps2d/AMap$OnMapClickListener;

    return-void
.end method

.method public a(Lcom/amap/api/maps2d/AMap$OnMapLoadedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 960
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->ab:Lcom/amap/api/maps2d/AMap$OnMapLoadedListener;

    return-void
.end method

.method public a(Lcom/amap/api/maps2d/AMap$OnMapLongClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 941
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->aa:Lcom/amap/api/maps2d/AMap$OnMapLongClickListener;

    return-void
.end method

.method public a(Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;)V
    .locals 0

    .line 1178
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->ae:Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;

    const/4 p1, 0x1

    .line 1179
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/b;->T:Z

    return-void
.end method

.method public a(Lcom/amap/api/maps2d/AMap$OnMapTouchListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 935
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->Z:Lcom/amap/api/maps2d/AMap$OnMapTouchListener;

    return-void
.end method

.method public a(Lcom/amap/api/maps2d/AMap$OnMarkerClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 948
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->Q:Lcom/amap/api/maps2d/AMap$OnMarkerClickListener;

    return-void
.end method

.method public a(Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 954
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->W:Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;

    return-void
.end method

.method public a(Lcom/amap/api/maps2d/AMap$OnMyLocationChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1081
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->w:Lcom/amap/api/maps2d/AMap$OnMyLocationChangeListener;

    return-void
.end method

.method public a(Lcom/amap/api/maps2d/LocationSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 905
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->B:Lcom/amap/api/maps2d/LocationSource;

    if-eqz p1, :cond_0

    .line 907
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->t:Lcom/amap/api/mapcore2d/av;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/av;->a(Z)V

    goto :goto_0

    .line 909
    :cond_0
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->t:Lcom/amap/api/mapcore2d/av;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/av;->a(Z)V

    :goto_0
    return-void
.end method

.method public a(Lcom/amap/api/maps2d/model/MyLocationStyle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 884
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->n()Lcom/amap/api/mapcore2d/bo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 885
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->n()Lcom/amap/api/mapcore2d/bo;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/bo;->a(Lcom/amap/api/maps2d/model/MyLocationStyle;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public a(FF)Z
    .locals 2

    .line 2204
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ay;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/ay;->a(Z)V

    .line 2205
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->at:Z

    if-eqz v0, :cond_0

    .line 2206
    iget v0, p0, Lcom/amap/api/mapcore2d/b;->au:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/amap/api/mapcore2d/b;->au:F

    .line 2207
    iget p1, p0, Lcom/amap/api/mapcore2d/b;->av:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/amap/api/mapcore2d/b;->av:F

    .line 2209
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    .line 2210
    iget-boolean p0, p0, Lcom/amap/api/mapcore2d/b;->at:Z

    return p0
.end method

.method public a(FLandroid/graphics/PointF;)Z
    .locals 4

    const/4 v0, 0x0

    .line 2254
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/ar;

    invoke-interface {v1}, Lcom/amap/api/mapcore2d/ar;->f()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return v0

    :catch_0
    move-exception v1

    const-string v2, "onScale"

    const-string v3, "AMapDelegateImpGLSurfaceView"

    .line 2258
    invoke-static {v1, v3, v2}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2260
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    iput-boolean v0, v1, Lcom/amap/api/mapcore2d/bk$a;->c:Z

    .line 2261
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->L()V

    .line 2262
    iget v1, p0, Lcom/amap/api/mapcore2d/b;->au:F

    iget v2, p0, Lcom/amap/api/mapcore2d/b;->av:F

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/amap/api/mapcore2d/b;->a(FLandroid/graphics/PointF;FF)V

    .line 2263
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->at:Z

    const-wide/16 p1, 0x8

    .line 2264
    invoke-virtual {p0, p1, p2}, Lcom/amap/api/mapcore2d/b;->postInvalidateDelayed(J)V

    .line 2265
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/bk;->a(Z)V

    return p1
.end method

.method public a(Landroid/graphics/Matrix;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public a(Landroid/graphics/PointF;)Z
    .locals 3

    const-string p1, "AMapDelegateImpGLSurfaceView"

    const-string v0, "startScale"

    const/4 v1, 0x0

    .line 2290
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/ar;

    invoke-interface {v2}, Lcom/amap/api/mapcore2d/ar;->f()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    return v1

    :catch_0
    move-exception v2

    .line 2294
    invoke-static {v2, p1, v0}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2297
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->p()Lcom/amap/api/mapcore2d/ar;

    move-result-object v2

    invoke-interface {v2}, Lcom/amap/api/mapcore2d/ar;->f()Z

    move-result p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez p1, :cond_1

    return v1

    :catch_1
    move-exception v1

    .line 2301
    invoke-static {v1, p1, v0}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2303
    :cond_1
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->n:Z

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore2d/bk;->a(Z)V

    .line 2304
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore2d/bk$a;->a(Z)V

    .line 2305
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    iput-boolean v0, p1, Lcom/amap/api/mapcore2d/bk$a;->c:Z

    .line 2306
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->at:Z

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 443
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 446
    :cond_0
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk;->g:Lcom/amap/api/mapcore2d/z;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/z;->b(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public b()I
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    if-nez v0, :cond_0

    goto :goto_0

    .line 376
    :cond_0
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bk$d;->c()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method protected b(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 12

    .line 2539
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 2540
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v1

    .line 2541
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getHeight()I

    move-result v2

    .line 2542
    iget v3, p1, Landroid/graphics/PointF;->x:F

    shr-int/lit8 v1, v1, 0x1

    int-to-float v4, v1

    sub-float/2addr v3, v4

    .line 2543
    iget p1, p1, Landroid/graphics/PointF;->y:F

    shr-int/lit8 v2, v2, 0x1

    int-to-float v4, v2

    sub-float/2addr p1, v4

    float-to-double v4, p1

    float-to-double v6, v3

    .line 2544
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 2545
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 2546
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->K()I

    move-result p0

    int-to-double p0, p0

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p0, v5

    const-wide v5, 0x4066800000000000L    # 180.0

    div-double/2addr p0, v5

    sub-double/2addr v8, p0

    .line 2547
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double/2addr p0, v3

    int-to-double v5, v1

    add-double/2addr p0, v5

    double-to-float p0, p0

    iput p0, v0, Landroid/graphics/PointF;->x:F

    .line 2548
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double/2addr v3, p0

    int-to-double p0, v2

    add-double/2addr v3, p0

    double-to-float p0, v3

    iput p0, v0, Landroid/graphics/PointF;->y:F

    return-object v0
.end method

.method public b(Lcom/amap/api/maps2d/model/MarkerOptions;)Lcom/amap/api/mapcore2d/bi;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 755
    new-instance v0, Lcom/amap/api/mapcore2d/bi;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/bc;

    invoke-direct {v0, p1, v1}, Lcom/amap/api/mapcore2d/bi;-><init>(Lcom/amap/api/maps2d/model/MarkerOptions;Lcom/amap/api/mapcore2d/bc;)V

    .line 757
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/bc;

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore2d/bc;->a(Lcom/amap/api/mapcore2d/ah;)V

    .line 758
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    return-object v0
.end method

.method public b(DDLcom/amap/api/mapcore2d/ak;)V
    .locals 6

    .line 2747
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->e()F

    .line 2748
    invoke-static {p1, p2}, Lcom/amap/api/mapcore2d/w;->a(D)J

    move-result-wide p1

    long-to-int p1, p1

    .line 2749
    invoke-static {p3, p4}, Lcom/amap/api/mapcore2d/w;->a(D)J

    move-result-wide p2

    long-to-int p2, p2

    .line 2750
    new-instance v1, Lcom/amap/api/mapcore2d/ab;

    invoke-direct {v1, p1, p2}, Lcom/amap/api/mapcore2d/ab;-><init>(II)V

    .line 2751
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/mapcore2d/bf;

    iget-object v2, v0, Lcom/amap/api/mapcore2d/bf;->l:Lcom/amap/api/mapcore2d/ab;

    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/mapcore2d/bf;

    iget-object v3, p1, Lcom/amap/api/mapcore2d/bf;->n:Landroid/graphics/Point;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/mapcore2d/bf;

    iget-wide v4, p0, Lcom/amap/api/mapcore2d/bf;->k:D

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/mapcore2d/bf;->b(Lcom/amap/api/mapcore2d/ab;Lcom/amap/api/mapcore2d/ab;Landroid/graphics/Point;D)Landroid/graphics/PointF;

    move-result-object p0

    if-eqz p5, :cond_0

    .line 2756
    iget p1, p0, Landroid/graphics/PointF;->x:F

    float-to-int p1, p1

    iput p1, p5, Lcom/amap/api/mapcore2d/ak;->a:I

    .line 2757
    iget p0, p0, Landroid/graphics/PointF;->y:F

    float-to-int p0, p0

    iput p0, p5, Lcom/amap/api/mapcore2d/ak;->b:I

    :cond_0
    return-void
.end method

.method public b(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 876
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->y:Lcom/amap/api/mapcore2d/bo;

    if-eqz p0, :cond_0

    .line 877
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/bo;->a(F)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    .line 1189
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/cp;

    if-eqz v0, :cond_0

    .line 1190
    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/cp;->a(I)V

    .line 1191
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/cp;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/cp;->invalidate()V

    .line 1192
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->A:Lcom/amap/api/mapcore2d/bv;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/bv;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 1193
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->A:Lcom/amap/api/mapcore2d/bv;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bv;->invalidate()V

    :cond_0
    return-void
.end method

.method public b(IILcom/amap/api/mapcore2d/x;)V
    .locals 0

    if-eqz p3, :cond_0

    int-to-long p0, p1

    .line 2740
    invoke-static {p0, p1}, Lcom/amap/api/mapcore2d/w;->a(J)D

    move-result-wide p0

    iput-wide p0, p3, Lcom/amap/api/mapcore2d/x;->a:D

    int-to-long p0, p2

    .line 2741
    invoke-static {p0, p1}, Lcom/amap/api/mapcore2d/w;->a(J)D

    move-result-wide p0

    iput-wide p0, p3, Lcom/amap/api/mapcore2d/x;->b:D

    :cond_0
    return-void
.end method

.method public b(Lcom/amap/api/mapcore2d/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 530
    invoke-virtual {p0, p1, v0}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/mapcore2d/r;Lcom/amap/api/maps2d/AMap$CancelableCallback;)V

    return-void
.end method

.method public b(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 836
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/b;->i(Z)V

    .line 837
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    return-void
.end method

.method public b(FLandroid/graphics/PointF;)Z
    .locals 0

    const/4 p1, 0x0

    .line 2273
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/b;->at:Z

    .line 2275
    :try_start_0
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/ar;

    invoke-interface {p0}, Lcom/amap/api/mapcore2d/ar;->f()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    return p1

    :catch_0
    move-exception p0

    const-string p1, "endScale"

    const-string p2, "AMapDelegateImpGLSurfaceView"

    .line 2279
    invoke-static {p0, p2, p1}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2281
    :cond_0
    invoke-static {}, Lcom/amap/api/mapcore2d/q;->a()Lcom/amap/api/mapcore2d/q;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/q;->b()V

    const/4 p0, 0x1

    return p0
.end method

.method public b(Landroid/graphics/Matrix;)Z
    .locals 3

    .line 2238
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/ar;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ar;->f()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception v0

    const-string v1, "onScale"

    const-string v2, "AMapDelegateImpGLSurfaceView"

    .line 2242
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2244
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ar:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 2246
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    const/4 p0, 0x1

    return p0
.end method

.method public b(Lcom/amap/api/mapcore2d/ah;)Z
    .locals 1

    .line 1043
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->P:Lcom/amap/api/mapcore2d/bi;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->M:Landroid/view/View;

    if-eqz p0, :cond_0

    .line 1044
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bi;->d()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ah;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 2

    .line 454
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/bc;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/bc;->a(Ljava/lang/String;)Lcom/amap/api/mapcore2d/ah;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "removeMarker"

    const-string v1, "AMapDelegateImpGLSurfaceView"

    .line 456
    invoke-static {p1, v1, v0}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    .line 459
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/bc;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/bc;->b(Lcom/amap/api/mapcore2d/ah;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public c()I
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    if-nez v0, :cond_0

    goto :goto_0

    .line 384
    :cond_0
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bk$d;->d()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method protected c(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 12

    .line 2554
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 2555
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v1

    .line 2556
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getHeight()I

    move-result v2

    .line 2557
    iget v3, p1, Landroid/graphics/PointF;->x:F

    shr-int/lit8 v1, v1, 0x1

    int-to-float v4, v1

    sub-float/2addr v3, v4

    .line 2558
    iget p1, p1, Landroid/graphics/PointF;->y:F

    shr-int/lit8 v2, v2, 0x1

    int-to-float v4, v2

    sub-float/2addr p1, v4

    float-to-double v4, p1

    float-to-double v6, v3

    .line 2559
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 2560
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 2561
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->K()I

    move-result p0

    int-to-double p0, p0

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p0, v5

    const-wide v5, 0x4066800000000000L    # 180.0

    div-double/2addr p0, v5

    add-double/2addr v8, p0

    .line 2562
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double/2addr p0, v3

    int-to-double v5, v1

    add-double/2addr p0, v5

    double-to-float p0, p0

    iput p0, v0, Landroid/graphics/PointF;->x:F

    .line 2563
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double/2addr v3, p0

    int-to-double p0, v2

    add-double/2addr v3, p0

    double-to-float p0, v3

    iput p0, v0, Landroid/graphics/PointF;->y:F

    return-object v0
.end method

.method public c(F)V
    .locals 0

    .line 1950
    iput p1, p0, Lcom/amap/api/mapcore2d/b;->as:F

    return-void
.end method

.method public c(I)V
    .locals 1

    .line 1200
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/cq;

    if-eqz v0, :cond_0

    .line 1201
    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/cq;->a(I)V

    .line 1202
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/cq;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/cq;->invalidate()V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2889
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2892
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->D()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2896
    :cond_1
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/bk$a;->a(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public c(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 847
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->B:Lcom/amap/api/maps2d/LocationSource;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 849
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->v:Lcom/amap/api/mapcore2d/g;

    invoke-interface {v0, v2}, Lcom/amap/api/maps2d/LocationSource;->activate(Lcom/amap/api/maps2d/LocationSource$OnLocationChangedListener;)V

    .line 850
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->t:Lcom/amap/api/mapcore2d/av;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/av;->a(Z)V

    .line 851
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->y:Lcom/amap/api/mapcore2d/bo;

    if-nez v0, :cond_3

    .line 852
    new-instance v0, Lcom/amap/api/mapcore2d/bo;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/bo;-><init>(Lcom/amap/api/mapcore2d/ad;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->y:Lcom/amap/api/mapcore2d/bo;

    goto :goto_0

    .line 855
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->y:Lcom/amap/api/mapcore2d/bo;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 856
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bo;->a()V

    .line 857
    iput-object v2, p0, Lcom/amap/api/mapcore2d/b;->y:Lcom/amap/api/mapcore2d/bo;

    .line 859
    :cond_1
    iput-object v2, p0, Lcom/amap/api/mapcore2d/b;->u:Landroid/location/Location;

    .line 860
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->B:Lcom/amap/api/maps2d/LocationSource;

    invoke-interface {v0}, Lcom/amap/api/maps2d/LocationSource;->deactivate()V

    .line 861
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->t:Lcom/amap/api/mapcore2d/av;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/av;->a(Z)V

    goto :goto_0

    .line 864
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->t:Lcom/amap/api/mapcore2d/av;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/av;->a(Z)V

    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    .line 867
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->t:Lcom/amap/api/mapcore2d/av;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/av;->setVisibility(I)V

    goto :goto_1

    .line 869
    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->t:Lcom/amap/api/mapcore2d/av;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/av;->setVisibility(I)V

    .line 871
    :goto_1
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/b;->x:Z

    return-void
.end method

.method public computeScroll()V
    .locals 4

    .line 1736
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ao:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1737
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ao:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget v1, p0, Lcom/amap/api/mapcore2d/b;->ap:I

    sub-int/2addr v0, v1

    .line 1738
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->ao:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iget v2, p0, Lcom/amap/api/mapcore2d/b;->aq:I

    sub-int/2addr v1, v2

    .line 1739
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->ao:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iput v2, p0, Lcom/amap/api/mapcore2d/b;->ap:I

    .line 1740
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->ao:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    iput v2, p0, Lcom/amap/api/mapcore2d/b;->aq:I

    .line 1741
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bk;->b:Lcom/amap/api/mapcore2d/bk$e;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/bf;->n:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v3, v0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bf;->n:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    add-int/2addr v0, v1

    invoke-virtual {v2, v3, v0}, Lcom/amap/api/mapcore2d/bk$e;->a(II)Lcom/amap/api/mapcore2d/ab;

    move-result-object v0

    .line 1744
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->ao:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1745
    invoke-static {}, Lcom/amap/api/mapcore2d/q;->a()Lcom/amap/api/mapcore2d/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/q;->b()V

    .line 1746
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->G:Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;

    if-eqz v0, :cond_0

    .line 1747
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->Y()Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object v0

    const/4 v1, 0x1

    .line 1748
    invoke-direct {p0, v1, v0}, Lcom/amap/api/mapcore2d/b;->a(ZLcom/amap/api/maps2d/model/CameraPosition;)V

    .line 1750
    :cond_0
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/amap/api/mapcore2d/bk$d;->a(ZZ)V

    goto :goto_0

    .line 1752
    :cond_1
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/bk$d;->b(Lcom/amap/api/mapcore2d/ab;)V

    :goto_0
    return-void

    .line 1756
    :cond_2
    invoke-super {p0}, Landroid/view/View;->computeScroll()V

    return-void
.end method

.method public d()Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 389
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/be;

    return-object p0
.end method

.method public d(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1087
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/cq;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/cq;->setVisibility(I)V

    goto :goto_0

    .line 1089
    :cond_0
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/cq;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/cq;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public d(F)Z
    .locals 4

    const/4 v0, 0x0

    .line 2218
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/ar;

    invoke-interface {v1}, Lcom/amap/api/mapcore2d/ar;->f()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return v0

    :catch_0
    move-exception v1

    const-string v2, "onScale"

    const-string v3, "AMapDelegateImpGLSurfaceView"

    .line 2222
    invoke-static {v1, v3, v2}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2225
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/b;->c(F)V

    return v0
.end method

.method public e()F
    .locals 3

    .line 479
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    if-nez v0, :cond_0

    goto :goto_0

    .line 483
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bk$d;->e()F

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "getZoomLevel"

    const-string v2, "AMapDelegateImpGLSurfaceView"

    .line 485
    invoke-static {p0, v2, v0}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v1
.end method

.method public e(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1096
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->t:Lcom/amap/api/mapcore2d/av;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/av;->setVisibility(I)V

    goto :goto_0

    .line 1098
    :cond_0
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->t:Lcom/amap/api/mapcore2d/av;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/av;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public f()Lcom/amap/api/maps2d/model/CameraPosition;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 492
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->aa()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 496
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->e()F

    move-result p0

    .line 497
    invoke-static {}, Lcom/amap/api/maps2d/model/CameraPosition;->builder()Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->target(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->zoom(F)Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->build()Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object p0

    return-object p0
.end method

.method public f(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1105
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->C:Lcom/amap/api/mapcore2d/u;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/u;->setVisibility(I)V

    goto :goto_0

    .line 1107
    :cond_0
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->C:Lcom/amap/api/mapcore2d/u;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/u;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public g()F
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    if-nez v0, :cond_0

    goto :goto_1

    .line 505
    :cond_0
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bk$d;->a()I

    move-result p0

    :goto_0
    int-to-float p0, p0

    return p0

    .line 503
    :cond_1
    :goto_1
    sget p0, Lcom/amap/api/mapcore2d/v;->c:I

    goto :goto_0
.end method

.method public g(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1114
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->A:Lcom/amap/api/mapcore2d/bv;

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore2d/bv;->setVisibility(I)V

    .line 1115
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->M()V

    goto :goto_0

    .line 1117
    :cond_0
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->A:Lcom/amap/api/mapcore2d/bv;

    const-string v1, ""

    invoke-virtual {p1, v1}, Lcom/amap/api/mapcore2d/bv;->a(Ljava/lang/String;)V

    .line 1118
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->A:Lcom/amap/api/mapcore2d/bv;

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore2d/bv;->a(I)V

    .line 1119
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->A:Lcom/amap/api/mapcore2d/bv;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/bv;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public h()F
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    if-nez v0, :cond_0

    goto :goto_1

    .line 515
    :cond_0
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bk$d;->b()I

    move-result p0

    :goto_0
    int-to-float p0, p0

    return p0

    .line 513
    :cond_1
    :goto_1
    sget p0, Lcom/amap/api/mapcore2d/v;->d:I

    goto :goto_0
.end method

.method public h(Z)V
    .locals 5

    .line 1437
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->D()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 1449
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bk;

    move-result-object p1

    iget-object p1, p1, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    .line 1450
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bk;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bk$a;->h:Ljava/lang/String;

    .line 1449
    invoke-virtual {p1, v2, v1}, Lcom/amap/api/mapcore2d/bk$a;->a(Ljava/lang/String;Z)Z

    .line 1452
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bk;

    move-result-object p1

    iget-object p1, p1, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    .line 1453
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bk;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bk$a;->g:Ljava/lang/String;

    .line 1452
    invoke-virtual {p1, v2, v0}, Lcom/amap/api/mapcore2d/bk$a;->a(Ljava/lang/String;Z)Z

    .line 1457
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bk;

    move-result-object p0

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {p0, v1, v1}, Lcom/amap/api/mapcore2d/bk$d;->a(ZZ)V

    return-void

    .line 1462
    :cond_1
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    if-nez p1, :cond_2

    return-void

    .line 1465
    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bk;

    move-result-object p1

    iget-object p1, p1, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    .line 1466
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bk;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bk$a;->h:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/amap/api/mapcore2d/bk$a;->b(Ljava/lang/String;)Lcom/amap/api/mapcore2d/at;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1469
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bk;

    move-result-object p1

    iget-object p1, p1, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    .line 1470
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bk;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bk$a;->h:Ljava/lang/String;

    .line 1469
    invoke-virtual {p1, v2, v0}, Lcom/amap/api/mapcore2d/bk$a;->a(Ljava/lang/String;Z)Z

    .line 1474
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bk;

    move-result-object p0

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {p0, v1, v1}, Lcom/amap/api/mapcore2d/bk$d;->a(ZZ)V

    return-void

    .line 1477
    :cond_3
    new-instance p1, Lcom/amap/api/mapcore2d/at;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/mapcore2d/bf;

    invoke-direct {p1, v2}, Lcom/amap/api/mapcore2d/at;-><init>(Lcom/amap/api/mapcore2d/bf;)V

    .line 1478
    new-instance v2, Lcom/amap/api/mapcore2d/cg;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object v4, p0, Lcom/amap/api/mapcore2d/b;->l:Landroid/content/Context;

    invoke-direct {v2, v3, v4, p1}, Lcom/amap/api/mapcore2d/cg;-><init>(Lcom/amap/api/mapcore2d/bk;Landroid/content/Context;Lcom/amap/api/mapcore2d/at;)V

    iput-object v2, p1, Lcom/amap/api/mapcore2d/at;->q:Lcom/amap/api/mapcore2d/cg;

    .line 1479
    new-instance v2, Lcom/amap/api/mapcore2d/b$1;

    invoke-direct {v2, p0}, Lcom/amap/api/mapcore2d/b$1;-><init>(Lcom/amap/api/mapcore2d/b;)V

    iput-object v2, p1, Lcom/amap/api/mapcore2d/at;->j:Lcom/amap/api/mapcore2d/cn;

    .line 1488
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bk;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bk$a;->h:Ljava/lang/String;

    iput-object v2, p1, Lcom/amap/api/mapcore2d/at;->b:Ljava/lang/String;

    .line 1489
    iput-boolean v0, p1, Lcom/amap/api/mapcore2d/at;->e:Z

    .line 1491
    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore2d/at;->a(Z)V

    .line 1492
    iput-boolean v0, p1, Lcom/amap/api/mapcore2d/at;->f:Z

    .line 1494
    sget v2, Lcom/amap/api/mapcore2d/v;->c:I

    iput v2, p1, Lcom/amap/api/mapcore2d/at;->c:I

    .line 1495
    sget v2, Lcom/amap/api/mapcore2d/v;->d:I

    iput v2, p1, Lcom/amap/api/mapcore2d/at;->d:I

    .line 1496
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bk;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/amap/api/mapcore2d/bk$a;->a(Lcom/amap/api/mapcore2d/at;Landroid/content/Context;)Z

    .line 1497
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bk;

    move-result-object p1

    iget-object p1, p1, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    .line 1498
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bk;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bk$a;->h:Ljava/lang/String;

    .line 1497
    invoke-virtual {p1, v2, v0}, Lcom/amap/api/mapcore2d/bk$a;->a(Ljava/lang/String;Z)Z

    .line 1502
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bk;

    move-result-object p0

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {p0, v1, v1}, Lcom/amap/api/mapcore2d/bk$d;->a(ZZ)V

    return-void
.end method

.method public i()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 644
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ay;

    if-nez v0, :cond_0

    return-void

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->H:Lcom/amap/api/mapcore2d/p;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/p;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 648
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->H:Lcom/amap/api/mapcore2d/p;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/p;->a(Z)V

    .line 649
    invoke-static {}, Lcom/amap/api/mapcore2d/q;->a()Lcom/amap/api/mapcore2d/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/q;->b()V

    .line 650
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->I:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    if-eqz v0, :cond_1

    .line 651
    invoke-interface {v0}, Lcom/amap/api/maps2d/AMap$CancelableCallback;->onCancel()V

    :cond_1
    const/4 v0, 0x0

    .line 653
    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->I:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    .line 655
    :cond_2
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ay;

    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore2d/ay;->a(Z)V

    return-void
.end method

.method public i(Z)V
    .locals 6

    .line 1520
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->E()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 1528
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    if-nez v0, :cond_1

    return-void

    .line 1539
    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bk;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk$a;->i:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 1542
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bk;

    move-result-object p1

    iget-object p1, p1, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    invoke-virtual {p1, v0, v1}, Lcom/amap/api/mapcore2d/bk$a;->a(Ljava/lang/String;Z)Z

    .line 1543
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bk;

    move-result-object p0

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {p0, v1, v1}, Lcom/amap/api/mapcore2d/bk$d;->a(ZZ)V

    return-void

    .line 1548
    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bk;

    move-result-object p1

    iget-object p1, p1, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore2d/bk$a;->b(Ljava/lang/String;)Lcom/amap/api/mapcore2d/at;

    move-result-object p1

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    .line 1550
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bk;

    move-result-object p1

    iget-object p1, p1, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    invoke-virtual {p1, v0, v2}, Lcom/amap/api/mapcore2d/bk$a;->a(Ljava/lang/String;Z)Z

    .line 1551
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bk;

    move-result-object p0

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {p0, v1, v1}, Lcom/amap/api/mapcore2d/bk$d;->a(ZZ)V

    return-void

    .line 1613
    :cond_3
    new-instance p1, Lcom/amap/api/mapcore2d/at;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->J:Lcom/amap/api/mapcore2d/bf;

    invoke-direct {p1, v3}, Lcom/amap/api/mapcore2d/at;-><init>(Lcom/amap/api/mapcore2d/bf;)V

    .line 1614
    new-instance v3, Lcom/amap/api/mapcore2d/cg;

    iget-object v4, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object v5, p0, Lcom/amap/api/mapcore2d/b;->l:Landroid/content/Context;

    invoke-direct {v3, v4, v5, p1}, Lcom/amap/api/mapcore2d/cg;-><init>(Lcom/amap/api/mapcore2d/bk;Landroid/content/Context;Lcom/amap/api/mapcore2d/at;)V

    iput-object v3, p1, Lcom/amap/api/mapcore2d/at;->q:Lcom/amap/api/mapcore2d/cg;

    .line 1615
    iput-boolean v2, p1, Lcom/amap/api/mapcore2d/at;->g:Z

    const-wide/32 v3, 0x1d4c0

    .line 1616
    iput-wide v3, p1, Lcom/amap/api/mapcore2d/at;->i:J

    .line 1618
    new-instance v3, Lcom/amap/api/mapcore2d/b$2;

    invoke-direct {v3, p0}, Lcom/amap/api/mapcore2d/b$2;-><init>(Lcom/amap/api/mapcore2d/b;)V

    iput-object v3, p1, Lcom/amap/api/mapcore2d/at;->j:Lcom/amap/api/mapcore2d/cn;

    .line 1629
    iput-object v0, p1, Lcom/amap/api/mapcore2d/at;->b:Ljava/lang/String;

    .line 1630
    iput-boolean v1, p1, Lcom/amap/api/mapcore2d/at;->e:Z

    .line 1632
    invoke-virtual {p1, v2}, Lcom/amap/api/mapcore2d/at;->a(Z)V

    .line 1633
    iput-boolean v1, p1, Lcom/amap/api/mapcore2d/at;->f:Z

    const/16 v3, 0x12

    .line 1634
    iput v3, p1, Lcom/amap/api/mapcore2d/at;->c:I

    const/16 v3, 0x9

    .line 1635
    iput v3, p1, Lcom/amap/api/mapcore2d/at;->d:I

    .line 1636
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bk;

    move-result-object v3

    iget-object v3, v3, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/amap/api/mapcore2d/bk$a;->a(Lcom/amap/api/mapcore2d/at;Landroid/content/Context;)Z

    .line 1637
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bk;

    move-result-object p1

    iget-object p1, p1, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    invoke-virtual {p1, v0, v2}, Lcom/amap/api/mapcore2d/bk$a;->a(Ljava/lang/String;Z)Z

    .line 1638
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bk;

    move-result-object p0

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {p0, v1, v1}, Lcom/amap/api/mapcore2d/bk$d;->a(ZZ)V

    return-void
.end method

.method public j()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "AMapDelegateImpGLSurfaceView"

    const-string v1, "clear"

    .line 786
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->s()V

    .line 789
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    if-nez v2, :cond_0

    return-void

    .line 792
    :cond_0
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bk;->g:Lcom/amap/api/mapcore2d/z;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/z;->a()V

    .line 793
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/bc;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/bc;->c()V

    .line 794
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/ce;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/ce;->b()V

    .line 795
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->y:Lcom/amap/api/mapcore2d/bo;

    if-eqz v2, :cond_1

    .line 796
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->y:Lcom/amap/api/mapcore2d/bo;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/bo;->a()V

    .line 798
    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 804
    invoke-static {p0, v0, v1}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p0

    .line 800
    invoke-static {p0, v0, v1}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AMapDelegateImpGLSurfaceView clear erro"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "amapApi"

    .line 801
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public k()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 812
    iget p0, p0, Lcom/amap/api/mapcore2d/b;->s:I

    return p0
.end method

.method public l()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 831
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->E()Z

    move-result p0

    return p0
.end method

.method public m()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 842
    iget-boolean p0, p0, Lcom/amap/api/mapcore2d/b;->x:Z

    return p0
.end method

.method public n()Lcom/amap/api/mapcore2d/bo;
    .locals 0

    .line 891
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->y:Lcom/amap/api/mapcore2d/bo;

    return-object p0
.end method

.method public o()Landroid/location/Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 896
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->B:Lcom/amap/api/maps2d/LocationSource;

    if-eqz v0, :cond_0

    .line 897
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->v:Lcom/amap/api/mapcore2d/g;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/g;->a:Landroid/location/Location;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 1731
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x1

    .line 2321
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/ar;

    invoke-interface {v1}, Lcom/amap/api/mapcore2d/ar;->f()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return v0

    :catch_0
    move-exception v1

    const-string v2, "onDoubleTap"

    const-string v3, "AMapDelegateImpGLSurfaceView"

    .line 2325
    invoke-static {v1, v3, v2}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2327
    :cond_0
    iget-boolean v1, p0, Lcom/amap/api/mapcore2d/b;->r:Z

    if-eqz v1, :cond_1

    .line 2328
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ay;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v1, v2, p1}, Lcom/amap/api/mapcore2d/ay;->a(II)Z

    .line 2330
    :cond_1
    iget p1, p0, Lcom/amap/api/mapcore2d/b;->aE:I

    if-le p1, v0, :cond_2

    return v0

    .line 2333
    :cond_2
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->aF:Z

    .line 2334
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/cq;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bk$d;->e()F

    move-result p0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr p0, v1

    invoke-virtual {p1, p0}, Lcom/amap/api/mapcore2d/cq;->a(F)V

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x0

    .line 2038
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->V:Z

    .line 2039
    iget-boolean v1, p0, Lcom/amap/api/mapcore2d/b;->aF:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->H:Lcom/amap/api/mapcore2d/p;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/p;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2040
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->H:Lcom/amap/api/mapcore2d/p;

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore2d/p;->a(Z)V

    .line 2041
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->I:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    if-eqz v1, :cond_0

    .line 2042
    invoke-interface {v1}, Lcom/amap/api/maps2d/AMap$CancelableCallback;->onCancel()V

    :cond_0
    const/4 v1, 0x0

    .line 2043
    iput-object v1, p0, Lcom/amap/api/mapcore2d/b;->I:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    .line 2045
    :cond_1
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->aF:Z

    .line 2046
    iput v0, p0, Lcom/amap/api/mapcore2d/b;->aE:I

    .line 2047
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->aj:Landroid/graphics/Point;

    if-nez v0, :cond_2

    .line 2048
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->aj:Landroid/graphics/Point;

    goto :goto_0

    .line 2050
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Point;->set(II)V

    :goto_0
    return v2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1910
    invoke-static {}, Lcom/amap/api/mapcore2d/b;->H()Landroid/graphics/Paint;

    move-result-object v6

    .line 1911
    invoke-static {}, Lcom/amap/api/mapcore2d/b;->G()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1912
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v0

    .line 1913
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    move v7, v0

    goto :goto_0

    :cond_0
    move v7, v1

    .line 1917
    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getLeft()I

    move-result v0

    int-to-float v8, v0

    .line 1918
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getTop()I

    move-result v0

    int-to-float v9, v0

    const/4 v10, 0x0

    move v11, v10

    :goto_1
    if-ge v11, v7, :cond_1

    int-to-float v12, v11

    .line 1922
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float v3, v8, v0

    move-object v0, p1

    move v1, v8

    move v2, v12

    move v4, v12

    move-object v5, v6

    .line 1921
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1923
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float v4, v9, v0

    move-object v0, p1

    move v1, v12

    move v2, v9

    move v3, v12

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit16 v11, v11, 0x100

    goto :goto_1

    .line 1927
    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->T:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1928
    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore2d/b;->setDrawingCacheEnabled(Z)V

    .line 1929
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->buildDrawingCache()V

    .line 1930
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1931
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x10

    .line 1932
    iput v3, v2, Landroid/os/Message;->what:I

    .line 1933
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1934
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1935
    iput-boolean v10, p0, Lcom/amap/api/mapcore2d/b;->T:Z

    .line 1937
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/mapcore2d/bk$d;->a(II)V

    .line 1938
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->ar:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/amap/api/mapcore2d/b;->au:F

    iget v4, p0, Lcom/amap/api/mapcore2d/b;->av:F

    invoke-virtual {v0, p1, v2, v3, v4}, Lcom/amap/api/mapcore2d/bk$a;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;FF)V

    .line 1939
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->H:Lcom/amap/api/mapcore2d/p;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/p;->a()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1940
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/os/Handler;

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1942
    :cond_3
    iget-boolean p1, p0, Lcom/amap/api/mapcore2d/b;->ad:Z

    if-nez p1, :cond_4

    .line 1943
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/os/Handler;

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1944
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/b;->ad:Z

    :cond_4
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10

    .line 2066
    iget-object p2, p0, Lcom/amap/api/mapcore2d/b;->al:Lcom/amap/api/mapcore2d/bn$a;

    iget-boolean p2, p2, Lcom/amap/api/mapcore2d/bn$a;->k:Z

    const/4 v0, 0x1

    if-nez p2, :cond_2

    .line 2067
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide p1

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->al:Lcom/amap/api/mapcore2d/bn$a;

    iget-wide v1, v1, Lcom/amap/api/mapcore2d/bn$a;->o:J

    sub-long/2addr p1, v1

    const-wide/16 v1, 0x1e

    cmp-long p1, p1, v1

    if-gez p1, :cond_0

    goto :goto_0

    .line 2070
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    const/4 p1, 0x0

    .line 2071
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/b;->V:Z

    .line 2073
    :try_start_0
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/ar;

    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ar;->e()Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    return v0

    :catch_0
    move-exception p1

    const-string p2, "onFling"

    const-string v1, "AMapDelegateImpGLSurfaceView"

    .line 2077
    invoke-static {p1, v1, p2}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    .line 2079
    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->I:Lcom/amap/api/maps2d/AMap$CancelableCallback;

    .line 2089
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->ao:Landroid/widget/Scroller;

    iget v2, p0, Lcom/amap/api/mapcore2d/b;->ap:I

    iget v3, p0, Lcom/amap/api/mapcore2d/b;->aq:I

    neg-float p1, p3

    float-to-int p1, p1

    mul-int/lit8 p1, p1, 0x3

    div-int/lit8 v4, p1, 0x5

    neg-float p1, p4

    float-to-int p1, p1

    mul-int/lit8 p1, p1, 0x3

    div-int/lit8 v5, p1, 0x5

    iget v7, p0, Lcom/amap/api/mapcore2d/b;->aw:I

    neg-int v6, v7

    iget v9, p0, Lcom/amap/api/mapcore2d/b;->ax:I

    neg-int v8, v9

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    :cond_2
    :goto_0
    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1774
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1777
    :cond_0
    iget-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->m:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    return v3

    .line 1780
    :cond_1
    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/mapcore2d/bk$a;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ay;

    .line 1781
    invoke-virtual {v0, p0, p1, p2}, Lcom/amap/api/mapcore2d/ay;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    :cond_3
    :goto_0
    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1786
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1789
    :cond_0
    iget-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->m:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    return v3

    .line 1792
    :cond_1
    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/mapcore2d/bk$a;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ay;

    .line 1793
    invoke-virtual {v0, p0, p1, p2}, Lcom/amap/api/mapcore2d/ay;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    :cond_3
    :goto_0
    return v1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 8

    const/4 v0, 0x0

    .line 2098
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->V:Z

    .line 2099
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->aa:Lcom/amap/api/maps2d/AMap$OnMapLongClickListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2100
    new-instance v0, Lcom/amap/api/mapcore2d/x;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/x;-><init>()V

    .line 2101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3, v0}, Lcom/amap/api/mapcore2d/b;->a(IILcom/amap/api/mapcore2d/x;)V

    .line 2102
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->aa:Lcom/amap/api/maps2d/AMap$OnMapLongClickListener;

    new-instance v3, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v0, Lcom/amap/api/mapcore2d/x;->b:D

    iget-wide v6, v0, Lcom/amap/api/mapcore2d/x;->a:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    invoke-interface {v2, v3}, Lcom/amap/api/maps2d/AMap$OnMapLongClickListener;->onMapLongClick(Lcom/amap/api/maps2d/model/LatLng;)V

    .line 2103
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/b;->K:Z

    .line 2105
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/bc;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/bc;->a(Landroid/view/MotionEvent;)Lcom/amap/api/mapcore2d/ah;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore2d/b;->p:Lcom/amap/api/mapcore2d/ah;

    .line 2106
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->p:Lcom/amap/api/mapcore2d/ah;

    if-nez p1, :cond_1

    return-void

    .line 2109
    :cond_1
    new-instance v0, Lcom/amap/api/maps2d/model/Marker;

    invoke-direct {v0, p1}, Lcom/amap/api/maps2d/model/Marker;-><init>(Lcom/amap/api/mapcore2d/ah;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/b;->o:Lcom/amap/api/maps2d/model/Marker;

    .line 2110
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->W:Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->p:Lcom/amap/api/mapcore2d/ah;

    if-eqz p1, :cond_2

    .line 2111
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ah;->h()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2112
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->p:Lcom/amap/api/mapcore2d/ah;

    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ah;->c()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object p1

    .line 2113
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLng;

    move-result-object p1

    .line 2114
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->p:Lcom/amap/api/mapcore2d/ah;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ah;->a(Lcom/amap/api/maps2d/model/LatLng;)V

    .line 2115
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/bc;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->p:Lcom/amap/api/mapcore2d/ah;

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore2d/bc;->c(Lcom/amap/api/mapcore2d/ah;)V

    .line 2116
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->W:Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->o:Lcom/amap/api/maps2d/model/Marker;

    invoke-interface {p1, v0}, Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;->onMarkerDragStart(Lcom/amap/api/maps2d/model/Marker;)V

    .line 2117
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/b;->U:Z

    :cond_2
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 0

    .line 1825
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    .line 1720
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 0

    .line 1726
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    .line 2136
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->al:Lcom/amap/api/mapcore2d/bn$a;

    iget-boolean p1, p1, Lcom/amap/api/mapcore2d/bn$a;->k:Z

    const/4 p3, 0x1

    if-nez p1, :cond_3

    .line 2137
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->al:Lcom/amap/api/mapcore2d/bn$a;

    iget-wide v2, p1, Lcom/amap/api/mapcore2d/bn$a;->o:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1e

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2141
    :try_start_0
    iget-object p4, p0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/ar;

    invoke-interface {p4}, Lcom/amap/api/mapcore2d/ar;->e()Z

    move-result p4

    if-nez p4, :cond_1

    .line 2142
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/b;->V:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p3

    :catch_0
    move-exception p4

    const-string v0, "onScroll"

    const-string v1, "AMapDelegateImpGLSurfaceView"

    .line 2146
    invoke-static {p4, v1, v0}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2148
    :cond_1
    iget p4, p0, Lcom/amap/api/mapcore2d/b;->aE:I

    if-le p4, p3, :cond_2

    .line 2149
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/b;->V:Z

    return p3

    .line 2160
    :cond_2
    iput-boolean p3, p0, Lcom/amap/api/mapcore2d/b;->V:Z

    .line 2161
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 2162
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    .line 2163
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore2d/b;->a(II)V

    .line 2164
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    .line 2165
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->L()V

    :cond_3
    :goto_0
    return p3
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 8

    const-string v0, "AMapDelegateImpGLSurfaceView"

    const-string v1, "onSingleTapConfirmed"

    .line 2350
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ay;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 2353
    :cond_0
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    invoke-virtual {v2, p1}, Lcom/amap/api/mapcore2d/bk$a;->b(Landroid/view/MotionEvent;)Z

    .line 2354
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->am:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/GestureDetector$OnGestureListener;

    .line 2355
    invoke-interface {v4, p1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 2357
    :cond_1
    iput-boolean v3, p0, Lcom/amap/api/mapcore2d/b;->V:Z

    .line 2358
    iget-boolean v2, p0, Lcom/amap/api/mapcore2d/b;->K:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 2359
    iput-boolean v3, p0, Lcom/amap/api/mapcore2d/b;->K:Z

    return v4

    .line 2363
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->M:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 2364
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->M:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v5, p0, Lcom/amap/api/mapcore2d/b;->M:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/amap/api/mapcore2d/b;->M:Landroid/view/View;

    .line 2365
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    iget-object v7, p0, Lcom/amap/api/mapcore2d/b;->M:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-direct {v2, v3, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2366
    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/bc;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    .line 2367
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    .line 2366
    invoke-virtual {v3, v2, v5, v6}, Lcom/amap/api/mapcore2d/bc;->a(Landroid/graphics/Rect;II)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->N:Lcom/amap/api/maps2d/AMap$OnInfoWindowClickListener;

    if-eqz v2, :cond_4

    .line 2369
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/bc;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/bc;->e()Lcom/amap/api/mapcore2d/ah;

    move-result-object p1

    .line 2370
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ah;->s()Z

    move-result v2

    if-nez v2, :cond_3

    return v4

    .line 2373
    :cond_3
    new-instance v2, Lcom/amap/api/maps2d/model/Marker;

    invoke-direct {v2, p1}, Lcom/amap/api/maps2d/model/Marker;-><init>(Lcom/amap/api/mapcore2d/ah;)V

    .line 2374
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->N:Lcom/amap/api/maps2d/AMap$OnInfoWindowClickListener;

    invoke-interface {p0, v2}, Lcom/amap/api/maps2d/AMap$OnInfoWindowClickListener;->onInfoWindowClick(Lcom/amap/api/maps2d/model/Marker;)V

    return v4

    .line 2378
    :cond_4
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/bc;

    invoke-virtual {v2, p1}, Lcom/amap/api/mapcore2d/bc;->b(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2380
    iget-object p1, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/bc;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/bc;->e()Lcom/amap/api/mapcore2d/ah;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 2381
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ah;->s()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_3

    .line 2384
    :cond_5
    new-instance v2, Lcom/amap/api/maps2d/model/Marker;

    invoke-direct {v2, p1}, Lcom/amap/api/maps2d/model/Marker;-><init>(Lcom/amap/api/mapcore2d/ah;)V

    .line 2386
    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->Q:Lcom/amap/api/maps2d/AMap$OnMarkerClickListener;

    if-eqz v3, :cond_8

    .line 2387
    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->Q:Lcom/amap/api/maps2d/AMap$OnMarkerClickListener;

    invoke-interface {v3, v2}, Lcom/amap/api/maps2d/AMap$OnMarkerClickListener;->onMarkerClick(Lcom/amap/api/maps2d/model/Marker;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 2388
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/bc;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/bc;->b()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-gtz v2, :cond_6

    goto :goto_1

    .line 2394
    :cond_6
    :try_start_1
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/bc;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/bc;->e()Lcom/amap/api/mapcore2d/ah;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 2395
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ah;->q()Z

    move-result v2

    if-nez v2, :cond_8

    .line 2396
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ah;->c()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 2398
    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ay;

    .line 2399
    invoke-static {v2}, Lcom/amap/api/mapcore2d/cz;->a(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/mapcore2d/ab;

    move-result-object v2

    .line 2398
    invoke-virtual {v3, v2}, Lcom/amap/api/mapcore2d/ay;->a(Lcom/amap/api/mapcore2d/ab;)V

    .line 2400
    invoke-static {}, Lcom/amap/api/mapcore2d/q;->a()Lcom/amap/api/mapcore2d/q;

    move-result-object v2

    .line 2401
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/q;->b()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception v2

    .line 2406
    :try_start_2
    invoke-static {v2, v0, v1}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2389
    :cond_7
    :goto_1
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/bc;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/bc;->c(Lcom/amap/api/mapcore2d/ah;)V

    return v4

    .line 2409
    :cond_8
    :goto_2
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/mapcore2d/ah;)V

    .line 2410
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/bc;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/bc;->c(Lcom/amap/api/mapcore2d/ah;)V

    :cond_9
    :goto_3
    return v4

    .line 2413
    :cond_a
    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->ac:Lcom/amap/api/maps2d/AMap$OnMapClickListener;

    if-eqz v2, :cond_b

    .line 2414
    new-instance v2, Lcom/amap/api/mapcore2d/x;

    invoke-direct {v2}, Lcom/amap/api/mapcore2d/x;-><init>()V

    .line 2415
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v3, p1, v2}, Lcom/amap/api/mapcore2d/b;->a(IILcom/amap/api/mapcore2d/x;)V

    .line 2416
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->ac:Lcom/amap/api/maps2d/AMap$OnMapClickListener;

    new-instance p1, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v5, v2, Lcom/amap/api/mapcore2d/x;->b:D

    iget-wide v2, v2, Lcom/amap/api/mapcore2d/x;->a:D

    invoke-direct {p1, v5, v6, v2, v3}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    invoke-interface {p0, p1}, Lcom/amap/api/maps2d/AMap$OnMapClickListener;->onMapClick(Lcom/amap/api/maps2d/model/LatLng;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_b
    return v4

    :catch_1
    move-exception p0

    .line 2419
    invoke-static {p0, v0, v1}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    .line 1830
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 1831
    new-instance v0, Landroid/graphics/Point;

    div-int/lit8 v1, p1, 0x2

    div-int/lit8 v2, p2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 1832
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/bf;->a(Landroid/graphics/Point;)V

    .line 1833
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/mapcore2d/bk$d;->a(II)V

    .line 1834
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ay;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay;->a()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ay;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay;->b()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 1835
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ay;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay;->a()F

    move-result v2

    iget-object v3, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ay;

    .line 1836
    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/ay;->b()F

    move-result v3

    .line 1835
    invoke-virtual {v0, v2, v3}, Lcom/amap/api/mapcore2d/ay;->a(FF)V

    .line 1837
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ay;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/ay;->a(F)V

    .line 1838
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->b:Lcom/amap/api/mapcore2d/ay;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/ay;->b(F)V

    .line 1840
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->t()V

    .line 1841
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->aG:Lcom/amap/api/mapcore2d/b$a;

    if-eqz p0, :cond_1

    .line 1842
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amap/api/mapcore2d/b$a;->a(IIII)V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1798
    sget-boolean v0, Lcom/amap/api/mapcore2d/v;->o:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1801
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    if-nez v0, :cond_1

    return v1

    .line 1804
    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/b;->m:Z

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return p0

    .line 1808
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->Z:Lcom/amap/api/maps2d/AMap$OnMapTouchListener;

    if-eqz v0, :cond_3

    .line 1809
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ai:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1810
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ai:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1811
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1812
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1813
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1816
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/bk$a;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 1819
    :cond_4
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/b;->b(Landroid/view/MotionEvent;)Z

    .line 1820
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 1769
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public p()Lcom/amap/api/mapcore2d/ar;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 915
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/ar;

    return-object p0
.end method

.method public q()Lcom/amap/api/mapcore2d/an;
    .locals 0

    .line 919
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->S:Lcom/amap/api/mapcore2d/an;

    return-object p0
.end method

.method public r()Lcom/amap/api/mapcore2d/bs;
    .locals 0

    .line 923
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk;->b:Lcom/amap/api/mapcore2d/bk$e;

    return-object p0
.end method

.method public s()V
    .locals 3

    .line 1051
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->M:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1052
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 1053
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->M:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 1054
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/be;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/b;->M:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/be;->removeView(Landroid/view/View;)V

    .line 1055
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->M:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1057
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1060
    :cond_0
    iput-object v1, p0, Lcom/amap/api/mapcore2d/b;->M:Landroid/view/View;

    .line 1062
    :cond_1
    iput-object v1, p0, Lcom/amap/api/mapcore2d/b;->P:Lcom/amap/api/mapcore2d/bi;

    return-void
.end method

.method public setClickable(Z)V
    .locals 0

    .line 1763
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/b;->m:Z

    .line 1764
    invoke-super {p0, p1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public t()V
    .locals 2

    .line 1068
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->M:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->P:Lcom/amap/api/mapcore2d/bi;

    if-eqz v1, :cond_1

    .line 1070
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/be$a;

    if-eqz v0, :cond_0

    .line 1072
    iget-object v1, p0, Lcom/amap/api/mapcore2d/b;->P:Lcom/amap/api/mapcore2d/bi;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bi;->c()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/mapcore2d/be$a;->b:Lcom/amap/api/maps2d/model/LatLng;

    .line 1074
    :cond_0
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/be;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/be;->a()V

    :cond_1
    return-void
.end method

.method public u()V
    .locals 2

    .line 1127
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->af:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1128
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->af:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1129
    iput-object v1, p0, Lcom/amap/api/mapcore2d/b;->af:Ljava/util/Timer;

    .line 1131
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ag:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 1132
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ag:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 1133
    iput-object v1, p0, Lcom/amap/api/mapcore2d/b;->ag:Ljava/util/TimerTask;

    .line 1135
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ai:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 1136
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->ai:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1138
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 1139
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->k:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1142
    :cond_3
    invoke-static {}, Lcom/amap/api/mapcore2d/s;->a()Lcom/amap/api/mapcore2d/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/s;->b(Lcom/amap/api/mapcore2d/s$a;)V

    .line 1143
    invoke-static {}, Lcom/amap/api/mapcore2d/bw;->a()Lcom/amap/api/mapcore2d/bw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/bw;->b(Lcom/amap/api/mapcore2d/bw$a;)V

    .line 1144
    invoke-static {}, Lcom/amap/api/mapcore2d/q;->a()Lcom/amap/api/mapcore2d/q;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/q;->b(Lcom/amap/api/mapcore2d/q$a;)V

    .line 1145
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->f:Lcom/amap/api/mapcore2d/cq;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/cq;->a()V

    .line 1146
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->A:Lcom/amap/api/mapcore2d/bv;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bv;->a()V

    .line 1147
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/cp;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/cp;->a()V

    .line 1148
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->t:Lcom/amap/api/mapcore2d/av;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/av;->a()V

    .line 1149
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->C:Lcom/amap/api/mapcore2d/u;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/u;->a()V

    .line 1150
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->g:Lcom/amap/api/mapcore2d/z;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/z;->b()V

    .line 1151
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/bc;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bc;->f()V

    .line 1152
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->R:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 1153
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->R:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1155
    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/be;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/be;->removeAllViews()V

    .line 1156
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->s()V

    .line 1157
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/ce;

    if-eqz v0, :cond_5

    .line 1158
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/ce;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ce;->f()V

    .line 1160
    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    if-eqz v0, :cond_6

    .line 1161
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->d:Lcom/amap/api/mapcore2d/bk$b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bk$b;->b()V

    .line 1162
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/b;->V()V

    .line 1165
    :cond_6
    sput-object v1, Lcom/amap/api/mapcore2d/v;->h:Ljava/lang/String;

    .line 1166
    sput-object v1, Lcom/amap/api/mapcore2d/v;->g:Ljava/lang/String;

    .line 1167
    invoke-static {}, Lcom/amap/api/mapcore2d/dn;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "destroy"

    const-string v1, "AMapDelegateImpGLSurfaceView"

    .line 1172
    invoke-static {p0, v1, v0}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public v()F
    .locals 7

    .line 1208
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v0

    .line 1209
    new-instance v1, Lcom/amap/api/mapcore2d/x;

    invoke-direct {v1}, Lcom/amap/api/mapcore2d/x;-><init>()V

    .line 1210
    new-instance v2, Lcom/amap/api/mapcore2d/x;

    invoke-direct {v2}, Lcom/amap/api/mapcore2d/x;-><init>()V

    const/4 v3, 0x0

    .line 1211
    invoke-virtual {p0, v3, v3, v1}, Lcom/amap/api/mapcore2d/b;->a(IILcom/amap/api/mapcore2d/x;)V

    .line 1212
    invoke-virtual {p0, v0, v3, v2}, Lcom/amap/api/mapcore2d/b;->a(IILcom/amap/api/mapcore2d/x;)V

    .line 1213
    new-instance p0, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v3, v1, Lcom/amap/api/mapcore2d/x;->b:D

    iget-wide v5, v1, Lcom/amap/api/mapcore2d/x;->a:D

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    new-instance v1, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v3, v2, Lcom/amap/api/mapcore2d/x;->b:D

    iget-wide v5, v2, Lcom/amap/api/mapcore2d/x;->a:D

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    invoke-static {p0, v1}, Lcom/amap/api/mapcore2d/cz;->a(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;)D

    move-result-wide v1

    int-to-double v3, v0

    div-double/2addr v1, v3

    double-to-float p0, v1

    return p0
.end method

.method public w()Lcom/amap/api/maps2d/model/LatLngBounds;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public x()V
    .locals 1

    .line 1226
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    if-eqz v0, :cond_0

    .line 1227
    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->d:Lcom/amap/api/mapcore2d/bk$b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bk$b;->c()V

    .line 1229
    :cond_0
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/ce;

    if-eqz p0, :cond_1

    .line 1230
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ce;->e()V

    :cond_1
    return-void
.end method

.method public y()V
    .locals 1

    .line 1236
    iget-object v0, p0, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bk;

    if-eqz v0, :cond_0

    .line 1237
    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->d:Lcom/amap/api/mapcore2d/bk$b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bk$b;->d()V

    .line 1239
    :cond_0
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/ce;

    if-eqz p0, :cond_1

    .line 1240
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ce;->d()V

    :cond_1
    return-void
.end method

.method z()Landroid/graphics/Point;
    .locals 0

    .line 1270
    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->z:Lcom/amap/api/mapcore2d/cp;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/cp;->c()Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method
