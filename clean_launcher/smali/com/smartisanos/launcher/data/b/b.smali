.class public Lcom/smartisanos/launcher/data/b/b;
.super Lcom/smartisanos/launcher/data/b/h;
.source "DownloadRecord.java"


# static fields
.field private static final xs:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/data/b/b;->xs:Ljava/util/Map;

    .line 2
    sget-object v0, Lcom/smartisanos/launcher/data/b/b;->xs:Ljava/util/Map;

    const-string v1, "_id"

    const-string v2, "INTEGER PRIMARY KEY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/smartisanos/launcher/data/b/b;->xs:Ljava/util/Map;

    const-string v1, "INTEGER"

    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/smartisanos/launcher/data/b/b;->xs:Ljava/util/Map;

    const-string v2, "LONG"

    const-string v3, "dl_id"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/smartisanos/launcher/data/b/b;->xs:Ljava/util/Map;

    const-string v3, "dl_status"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/smartisanos/launcher/data/b/b;->xs:Ljava/util/Map;

    const-string v1, "dl_time"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/smartisanos/launcher/data/b/b;->xs:Ljava/util/Map;

    const-string v1, "TEXT"

    const-string v2, "task_name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lcom/smartisanos/launcher/data/b/b;->xs:Ljava/util/Map;

    const-string v2, "dl_url"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lcom/smartisanos/launcher/data/b/b;->xs:Ljava/util/Map;

    const-string v2, "md5"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lcom/smartisanos/launcher/data/b/b;->xs:Ljava/util/Map;

    const-string v2, "file"

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
    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/b/b;->Kf()[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/data/b/b;->xs:Ljava/util/Map;

    const-string v1, "download_record"

    invoke-static {v1, p0, v0}, Lcom/smartisanos/launcher/data/b/h;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public Jf()Ljava/lang/String;
    .locals 0

    const-string p0, "download_record"

    return-object p0
.end method

.method public Kf()[Ljava/lang/String;
    .locals 9

    const-string v0, "_id"

    const-string v1, "type"

    const-string v2, "dl_id"

    const-string v3, "dl_status"

    const-string v4, "dl_time"

    const-string v5, "task_name"

    const-string v6, "dl_url"

    const-string v7, "md5"

    const-string v8, "file"

    .line 1
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
