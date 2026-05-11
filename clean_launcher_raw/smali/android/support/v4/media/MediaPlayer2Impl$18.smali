.class Landroid/support/v4/media/MediaPlayer2Impl$18;
.super Landroid/support/v4/media/MediaPlayer2Impl$Task;
.source "MediaPlayer2Impl.java"


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaPlayer2Impl;

.field final synthetic val$effectId:I


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaPlayer2Impl;IZI)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$18;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    iput p4, p0, Landroid/support/v4/media/MediaPlayer2Impl$18;->val$effectId:I

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/media/MediaPlayer2Impl$Task;-><init>(Landroid/support/v4/media/MediaPlayer2Impl;IZ)V

    return-void
.end method


# virtual methods
.method process()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$18;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-static {v0}, Landroid/support/v4/media/MediaPlayer2Impl;->access$100(Landroid/support/v4/media/MediaPlayer2Impl;)Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;

    move-result-object v0

    iget p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$18;->val$effectId:I

    invoke-virtual {v0, p0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->attachAuxEffect(I)V

    return-void
.end method
