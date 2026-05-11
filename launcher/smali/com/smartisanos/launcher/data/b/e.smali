.class public Lcom/smartisanos/launcher/data/b/e;
.super Lcom/smartisanos/launcher/data/b/h;
.source "PAGE.java"


# static fields
.field private static final xs:Ljava/util/Map;


# instance fields
.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/data/b/e;->xs:Ljava/util/Map;

    .line 2
    sget-object v0, Lcom/smartisanos/launcher/data/b/e;->xs:Ljava/util/Map;

    const-string v1, "_id"

    const-string v2, "INTEGER PRIMARY KEY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/smartisanos/launcher/data/b/e;->xs:Ljava/util/Map;

    const-string v1, "INTEGER"

    const-string v2, "pageIndex"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/smartisanos/launcher/data/b/e;->xs:Ljava/util/Map;

    const-string v2, "status"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/smartisanos/launcher/data/b/e;->xs:Ljava/util/Map;

    const-string v2, "containment"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/smartisanos/launcher/data/b/e;->xs:Ljava/util/Map;

    const-string v1, "TEXT"

    const-string v2, "pageTitle"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/smartisanos/launcher/data/b/e;->xs:Ljava/util/Map;

    const-string v2, "data1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lcom/smartisanos/launcher/data/b/e;->xs:Ljava/util/Map;

    const-string v2, "data2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lcom/smartisanos/launcher/data/b/e;->xs:Ljava/util/Map;

    const-string v2, "data3"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/data/b/h;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/smartisanos/launcher/data/b/e;->version:I

    const/16 v0, 0xc

    .line 3
    iput v0, p0, Lcom/smartisanos/launcher/data/b/e;->version:I

    return-void
.end method


# virtual methods
.method public If()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/b/e;->Kf()[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/data/b/e;->xs:Ljava/util/Map;

    const-string v1, "table_pageinfos"

    invoke-static {v1, p0, v0}, Lcom/smartisanos/launcher/data/b/h;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public Jf()Ljava/lang/String;
    .locals 0

    const-string p0, "table_pageinfos"

    return-object p0
.end method

.method public Kf()[Ljava/lang/String;
    .locals 9

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/data/b/e;->version:I

    const/16 v0, 0xc

    if-gt p0, v0, :cond_0

    const-string v1, "_id"

    const-string v2, "pageIndex"

    const-string v3, "status"

    const-string v4, "containment"

    const-string v5, "pageTitle"

    const-string v6, "data1"

    const-string v7, "data2"

    const-string v8, "data3"

    .line 2
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
