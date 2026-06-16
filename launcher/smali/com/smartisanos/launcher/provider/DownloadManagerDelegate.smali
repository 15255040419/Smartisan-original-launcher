.class public Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;
.super Landroid/content/ContentProvider;
.source "DownloadManagerDelegate.java"


# static fields
.field private static ENABLE:Z

.field private static final log:Lcom/smartisanos/launcher/va;

.field private static final wa:Landroid/content/UriMatcher;

.field private static xa:Landroid/os/Handler;

.field public static final ya:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->log:Lcom/smartisanos/launcher/va;

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->ENABLE:Z

    const/4 v1, 0x0

    .line 3
    sput-object v1, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->xa:Landroid/os/Handler;

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->ya:Ljava/util/Map;

    .line 5
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v1, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->wa:Landroid/content/UriMatcher;

    .line 6
    sget-object v1, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->wa:Landroid/content/UriMatcher;

    const-string v2, "com.smartisanos.launcher.download.manager"

    const-string v3, "download_delegate"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7
    sget-object v0, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->wa:Landroid/content/UriMatcher;

    const-string v1, "download_delegate/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/wb;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->xa:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;[Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->p([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a([Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->o([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;Landroid/os/Bundle;)[Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->i(Landroid/os/Bundle;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method static synthetic b([Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->q([Ljava/lang/String;)V

    return-void
.end method

.method private static b(Landroid/database/Cursor;)[Ljava/lang/String;
    .locals 7

    const-string v0, "_id"

    .line 2
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "notificationpackage"

    .line 3
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "total_size"

    .line 4
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "bytes_so_far"

    .line 5
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "status"

    .line 6
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "description"

    .line 7
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    const/4 v0, 0x4

    aput-object v4, v5, v0

    const/4 v0, 0x5

    aput-object p0, v5, v0

    return-object v5
.end method

.method public static c(Ljava/lang/Runnable;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->xa:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private c(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Qh()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->xa:Landroid/os/Handler;

    new-instance v1, Lcom/smartisanos/launcher/provider/c;

    invoke-direct {v1, p0, p1, p2}, Lcom/smartisanos/launcher/provider/c;-><init>(Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 6
    :cond_1
    :goto_0
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_2

    sget-object p0, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "bundle == null || method == null. handleCall return"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method static synthetic c([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->h([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d([Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->n([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static h([Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x5

    .line 1
    aget-object v1, p0, v0

    if-nez v1, :cond_1

    .line 2
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "bundleString[5] == null. error"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_1
    aget-object p0, p0, v0

    const-string v0, "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static i([Ljava/lang/String;)J
    .locals 4

    const/4 v0, 0x0

    .line 2
    aget-object v1, p0, v0

    const-wide/16 v2, -0x1

    if-nez v1, :cond_1

    .line 3
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "bundleString[0] == null. error"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    return-wide v2

    .line 4
    :cond_1
    :try_start_0
    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-wide v2
.end method

.method private i(Landroid/os/Bundle;)[Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "launcher_action_data"

    .line 1
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static j([Ljava/lang/String;)I
    .locals 10

    const/4 v0, 0x2

    .line 1
    aget-object v1, p0, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    const/4 v1, 0x3

    aget-object v3, p0, v1

    if-nez v3, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    :try_start_0
    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 3
    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v5, 0x0

    cmp-long p0, v0, v5

    if-eqz p0, :cond_6

    cmp-long v5, v3, v5

    if-ltz v5, :cond_6

    cmp-long v6, v0, v3

    if-lez v6, :cond_1

    goto :goto_1

    :cond_1
    if-lez p0, :cond_2

    cmp-long v6, v3, v0

    if-nez v6, :cond_2

    const/16 p0, 0x64

    return p0

    :cond_2
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    const-wide/16 v8, 0x0

    if-lez v5, :cond_5

    if-lez p0, :cond_5

    .line 4
    new-instance p0, Ljava/math/BigDecimal;

    long-to-double v0, v0

    long-to-double v3, v3

    div-double/2addr v0, v3

    mul-double/2addr v0, v6

    invoke-direct {p0, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v0, 0x4

    invoke-virtual {p0, v2, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmpg-double p0, v0, v8

    if-gez p0, :cond_3

    goto :goto_0

    :cond_3
    cmpl-double p0, v0, v6

    if-lez p0, :cond_4

    move-wide v8, v6

    goto :goto_0

    :cond_4
    move-wide v8, v0

    :cond_5
    :goto_0
    double-to-int p0, v8

    return p0

    :cond_6
    :goto_1
    return v2

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, -0x1

    return p0

    .line 6
    :cond_7
    :goto_2
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_8

    sget-object p0, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "bundleString[2] or [3] == null. error"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_8
    return v2
.end method

.method private static k([Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x4

    .line 1
    aget-object v1, p0, v0

    const/4 v2, -0x1

    if-nez v1, :cond_1

    .line 2
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "bundleString[4] == null. error"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    return v2

    .line 3
    :cond_1
    :try_start_0
    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v2
.end method

.method private static l([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    array-length v0, p0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_1

    const/4 v0, 0x6

    .line 2
    aget-object p0, p0, v0

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static l(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "com.smartisan.gms"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static m([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    array-length v0, p0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    const/4 v0, 0x3

    .line 2
    aget-object p0, p0, v0

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private static n([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    array-length v0, p0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    .line 2
    aget-object p0, p0, v0

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private static o([Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-static {p0}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->h([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->n([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v2}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->l(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->i([Ljava/lang/String;)J

    move-result-wide v3

    .line 5
    invoke-static {v0}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->m([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-static {v0}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->l([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-static {p0}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->k([Ljava/lang/String;)I

    move-result v7

    .line 8
    invoke-static {p0}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->j([Ljava/lang/String;)I

    move-result v8

    .line 9
    invoke-static {v2}, Lcom/smartisanos/launcher/provider/a;->aa(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 10
    invoke-static {v2, v3, v4}, Lcom/smartisanos/launcher/provider/ThemeDownloadTriggerProvider;->a(Ljava/lang/String;J)V

    return-void

    .line 11
    :cond_1
    sget-boolean p0, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->ENABLE:Z

    if-nez p0, :cond_2

    return-void

    .line 12
    :cond_2
    invoke-static {v2}, Lcom/smartisanos/launcher/ua;->t(Ljava/lang/String;)Z

    move-result p0

    .line 13
    invoke-static {v2}, Lcom/smartisanos/launcher/Aa;->A(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-string v1, "download_log_tag this maybe is update. pkg = "

    if-eqz v0, :cond_4

    if-eqz p0, :cond_4

    .line 14
    sget-boolean p0, Lcom/smartisanos/launcher/va;->bi:Z

    if-eqz p0, :cond_3

    sget-object p0, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    if-eqz p0, :cond_6

    .line 15
    sget-boolean p0, Lcom/smartisanos/launcher/va;->bi:Z

    if-eqz p0, :cond_5

    sget-object p0, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is intalled."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_5
    return-void

    .line 16
    :cond_6
    sget-boolean p0, Lcom/smartisanos/launcher/va;->bi:Z

    if-eqz p0, :cond_7

    sget-object p0, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download_log_tag setDownloadId pkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 17
    :cond_7
    sget-object p0, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->xa:Landroid/os/Handler;

    new-instance v0, Lcom/smartisanos/launcher/provider/f;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/smartisanos/launcher/provider/f;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private p([Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {p1}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->h([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->n([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->l(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/smartisanos/launcher/provider/a;->aa(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 5
    :cond_1
    sget-boolean p1, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->ENABLE:Z

    if-nez p1, :cond_2

    return-void

    .line 6
    :cond_2
    sget-boolean p1, Lcom/smartisanos/launcher/va;->bi:Z

    if-eqz p1, :cond_3

    sget-object p1, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download_log_tag setRemoveFromDB pkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_3
    const/16 p1, 0x400

    const/4 v0, -0x1

    .line 7
    invoke-static {p0, p1, v0}, Lcom/smartisanos/launcher/e/s;->b(Ljava/lang/String;II)V

    .line 8
    sget-object p1, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->ya:Ljava/util/Map;

    monitor-enter p1

    .line 9
    :try_start_0
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download_log_tag setRemoveFromDB() maybe remove in the map(sEventList) pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 10
    :cond_4
    sget-object v0, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->ya:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 11
    sget-object v0, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download_log_tag setRemoveFromDB() remove in the map(sEventList) pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " the list contains it."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 12
    sget-object v0, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->ya:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/provider/i;

    if-nez v0, :cond_5

    .line 13
    monitor-exit p1

    return-void

    :cond_5
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/provider/i;->O(Z)V

    .line 15
    iget-boolean v1, v0, Lcom/smartisanos/launcher/provider/i;->Fs:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_9

    .line 16
    invoke-static {p0}, Lcom/smartisanos/launcher/ua;->t(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 17
    sget-boolean v0, Lcom/smartisanos/launcher/va;->bi:Z

    if-eqz v0, :cond_e

    sget-object v0, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download_log_tag setRemoveFromDB(). will receiver 256. pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is intalled."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 18
    :cond_6
    iget-object v1, v0, Lcom/smartisanos/launcher/provider/i;->events:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    .line 19
    iget-object v1, v0, Lcom/smartisanos/launcher/provider/i;->events:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_7
    const/4 v1, 0x0

    .line 20
    iput-object v1, v0, Lcom/smartisanos/launcher/provider/i;->events:Ljava/util/ArrayList;

    .line 21
    iput-boolean v2, v0, Lcom/smartisanos/launcher/provider/i;->Is:Z

    .line 22
    sget-boolean v0, Lcom/smartisanos/launcher/va;->bi:Z

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_8

    sget-object v0, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download_log_tag setRemoveFromDB() pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " LauncherModel.removePackage()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 23
    :cond_8
    invoke-static {p0}, Lcom/smartisanos/launcher/Aa;->D(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 24
    :cond_9
    iget-wide v3, v0, Lcom/smartisanos/launcher/provider/i;->Hs:J

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-eqz v1, :cond_b

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    sget-boolean v5, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v5, :cond_a

    sget-object v5, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->log:Lcom/smartisanos/launcher/va;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "download_log_tag setRemoveFromDB() remove id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " pkg = "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 28
    :cond_a
    invoke-static {v1}, Lcom/smartisanos/launcher/data/a/l;->m(Ljava/util/List;)V

    goto :goto_0

    .line 29
    :cond_b
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_c

    sget-object v1, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download_log_tag setRemoveFromDB() remove pkg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 30
    :cond_c
    invoke-static {p0}, Lcom/smartisanos/launcher/data/a/l;->W(Ljava/lang/String;)V

    .line 31
    :goto_0
    invoke-static {p0}, Lcom/smartisanos/launcher/ua;->t(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 32
    sget-boolean v0, Lcom/smartisanos/launcher/va;->bi:Z

    if-eqz v0, :cond_e

    sget-object v0, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download_log_tag setRemoveFromDB(). this maybe is update. pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is installed. createCell is false"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_1

    .line 33
    :cond_d
    iput-boolean v2, v0, Lcom/smartisanos/launcher/provider/i;->Is:Z

    .line 34
    sget-boolean v0, Lcom/smartisanos/launcher/va;->bi:Z

    if-eqz v0, :cond_e

    sget-object v0, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download_log_tag setRemoveFromDB(). this maybe is update. pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not installed. installFail = true"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 35
    :cond_e
    :goto_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static q([Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->h([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->n([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->l(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->k([Ljava/lang/String;)I

    move-result v1

    .line 5
    invoke-static {p0}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->j([Ljava/lang/String;)I

    move-result p0

    .line 6
    invoke-static {v0}, Lcom/smartisanos/launcher/provider/a;->aa(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-static {v0, p0}, Lcom/smartisanos/launcher/provider/a;->c(Ljava/lang/String;I)V

    const/16 v1, 0x64

    if-ne p0, v1, :cond_1

    .line 8
    invoke-static {v0}, Lcom/smartisanos/launcher/provider/a;->Z(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 9
    :cond_2
    sget-boolean v2, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->ENABLE:Z

    if-nez v2, :cond_3

    return-void

    .line 10
    :cond_3
    sget-boolean v2, Lcom/smartisanos/launcher/va;->bi:Z

    if-eqz v2, :cond_4

    rem-int/lit8 v2, p0, 0xa

    if-nez v2, :cond_4

    sget-object v2, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download_log_tag setUpdate: pkg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " status from db = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/provider/Downloads$Impl;->statusToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " progress = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 11
    :cond_4
    invoke-static {v0, v1, p0}, Lcom/smartisanos/launcher/e/s;->b(Ljava/lang/String;II)V

    return-void
.end method

.method public static s()V
    .locals 2

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->xa:Landroid/os/Handler;

    new-instance v1, Lcom/smartisanos/launcher/provider/h;

    invoke-direct {v1}, Lcom/smartisanos/launcher/provider/h;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static t()Ljava/util/ArrayList;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_modern_download_ok

    return-object v0

    :cond_modern_download_ok

    .line 2
    new-instance v1, Landroid/app/DownloadManager$Query;

    invoke-direct {v1}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v2, 0x7

    .line 3
    invoke-virtual {v1, v2}, Landroid/app/DownloadManager$Query;->setFilterByStatus(I)Landroid/app/DownloadManager$Query;

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v2

    const-string v3, "download"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/J;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/DownloadManager;

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 5
    :try_start_0
    invoke-virtual {v2, v3}, Landroid/app/DownloadManager;->setAccessAllDownloads(Z)V

    .line 6
    invoke-virtual {v2, v1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v4

    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 7
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    const-string v1, "notificationpackage"

    .line 8
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.smartisanos.appstore"

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.smartisanos.gamestore"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    :cond_2
    invoke-static {v4}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->b(Landroid/database/Cursor;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 11
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_4

    .line 12
    :goto_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0

    :goto_3
    if-eqz v4, :cond_5

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 13
    :cond_5
    throw v0
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call method ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], pkg ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_2

    :try_start_0
    const-string v0, "1004"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {p2}, Lcom/smartisanos/launcher/e/s;->getCellLocation(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    .line 4
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->c(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object p0, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->wa:Landroid/content/UriMatcher;

    invoke-virtual {p0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string p0, "vnd.android.cursor.item/vnd.downloadmanager.delegate"

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadManagerDelegateUnknown URI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p0, "vnd.android.cursor.dir/vnd.downloadmanager.delegate"

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
