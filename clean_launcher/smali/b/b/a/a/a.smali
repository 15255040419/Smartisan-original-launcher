.class public Lb/b/a/a/a;
.super Lcom/smartisanos/launcher/data/b/h;
.source "CARD.java"


# static fields
.field private static final xs:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/b/a/a/a;->xs:Ljava/util/Map;

    .line 2
    sget-object v0, Lb/b/a/a/a;->xs:Ljava/util/Map;

    const-string v1, "_id"

    const-string v2, "INTEGER PRIMARY KEY AUTOINCREMENT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lb/b/a/a/a;->xs:Ljava/util/Map;

    const-string v1, "TEXT"

    const-string v2, "category"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lb/b/a/a/a;->xs:Ljava/util/Map;

    const-string v2, "sub_category"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lb/b/a/a/a;->xs:Ljava/util/Map;

    const-string v2, "create_time"

    const-string v3, "LONG"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lb/b/a/a/a;->xs:Ljava/util/Map;

    const-string v2, "key_info"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lb/b/a/a/a;->xs:Ljava/util/Map;

    const-string v2, "data"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lb/b/a/a/a;->xs:Ljava/util/Map;

    const-string v2, "extra_data"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lb/b/a/a/a;->xs:Ljava/util/Map;

    const-string v2, "full_content"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/data/b/h;-><init>()V

    return-void
.end method


# virtual methods
.method public If()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lb/b/a/a/a;->Kf()[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    sget-object v0, Lb/b/a/a/a;->xs:Ljava/util/Map;

    const-string v1, "card"

    invoke-static {v1, p0, v0}, Lcom/smartisanos/launcher/data/b/h;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public Jf()Ljava/lang/String;
    .locals 0

    const-string p0, "card"

    return-object p0
.end method

.method public Kf()[Ljava/lang/String;
    .locals 8

    const-string v0, "_id"

    const-string v1, "category"

    const-string v2, "sub_category"

    const-string v3, "create_time"

    const-string v4, "key_info"

    const-string v5, "data"

    const-string v6, "extra_data"

    const-string v7, "full_content"

    .line 1
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
