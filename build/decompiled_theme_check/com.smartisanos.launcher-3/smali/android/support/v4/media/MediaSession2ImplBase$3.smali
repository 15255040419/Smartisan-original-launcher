.class Landroid/support/v4/media/MediaSession2ImplBase$3;
.super Ljava/lang/Object;
.source "MediaSession2ImplBase.java"

# interfaces
.implements Landroid/support/v4/media/MediaSession2ImplBase$NotifyRunnable;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaSession2ImplBase;

.field final synthetic val$layout:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaSession2ImplBase;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaSession2ImplBase$3;->this$0:Landroid/support/v4/media/MediaSession2ImplBase;

    iput-object p2, p0, Landroid/support/v4/media/MediaSession2ImplBase$3;->val$layout:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/support/v4/media/MediaSession2$ControllerCb;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2ImplBase$3;->val$layout:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/support/v4/media/MediaSession2$ControllerCb;->onCustomLayoutChanged(Ljava/util/List;)V

    return-void
.end method
