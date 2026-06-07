.class public Lcom/smartisanos/launcher/data/ExportDataProvider;
.super Landroid/content/ContentProvider;
.source "ExportDataProvider.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;

.field private static final qa:Landroid/content/UriMatcher;

.field public static ra:Landroid/content/ContentValues;


# instance fields
.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-class v0, Lcom/smartisanos/launcher/data/ExportDataProvider;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/data/ExportDataProvider;->log:Lcom/smartisanos/launcher/va;

    .line 2
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/smartisanos/launcher/data/ExportDataProvider;->qa:Landroid/content/UriMatcher;

    .line 3
    sget-object v0, Lcom/smartisanos/launcher/data/ExportDataProvider;->qa:Landroid/content/UriMatcher;

    const/4 v1, 0x1

    const-string v2, "com.smartisanos.launcher.exportprovider"

    const-string v3, "exportdata"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4
    sget-object v0, Lcom/smartisanos/launcher/data/ExportDataProvider;->qa:Landroid/content/UriMatcher;

    const/4 v3, 0x2

    const-string v4, "exportdata/#"

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5
    sget-object v0, Lcom/smartisanos/launcher/data/ExportDataProvider;->qa:Landroid/content/UriMatcher;

    const-string v4, "table_iteminfos"

    invoke-virtual {v0, v2, v4, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 6
    sget-object v0, Lcom/smartisanos/launcher/data/ExportDataProvider;->qa:Landroid/content/UriMatcher;

    const-string v1, "table_iteminfos/#"

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7
    sget-object v0, Lcom/smartisanos/launcher/data/ExportDataProvider;->qa:Landroid/content/UriMatcher;

    const-string v1, "table_pageinfos"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 8
    sget-object v0, Lcom/smartisanos/launcher/data/ExportDataProvider;->qa:Landroid/content/UriMatcher;

    const-string v1, "table_pageinfos/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 9
    sget-object v0, Lcom/smartisanos/launcher/data/ExportDataProvider;->qa:Landroid/content/UriMatcher;

    const-string v1, "table_icons"

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 10
    sget-object v0, Lcom/smartisanos/launcher/data/ExportDataProvider;->qa:Landroid/content/UriMatcher;

    const-string v1, "table_icons/#"

    const/4 v3, 0x6

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/data/ExportDataProvider;->mLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/data/ExportDataProvider;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/data/ExportDataProvider;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method private a(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 2
    sget-object p0, Lcom/smartisanos/launcher/data/ExportDataProvider;->qa:Landroid/content/UriMatcher;

    invoke-virtual {p0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1

    const/4 p1, 0x5

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string p0, "table_icons"

    goto :goto_0

    :cond_1
    const-string p0, "table_pageinfos"

    goto :goto_0

    :cond_2
    const-string p0, "table_iteminfos"

    :goto_0
    return-object p0
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/data/ExportDataProvider;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method private b(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 1
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/data/C;->getInstance()Lcom/smartisanos/launcher/data/C;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/C;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/smartisanos/launcher/data/I;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/smartisanos/launcher/data/I;-><init>(Lcom/smartisanos/launcher/data/ExportDataProvider;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/V;->execute()Lcom/smartisanos/launcher/data/U;

    move-result-object p0

    iget p0, p0, Lcom/smartisanos/launcher/data/U;->i:I

    return p0
.end method

.method private h(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    .line 1
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "key_pkg_arraylist"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6
    invoke-static {v1}, Lcom/smartisanos/launcher/Aa;->A(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 9
    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/ItemInfo;->Re()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 10
    iget v3, v2, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    const/16 v4, 0xa

    if-eq v3, v4, :cond_2

    .line 11
    iget v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->folderIndex:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/smartisanos/launcher/Aa;->i(J)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 12
    iget-object v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string p1, "key_folder_title_arraylist"

    .line 13
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_4
    return-object p0
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 5

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/data/C;->getInstance()Lcom/smartisanos/launcher/data/C;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/data/ExportDataProvider;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 4
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p2, v3

    .line 5
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/C;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    .line 7
    new-instance v0, Lcom/smartisanos/launcher/data/H;

    invoke-direct {v0, p0, p2, v1, p1}, Lcom/smartisanos/launcher/data/H;-><init>(Lcom/smartisanos/launcher/data/ExportDataProvider;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/V;->execute()Lcom/smartisanos/launcher/data/U;

    move-result-object p0

    iget p0, p0, Lcom/smartisanos/launcher/data/U;->i:I

    return p0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/data/ExportDataProvider;->log:Lcom/smartisanos/launcher/va;

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

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/ja;->getInstance()Lcom/smartisanos/launcher/ja;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/smartisanos/launcher/ja;->getInstance()Lcom/smartisanos/launcher/ja;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/ja;->lb()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_4

    :cond_1
    const-string v0, "get_folder_title_method"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-direct {p0, p3}, Lcom/smartisanos/launcher/data/ExportDataProvider;->h(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v0, "get_launcher_icon_method"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_launcher_icon_next

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p3}, Lcom/smartisanos/launcher/theme/MaintainedLauncherSettingsHost;->launcherIconBundle(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_launcher_icon_next
    const-string v0, "CALL_METHOD_GET_THEME_PREVIEW_RES"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    const/4 p1, 0x0

    const-string p2, "name"

    .line 6
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "themeId"

    .line 7
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "singleMode"

    .line 8
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    .line 9
    sget-boolean v2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/smartisanos/launcher/data/ExportDataProvider;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fileName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " themeId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_3
    if-eqz p2, :cond_e

    .line 10
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 12
    invoke-static {}, Lcom/smartisanos/launcher/ua;->Ob()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    :cond_4
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "theme_preview"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "dot.png"

    .line 14
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 15
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_5
    if-eqz p3, :cond_6

    .line 16
    invoke-static {p3}, Lcom/smartisanos/launcher/data/Constants;->checkSingleMode(I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 17
    :cond_6
    sget-object p3, Lcom/smartisanos/launcher/data/M;->dr:Ljava/lang/String;

    const/16 v3, 0x9

    invoke-static {v2, p3, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p3

    .line 18
    :cond_7
    invoke-static {}, Lcom/smartisanos/launcher/sa;->ub()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {}, Lcom/smartisanos/launcher/sa;->qb()Lcom/smartisanos/launcher/ra;

    move-result-object v2

    sget-object v3, Lcom/smartisanos/launcher/sa;->DARWIN:Lcom/smartisanos/launcher/ra;

    if-ne v2, v3, :cond_a

    :cond_8
    const-string v2, "L"

    .line 19
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "S"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 20
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/smartisanos/launcher/theme/v;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 21
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object p3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 22
    :goto_0
    invoke-static {}, Lcom/smartisanos/launcher/theme/X;->jg()Landroid/content/res/Resources;

    move-result-object p3

    .line 23
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/smartisanos/launcher/data/ExportDataProvider;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resources = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_b
    if-nez p3, :cond_c

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 25
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/X;->ca(Landroid/content/Context;)V

    .line 26
    invoke-static {}, Lcom/smartisanos/launcher/theme/X;->jg()Landroid/content/res/Resources;

    move-result-object p3

    .line 27
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_c

    sget-object p0, Lcom/smartisanos/launcher/data/ExportDataProvider;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resources = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " time = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 28
    :cond_c
    invoke-virtual {p3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    .line 29
    invoke-virtual {p0, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    const/16 p2, 0x1000

    new-array p2, p2, [B

    .line 30
    new-instance p3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 31
    :goto_1
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_d

    .line 32
    invoke-virtual {p3, p2, v1, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 33
    :cond_d
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 34
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 35
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 36
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 37
    :cond_e
    :goto_2
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p2, "data"

    .line 38
    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object p0

    .line 39
    :cond_f
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 40
    sget-object v2, Lcom/smartisanos/launcher/data/M;->USER_SETUP_COMPLETE:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_11

    .line 41
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_10

    sget-object v1, Lcom/smartisanos/launcher/data/ExportDataProvider;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "abandon call SETTING_CALL_TAG by SETUP_WIZARD_COMPLETE ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 42
    :cond_10
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 43
    :cond_11
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_12

    sget-object v0, Lcom/smartisanos/launcher/data/ExportDataProvider;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "SettingCall"

    const-string v3, "call begin"

    invoke-virtual {v0, v2, v3}, Lcom/smartisanos/launcher/va;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :try_start_1
    const-string v0, "smartisan_launcher_user_select"

    .line 45
    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 46
    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->getPageModeFromMode(I)I

    move-result v0

    .line 47
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_13

    sget-object v1, Lcom/smartisanos/launcher/data/ExportDataProvider;->log:Lcom/smartisanos/launcher/va;

    const-string v4, "SettingCall"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "basePageMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/smartisanos/launcher/va;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_13
    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->checkSinglePageMode(I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 49
    invoke-static {}, Lcom/smartisanos/launcher/data/N;->getInstance()Lcom/smartisanos/launcher/data/N;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/smartisanos/launcher/data/N;->N(Landroid/content/Context;)I

    move-result v1

    .line 50
    sget-boolean v4, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v4, :cond_14

    sget-object v4, Lcom/smartisanos/launcher/data/ExportDataProvider;->log:Lcom/smartisanos/launcher/va;

    const-string v5, "SettingCall"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "oldBasePageMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/va;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_14
    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->checkSinglePageMode(I)Z

    move-result v4

    if-eqz v4, :cond_17

    if-eq v1, v0, :cond_17

    .line 52
    new-instance v1, Lcom/smartisanos/launcher/data/J;

    invoke-direct {v1, p0, v0}, Lcom/smartisanos/launcher/data/J;-><init>(Lcom/smartisanos/launcher/data/ExportDataProvider;I)V

    invoke-static {v1}, Lcom/smartisanos/launcher/data/A;->e(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 53
    :try_start_2
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_15

    sget-object v0, Lcom/smartisanos/launcher/data/ExportDataProvider;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "call mLock.wait()"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 54
    :cond_15
    iget-object v0, p0, Lcom/smartisanos/launcher/data/ExportDataProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 55
    :try_start_3
    iget-object v1, p0, Lcom/smartisanos/launcher/data/ExportDataProvider;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 56
    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    .line 57
    :try_start_5
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_16

    sget-object v1, Lcom/smartisanos/launcher/data/ExportDataProvider;->log:Lcom/smartisanos/launcher/va;

    const-string v4, "call mLock.wait() exception"

    invoke-virtual {v1, v4}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 58
    :cond_16
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    :cond_17
    :goto_3
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_18

    sget-object v0, Lcom/smartisanos/launcher/data/ExportDataProvider;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SettingCallmergeTime = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 61
    :cond_18
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_19

    sget-object v0, Lcom/smartisanos/launcher/data/ExportDataProvider;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "call return super.call"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 62
    :cond_19
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 63
    :cond_1a
    :goto_4
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_1c

    .line 64
    sget-object v0, Lcom/smartisanos/launcher/data/ExportDataProvider;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ApplicationProxy.getInstance() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/smartisanos/launcher/ja;->getInstance()Lcom/smartisanos/launcher/ja;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/smartisanos/launcher/ja;->getInstance()Lcom/smartisanos/launcher/ja;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 66
    sget-object v0, Lcom/smartisanos/launcher/data/ExportDataProvider;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ApplicationProxy loadFinish = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/smartisanos/launcher/ja;->getInstance()Lcom/smartisanos/launcher/ja;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/ja;->lb()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 67
    :cond_1b
    sget-object v0, Lcom/smartisanos/launcher/data/ExportDataProvider;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "call error"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 68
    :cond_1c
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/data/ExportDataProvider;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/data/C;->getInstance()Lcom/smartisanos/launcher/data/C;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/smartisanos/launcher/data/C;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 4
    new-instance p1, Lcom/smartisanos/launcher/data/G;

    move-object v0, p1

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/smartisanos/launcher/data/G;-><init>(Lcom/smartisanos/launcher/data/ExportDataProvider;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/smartisanos/launcher/data/V;->execute()Lcom/smartisanos/launcher/data/U;

    move-result-object p0

    iget p0, p0, Lcom/smartisanos/launcher/data/U;->i:I

    return p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 1
    sget-object p0, Lcom/smartisanos/launcher/data/ExportDataProvider;->qa:Landroid/content/UriMatcher;

    invoke-virtual {p0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "vnd.android.cursor.item/vnd.smartisanos.exportdata"

    return-object p0

    :cond_1
    const-string p0, "vnd.android.cursor.dir/vnd.smartisanos.exportdata"

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/data/ExportDataProvider;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/launcher/data/ExportDataProvider;->b(Ljava/lang/String;Landroid/content/ContentValues;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()Z
    .locals 0

    .line 1
    sget-object p0, Lcom/smartisanos/launcher/data/ExportDataProvider;->ra:Landroid/content/ContentValues;

    if-nez p0, :cond_0

    .line 2
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    sput-object p0, Lcom/smartisanos/launcher/data/ExportDataProvider;->ra:Landroid/content/ContentValues;

    :cond_0
    const/4 p0, 0x1

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
