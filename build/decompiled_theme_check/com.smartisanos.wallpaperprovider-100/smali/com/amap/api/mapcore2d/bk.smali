.class Lcom/amap/api/mapcore2d/bk;
.super Ljava/lang/Object;
.source "Mediator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/bk$d;,
        Lcom/amap/api/mapcore2d/bk$a;,
        Lcom/amap/api/mapcore2d/bk$e;,
        Lcom/amap/api/mapcore2d/bk$b;,
        Lcom/amap/api/mapcore2d/bk$c;
    }
.end annotation


# static fields
.field static a:D = 0.6499999761581421


# instance fields
.field public b:Lcom/amap/api/mapcore2d/bk$e;

.field public c:Lcom/amap/api/mapcore2d/bk$d;

.field public d:Lcom/amap/api/mapcore2d/bk$b;

.field public e:Lcom/amap/api/mapcore2d/bk$a;

.field public f:Lcom/amap/api/mapcore2d/bk$c;

.field public g:Lcom/amap/api/mapcore2d/z;

.field public h:Lcom/amap/api/mapcore2d/b;

.field public i:Lcom/amap/api/mapcore2d/bf;

.field private j:Lcom/amap/api/mapcore2d/at;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/b;I)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    .line 52
    iput-object p2, p0, Lcom/amap/api/mapcore2d/bk;->h:Lcom/amap/api/mapcore2d/b;

    .line 53
    new-instance v1, Lcom/amap/api/mapcore2d/bk$d;

    invoke-direct {v1, p0, p2, v0}, Lcom/amap/api/mapcore2d/bk$d;-><init>(Lcom/amap/api/mapcore2d/bk;Lcom/amap/api/mapcore2d/b;Lcom/amap/api/mapcore2d/bl;)V

    iput-object v1, p0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    .line 54
    new-instance p2, Lcom/amap/api/mapcore2d/bf;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-direct {p2, v1}, Lcom/amap/api/mapcore2d/bf;-><init>(Lcom/amap/api/mapcore2d/bk$d;)V

    iput-object p2, p0, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    .line 55
    iget-object p2, p0, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iput p3, p2, Lcom/amap/api/mapcore2d/bf;->a:I

    .line 56
    iput p3, p2, Lcom/amap/api/mapcore2d/bf;->b:I

    .line 58
    invoke-virtual {p2}, Lcom/amap/api/mapcore2d/bf;->a()V

    .line 59
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/bk;->a(Landroid/content/Context;)V

    .line 61
    new-instance p2, Lcom/amap/api/mapcore2d/bk$c;

    invoke-direct {p2, p0, p0, p1, v0}, Lcom/amap/api/mapcore2d/bk$c;-><init>(Lcom/amap/api/mapcore2d/bk;Lcom/amap/api/mapcore2d/bk;Landroid/content/Context;Lcom/amap/api/mapcore2d/bl;)V

    iput-object p2, p0, Lcom/amap/api/mapcore2d/bk;->f:Lcom/amap/api/mapcore2d/bk$c;

    .line 62
    new-instance p2, Lcom/amap/api/mapcore2d/bk$a;

    invoke-direct {p2, p0, p1, v0}, Lcom/amap/api/mapcore2d/bk$a;-><init>(Lcom/amap/api/mapcore2d/bk;Landroid/content/Context;Lcom/amap/api/mapcore2d/bl;)V

    iput-object p2, p0, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    .line 63
    new-instance p1, Lcom/amap/api/mapcore2d/bk$e;

    invoke-direct {p1, p0}, Lcom/amap/api/mapcore2d/bk$e;-><init>(Lcom/amap/api/mapcore2d/bk;)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/bk;->b:Lcom/amap/api/mapcore2d/bk$e;

    .line 64
    new-instance p1, Lcom/amap/api/mapcore2d/bk$b;

    invoke-direct {p1, p0}, Lcom/amap/api/mapcore2d/bk$b;-><init>(Lcom/amap/api/mapcore2d/bk;)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/bk;->d:Lcom/amap/api/mapcore2d/bk$b;

    .line 65
    new-instance p1, Lcom/amap/api/mapcore2d/z;

    invoke-direct {p1}, Lcom/amap/api/mapcore2d/z;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/bk;->g:Lcom/amap/api/mapcore2d/z;

    .line 66
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/amap/api/mapcore2d/bk$d;->a(ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/bk;)Lcom/amap/api/mapcore2d/at;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk;->j:Lcom/amap/api/mapcore2d/at;

    return-object p0
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/bk;Lcom/amap/api/mapcore2d/at;)Lcom/amap/api/mapcore2d/at;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bk;->j:Lcom/amap/api/mapcore2d/at;

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bk$a;->a()V

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lcom/amap/api/mapcore2d/bk;->b:Lcom/amap/api/mapcore2d/bk$e;

    .line 131
    iput-object v0, p0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    .line 132
    iput-object v0, p0, Lcom/amap/api/mapcore2d/bk;->d:Lcom/amap/api/mapcore2d/bk$b;

    .line 133
    iput-object v0, p0, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    .line 134
    iput-object v0, p0, Lcom/amap/api/mapcore2d/bk;->f:Lcom/amap/api/mapcore2d/bk$c;

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 10

    const-string p0, "Mediator"

    const-string v0, "initialize"

    .line 77
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 81
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "densityDpi"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 85
    invoke-static {v1, p0, v0}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 83
    invoke-static {v1, p0, v0}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x0

    :goto_1
    const-wide/32 v2, 0x25800

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eqz v1, :cond_5

    .line 92
    iget v7, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v7, v8

    int-to-long v7, v7

    const/16 v9, 0xa0

    .line 94
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 98
    invoke-static {p1, p0, v0}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_3
    move-exception p1

    .line 96
    invoke-static {p1, p0, v0}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move p0, v9

    :goto_3
    const/16 p1, 0x78

    if-gt p0, p1, :cond_0

    .line 101
    sput v4, Lcom/amap/api/mapcore2d/v;->l:I

    goto :goto_4

    :cond_0
    if-gt p0, v9, :cond_1

    .line 103
    sput v5, Lcom/amap/api/mapcore2d/v;->l:I

    goto :goto_4

    :cond_1
    const/16 p1, 0xf0

    if-gt p0, p1, :cond_2

    .line 105
    sput v6, Lcom/amap/api/mapcore2d/v;->l:I

    goto :goto_4

    :cond_2
    cmp-long p0, v7, v2

    if-lez p0, :cond_3

    .line 108
    sput v6, Lcom/amap/api/mapcore2d/v;->l:I

    goto :goto_4

    :cond_3
    if-gez p0, :cond_4

    .line 110
    sput v4, Lcom/amap/api/mapcore2d/v;->l:I

    goto :goto_4

    .line 112
    :cond_4
    sput v5, Lcom/amap/api/mapcore2d/v;->l:I

    goto :goto_4

    .line 116
    :cond_5
    iget p0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr p0, p1

    int-to-long p0, p0

    cmp-long p0, p0, v2

    if-lez p0, :cond_6

    .line 118
    sput v6, Lcom/amap/api/mapcore2d/v;->l:I

    goto :goto_4

    :cond_6
    if-gez p0, :cond_7

    .line 120
    sput v4, Lcom/amap/api/mapcore2d/v;->l:I

    goto :goto_4

    .line 122
    :cond_7
    sput v5, Lcom/amap/api/mapcore2d/v;->l:I

    :goto_4
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/bk$a;->b(Z)V

    return-void
.end method
