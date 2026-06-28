.class public Lcom/android/settingslib/drawer/CategoryManager;
.super Ljava/lang/Object;
.source "CategoryManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CategoryManager"

.field private static sInstance:Lcom/android/settingslib/drawer/CategoryManager;


# instance fields
.field private mCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final mCategoryByKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraAction:Ljava/lang/String;

.field private final mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

.field private final mTileByComponentCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/drawer/CategoryManager;->mTileByComponentCache:Ljava/util/Map;

    .line 64
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategoryByKeyMap:Ljava/util/Map;

    .line 65
    new-instance v0, Lcom/android/settingslib/applications/InterestingConfigChanges;

    invoke-direct {v0}, Lcom/android/settingslib/applications/InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/drawer/CategoryManager;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    .line 66
    iget-object v0, p0, Lcom/android/settingslib/drawer/CategoryManager;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    .line 67
    iput-object p2, p0, Lcom/android/settingslib/drawer/CategoryManager;->mExtraAction:Ljava/lang/String;

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/android/settingslib/drawer/CategoryManager;
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-static {p0, v0}, Lcom/android/settingslib/drawer/CategoryManager;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/drawer/CategoryManager;

    move-result-object p0

    return-object p0
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/drawer/CategoryManager;
    .locals 1

    .line 56
    sget-object v0, Lcom/android/settingslib/drawer/CategoryManager;->sInstance:Lcom/android/settingslib/drawer/CategoryManager;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/android/settingslib/drawer/CategoryManager;

    invoke-direct {v0, p0, p1}, Lcom/android/settingslib/drawer/CategoryManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settingslib/drawer/CategoryManager;->sInstance:Lcom/android/settingslib/drawer/CategoryManager;

    .line 59
    :cond_0
    sget-object p0, Lcom/android/settingslib/drawer/CategoryManager;->sInstance:Lcom/android/settingslib/drawer/CategoryManager;

    return-object p0
.end method

.method private declared-synchronized sortCategoriesForExternalTiles(Landroid/content/Context;Lcom/android/settingslib/drawer/DashboardCategory;)V
    .locals 0

    monitor-enter p0

    .line 233
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/settingslib/drawer/DashboardCategory;->sortTiles(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized tryInitCategories(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 115
    :try_start_0
    invoke-direct {p0, p1, v0, p2}, Lcom/android/settingslib/drawer/CategoryManager;->tryInitCategories(Landroid/content/Context;ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized tryInitCategories(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategories:Ljava/util/List;

    if-nez v0, :cond_2

    if-eqz p2, :cond_0

    .line 122
    iget-object p2, p0, Lcom/android/settingslib/drawer/CategoryManager;->mTileByComponentCache:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 124
    :cond_0
    iget-object p2, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategoryByKeyMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 125
    iget-object p2, p0, Lcom/android/settingslib/drawer/CategoryManager;->mTileByComponentCache:Ljava/util/Map;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settingslib/drawer/CategoryManager;->mExtraAction:Ljava/lang/String;

    invoke-static {p1, p2, v0, v1, p3}, Lcom/android/settingslib/drawer/TileUtils;->getCategories(Landroid/content/Context;Ljava/util/Map;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategories:Ljava/util/List;

    .line 127
    iget-object p2, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategories:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 128
    iget-object v0, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategoryByKeyMap:Ljava/util/Map;

    iget-object v1, p3, Lcom/android/settingslib/drawer/DashboardCategory;->key:Ljava/lang/String;

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 130
    :cond_1
    iget-object p2, p0, Lcom/android/settingslib/drawer/CategoryManager;->mTileByComponentCache:Ljava/util/Map;

    iget-object p3, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategoryByKeyMap:Ljava/util/Map;

    invoke-virtual {p0, p2, p3}, Lcom/android/settingslib/drawer/CategoryManager;->backwardCompatCleanupForCategory(Ljava/util/Map;Ljava/util/Map;)V

    .line 131
    iget-object p2, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategoryByKeyMap:Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/drawer/CategoryManager;->sortCategories(Landroid/content/Context;Ljava/util/Map;)V

    .line 132
    iget-object p1, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategoryByKeyMap:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawer/CategoryManager;->filterDuplicateTiles(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method declared-synchronized backwardCompatCleanupForCategory(Ljava/util/Map;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 145
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 146
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 147
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 148
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_0

    .line 150
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 151
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 156
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 157
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 161
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/drawer/Tile;

    .line 162
    sget-object v6, Lcom/android/settingslib/drawer/CategoryKey;->KEY_COMPAT_MAP:Ljava/util/Map;

    iget-object v5, v5, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v4, v2

    goto :goto_1

    :cond_3
    move v2, v3

    :cond_4
    if-eqz v4, :cond_2

    if-nez v2, :cond_2

    .line 171
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/drawer/Tile;

    .line 172
    sget-object v2, Lcom/android/settingslib/drawer/CategoryKey;->KEY_COMPAT_MAP:Ljava/util/Map;

    iget-object v3, v1, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 173
    iput-object v2, v1, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    .line 175
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/drawer/DashboardCategory;

    if-nez v3, :cond_5

    .line 177
    new-instance v3, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-direct {v3}, Lcom/android/settingslib/drawer/DashboardCategory;-><init>()V

    .line 178
    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_5
    invoke-virtual {v3, v1}, Lcom/android/settingslib/drawer/DashboardCategory;->addTile(Lcom/android/settingslib/drawer/Tile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 184
    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized filterDuplicateTiles(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 207
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 208
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 209
    invoke-virtual {v0}, Lcom/android/settingslib/drawer/DashboardCategory;->getTilesCount()I

    move-result v1

    .line 210
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 212
    invoke-virtual {v0, v1}, Lcom/android/settingslib/drawer/DashboardCategory;->getTile(I)Lcom/android/settingslib/drawer/Tile;

    move-result-object v3

    .line 213
    iget-object v4, v3, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    if-nez v4, :cond_1

    goto :goto_1

    .line 216
    :cond_1
    iget-object v3, v3, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 217
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 218
    invoke-virtual {v0, v1}, Lcom/android/settingslib/drawer/DashboardCategory;->removeTile(I)V

    goto :goto_1

    .line 220
    :cond_2
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 224
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCategories(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "com.android.settings"

    .line 82
    invoke-virtual {p0, p1, v0}, Lcom/android/settingslib/drawer/CategoryManager;->getCategories(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCategories(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 86
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/drawer/CategoryManager;->tryInitCategories(Landroid/content/Context;Ljava/lang/String;)V

    .line 87
    iget-object p1, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategories:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getTilesByCategory(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "com.android.settings"

    .line 71
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/settingslib/drawer/CategoryManager;->getTilesByCategory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getTilesByCategory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;
    .locals 0

    monitor-enter p0

    .line 76
    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/android/settingslib/drawer/CategoryManager;->tryInitCategories(Landroid/content/Context;Ljava/lang/String;)V

    .line 78
    iget-object p1, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategoryByKeyMap:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/drawer/DashboardCategory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reloadAllCategories(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/drawer/CategoryManager;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    const/4 v1, 0x0

    .line 93
    iput-object v1, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategories:Ljava/util/List;

    .line 94
    invoke-direct {p0, p1, v0, p2}, Lcom/android/settingslib/drawer/CategoryManager;->tryInitCategories(Landroid/content/Context;ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized sortCategories(Landroid/content/Context;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 196
    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 197
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/drawer/DashboardCategory;->sortTiles(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 199
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateCategoryFromBlacklist(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategories:Ljava/util/List;

    if-nez v0, :cond_0

    const-string v0, "CategoryManager"

    const-string v1, "Category is null, skipping blacklist update"

    .line 99
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 101
    :goto_0
    iget-object v2, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategories:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 102
    iget-object v2, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategories:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/DashboardCategory;

    move v3, v0

    .line 103
    :goto_1
    invoke-virtual {v2}, Lcom/android/settingslib/drawer/DashboardCategory;->getTilesCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 104
    invoke-virtual {v2, v3}, Lcom/android/settingslib/drawer/DashboardCategory;->getTile(I)Lcom/android/settingslib/drawer/Tile;

    move-result-object v4

    .line 105
    iget-object v4, v4, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v4, v3, -0x1

    .line 106
    invoke-virtual {v2, v3}, Lcom/android/settingslib/drawer/DashboardCategory;->removeTile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
