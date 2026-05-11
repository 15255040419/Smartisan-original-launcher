.class Landroid/support/v4/media/MediaSessionLegacyStub$3;
.super Ljava/lang/Object;
.source "MediaSessionLegacyStub.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaSessionLegacyStub;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaSessionLegacyStub;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaSessionLegacyStub$3;->this$0:Landroid/support/v4/media/MediaSessionLegacyStub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSessionLegacyStub$3;->this$0:Landroid/support/v4/media/MediaSessionLegacyStub;

    iget-object v0, v0, Landroid/support/v4/media/MediaSessionLegacyStub;->mSession:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {v0}, Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p0, p0, Landroid/support/v4/media/MediaSessionLegacyStub$3;->this$0:Landroid/support/v4/media/MediaSessionLegacyStub;

    iget-object p0, p0, Landroid/support/v4/media/MediaSessionLegacyStub;->mSession:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p0}, Landroid/support/v4/media/MediaInterface2$SessionPlaybackControl;->pause()V

    return-void
.end method
