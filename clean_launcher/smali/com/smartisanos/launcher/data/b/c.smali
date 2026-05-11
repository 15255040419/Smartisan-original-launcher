.class public Lcom/smartisanos/launcher/data/b/c;
.super Lcom/smartisanos/launcher/data/b/h;
.source "ICON.java"


# static fields
.field private static final xs:Ljava/util/Map;


# instance fields
.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/data/b/c;->xs:Ljava/util/Map;

    .line 2
    sget-object v0, Lcom/smartisanos/launcher/data/b/c;->xs:Ljava/util/Map;

    const-string v1, "_id"

    const-string v2, "INTEGER PRIMARY KEY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/smartisanos/launcher/data/b/c;->xs:Ljava/util/Map;

    const-string v1, "owner"

    const-string v2, "INTEGER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/smartisanos/launcher/data/b/c;->xs:Ljava/util/Map;

    const-string v1, "TEXT"

    const-string v2, "color_info"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/smartisanos/launcher/data/b/c;->xs:Ljava/util/Map;

    const-string v2, "BLOB"

    const-string v3, "dark_icon"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/smartisanos/launcher/data/b/c;->xs:Ljava/util/Map;

    const-string v3, "light_icon"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/smartisanos/launcher/data/b/c;->xs:Ljava/util/Map;

    const-string v3, "transparent_icon"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lcom/smartisanos/launcher/data/b/c;->xs:Ljava/util/Map;

    const-string v2, "md5"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lcom/smartisanos/launcher/data/b/c;->xs:Ljava/util/Map;

    const-string v2, "data1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lcom/smartisanos/launcher/data/b/c;->xs:Ljava/util/Map;

    const-string v2, "data2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lcom/smartisanos/launcher/data/b/c;->xs:Ljava/util/Map;

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
    iput v0, p0, Lcom/smartisanos/launcher/data/b/c;->version:I

    const/16 v0, 0xc

    .line 3
    iput v0, p0, Lcom/smartisanos/launcher/data/b/c;->version:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/smartisanos/launcher/data/b/h;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/smartisanos/launcher/data/b/c;->version:I

    .line 6
    iput p1, p0, Lcom/smartisanos/launcher/data/b/c;->version:I

    return-void
.end method


# virtual methods
.method public If()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/b/c;->Kf()[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/data/b/c;->xs:Ljava/util/Map;

    const-string v1, "table_icons"

    invoke-static {v1, p0, v0}, Lcom/smartisanos/launcher/data/b/h;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public Jf()Ljava/lang/String;
    .locals 0

    const-string p0, "table_icons"

    return-object p0
.end method

.method public Kf()[Ljava/lang/String;
    .locals 12

    const-string v0, "_id"

    const-string v1, "owner"

    const-string v2, "color_info"

    const-string v3, "dark_icon"

    const-string v4, "light_icon"

    const-string v5, "data1"

    const-string v6, "data2"

    const-string v7, "data3"

    .line 1
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    iget p0, p0, Lcom/smartisanos/launcher/data/b/c;->version:I

    const/16 v1, 0xb

    if-ne p0, v1, :cond_0

    const-string v2, "_id"

    const-string v3, "owner"

    const-string v4, "color_info"

    const-string v5, "dark_icon"

    const-string v6, "light_icon"

    const-string v7, "transparent_icon"

    const-string v8, "data1"

    const-string v9, "data2"

    const-string v10, "data3"

    .line 3
    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/16 v1, 0xc

    if-ne p0, v1, :cond_1

    const-string v2, "_id"

    const-string v3, "owner"

    const-string v4, "color_info"

    const-string v5, "dark_icon"

    const-string v6, "light_icon"

    const-string v7, "transparent_icon"

    const-string v8, "md5"

    const-string v9, "data1"

    const-string v10, "data2"

    const-string v11, "data3"

    .line 4
    filled-new-array/range {v2 .. v11}, [Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public a(ILandroid/database/sqlite/SQLiteDatabase;)Z
    .locals 10

    const/16 p0, 0x9

    const-string v0, "table_icons"

    if-ne p1, p0, :cond_0

    .line 1
    new-instance p1, Lcom/smartisanos/launcher/data/b/c;

    invoke-direct {p1, p0}, Lcom/smartisanos/launcher/data/b/c;-><init>(I)V

    const-string v1, "_id"

    const-string v2, "owner"

    const-string v3, "color_info"

    const-string v4, "dark_icon"

    const-string v5, "light_icon"

    const-string v6, "data1"

    const-string v7, "data2"

    const-string v8, "data3"

    .line 2
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-virtual {p1}, Lcom/smartisanos/launcher/data/b/c;->If()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p0, p1}, Lcom/smartisanos/launcher/data/b/h;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    if-ne p1, p0, :cond_1

    .line 4
    new-instance p1, Lcom/smartisanos/launcher/data/b/c;

    invoke-direct {p1, p0}, Lcom/smartisanos/launcher/data/b/c;-><init>(I)V

    const-string v1, "_id"

    const-string v2, "owner"

    const-string v3, "color_info"

    const-string v4, "dark_icon"

    const-string v5, "light_icon"

    const-string v6, "data1"

    const-string v7, "data2"

    const-string v8, "data3"

    .line 5
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-virtual {p1}, Lcom/smartisanos/launcher/data/b/c;->If()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p0, p1}, Lcom/smartisanos/launcher/data/b/h;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    const/16 p0, 0xb

    if-ne p1, p0, :cond_2

    .line 7
    new-instance p1, Lcom/smartisanos/launcher/data/b/c;

    invoke-direct {p1, p0}, Lcom/smartisanos/launcher/data/b/c;-><init>(I)V

    const-string v1, "_id"

    const-string v2, "owner"

    const-string v3, "color_info"

    const-string v4, "dark_icon"

    const-string v5, "light_icon"

    const-string v6, "data1"

    const-string v7, "data2"

    const-string v8, "data3"

    .line 8
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object p0

    .line 9
    invoke-virtual {p1}, Lcom/smartisanos/launcher/data/b/c;->If()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p0, p1}, Lcom/smartisanos/launcher/data/b/h;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    const/16 p0, 0xc

    if-ne p1, p0, :cond_3

    .line 10
    new-instance p1, Lcom/smartisanos/launcher/data/b/c;

    invoke-direct {p1, p0}, Lcom/smartisanos/launcher/data/b/c;-><init>(I)V

    const-string v1, "_id"

    const-string v2, "owner"

    const-string v3, "color_info"

    const-string v4, "dark_icon"

    const-string v5, "light_icon"

    const-string v6, "transparent_icon"

    const-string v7, "data1"

    const-string v8, "data2"

    const-string v9, "data3"

    .line 11
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object p0

    .line 12
    invoke-virtual {p1}, Lcom/smartisanos/launcher/data/b/c;->If()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p0, p1}, Lcom/smartisanos/launcher/data/b/h;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method
