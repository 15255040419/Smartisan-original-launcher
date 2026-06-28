.class Landroid/support/v4/media/MediaSessionLegacyStub$8;
.super Ljava/lang/Object;
.source "MediaSessionLegacyStub.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaSessionLegacyStub;

.field final synthetic val$controllerInfo:Landroid/support/v4/media/MediaSession2$ControllerInfo;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaSessionLegacyStub;Landroid/support/v4/media/MediaSession2$ControllerInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaSessionLegacyStub$8;->this$0:Landroid/support/v4/media/MediaSessionLegacyStub;

    iput-object p2, p0, Landroid/support/v4/media/MediaSessionLegacyStub$8;->val$controllerInfo:Landroid/support/v4/media/MediaSession2$ControllerInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSessionLegacyStub$8;->this$0:Landroid/support/v4/media/MediaSessionLegacyStub;

    iget-object v0, v0, Landroid/support/v4/media/MediaSessionLegacyStub;->mSession:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {v0}, Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaSessionLegacyStub$8;->this$0:Landroid/support/v4/media/MediaSessionLegacyStub;

    iget-object v0, v0, Landroid/support/v4/media/MediaSessionLegacyStub;->mSession:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {v0}, Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;->getCallback()Landroid/support/v4/media/MediaSession2$SessionCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/MediaSessionLegacyStub$8;->this$0:Landroid/support/v4/media/MediaSessionLegacyStub;

    iget-object v1, v1, Landroid/support/v4/media/MediaSessionLegacyStub;->mSession:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {v1}, Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;->getInstance()Landroid/support/v4/media/MediaSession2;

    move-result-object v1

    iget-object p0, p0, Landroid/support/v4/media/MediaSessionLegacyStub$8;->val$controllerInfo:Landroid/support/v4/media/MediaSession2$ControllerInfo;

    invoke-virtual {v0, v1, p0}, Landroid/support/v4/media/MediaSession2$SessionCallback;->onDisconnected(Landroid/support/v4/media/MediaSession2;Landroid/support/v4/media/MediaSession2$ControllerInfo;)V

    return-void
.end method
