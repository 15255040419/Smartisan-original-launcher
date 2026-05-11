.class Landroid/support/v4/media/MediaPlayer2Impl$1;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroid/support/v4/media/MediaPlayer2Impl$Mp2EventNotifier;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaPlayer2Impl;

.field final synthetic val$err:Landroid/support/v4/media/MediaPlayer2Impl$DataSourceError;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaPlayer2Impl;Landroid/support/v4/media/MediaPlayer2Impl$DataSourceError;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$1;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    iput-object p2, p0, Landroid/support/v4/media/MediaPlayer2Impl$1;->val$err:Landroid/support/v4/media/MediaPlayer2Impl$DataSourceError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify(Landroid/support/v4/media/MediaPlayer2$EventCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$1;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$1;->val$err:Landroid/support/v4/media/MediaPlayer2Impl$DataSourceError;

    iget-object v1, p0, Landroid/support/v4/media/MediaPlayer2Impl$DataSourceError;->mDSD:Landroid/support/v4/media/DataSourceDesc;

    iget v2, p0, Landroid/support/v4/media/MediaPlayer2Impl$DataSourceError;->mWhat:I

    iget p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$DataSourceError;->mExtra:I

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/support/v4/media/MediaPlayer2$EventCallback;->onError(Landroid/support/v4/media/MediaPlayer2;Landroid/support/v4/media/DataSourceDesc;II)V

    return-void
.end method
