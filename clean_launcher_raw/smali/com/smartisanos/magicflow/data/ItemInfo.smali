.class public Lcom/smartisanos/magicflow/data/ItemInfo;
.super Ljava/lang/Object;
.source "ItemInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public appName:Ljava/lang/String;

.field public clickUrl:Ljava/lang/String;

.field public create_time:J

.field public duration:I

.field public has_video:Z

.field public id:Ljava/lang/String;

.field public isSelect:Z

.field public original_time:J

.field public packageName:Ljava/lang/String;

.field public pic:Ljava/lang/String;

.field public position:I

.field public score:J

.field public source:Ljava/lang/String;

.field public source_en:Ljava/lang/String;

.field public source_name:Ljava/lang/String;

.field public source_type:Ljava/lang/String;

.field public storeTime:J

.field public thumbnails:[Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/smartisanos/magicflow/data/ItemInfo;->score:J

    return-void
.end method


# virtual methods
.method public hj()Lorg/json/JSONObject;
    .locals 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "type"

    .line 2
    iget v2, p0, Lcom/smartisanos/magicflow/data/ItemInfo;->type:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "source_id"

    .line 3
    iget-object v2, p0, Lcom/smartisanos/magicflow/data/ItemInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "title"

    .line 4
    iget-object v2, p0, Lcom/smartisanos/magicflow/data/ItemInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "source"

    .line 5
    iget-object v2, p0, Lcom/smartisanos/magicflow/data/ItemInfo;->source:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "source_name"

    .line 6
    iget-object v2, p0, Lcom/smartisanos/magicflow/data/ItemInfo;->source_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "url"

    .line 7
    iget-object v2, p0, Lcom/smartisanos/magicflow/data/ItemInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "clickUrl"

    .line 8
    iget-object v2, p0, Lcom/smartisanos/magicflow/data/ItemInfo;->clickUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "score"

    .line 9
    iget-wide v2, p0, Lcom/smartisanos/magicflow/data/ItemInfo;->score:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "video_duration"

    .line 10
    iget v2, p0, Lcom/smartisanos/magicflow/data/ItemInfo;->duration:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "storeTime"

    .line 11
    iget-wide v2, p0, Lcom/smartisanos/magicflow/data/ItemInfo;->storeTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "isSelect"

    .line 12
    iget-boolean v2, p0, Lcom/smartisanos/magicflow/data/ItemInfo;->isSelect:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "original_time"

    .line 13
    iget-wide v2, p0, Lcom/smartisanos/magicflow/data/ItemInfo;->original_time:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "source_en"

    .line 14
    iget-object v2, p0, Lcom/smartisanos/magicflow/data/ItemInfo;->source_en:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "create_time"

    .line 15
    iget-wide v2, p0, Lcom/smartisanos/magicflow/data/ItemInfo;->create_time:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "duration"

    .line 16
    iget v2, p0, Lcom/smartisanos/magicflow/data/ItemInfo;->duration:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "has_video"

    .line 17
    iget-boolean v2, p0, Lcom/smartisanos/magicflow/data/ItemInfo;->has_video:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "pic"

    .line 18
    iget-object v2, p0, Lcom/smartisanos/magicflow/data/ItemInfo;->pic:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "position"

    .line 19
    iget v2, p0, Lcom/smartisanos/magicflow/data/ItemInfo;->position:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "source_type"

    .line 20
    iget-object v2, p0, Lcom/smartisanos/magicflow/data/ItemInfo;->source_type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    iget-object v1, p0, Lcom/smartisanos/magicflow/data/ItemInfo;->thumbnails:[Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/smartisanos/magicflow/data/ItemInfo;->thumbnails:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 22
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 23
    iget-object p0, p0, Lcom/smartisanos/magicflow/data/ItemInfo;->thumbnails:[Ljava/lang/String;

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p0, v3

    .line 24
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "thumbnails"

    .line 25
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-object v0
.end method
