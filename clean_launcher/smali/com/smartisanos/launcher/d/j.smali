.class public Lcom/smartisanos/launcher/d/j;
.super Ljava/lang/Object;
.source "ShortcutHandler.java"


# static fields
.field private static _s:Landroid/content/pm/LauncherApps;

.field private static final log:Lcom/smartisanos/launcher/va;

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/d/j;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/d/j;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static K(Ljava/util/List;)Ljava/util/List;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/d/k;

    .line 3
    invoke-virtual {v1}, Lcom/smartisanos/launcher/d/k;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static Pf()V
    .locals 10

    .line 1
    :try_start_0
    sget-object v0, Lcom/smartisanos/launcher/d/j;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "processInitCheck !"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/smartisanos/launcher/Aa;->qc()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 5
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/smartisanos/launcher/Aa;->i(J)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/ItemInfo;->af()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    check-cast v2, Lcom/smartisanos/launcher/data/QuickLaunchItem;

    .line 8
    iget-object v3, v2, Lcom/smartisanos/launcher/data/QuickLaunchItem;->shortcutId:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 9
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcom/smartisanos/launcher/d/j;->j(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 11
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-nez v3, :cond_3

    const/16 v3, 0xa

    .line 12
    invoke-static {v2, v3}, Lcom/smartisanos/launcher/d/j;->j(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    :cond_3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/d/k;

    .line 15
    invoke-virtual {v4}, Lcom/smartisanos/launcher/d/k;->getId()Ljava/lang/String;

    move-result-object v5

    .line 16
    invoke-virtual {v4}, Lcom/smartisanos/launcher/d/k;->getPackage()Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_4

    if-nez v6, :cond_5

    goto :goto_1

    .line 17
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 18
    :cond_6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 19
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/data/QuickLaunchItem;

    .line 20
    iget-object v5, v4, Lcom/smartisanos/launcher/data/QuickLaunchItem;->shortcutId:Ljava/lang/String;

    .line 21
    iget-object v6, v4, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_7

    if-nez v6, :cond_8

    goto :goto_2

    .line 22
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 23
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 25
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 26
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 27
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 28
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 29
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/launcher/d/k;

    .line 30
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/data/QuickLaunchItem;

    if-nez v7, :cond_b

    if-eqz v6, :cond_b

    .line 31
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_b
    if-eqz v7, :cond_a

    if-nez v6, :cond_a

    .line 32
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 33
    :cond_c
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/d/k;

    if-nez v1, :cond_e

    goto :goto_4

    .line 34
    :cond_e
    invoke-virtual {v1}, Lcom/smartisanos/launcher/d/k;->isPinned()Z

    move-result v3

    if-nez v3, :cond_f

    goto :goto_4

    .line 35
    :cond_f
    invoke-virtual {v1}, Lcom/smartisanos/launcher/d/k;->getPackage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_10

    goto :goto_4

    .line 36
    :cond_10
    invoke-static {v3}, Lcom/smartisanos/launcher/a/L;->isSupported(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "]"

    if-nez v5, :cond_11

    .line 37
    :try_start_1
    sget-object v1, Lcom/smartisanos/launcher/d/j;->log:Lcom/smartisanos/launcher/va;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processInitCheck, abandon shortcut by package name ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_4

    .line 38
    :cond_11
    invoke-virtual {v1}, Lcom/smartisanos/launcher/d/k;->getId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_12

    goto :goto_4

    .line 39
    :cond_12
    sget-object v7, Lcom/smartisanos/launcher/d/j;->log:Lcom/smartisanos/launcher/va;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pkg ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], id ["

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 40
    invoke-static {v1}, Lcom/smartisanos/launcher/d/j;->c(Lcom/smartisanos/launcher/d/k;)Lcom/smartisanos/launcher/data/QuickLaunchItem;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 41
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 42
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v1, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->maa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {v1, v2, v3}, Lcom/smartisanos/launcher/data/F;->b(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V

    goto :goto_4

    .line 44
    :cond_13
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v1, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->laa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {v1, v2, v0}, Lcom/smartisanos/launcher/data/F;->b(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_14
    :goto_5
    return-void
.end method

.method public static a(Lcom/smartisanos/launcher/d/k;)Landroid/graphics/drawable/Drawable;
    .locals 2

    if-eqz p0, :cond_0

    .line 16
    sget-object v0, Lcom/smartisanos/launcher/d/j;->_s:Landroid/content/pm/LauncherApps;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/d/k;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    sget v1, Lcom/smartisanos/launcher/data/Constants;->densityDpi:I

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/LauncherApps;->getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Landroid/content/pm/LauncherApps$PinItemRequest;)Lcom/smartisanos/launcher/d/k;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 11
    invoke-virtual {p0}, Landroid/content/pm/LauncherApps$PinItemRequest;->getRequestType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 12
    invoke-virtual {p0}, Landroid/content/pm/LauncherApps$PinItemRequest;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    invoke-virtual {p0}, Landroid/content/pm/LauncherApps$PinItemRequest;->accept()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/LauncherApps$PinItemRequest;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 15
    :cond_1
    new-instance v0, Lcom/smartisanos/launcher/d/k;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/d/k;-><init>(Landroid/content/pm/ShortcutInfo;)V

    :cond_2
    return-object v0
.end method

.method private static a(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 1

    .line 1
    new-instance v0, Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-direct {v0}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setQueryFlags(I)Landroid/content/pm/LauncherApps$ShortcutQuery;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setPackage(Ljava/lang/String;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 4
    invoke-virtual {v0, p2}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setActivity(Landroid/content/ComponentName;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 5
    invoke-virtual {v0, p3}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setShortcutIds(Ljava/util/List;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 6
    :cond_0
    :try_start_0
    sget-object p0, Lcom/smartisanos/launcher/d/j;->_s:Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, v0, p4}, Landroid/content/pm/LauncherApps;->getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ShortcutInfo;

    .line 9
    new-instance p3, Lcom/smartisanos/launcher/d/k;

    invoke-direct {p3, p2}, Lcom/smartisanos/launcher/d/k;-><init>(Landroid/content/pm/ShortcutInfo;)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-object p1

    .line 10
    :catch_0
    :cond_2
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;I)V
    .locals 2

    if-nez p0, :cond_0

    .line 17
    sget-object p0, Lcom/smartisanos/launcher/d/j;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "removePinnedShortcuts return by pkg is null"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_5

    .line 18
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 19
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/data/QuickLaunchItem;

    if-nez v1, :cond_2

    goto :goto_0

    .line 21
    :cond_2
    iget-object v1, v1, Lcom/smartisanos/launcher/data/QuickLaunchItem;->shortcutId:Ljava/lang/String;

    if-nez v1, :cond_3

    return-void

    .line 22
    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 23
    :cond_4
    invoke-static {p0, v0, p2}, Lcom/smartisanos/launcher/d/j;->b(Ljava/lang/String;Ljava/util/List;I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public static b(Lcom/smartisanos/launcher/data/QuickLaunchItem;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 8
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/d/j;->_s:Landroid/content/pm/LauncherApps;

    if-nez v0, :cond_1

    return-void

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 10
    iget-object v1, p0, Lcom/smartisanos/launcher/data/QuickLaunchItem;->shortcutId:Ljava/lang/String;

    if-nez v1, :cond_2

    return-void

    .line 11
    :cond_2
    iget p0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    invoke-static {v0, v1, p0}, Lcom/smartisanos/launcher/d/j;->launchShortcut(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/util/List;I)V
    .locals 2

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0xa

    if-eq p2, v0, :cond_1

    const/4 p2, 0x0

    .line 2
    :cond_1
    invoke-static {p0, p2}, Lcom/smartisanos/launcher/d/j;->j(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/launcher/d/j;->K(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_2
    new-instance p1, Landroid/os/UserHandle;

    invoke-direct {p1, p2}, Landroid/os/UserHandle;-><init>(I)V

    .line 6
    :try_start_0
    sget-object p2, Lcom/smartisanos/launcher/d/j;->_s:Landroid/content/pm/LauncherApps;

    invoke-virtual {p2, p0, v0, p1}, Landroid/content/pm/LauncherApps;->pinShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method private static c(Lcom/smartisanos/launcher/d/k;)Lcom/smartisanos/launcher/data/QuickLaunchItem;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 11
    :cond_0
    new-instance v0, Lcom/smartisanos/launcher/data/QuickLaunchItem;

    invoke-direct {v0}, Lcom/smartisanos/launcher/data/QuickLaunchItem;-><init>()V

    .line 12
    invoke-virtual {p0}, Lcom/smartisanos/launcher/d/k;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v1

    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 14
    invoke-virtual {p0}, Lcom/smartisanos/launcher/d/k;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object v1

    .line 15
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 16
    sget-object v1, Lcom/smartisanos/launcher/d/j;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "convertToQuickLaunchItem label is empty"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    const-string v1, ""

    .line 17
    :cond_2
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    .line 18
    invoke-virtual {p0}, Lcom/smartisanos/launcher/d/k;->getPackage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 19
    invoke-static {p0}, Lcom/smartisanos/launcher/d/j;->a(Lcom/smartisanos/launcher/d/k;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 20
    invoke-static {v1}, Lcom/smartisanos/launcher/e/s;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/smartisanos/launcher/data/QuickLaunchItem;->icon:Landroid/graphics/Bitmap;

    .line 21
    invoke-virtual {p0}, Lcom/smartisanos/launcher/d/k;->Qf()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/smartisanos/launcher/data/QuickLaunchItem;->intent:Landroid/content/Intent;

    .line 22
    invoke-virtual {p0}, Lcom/smartisanos/launcher/d/k;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/smartisanos/launcher/data/QuickLaunchItem;->shortcutId:Ljava/lang/String;

    .line 23
    invoke-virtual {p0}, Lcom/smartisanos/launcher/d/k;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    iput p0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    .line 24
    sget-object p0, Lcom/smartisanos/launcher/d/j;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shortcut. pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " item.userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 25
    iget-object p0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-static {p0}, Lcom/smartisanos/launcher/e/s;->pa(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    const/4 p0, -0x1

    .line 26
    iput p0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    :cond_3
    return-object v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xa

    if-eq p3, v1, :cond_0

    move p3, v0

    .line 1
    :cond_0
    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p3}, Landroid/os/UserHandle;-><init>(I)V

    .line 2
    new-instance p3, Landroid/content/ComponentName;

    invoke-direct {p3, p0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 3
    invoke-static {p2, p0, p3, p1, v1}, Lcom/smartisanos/launcher/d/j;->a(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    return-object p0

    .line 4
    :cond_1
    sget-object p1, Lcom/smartisanos/launcher/d/j;->log:Lcom/smartisanos/launcher/va;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "listShortcutByFlag list size "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/smartisanos/launcher/d/k;

    .line 6
    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 7
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 8
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    array-length p2, p1

    :goto_0
    if-ge v0, p2, :cond_2

    aget-object p3, p1, v0

    .line 10
    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public static e(Landroid/content/Intent;)Lcom/smartisanos/launcher/d/k;
    .locals 2

    const-string v0, "android.content.pm.extra.PIN_ITEM_REQUEST"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/content/pm/LauncherApps$PinItemRequest;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lcom/smartisanos/launcher/d/j;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "handlePinShortcutAction return by PinItemRequest is null"

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/LauncherApps$PinItemRequest;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/smartisanos/launcher/d/k;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/d/k;-><init>(Landroid/content/pm/ShortcutInfo;)V

    return-object v0
.end method

.method public static f(Landroid/content/Intent;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "android.content.pm.extra.PIN_ITEM_REQUEST"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/content/pm/LauncherApps$PinItemRequest;

    if-nez p0, :cond_1

    .line 2
    sget-object p0, Lcom/smartisanos/launcher/d/j;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "handlePinShortcutAction return by PinItemRequest is null"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_1
    invoke-static {p0}, Lcom/smartisanos/launcher/d/j;->a(Landroid/content/pm/LauncherApps$PinItemRequest;)Lcom/smartisanos/launcher/d/k;

    move-result-object p0

    if-nez p0, :cond_2

    .line 4
    sget-object p0, Lcom/smartisanos/launcher/d/j;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "handlePinShortcutAction return by ShortcutInfoCompat is null"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/d/k;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 6
    sget-object v1, Lcom/smartisanos/launcher/d/j;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePinShortcutAction pkg ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 7
    invoke-static {v0}, Lcom/smartisanos/launcher/a/L;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 8
    sget-object p0, Lcom/smartisanos/launcher/d/j;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePinShortcutAction return by package not support ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_3
    invoke-static {p0}, Lcom/smartisanos/launcher/d/j;->c(Lcom/smartisanos/launcher/d/k;)Lcom/smartisanos/launcher/data/QuickLaunchItem;

    move-result-object p0

    if-nez p0, :cond_4

    .line 10
    sget-object p0, Lcom/smartisanos/launcher/d/j;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "handlePinShortcutAction return by QuickLaunchItem is null"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_4
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/smartisanos/launcher/d/j;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shortcut install "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/QuickLaunchItem;->ef()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 12
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    sget-object p0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->maa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/smartisanos/launcher/data/F;->b(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 1
    sput-object p0, Lcom/smartisanos/launcher/d/j;->mContext:Landroid/content/Context;

    const-string v0, "launcherapps"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/LauncherApps;

    sput-object p0, Lcom/smartisanos/launcher/d/j;->_s:Landroid/content/pm/LauncherApps;

    return-void
.end method

.method public static j(Ljava/lang/String;I)Ljava/util/List;
    .locals 2

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 p1, 0x2

    const/4 v1, 0x0

    .line 2
    invoke-static {p1, p0, v1, v1, v0}, Lcom/smartisanos/launcher/d/j;->a(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static launchShortcut(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/d/j;->_s:Landroid/content/pm/LauncherApps;

    if-eqz v0, :cond_3

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    if-eq p2, v0, :cond_1

    const/4 p2, 0x0

    :cond_1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v1, :cond_2

    sget v1, Lcom/smartisanos/launcher/data/Constants;->DISPLAY_ID:I

    if-eqz v1, :cond_2

    .line 3
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 4
    sget v1, Lcom/smartisanos/launcher/data/Constants;->DISPLAY_ID:I

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 5
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    :cond_2
    move-object v4, v0

    .line 6
    sget-object v0, Lcom/smartisanos/launcher/d/j;->_s:Landroid/content/pm/LauncherApps;

    const/4 v3, 0x0

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p2}, Landroid/os/UserHandle;-><init>(I)V

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/LauncherApps;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public static o(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/launcher/d/k;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 p1, 0xb

    .line 3
    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {p1, p0, v0, v1, v2}, Lcom/smartisanos/launcher/d/j;->a(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 5
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/d/k;

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method
