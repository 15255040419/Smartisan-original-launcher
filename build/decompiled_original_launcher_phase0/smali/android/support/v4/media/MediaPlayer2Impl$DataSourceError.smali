.class Landroid/support/v4/media/MediaPlayer2Impl$DataSourceError;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"


# instance fields
.field final mDSD:Landroid/support/v4/media/DataSourceDesc;

.field final mExtra:I

.field final mWhat:I


# direct methods
.method constructor <init>(Landroid/support/v4/media/DataSourceDesc;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$DataSourceError;->mDSD:Landroid/support/v4/media/DataSourceDesc;

    .line 3
    iput p2, p0, Landroid/support/v4/media/MediaPlayer2Impl$DataSourceError;->mWhat:I

    .line 4
    iput p3, p0, Landroid/support/v4/media/MediaPlayer2Impl$DataSourceError;->mExtra:I

    return-void
.end method
