.class public Landroid/support/v4/media/MediaBrowserServiceCompat$Result;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"


# instance fields
.field private final mDebug:Ljava/lang/Object;

.field private mDetachCalled:Z

.field private mFlags:I

.field private mSendErrorCalled:Z

.field private mSendProgressUpdateCalled:Z

.field private mSendResultCalled:Z


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mDebug:Ljava/lang/Object;

    return-void
.end method

.method private checkExtraFields(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p0, "android.media.browse.extra.DOWNLOAD_PROGRESS"

    .line 1
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p0

    const p1, -0x48d83a54    # -1.0E-5f

    cmpg-float p1, p0, p1

    if-ltz p1, :cond_1

    const p1, 0x3f800054    # 1.00001f

    cmpl-float p0, p0, p1

    if-gtz p0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The value of the EXTRA_DOWNLOAD_PROGRESS field must be a float number within [0.0, 1.0]."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public detach()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mDetachCalled:Z

    if-nez v0, :cond_2

    .line 2
    iget-boolean v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mSendResultCalled:Z

    if-nez v0, :cond_1

    .line 3
    iget-boolean v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mSendErrorCalled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mDetachCalled:Z

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detach() called when sendError() had already been called for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mDebug:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detach() called when sendResult() had already been called for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mDebug:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detach() called when detach() had already been called for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mDebug:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getFlags()I
    .locals 0

    .line 1
    iget p0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mFlags:I

    return p0
.end method

.method isDone()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mDetachCalled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mSendResultCalled:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mSendErrorCalled:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method onErrorSent(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "It is not supported to send an error for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mDebug:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method onProgressUpdateSent(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "It is not supported to send an interim update for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mDebug:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method onResultSent(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public sendError(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mSendResultCalled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mSendErrorCalled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mSendErrorCalled:Z

    .line 3
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->onErrorSent(Landroid/os/Bundle;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendError() called when either sendResult() or sendError() had already been called for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mDebug:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sendProgressUpdate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mSendResultCalled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mSendErrorCalled:Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->checkExtraFields(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mSendProgressUpdateCalled:Z

    .line 4
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->onProgressUpdateSent(Landroid/os/Bundle;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendProgressUpdate() called when either sendResult() or sendError() had already been called for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mDebug:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sendResult(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mSendResultCalled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mSendErrorCalled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mSendResultCalled:Z

    .line 3
    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->onResultSent(Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendResult() called when either sendResult() or sendError() had already been called for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mDebug:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setFlags(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;->mFlags:I

    return-void
.end method
