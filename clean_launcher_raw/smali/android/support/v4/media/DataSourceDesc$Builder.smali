.class public Landroid/support/v4/media/DataSourceDesc$Builder;
.super Ljava/lang/Object;
.source "DataSourceDesc.java"


# instance fields
.field private mEndPositionMs:J

.field private mFD:Ljava/io/FileDescriptor;

.field private mFDLength:J

.field private mFDOffset:J

.field private mMedia2DataSource:Landroid/support/v4/media/Media2DataSource;

.field private mMediaId:Ljava/lang/String;

.field private mStartPositionMs:J

.field private mType:I

.field private mUri:Landroid/net/Uri;

.field private mUriContext:Landroid/content/Context;

.field private mUriCookies:Ljava/util/List;

.field private mUriHeader:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mType:I

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mFDOffset:J

    const-wide v2, 0x7ffffffffffffffL

    .line 4
    iput-wide v2, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mFDLength:J

    .line 5
    iput-wide v0, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mStartPositionMs:J

    .line 6
    iput-wide v2, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mEndPositionMs:J

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/media/DataSourceDesc;)V
    .locals 4

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mType:I

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mFDOffset:J

    const-wide v2, 0x7ffffffffffffffL

    .line 10
    iput-wide v2, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mFDLength:J

    .line 11
    iput-wide v0, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mStartPositionMs:J

    .line 12
    iput-wide v2, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mEndPositionMs:J

    .line 13
    invoke-static {p1}, Landroid/support/v4/media/DataSourceDesc;->access$000(Landroid/support/v4/media/DataSourceDesc;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mType:I

    .line 14
    invoke-static {p1}, Landroid/support/v4/media/DataSourceDesc;->access$100(Landroid/support/v4/media/DataSourceDesc;)Landroid/support/v4/media/Media2DataSource;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mMedia2DataSource:Landroid/support/v4/media/Media2DataSource;

    .line 15
    invoke-static {p1}, Landroid/support/v4/media/DataSourceDesc;->access$200(Landroid/support/v4/media/DataSourceDesc;)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mFD:Ljava/io/FileDescriptor;

    .line 16
    invoke-static {p1}, Landroid/support/v4/media/DataSourceDesc;->access$300(Landroid/support/v4/media/DataSourceDesc;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mFDOffset:J

    .line 17
    invoke-static {p1}, Landroid/support/v4/media/DataSourceDesc;->access$400(Landroid/support/v4/media/DataSourceDesc;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mFDLength:J

    .line 18
    invoke-static {p1}, Landroid/support/v4/media/DataSourceDesc;->access$500(Landroid/support/v4/media/DataSourceDesc;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mUri:Landroid/net/Uri;

    .line 19
    invoke-static {p1}, Landroid/support/v4/media/DataSourceDesc;->access$600(Landroid/support/v4/media/DataSourceDesc;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mUriHeader:Ljava/util/Map;

    .line 20
    invoke-static {p1}, Landroid/support/v4/media/DataSourceDesc;->access$700(Landroid/support/v4/media/DataSourceDesc;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mUriCookies:Ljava/util/List;

    .line 21
    invoke-static {p1}, Landroid/support/v4/media/DataSourceDesc;->access$800(Landroid/support/v4/media/DataSourceDesc;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mUriContext:Landroid/content/Context;

    .line 22
    invoke-static {p1}, Landroid/support/v4/media/DataSourceDesc;->access$900(Landroid/support/v4/media/DataSourceDesc;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mMediaId:Ljava/lang/String;

    .line 23
    invoke-static {p1}, Landroid/support/v4/media/DataSourceDesc;->access$1000(Landroid/support/v4/media/DataSourceDesc;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mStartPositionMs:J

    .line 24
    invoke-static {p1}, Landroid/support/v4/media/DataSourceDesc;->access$1100(Landroid/support/v4/media/DataSourceDesc;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mEndPositionMs:J

    return-void
.end method

.method private resetDataSource()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mType:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mMedia2DataSource:Landroid/support/v4/media/Media2DataSource;

    .line 3
    iput-object v0, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mFD:Ljava/io/FileDescriptor;

    const-wide/16 v1, 0x0

    .line 4
    iput-wide v1, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mFDOffset:J

    const-wide v1, 0x7ffffffffffffffL

    .line 5
    iput-wide v1, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mFDLength:J

    .line 6
    iput-object v0, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mUri:Landroid/net/Uri;

    .line 7
    iput-object v0, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mUriHeader:Ljava/util/Map;

    .line 8
    iput-object v0, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mUriCookies:Ljava/util/List;

    .line 9
    iput-object v0, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mUriContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public build()Landroid/support/v4/media/DataSourceDesc;
    .locals 4

    .line 1
    iget v0, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mType:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    :goto_0
    iget-wide v0, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mStartPositionMs:J

    iget-wide v2, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mEndPositionMs:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 4
    new-instance v0, Landroid/support/v4/media/DataSourceDesc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/media/DataSourceDesc;-><init>(Landroid/support/v4/media/DataSourceDesc$1;)V

    .line 5
    iget v1, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mType:I

    invoke-static {v0, v1}, Landroid/support/v4/media/DataSourceDesc;->access$002(Landroid/support/v4/media/DataSourceDesc;I)I

    .line 6
    iget-object v1, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mMedia2DataSource:Landroid/support/v4/media/Media2DataSource;

    invoke-static {v0, v1}, Landroid/support/v4/media/DataSourceDesc;->access$102(Landroid/support/v4/media/DataSourceDesc;Landroid/support/v4/media/Media2DataSource;)Landroid/support/v4/media/Media2DataSource;

    .line 7
    iget-object v1, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mFD:Ljava/io/FileDescriptor;

    invoke-static {v0, v1}, Landroid/support/v4/media/DataSourceDesc;->access$202(Landroid/support/v4/media/DataSourceDesc;Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    .line 8
    iget-wide v1, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mFDOffset:J

    invoke-static {v0, v1, v2}, Landroid/support/v4/media/DataSourceDesc;->access$302(Landroid/support/v4/media/DataSourceDesc;J)J

    .line 9
    iget-wide v1, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mFDLength:J

    invoke-static {v0, v1, v2}, Landroid/support/v4/media/DataSourceDesc;->access$402(Landroid/support/v4/media/DataSourceDesc;J)J

    .line 10
    iget-object v1, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/support/v4/media/DataSourceDesc;->access$502(Landroid/support/v4/media/DataSourceDesc;Landroid/net/Uri;)Landroid/net/Uri;

    .line 11
    iget-object v1, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mUriHeader:Ljava/util/Map;

    invoke-static {v0, v1}, Landroid/support/v4/media/DataSourceDesc;->access$602(Landroid/support/v4/media/DataSourceDesc;Ljava/util/Map;)Ljava/util/Map;

    .line 12
    iget-object v1, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mUriCookies:Ljava/util/List;

    invoke-static {v0, v1}, Landroid/support/v4/media/DataSourceDesc;->access$702(Landroid/support/v4/media/DataSourceDesc;Ljava/util/List;)Ljava/util/List;

    .line 13
    iget-object v1, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mUriContext:Landroid/content/Context;

    invoke-static {v0, v1}, Landroid/support/v4/media/DataSourceDesc;->access$802(Landroid/support/v4/media/DataSourceDesc;Landroid/content/Context;)Landroid/content/Context;

    .line 14
    iget-object v1, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mMediaId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/support/v4/media/DataSourceDesc;->access$902(Landroid/support/v4/media/DataSourceDesc;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    iget-wide v1, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mStartPositionMs:J

    invoke-static {v0, v1, v2}, Landroid/support/v4/media/DataSourceDesc;->access$1002(Landroid/support/v4/media/DataSourceDesc;J)J

    .line 16
    iget-wide v1, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mEndPositionMs:J

    invoke-static {v0, v1, v2}, Landroid/support/v4/media/DataSourceDesc;->access$1102(Landroid/support/v4/media/DataSourceDesc;J)J

    return-object v0

    .line 17
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal start/end position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mStartPositionMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mEndPositionMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)Landroid/support/v4/media/DataSourceDesc$Builder;
    .locals 1

    const-string v0, "context cannot be null"

    .line 15
    invoke-static {p1, v0}, Landroid/support/v4/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "uri cannot be null"

    .line 16
    invoke-static {p2, v0}, Landroid/support/v4/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-direct {p0}, Landroid/support/v4/media/DataSourceDesc$Builder;->resetDataSource()V

    const/4 v0, 0x3

    .line 18
    iput v0, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mType:I

    .line 19
    iput-object p2, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mUri:Landroid/net/Uri;

    .line 20
    iput-object p1, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mUriContext:Landroid/content/Context;

    return-object p0
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Ljava/util/List;)Landroid/support/v4/media/DataSourceDesc$Builder;
    .locals 1

    const-string v0, "context cannot be null"

    .line 21
    invoke-static {p1, v0}, Landroid/support/v4/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-static {p2}, Landroid/support/v4/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_1

    .line 23
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 24
    instance-of v0, v0, Ljava/net/CookieManager;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The cookie handler has to be of CookieManager type when cookies are provided."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 26
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/support/v4/media/DataSourceDesc$Builder;->resetDataSource()V

    const/4 v0, 0x3

    .line 27
    iput v0, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mType:I

    .line 28
    iput-object p2, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mUri:Landroid/net/Uri;

    if-eqz p3, :cond_2

    .line 29
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p2, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mUriHeader:Ljava/util/Map;

    :cond_2
    if-eqz p4, :cond_3

    .line 30
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mUriCookies:Ljava/util/List;

    .line 31
    :cond_3
    iput-object p1, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mUriContext:Landroid/content/Context;

    return-object p0
.end method

.method public setDataSource(Landroid/support/v4/media/Media2DataSource;)Landroid/support/v4/media/DataSourceDesc$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/support/v4/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Landroid/support/v4/media/DataSourceDesc$Builder;->resetDataSource()V

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mType:I

    .line 4
    iput-object p1, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mMedia2DataSource:Landroid/support/v4/media/Media2DataSource;

    return-object p0
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)Landroid/support/v4/media/DataSourceDesc$Builder;
    .locals 1

    .line 5
    invoke-static {p1}, Landroid/support/v4/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-direct {p0}, Landroid/support/v4/media/DataSourceDesc$Builder;->resetDataSource()V

    const/4 v0, 0x2

    .line 7
    iput v0, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mType:I

    .line 8
    iput-object p1, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mFD:Ljava/io/FileDescriptor;

    return-object p0
.end method

.method public setDataSource(Ljava/io/FileDescriptor;JJ)Landroid/support/v4/media/DataSourceDesc$Builder;
    .locals 3

    .line 9
    invoke-static {p1}, Landroid/support/v4/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    move-wide p2, v0

    :cond_0
    cmp-long v0, p4, v0

    if-gez v0, :cond_1

    const-wide p4, 0x7ffffffffffffffL

    .line 10
    :cond_1
    invoke-direct {p0}, Landroid/support/v4/media/DataSourceDesc$Builder;->resetDataSource()V

    const/4 v0, 0x2

    .line 11
    iput v0, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mType:I

    .line 12
    iput-object p1, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mFD:Ljava/io/FileDescriptor;

    .line 13
    iput-wide p2, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mFDOffset:J

    .line 14
    iput-wide p4, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mFDLength:J

    return-object p0
.end method

.method public setEndPosition(J)Landroid/support/v4/media/DataSourceDesc$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide p1, 0x7ffffffffffffffL

    .line 1
    :cond_0
    iput-wide p1, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mEndPositionMs:J

    return-object p0
.end method

.method public setMediaId(Ljava/lang/String;)Landroid/support/v4/media/DataSourceDesc$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mMediaId:Ljava/lang/String;

    return-object p0
.end method

.method public setStartPosition(J)Landroid/support/v4/media/DataSourceDesc$Builder;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 1
    :cond_0
    iput-wide p1, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mStartPositionMs:J

    return-object p0
.end method
