.class Landroid/support/v4/media/MediaSessionLegacyStub$5;
.super Ljava/lang/Object;
.source "MediaSessionLegacyStub.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaSessionLegacyStub;

.field final synthetic val$pos:J


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaSessionLegacyStub;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaSessionLegacyStub$5;->this$0:Landroid/support/v4/media/MediaSessionLegacyStub;

    iput-wide p2, p0, Landroid/support/v4/media/MediaSessionLegacyStub$5;->val$pos:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaSessionLegacyStub$5;->this$0:Landroid/support/v4/media/MediaSessionLegacyStub;

    iget-object v0, v0, Landroid/support/v4/media/MediaSessionLegacyStub;->mSession:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {v0}, Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaSessionLegacyStub$5;->this$0:Landroid/support/v4/media/MediaSessionLegacyStub;

    iget-object v0, v0, Landroid/support/v4/media/MediaSessionLegacyStub;->mSession:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    iget-wide v1, p0, Landroid/support/v4/media/MediaSessionLegacyStub$5;->val$pos:J

    invoke-interface {v0, v1, v2}, Landroid/support/v4/media/MediaInterface2$SessionPlaybackControl;->seekTo(J)V

    return-void
.end method
