.class public Lcom/smartisanos/launcher/data/a/a;
.super Lcom/smartisanos/launcher/data/a/v;
.source "DLRecord.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field public id:I

.field public md5:Ljava/lang/String;

.field public ns:J

.field public os:I

.field public ps:J

.field public qs:Ljava/lang/String;

.field public rs:Ljava/lang/String;

.field public ss:Ljava/lang/String;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/data/a/a;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/data/a/a;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/data/a/v;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/smartisanos/launcher/data/a/a;->id:I

    .line 3
    iput v0, p0, Lcom/smartisanos/launcher/data/a/a;->type:I

    const-wide/16 v1, -0x1

    .line 4
    iput-wide v1, p0, Lcom/smartisanos/launcher/data/a/a;->ns:J

    .line 5
    iput v0, p0, Lcom/smartisanos/launcher/data/a/a;->os:I

    .line 6
    iput-wide v1, p0, Lcom/smartisanos/launcher/data/a/a;->ps:J

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/smartisanos/launcher/data/a/a;->qs:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/smartisanos/launcher/data/a/a;->rs:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/smartisanos/launcher/data/a/a;->md5:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/smartisanos/launcher/data/a/a;->ss:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/database/Cursor;)Lcom/smartisanos/launcher/data/a/a;
    .locals 10

    .line 1
    :try_start_0
    new-instance v0, Lcom/smartisanos/launcher/data/a/a;

    invoke-direct {v0}, Lcom/smartisanos/launcher/data/a/a;-><init>()V

    const-string v1, "_id"

    .line 2
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "type"

    .line 3
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "dl_id"

    .line 4
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "dl_status"

    .line 5
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "dl_time"

    .line 6
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "task_name"

    .line 7
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "dl_url"

    .line 8
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "md5"

    .line 9
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "file"

    .line 10
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 11
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/smartisanos/launcher/data/a/a;->id:I

    .line 12
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/smartisanos/launcher/data/a/a;->type:I

    .line 13
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/smartisanos/launcher/data/a/a;->ns:J

    .line 14
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/smartisanos/launcher/data/a/a;->os:I

    .line 15
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/smartisanos/launcher/data/a/a;->ps:J

    .line 16
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/smartisanos/launcher/data/a/a;->qs:Ljava/lang/String;

    .line 17
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/smartisanos/launcher/data/a/a;->md5:Ljava/lang/String;

    .line 18
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/smartisanos/launcher/data/a/a;->rs:Ljava/lang/String;

    .line 19
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/smartisanos/launcher/data/a/a;->ss:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
