.class public Lcom/amap/api/mapcore2d/di;
.super Ljava/lang/Object;
.source "SDKInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/di$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/amap/api/mapcore2d/di$a;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/di;->d:Z

    const-string v0, "standard"

    .line 9
    iput-object v0, p0, Lcom/amap/api/mapcore2d/di;->e:Ljava/lang/String;

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/amap/api/mapcore2d/di;->f:[Ljava/lang/String;

    .line 28
    invoke-static {p1}, Lcom/amap/api/mapcore2d/di$a;->a(Lcom/amap/api/mapcore2d/di$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/di;->a:Ljava/lang/String;

    .line 29
    invoke-static {p1}, Lcom/amap/api/mapcore2d/di$a;->b(Lcom/amap/api/mapcore2d/di$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/di;->c:Ljava/lang/String;

    .line 30
    invoke-static {p1}, Lcom/amap/api/mapcore2d/di$a;->c(Lcom/amap/api/mapcore2d/di$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/di;->b:Ljava/lang/String;

    .line 31
    invoke-static {p1}, Lcom/amap/api/mapcore2d/di$a;->d(Lcom/amap/api/mapcore2d/di$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/di;->d:Z

    .line 32
    invoke-static {p1}, Lcom/amap/api/mapcore2d/di$a;->e(Lcom/amap/api/mapcore2d/di$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/di;->e:Ljava/lang/String;

    .line 33
    invoke-static {p1}, Lcom/amap/api/mapcore2d/di$a;->f(Lcom/amap/api/mapcore2d/di$a;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore2d/di;->f:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore2d/di$a;Lcom/amap/api/mapcore2d/di$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/di;-><init>(Lcom/amap/api/mapcore2d/di$a;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/amap/api/mapcore2d/di;->c:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/amap/api/mapcore2d/di;->a:Ljava/lang/String;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/amap/api/mapcore2d/di;->b:Ljava/lang/String;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/amap/api/mapcore2d/di;->e:Ljava/lang/String;

    return-object p0
.end method

.method public e()Z
    .locals 0

    .line 115
    iget-boolean p0, p0, Lcom/amap/api/mapcore2d/di;->d:Z

    return p0
.end method

.method public f()[Ljava/lang/String;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/amap/api/mapcore2d/di;->f:[Ljava/lang/String;

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method
