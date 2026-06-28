.class Lcom/android/settingslib/applications/ApplicationsState$MainHandler;
.super Landroid/os/Handler;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainHandler"
.end annotation


# static fields
.field static final MSG_ALL_SIZES_COMPUTED:I = 0x5

.field static final MSG_LAUNCHER_INFO_CHANGED:I = 0x7

.field static final MSG_LOAD_ENTRIES_COMPLETE:I = 0x8

.field static final MSG_PACKAGE_ICON_CHANGED:I = 0x3

.field static final MSG_PACKAGE_LIST_CHANGED:I = 0x2

.field static final MSG_PACKAGE_SIZE_CHANGED:I = 0x4

.field static final MSG_REBUILD_COMPLETE:I = 0x1

.field static final MSG_RUNNING_STATE_CHANGED:I = 0x6


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/applications/ApplicationsState;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/applications/ApplicationsState;Landroid/os/Looper;)V
    .locals 0

    .line 825
    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 826
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 831
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState;->rebuildActiveSessions()V

    .line 832
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_9

    .line 893
    :pswitch_0
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 894
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/applications/ApplicationsState$Session;

    if-eqz p1, :cond_0

    .line 896
    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

    invoke-interface {p1}, Lcom/android/settingslib/applications/ApplicationsState$Callbacks;->onLoadEntriesCompleted()V

    goto :goto_0

    .line 885
    :pswitch_1
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 886
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/applications/ApplicationsState$Session;

    if-eqz p1, :cond_1

    .line 888
    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

    invoke-interface {p1}, Lcom/android/settingslib/applications/ApplicationsState$Callbacks;->onLauncherInfoChanged()V

    goto :goto_1

    .line 876
    :pswitch_2
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 877
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/applications/ApplicationsState$Session;

    if-eqz v0, :cond_2

    .line 879
    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-interface {v0, v1}, Lcom/android/settingslib/applications/ApplicationsState$Callbacks;->onRunningStateChanged(Z)V

    goto :goto_2

    .line 868
    :pswitch_3
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 869
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/applications/ApplicationsState$Session;

    if-eqz p1, :cond_4

    .line 871
    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

    invoke-interface {p1}, Lcom/android/settingslib/applications/ApplicationsState$Callbacks;->onAllSizesComputed()V

    goto :goto_4

    .line 859
    :pswitch_4
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 860
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/applications/ApplicationsState$Session;

    if-eqz v0, :cond_5

    .line 862
    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/settingslib/applications/ApplicationsState$Callbacks;->onPackageSizeChanged(Ljava/lang/String;)V

    goto :goto_5

    .line 851
    :pswitch_5
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 852
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/applications/ApplicationsState$Session;

    if-eqz p1, :cond_6

    .line 854
    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

    invoke-interface {p1}, Lcom/android/settingslib/applications/ApplicationsState$Callbacks;->onPackageIconChanged()V

    goto :goto_6

    .line 843
    :pswitch_6
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 844
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/applications/ApplicationsState$Session;

    if-eqz p1, :cond_7

    .line 846
    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

    invoke-interface {p1}, Lcom/android/settingslib/applications/ApplicationsState$Callbacks;->onPackageListChanged()V

    goto :goto_7

    .line 834
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 835
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 836
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/applications/ApplicationsState$Session;

    if-eqz v0, :cond_8

    if-ne v0, p1, :cond_8

    .line 838
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$Session;->mLastAppList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/settingslib/applications/ApplicationsState$Callbacks;->onRebuildComplete(Ljava/util/ArrayList;)V

    goto :goto_8

    :cond_9
    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
