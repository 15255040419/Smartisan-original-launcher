.class Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;
.super Landroid/os/Handler;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundHandler"
.end annotation


# static fields
.field static final MSG_LOAD_ENTRIES:I = 0x2

.field static final MSG_LOAD_HOME_APP:I = 0x3

.field static final MSG_LOAD_ICONS:I = 0x6

.field static final MSG_LOAD_LAUNCHER:I = 0x4

.field static final MSG_LOAD_LEANBACK_LAUNCHER:I = 0x5

.field static final MSG_LOAD_SIZES:I = 0x7

.field static final MSG_REBUILD_LIST:I = 0x1


# instance fields
.field mRunning:Z

.field final mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

.field final synthetic this$0:Lcom/android/settingslib/applications/ApplicationsState;


# direct methods
.method constructor <init>(Lcom/android/settingslib/applications/ApplicationsState;Landroid/os/Looper;)V
    .locals 0

    .line 915
    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 916
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1186
    new-instance p1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;

    invoke-direct {p1, p0}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;-><init>(Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;)V

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    return-void
.end method

.method private getCombinedSessionFlags(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/applications/ApplicationsState$Session;",
            ">;)I"
        }
    .end annotation

    .line 1177
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter p0

    const/4 v0, 0x0

    .line 1179
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 1180
    invoke-static {v1}, Lcom/android/settingslib/applications/ApplicationsState$Session;->access$300(Lcom/android/settingslib/applications/ApplicationsState$Session;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 1182
    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    .line 1183
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 923
    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    monitor-enter v2

    .line 924
    :try_start_0
    iget-object v3, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_0

    .line 925
    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 926
    iget-object v5, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_0
    move-object v3, v4

    .line 928
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    const/4 v2, 0x0

    if-eqz v3, :cond_1

    move v5, v2

    .line 930
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 931
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v6}, Lcom/android/settingslib/applications/ApplicationsState$Session;->handleRebuildList()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 935
    :cond_1
    iget-object v3, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->getCombinedSessionFlags(Ljava/util/List;)I

    move-result v3

    .line 937
    iget v5, v1, Landroid/os/Message;->what:I

    const/high16 v6, 0x800000

    const/4 v7, 0x3

    const/4 v8, 0x7

    const/16 v9, 0x8

    const/4 v10, 0x5

    const/4 v11, 0x2

    const/4 v12, 0x4

    const/4 v13, 0x6

    const/4 v14, 0x1

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_e

    .line 1100
    :pswitch_0
    invoke-static {v3, v12}, Lcom/android/settingslib/applications/ApplicationsState;->access$200(II)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1101
    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1103
    :try_start_1
    iget-object v3, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 1106
    monitor-exit v1

    return-void

    .line 1109
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    move v5, v2

    .line 1110
    :goto_2
    iget-object v7, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_8

    .line 1111
    iget-object v7, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 1112
    iget-object v8, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v8, v6}, Lcom/android/settingslib/applications/ApplicationsState;->access$200(II)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-wide v8, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v11, -0x1

    cmp-long v8, v8, v11

    if-eqz v8, :cond_3

    iget-boolean v8, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeStale:Z

    if-eqz v8, :cond_7

    .line 1114
    :cond_3
    iget-wide v5, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    const-wide/16 v8, 0x0

    cmp-long v2, v5, v8

    if-eqz v2, :cond_4

    iget-wide v5, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    const-wide/16 v8, 0x4e20

    sub-long v8, v3, v8

    cmp-long v2, v5, v8

    if-gez v2, :cond_6

    .line 1116
    :cond_4
    iget-boolean v2, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    if-nez v2, :cond_5

    .line 1117
    iput-boolean v14, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 1118
    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 1119
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1118
    invoke-virtual {v2, v13, v5}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1120
    iget-object v5, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v5, v2}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1122
    :cond_5
    iput-wide v3, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    .line 1123
    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    iput-object v3, v2, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizeUuid:Ljava/util/UUID;

    .line 1124
    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    .line 1125
    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    iput v3, v2, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizeUserId:I

    .line 1128
    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    new-instance v3, Lcom/android/settingslib/applications/-$$Lambda$ApplicationsState$BackgroundHandler$7jhXQzAcRoT6ACDzmPBTQMi7Ldc;

    invoke-direct {v3, v0}, Lcom/android/settingslib/applications/-$$Lambda$ApplicationsState$BackgroundHandler$7jhXQzAcRoT6ACDzmPBTQMi7Ldc;-><init>(Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;)V

    invoke-virtual {v2, v3}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->post(Ljava/lang/Runnable;)Z

    .line 1159
    :cond_6
    monitor-exit v1

    return-void

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 1162
    :cond_8
    iget-object v3, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v3, v10}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1163
    iget-object v3, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v3, v10}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 1164
    iput-boolean v2, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 1165
    iget-object v3, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 1166
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1165
    invoke-virtual {v3, v13, v2}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1167
    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1170
    :cond_9
    monitor-exit v1

    goto/16 :goto_e

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1065
    :pswitch_1
    invoke-static {v3, v11}, Lcom/android/settingslib/applications/ApplicationsState;->access$200(II)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1067
    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v1

    move v3, v2

    .line 1069
    :goto_3
    :try_start_2
    iget-object v4, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_e

    if-ge v3, v11, :cond_e

    .line 1070
    iget-object v4, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 1071
    iget-object v5, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_a

    iget-boolean v5, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->mounted:Z

    if-nez v5, :cond_d

    .line 1072
    :cond_a
    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1073
    :try_start_3
    iget-object v5, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState;->mDrawableFactory:Landroid/util/IconDrawableFactory;

    invoke-virtual {v4, v5, v6}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->ensureIconLocked(Landroid/content/Context;Landroid/util/IconDrawableFactory;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1074
    iget-boolean v5, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    if-nez v5, :cond_b

    .line 1075
    iput-boolean v14, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 1076
    iget-object v5, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 1077
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1076
    invoke-virtual {v5, v13, v6}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1078
    iget-object v6, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v6, v5}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_b
    add-int/lit8 v3, v3, 0x1

    .line 1082
    :cond_c
    monitor-exit v4

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    .line 1086
    :cond_e
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-lez v3, :cond_f

    .line 1088
    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v1, v7}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_f

    .line 1089
    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v1, v7}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    :cond_f
    if-lt v3, v11, :cond_10

    .line 1093
    invoke-virtual {v0, v13}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_e

    :catchall_2
    move-exception v0

    .line 1086
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 1097
    :cond_10
    invoke-virtual {v0, v8}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_e

    .line 1010
    :pswitch_2
    iget v5, v1, Landroid/os/Message;->what:I

    if-ne v5, v12, :cond_11

    .line 1011
    invoke-static {v3, v9}, Lcom/android/settingslib/applications/ApplicationsState;->access$200(II)Z

    move-result v5

    if-nez v5, :cond_12

    :cond_11
    iget v5, v1, Landroid/os/Message;->what:I

    if-ne v5, v10, :cond_17

    const/16 v5, 0x10

    .line 1013
    invoke-static {v3, v5}, Lcom/android/settingslib/applications/ApplicationsState;->access$200(II)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1015
    :cond_12
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v3, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1016
    iget v4, v1, Landroid/os/Message;->what:I

    if-ne v4, v12, :cond_13

    const-string v4, "android.intent.category.LAUNCHER"

    goto :goto_4

    :cond_13
    const-string v4, "android.intent.category.LEANBACK_LAUNCHER"

    :goto_4
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move v4, v2

    .line 1018
    :goto_5
    iget-object v5, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_16

    .line 1019
    iget-object v5, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 1026
    iget-object v6, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    const v7, 0xc0200

    invoke-virtual {v6, v3, v7, v5}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v6

    .line 1033
    iget-object v7, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v7

    .line 1035
    :try_start_6
    iget-object v9, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v9, v9, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    .line 1036
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    move v15, v2

    :goto_6
    if-ge v15, v11, :cond_15

    .line 1038
    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 1039
    iget-object v13, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1040
    invoke-virtual {v9, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v10, v17

    check-cast v10, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v10, :cond_14

    .line 1042
    iput-boolean v14, v10, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->hasLauncherEntry:Z

    .line 1043
    iget-boolean v13, v10, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->launcherEntryEnabled:Z

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v2, v2, Landroid/content/pm/ActivityInfo;->enabled:Z

    or-int/2addr v2, v13

    iput-boolean v2, v10, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->launcherEntryEnabled:Z

    goto :goto_7

    :cond_14
    const-string v2, "ApplicationsState"

    .line 1046
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot find pkg: "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " on user "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    add-int/lit8 v15, v15, 0x1

    const/4 v2, 0x0

    const/4 v10, 0x5

    const/4 v13, 0x6

    const/4 v14, 0x1

    goto :goto_6

    .line 1051
    :cond_15
    monitor-exit v7

    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x0

    const/4 v10, 0x5

    const/4 v13, 0x6

    const/4 v14, 0x1

    goto/16 :goto_5

    :catchall_3
    move-exception v0

    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    .line 1054
    :cond_16
    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v2, v8}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_17

    .line 1055
    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v2, v8}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 1058
    :cond_17
    iget v1, v1, Landroid/os/Message;->what:I

    if-ne v1, v12, :cond_18

    const/4 v1, 0x5

    .line 1059
    invoke-virtual {v0, v1}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_e

    :cond_18
    const/4 v1, 0x6

    .line 1061
    invoke-virtual {v0, v1}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_e

    :pswitch_3
    move v1, v14

    .line 986
    invoke-static {v3, v1}, Lcom/android/settingslib/applications/ApplicationsState;->access$200(II)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 987
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 988
    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 989
    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v2

    .line 990
    :try_start_7
    iget-object v3, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v3, :cond_1b

    .line 993
    iget-object v5, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 995
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_19
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 996
    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 997
    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v7, :cond_19

    const/4 v8, 0x1

    .line 999
    iput-boolean v8, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->isHomeApp:Z

    goto :goto_9

    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 1004
    :cond_1b
    monitor-exit v2

    goto :goto_a

    :catchall_4
    move-exception v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v0

    .line 1006
    :cond_1c
    :goto_a
    invoke-virtual {v0, v12}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_e

    .line 942
    :pswitch_4
    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 944
    :goto_b
    :try_start_8
    iget-object v4, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_21

    const/4 v4, 0x6

    if-ge v3, v4, :cond_21

    .line 945
    iget-boolean v4, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    if-nez v4, :cond_1d

    const/4 v4, 0x1

    .line 946
    iput-boolean v4, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 947
    iget-object v5, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 948
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v10, 0x6

    .line 947
    invoke-virtual {v5, v10, v8}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 949
    iget-object v8, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v8, v5}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_c

    :cond_1d
    const/4 v4, 0x1

    .line 951
    :goto_c
    iget-object v5, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 952
    iget v8, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 953
    iget-object v10, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v10, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    iget-object v12, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_1e

    add-int/lit8 v3, v3, 0x1

    .line 955
    iget-object v10, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-static {v10, v5}, Lcom/android/settingslib/applications/ApplicationsState;->access$100(Lcom/android/settingslib/applications/ApplicationsState;Landroid/content/pm/ApplicationInfo;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    :cond_1e
    if-eqz v8, :cond_20

    .line 957
    iget-object v8, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v8

    if-ltz v8, :cond_1f

    .line 965
    iget-object v8, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    iget-object v10, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v8, :cond_20

    .line 966
    iget-object v10, v8, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v10, v6}, Lcom/android/settingslib/applications/ApplicationsState;->access$200(II)Z

    move-result v10

    if-nez v10, :cond_20

    .line 968
    iget-object v10, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    iget-object v5, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_1f
    move v12, v10

    goto :goto_d

    :cond_20
    const/4 v12, 0x0

    :goto_d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_b

    .line 974
    :cond_21
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    const/4 v1, 0x6

    if-lt v3, v1, :cond_22

    .line 977
    invoke-virtual {v0, v11}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto :goto_e

    .line 979
    :cond_22
    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v1, v9}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_23

    .line 980
    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v1, v9}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 982
    :cond_23
    invoke-virtual {v0, v7}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto :goto_e

    :catchall_5
    move-exception v0

    .line 974
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw v0

    :cond_24
    :goto_e
    :pswitch_5
    return-void

    :catchall_6
    move-exception v0

    .line 928
    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic lambda$handleMessage$0$ApplicationsState$BackgroundHandler()V
    .locals 4

    .line 1130
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mStats:Landroid/app/usage/StorageStatsManager;

    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizeUuid:Ljava/util/UUID;

    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget v3, v3, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizeUserId:I

    .line 1134
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 1131
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/usage/StorageStatsManager;->queryStatsForPackage(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    move-result-object v0

    .line 1136
    new-instance v1, Landroid/content/pm/PackageStats;

    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget v3, v3, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizeUserId:I

    invoke-direct {v1, v2, v3}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;I)V

    .line 1139
    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getCodeBytes()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/content/pm/PackageStats;->codeSize:J

    .line 1140
    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/content/pm/PackageStats;->dataSize:J

    .line 1141
    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/content/pm/PackageStats;->cacheSize:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1143
    :try_start_1
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageStatsObserver$Stub;->onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to query stats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApplicationsState"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    :try_start_2
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPackageStatsObserver$Stub;->onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :goto_0
    return-void
.end method
