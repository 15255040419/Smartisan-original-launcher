.class public Lcom/smartisanos/launcher/provider/SidebarFolderProvider;
.super Lsmartisanos/content/FolderContentProvider;
.source "SidebarFolderProvider.java"


# static fields
.field private static volatile Aa:Ljava/util/ArrayList;

.field private static final Ba:Landroid/net/Uri;

.field private static final log:Lcom/smartisanos/launcher/va;

.field private static za:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->log:Lcom/smartisanos/launcher/va;

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->za:Z

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->Aa:Ljava/util/ArrayList;

    const-string v0, "content://com.smartisanos.launcher.FolderContentProvider"

    .line 4
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->Ba:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsmartisanos/content/FolderContentProvider;-><init>()V

    return-void
.end method

.method private a(JJ)V
    .locals 8

    .line 2
    new-instance v7, Lcom/smartisanos/launcher/provider/x;

    const/16 v2, 0x64

    move-object v0, v7

    move-object v1, p0

    move-wide v3, p3

    move-wide v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/smartisanos/launcher/provider/x;-><init>(Lcom/smartisanos/launcher/provider/SidebarFolderProvider;IJJ)V

    const/4 p0, 0x0

    .line 3
    invoke-virtual {v7, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/provider/SidebarFolderProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->qu()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->za:Z

    return v0
.end method

.method static synthetic access$200()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->ru()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/smartisanos/launcher/provider/SidebarFolderProvider;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->pu()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private d(Lcom/smartisanos/launcher/view/a/ka;)Lsmartisanos/content/Folder;
    .locals 4

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/data/FolderInfo;

    if-nez v0, :cond_1

    return-object p0

    .line 2
    :cond_1
    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/FolderInfo;->of()[J

    move-result-object v0

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "children_ids"

    .line 4
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 5
    new-instance v0, Lsmartisanos/content/Folder;

    invoke-direct {v0}, Lsmartisanos/content/Folder;-><init>()V

    .line 6
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    long-to-int v2, v2

    iput v2, v0, Lsmartisanos/content/Folder;->id:I

    .line 7
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->getAppName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lsmartisanos/content/Folder;->displayName:Ljava/lang/String;

    .line 8
    iput-object v1, v0, Lsmartisanos/content/Folder;->mBundle:Landroid/os/Bundle;

    .line 9
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/ka;->Ll()Lcom/smartisanos/launcher/view/a/la;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/la;->_i()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 11
    iput-object p1, v0, Lsmartisanos/content/Folder;->icon:Landroid/graphics/Bitmap;

    .line 12
    :cond_2
    iget-object p1, v0, Lsmartisanos/content/Folder;->icon:Landroid/graphics/Bitmap;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method static synthetic e(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->za:Z

    return p0
.end method

.method public static f(Z)V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/provider/A;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/provider/A;-><init>(Z)V

    invoke-static {v0}, Lcom/smartisanos/launcher/wb;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private k(Ljava/util/ArrayList;)V
    .locals 3

    .line 1
    sget-object p0, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->Aa:Ljava/util/ArrayList;

    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->Aa:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-nez p1, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsmartisanos/content/Folder;

    .line 5
    new-instance v1, Lsmartisanos/content/Folder;

    invoke-direct {v1}, Lsmartisanos/content/Folder;-><init>()V

    .line 6
    iget v2, v0, Lsmartisanos/content/Folder;->id:I

    iput v2, v1, Lsmartisanos/content/Folder;->id:I

    .line 7
    iget-object v2, v0, Lsmartisanos/content/Folder;->displayName:Ljava/lang/String;

    iput-object v2, v1, Lsmartisanos/content/Folder;->displayName:Ljava/lang/String;

    .line 8
    iget-object v0, v0, Lsmartisanos/content/Folder;->mBundle:Landroid/os/Bundle;

    iput-object v0, v1, Lsmartisanos/content/Folder;->mBundle:Landroid/os/Bundle;

    .line 9
    sget-object v0, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->Aa:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private pu()Ljava/util/ArrayList;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    .line 2
    :try_start_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    sget-object p0, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "getFolderItemList return by launcher is null"

    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-object v0

    .line 4
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    if-nez v2, :cond_1

    .line 5
    sget-object p0, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "getFolderItemList return by main view is null"

    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-object v0

    .line 6
    :cond_1
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Eb;->Uh()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 7
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/a/ka;

    .line 8
    invoke-direct {p0, v3}, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->d(Lcom/smartisanos/launcher/view/a/ka;)Lsmartisanos/content/Folder;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 9
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11
    sput-boolean v1, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->za:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 13
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_4

    .line 14
    sput-boolean v1, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->za:Z

    :cond_4
    return-object v0
.end method

.method private qu()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result p0

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "prepareFolderRenderTarget return by launcher is null"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    if-nez p0, :cond_1

    .line 4
    sget-object p0, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "prepareFolderRenderTarget return by main view is null"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Uh()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/a/ka;

    .line 7
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    iget v1, v1, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/ka;->Ll()Lcom/smartisanos/launcher/view/a/la;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/la;->ej()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static ru()Z
    .locals 13

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/yb;->getInstance()Lcom/smartisanos/launcher/yb;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;->NY:Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/yb;->b(Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;)Z

    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Uh()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 4
    :cond_0
    sget-object v3, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->Aa:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    sget-object v4, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->Aa:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    :goto_0
    move v2, v0

    goto/16 :goto_5

    .line 6
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v5, v4, :cond_3

    goto :goto_0

    :cond_3
    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_a

    .line 7
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/view/a/ka;

    .line 8
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/data/FolderInfo;

    .line 9
    sget-object v7, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->Aa:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lsmartisanos/content/Folder;

    .line 10
    iget-wide v8, v6, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    iget v10, v7, Lsmartisanos/content/Folder;->id:I

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_4

    goto :goto_0

    .line 11
    :cond_4
    iget-object v8, v6, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 12
    iget-object v9, v7, Lsmartisanos/content/Folder;->displayName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_0

    .line 13
    :cond_5
    invoke-virtual {v6}, Lcom/smartisanos/launcher/data/FolderInfo;->of()[J

    move-result-object v6

    .line 14
    iget-object v7, v7, Lsmartisanos/content/Folder;->mBundle:Landroid/os/Bundle;

    if-eqz v7, :cond_8

    const-string v8, "children_ids"

    .line 15
    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v7

    if-eqz v7, :cond_8

    .line 16
    array-length v8, v7

    array-length v9, v6

    if-ne v8, v9, :cond_8

    move v8, v2

    .line 17
    :goto_2
    array-length v9, v6

    if-ge v8, v9, :cond_7

    .line 18
    aget-wide v9, v7, v8

    aget-wide v11, v6, v8

    cmp-long v9, v9, v11

    if-eqz v9, :cond_6

    move v6, v0

    goto :goto_3

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_7
    move v6, v2

    :goto_3
    if-nez v6, :cond_8

    move v6, v2

    goto :goto_4

    :cond_8
    move v6, v0

    :goto_4
    if-eqz v6, :cond_9

    goto :goto_0

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 19
    :cond_a
    :goto_5
    monitor-exit v3

    move v0, v2

    goto :goto_6

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    .line 20
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6
    return v0
.end method

.method static synthetic u()Landroid/net/Uri;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->Ba:Landroid/net/Uri;

    return-object v0
.end method

.method public static v()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->f(Z)V

    return-void
.end method


# virtual methods
.method public dropItem(Lsmartisanos/content/Folder;Landroid/content/ClipData;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    const-string v1, "]"

    if-eqz v0, :cond_1

    sget-object v0, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dropItem id ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lsmartisanos/content/Folder;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] name ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lsmartisanos/content/Folder;->displayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_1
    if-nez p2, :cond_2

    return-void

    .line 2
    :cond_2
    iget p1, p1, Lsmartisanos/content/Folder;->id:I

    int-to-long v2, p1

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-gtz p1, :cond_4

    .line 3
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_3

    sget-object p0, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->log:Lcom/smartisanos/launcher/va;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "dropItem return by folder id ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_3
    return-void

    .line 4
    :cond_4
    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_8

    .line 5
    invoke-virtual {p2, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_1

    .line 6
    :cond_5
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    sget-boolean v4, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v4, :cond_6

    sget-object v4, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->log:Lcom/smartisanos/launcher/va;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dropItem clipdata ==> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_6
    if-eqz v1, :cond_7

    .line 8
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "item_id"

    .line 9
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 10
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->a(JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 11
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    return-void
.end method

.method public getFolders()Ljava/util/ArrayList;
    .locals 7

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    iget-boolean v0, v0, Lcom/smartisanos/launcher/J;->Vf:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v3, Lcom/smartisanos/launcher/provider/r;

    const/16 v4, 0x1f4

    invoke-direct {v3, p0, v4, v2}, Lcom/smartisanos/launcher/provider/r;-><init>(Lcom/smartisanos/launcher/provider/SidebarFolderProvider;ILjava/util/ArrayList;)V

    .line 6
    invoke-virtual {v3}, Lcom/smartisanos/launcher/vb;->start()V

    .line 7
    invoke-direct {p0, v2}, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->k(Ljava/util/ArrayList;)V

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 9
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->log:Lcom/smartisanos/launcher/va;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFolder spend time ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v3, v0

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "] list size ["

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_1
    return-object v2

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public openFolder(Lsmartisanos/content/Folder;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/provider/SidebarFolderProvider;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openFolder id ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lsmartisanos/content/Folder;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lsmartisanos/content/Folder;->displayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    :cond_0
    iget p1, p1, Lsmartisanos/content/Folder;->id:I

    int-to-long v0, p1

    .line 3
    new-instance p1, Lcom/smartisanos/launcher/provider/u;

    const/16 v2, 0x64

    invoke-direct {p1, p0, v2, v0, v1}, Lcom/smartisanos/launcher/provider/u;-><init>(Lcom/smartisanos/launcher/provider/SidebarFolderProvider;IJ)V

    const/4 p0, 0x0

    .line 4
    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    return-void
.end method
