.class final Landroid/support/v4/media/MediaPlayer2Impl$14;
.super Landroid/media/MediaDataSource;
.source "MediaPlayer2Impl.java"


# instance fields
.field mDataSource:Landroid/support/v4/media/Media2DataSource;

.field final synthetic val$dsd:Landroid/support/v4/media/DataSourceDesc;


# direct methods
.method constructor <init>(Landroid/support/v4/media/DataSourceDesc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$14;->val$dsd:Landroid/support/v4/media/DataSourceDesc;

    invoke-direct {p0}, Landroid/media/MediaDataSource;-><init>()V

    .line 2
    iget-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$14;->val$dsd:Landroid/support/v4/media/DataSourceDesc;

    invoke-virtual {p1}, Landroid/support/v4/media/DataSourceDesc;->getMedia2DataSource()Landroid/support/v4/media/Media2DataSource;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$14;->mDataSource:Landroid/support/v4/media/Media2DataSource;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$14;->mDataSource:Landroid/support/v4/media/Media2DataSource;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public getSize()J
    .locals 2

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$14;->mDataSource:Landroid/support/v4/media/Media2DataSource;

    invoke-virtual {p0}, Landroid/support/v4/media/Media2DataSource;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public readAt(J[BII)I
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$14;->mDataSource:Landroid/support/v4/media/Media2DataSource;

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/media/Media2DataSource;->readAt(J[BII)I

    move-result p0

    return p0
.end method
