.class public Lcom/smartisanos/launcher/a/t;
.super Ljava/lang/Object;
.source "DragToDock.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;

.field private static final uri:Landroid/net/Uri;

.field private static vj:Landroid/graphics/Point;

.field private static wj:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/a/t;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/a/t;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "content://com.android.desktop.systemui"

    .line 2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/a/t;->uri:Landroid/net/Uri;

    .line 3
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/a/t;->vj:Landroid/graphics/Point;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/a/t;->wj:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static X(I)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->R(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/a/t;->vj:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    .line 3
    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_1

    const/4 v2, 0x3

    if-eq p0, v2, :cond_1

    .line 4
    new-instance p0, Lcom/smartisanos/launcher/a/s;

    invoke-direct {p0, v1, v0}, Lcom/smartisanos/launcher/a/s;-><init>(FF)V

    invoke-static {p0}, Lcom/smartisanos/launcher/wb;->post(Ljava/lang/Runnable;)V

    return-void

    .line 5
    :cond_1
    invoke-static {v1, v0}, Lcom/smartisanos/launcher/a/t;->e(FF)V

    return-void
.end method

.method public static a(Lcom/smartisanos/launcher/view/a/g;FF)V
    .locals 5

    if-eqz p0, :cond_4

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-boolean v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->isNeedDowload:Z

    if-eqz v1, :cond_2

    .line 5
    sget-object p0, Lcom/smartisanos/launcher/a/t;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "noticeDockDragStart return by not support download"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_2
    instance-of v1, p0, Lcom/smartisanos/launcher/data/QuickLaunchItem;

    if-eqz v1, :cond_3

    .line 7
    move-object v1, p0

    check-cast v1, Lcom/smartisanos/launcher/data/QuickLaunchItem;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/QuickLaunchItem;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/ItemInfo;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    :goto_0
    sget-object v1, Lcom/smartisanos/launcher/a/t;->wj:Ljava/util/List;

    monitor-enter v1

    .line 10
    :try_start_0
    sget-object v2, Lcom/smartisanos/launcher/a/t;->wj:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 11
    sget-object v2, Lcom/smartisanos/launcher/a/t;->wj:Ljava/util/List;

    iget-wide v3, p0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {}, Lcom/smartisanos/launcher/qa;->getInstance()Lcom/smartisanos/launcher/qa;

    move-result-object p0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/smartisanos/launcher/qa;->c(IZ)V

    .line 14
    invoke-static {v0, p1, p2}, Lcom/smartisanos/launcher/a/t;->a(Ljava/util/ArrayList;FF)V

    return-void

    :catchall_0
    move-exception p0

    .line 15
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_4
    :goto_1
    return-void
.end method

.method public static a(Ljava/util/ArrayList;FF)V
    .locals 7

    if-eqz p0, :cond_3

    .line 33
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 34
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 35
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v1, 0x10

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/ub;->d(IZ)V

    .line 36
    invoke-static {v2}, Lcom/smartisanos/launcher/Qa;->s(Z)V

    .line 37
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 38
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 39
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    const-string p0, "action"

    .line 41
    invoke-virtual {v0, p0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "items"

    .line 42
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p0, 0x2

    new-array p0, p0, [I

    const/4 v1, 0x0

    float-to-int p1, p1

    aput p1, p0, v1

    float-to-int p1, p2

    aput p1, p0, v2

    const-string p1, "loc"

    .line 43
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 44
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 46
    sget-object p1, Lcom/smartisanos/launcher/a/t;->uri:Landroid/net/Uri;

    const-string p2, "METHOD_LAUNCHPAD_DRAG"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 47
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method public static a(Ljava/util/List;FF)V
    .locals 4

    if-eqz p0, :cond_7

    .line 16
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 17
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/a/g;

    if-eqz v2, :cond_1

    .line 20
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 21
    :cond_2
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    .line 22
    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 23
    :cond_3
    instance-of v3, v2, Lcom/smartisanos/launcher/data/QuickLaunchItem;

    if-eqz v3, :cond_4

    .line 24
    check-cast v2, Lcom/smartisanos/launcher/data/QuickLaunchItem;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/QuickLaunchItem;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 25
    :cond_4
    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/ItemInfo;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 26
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_6

    return-void

    .line 27
    :cond_6
    sget-object p0, Lcom/smartisanos/launcher/a/t;->wj:Ljava/util/List;

    monitor-enter p0

    .line 28
    :try_start_0
    sget-object v2, Lcom/smartisanos/launcher/a/t;->wj:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 29
    sget-object v2, Lcom/smartisanos/launcher/a/t;->wj:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 30
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-static {v0, p1, p2}, Lcom/smartisanos/launcher/a/t;->a(Ljava/util/ArrayList;FF)V

    return-void

    :catchall_0
    move-exception p1

    .line 32
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_7
    :goto_1
    return-void
.end method

.method public static a(FF[F[F)Z
    .locals 2

    .line 48
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const/4 p3, 0x2

    new-array p3, p3, [I

    float-to-int p0, p0

    const/4 v0, 0x0

    aput p0, p3, v0

    float-to-int p0, p1

    const/4 p1, 0x1

    aput p0, p3, p1

    const-string p0, "action"

    const/4 p1, 0x4

    .line 49
    invoke-virtual {p2, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "loc"

    .line 50
    invoke-virtual {p2, p0, p3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 51
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 53
    sget-object p1, Lcom/smartisanos/launcher/a/t;->uri:Landroid/net/Uri;

    const-string p3, "METHOD_LAUNCHPAD_DRAG"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p3, v1, p2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "addToDock"

    .line 54
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public static ad()V
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/a/t;->vj:Landroid/graphics/Point;

    invoke-static {v0}, Lcom/smartisanos/launcher/ua;->getLastTouchPointForDrag(Landroid/graphics/Point;)V

    return-void
.end method

.method public static b(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/smartisanos/launcher/a/t;->uri:Landroid/net/Uri;

    const-string v2, "METHOD_LAUNCHPAD_REMOVE_ITEM"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static c(Ljava/util/List;)V
    .locals 5

    if-eqz p0, :cond_4

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Lcom/smartisanos/launcher/Qa;->r(Z)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 4
    :cond_2
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 6
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 7
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-string p0, "items"

    .line 8
    invoke-virtual {v1, p0, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 9
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 11
    sget-object v0, Lcom/smartisanos/launcher/a/t;->uri:Landroid/net/Uri;

    const-string v2, "METHOD_LAUNCHPAD_REMOVE_SHORTCUT"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method static synthetic d(FF)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/smartisanos/launcher/a/t;->z(FF)V

    return-void
.end method

.method public static e(FF)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/ub;->R(I)Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/launcher/ub;->d(IZ)V

    .line 4
    invoke-static {v0}, Lcom/smartisanos/launcher/Qa;->s(Z)V

    .line 5
    sget-object p0, Lcom/smartisanos/launcher/a/t;->wj:Ljava/util/List;

    monitor-enter p0

    .line 6
    :try_start_0
    sget-object p1, Lcom/smartisanos/launcher/a/t;->wj:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static v(Z)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/smartisanos/launcher/a/t;->uri:Landroid/net/Uri;

    if-eqz p0, :cond_0

    const-string p0, "METHOD_LAUNCHPAD_SHOW"

    goto :goto_0

    :cond_0
    const-string p0, "METHOD_LAUNCHPAD_DISMISS"

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private static z(FF)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x0

    float-to-int p0, p0

    aput p0, v2, v3

    const/4 p0, 0x1

    float-to-int p1, p1

    aput p1, v2, p0

    const-string p0, "action"

    .line 3
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "loc"

    .line 4
    invoke-virtual {v0, p0, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 7
    sget-object p1, Lcom/smartisanos/launcher/a/t;->uri:Landroid/net/Uri;

    const-string v1, "METHOD_LAUNCHPAD_DRAG"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
