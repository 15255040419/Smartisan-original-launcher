.class public Lcom/smartisanos/launcher/e/p;
.super Ljava/lang/Object;
.source "Utils.java"


# instance fields
.field public description:Ljava/lang/String;

.field public downloadId:J

.field public reason:Ljava/lang/String;

.field public status:I

.field public title:Ljava/lang/String;

.field public uri:Ljava/lang/String;

.field public xu:J

.field public yu:Ljava/lang/String;

.field public zu:J


# direct methods
.method private constructor <init>(Landroid/database/Cursor;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/smartisanos/launcher/e/p;->status:I

    const-string v0, "title"

    .line 3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/e/p;->title:Ljava/lang/String;

    const-string v0, "description"

    .line 4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/e/p;->description:Ljava/lang/String;

    const-string v0, "uri"

    .line 5
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/e/p;->uri:Ljava/lang/String;

    const-string v0, "total_size"

    .line 6
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/smartisanos/launcher/e/p;->xu:J

    const-string v0, "local_uri"

    .line 7
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/e/p;->yu:Ljava/lang/String;

    const-string v0, "status"

    .line 8
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/launcher/e/p;->status:I

    const-string v0, "reason"

    .line 9
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/e/p;->reason:Ljava/lang/String;

    const-string v0, "bytes_so_far"

    .line 10
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/smartisanos/launcher/e/p;->zu:J

    return-void
.end method

.method public static a(JLandroid/database/Cursor;)Lcom/smartisanos/launcher/e/p;
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/e/p;

    invoke-direct {v0, p2}, Lcom/smartisanos/launcher/e/p;-><init>(Landroid/database/Cursor;)V

    .line 2
    iput-wide p0, v0, Lcom/smartisanos/launcher/e/p;->downloadId:J

    return-object v0
.end method


# virtual methods
.method public og()I
    .locals 11

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/launcher/e/p;->xu:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    const-wide/16 v7, 0x0

    if-lez v4, :cond_2

    iget-wide v9, p0, Lcom/smartisanos/launcher/e/p;->zu:J

    cmp-long p0, v9, v2

    if-lez p0, :cond_2

    .line 2
    new-instance p0, Ljava/math/BigDecimal;

    long-to-double v2, v9

    long-to-double v0, v0

    div-double/2addr v2, v0

    mul-double/2addr v2, v5

    invoke-direct {p0, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    cmpg-double p0, v0, v7

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    cmpl-double p0, v0, v5

    if-lez p0, :cond_1

    move-wide v7, v5

    goto :goto_0

    :cond_1
    move-wide v7, v0

    :cond_2
    :goto_0
    double-to-int p0, v7

    return p0
.end method
