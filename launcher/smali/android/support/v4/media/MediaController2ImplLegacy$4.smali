.class Landroid/support/v4/media/MediaController2ImplLegacy$4;
.super Ljava/lang/Object;
.source "MediaController2ImplLegacy.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaController2ImplLegacy;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaController2ImplLegacy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaController2ImplLegacy$4;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy$4;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    iget-object v0, v0, Landroid/support/v4/media/MediaController2ImplLegacy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/MediaController2ImplLegacy$4;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    new-instance v2, Landroid/support/v4/media/MediaBrowserCompat;

    iget-object v3, p0, Landroid/support/v4/media/MediaController2ImplLegacy$4;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-static {v3}, Landroid/support/v4/media/MediaController2ImplLegacy;->access$600(Landroid/support/v4/media/MediaController2ImplLegacy;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v4/media/MediaController2ImplLegacy$4;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-static {v4}, Landroid/support/v4/media/MediaController2ImplLegacy;->access$700(Landroid/support/v4/media/MediaController2ImplLegacy;)Landroid/support/v4/media/SessionToken2;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/media/SessionToken2;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    new-instance v5, Landroid/support/v4/media/MediaController2ImplLegacy$ConnectionCallback;

    iget-object v6, p0, Landroid/support/v4/media/MediaController2ImplLegacy$4;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/support/v4/media/MediaController2ImplLegacy$ConnectionCallback;-><init>(Landroid/support/v4/media/MediaController2ImplLegacy;Landroid/support/v4/media/MediaController2ImplLegacy$1;)V

    sget-object v6, Landroid/support/v4/media/MediaController2ImplLegacy;->sDefaultRootExtras:Landroid/os/Bundle;

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/support/v4/media/MediaBrowserCompat;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;Landroid/os/Bundle;)V

    invoke-static {v1, v2}, Landroid/support/v4/media/MediaController2ImplLegacy;->access$502(Landroid/support/v4/media/MediaController2ImplLegacy;Landroid/support/v4/media/MediaBrowserCompat;)Landroid/support/v4/media/MediaBrowserCompat;

    .line 3
    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy$4;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-static {p0}, Landroid/support/v4/media/MediaController2ImplLegacy;->access$500(Landroid/support/v4/media/MediaController2ImplLegacy;)Landroid/support/v4/media/MediaBrowserCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat;->connect()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
