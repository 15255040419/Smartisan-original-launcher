.class public Lcom/amap/api/mapcore2d/di$a;
.super Ljava/lang/Object;
.source "SDKInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/di;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/di$a;->d:Z

    const-string v0, "standard"

    .line 41
    iput-object v0, p0, Lcom/amap/api/mapcore2d/di$a;->e:Ljava/lang/String;

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/amap/api/mapcore2d/di$a;->f:[Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/amap/api/mapcore2d/di$a;->a:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/amap/api/mapcore2d/di$a;->c:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/amap/api/mapcore2d/di$a;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/di$a;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/amap/api/mapcore2d/di$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/amap/api/mapcore2d/di$a;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/amap/api/mapcore2d/di$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/amap/api/mapcore2d/di$a;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/amap/api/mapcore2d/di$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/amap/api/mapcore2d/di$a;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/amap/api/mapcore2d/di$a;->d:Z

    return p0
.end method

.method static synthetic e(Lcom/amap/api/mapcore2d/di$a;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/amap/api/mapcore2d/di$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/amap/api/mapcore2d/di$a;)[Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/amap/api/mapcore2d/di$a;->f:[Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/amap/api/mapcore2d/di$a;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/amap/api/mapcore2d/di$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/amap/api/mapcore2d/di$a;
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/di$a;->d:Z

    return-object p0
.end method

.method public a([Ljava/lang/String;)Lcom/amap/api/mapcore2d/di$a;
    .locals 0

    .line 79
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/amap/api/mapcore2d/di$a;->f:[Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/amap/api/mapcore2d/di;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore2d/da;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/amap/api/mapcore2d/di$a;->f:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Lcom/amap/api/mapcore2d/di;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amap/api/mapcore2d/di;-><init>(Lcom/amap/api/mapcore2d/di$a;Lcom/amap/api/mapcore2d/di$1;)V

    return-object v0

    .line 92
    :cond_0
    new-instance p0, Lcom/amap/api/mapcore2d/da;

    const-string v0, "sdk packages is null"

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/da;-><init>(Ljava/lang/String;)V

    throw p0
.end method
