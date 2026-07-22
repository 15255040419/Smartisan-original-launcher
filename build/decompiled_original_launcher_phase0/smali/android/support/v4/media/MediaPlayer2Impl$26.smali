.class Landroid/support/v4/media/MediaPlayer2Impl$26;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaPlayer2Impl;

.field final synthetic val$notifier:Landroid/support/v4/media/MediaPlayer2Impl$DrmEventNotifier;

.field final synthetic val$record:Landroid/util/Pair;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaPlayer2Impl;Landroid/support/v4/media/MediaPlayer2Impl$DrmEventNotifier;Landroid/util/Pair;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$26;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    iput-object p2, p0, Landroid/support/v4/media/MediaPlayer2Impl$26;->val$notifier:Landroid/support/v4/media/MediaPlayer2Impl$DrmEventNotifier;

    iput-object p3, p0, Landroid/support/v4/media/MediaPlayer2Impl$26;->val$record:Landroid/util/Pair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$26;->val$notifier:Landroid/support/v4/media/MediaPlayer2Impl$DrmEventNotifier;

    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$26;->val$record:Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/support/v4/media/MediaPlayer2$DrmEventCallback;

    invoke-interface {v0, p0}, Landroid/support/v4/media/MediaPlayer2Impl$DrmEventNotifier;->notify(Landroid/support/v4/media/MediaPlayer2$DrmEventCallback;)V

    return-void
.end method
