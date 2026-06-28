.class Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord$1;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord$1;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord$1;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mConnections:Landroid/support/v4/util/ArrayMap;

    iget-object p0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->callbacks:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;

    invoke-interface {p0}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
