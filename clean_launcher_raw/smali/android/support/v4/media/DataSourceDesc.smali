.class public final Landroid/support/v4/media/DataSourceDesc;
.super Ljava/lang/Object;
.source "DataSourceDesc.java"


# static fields
.field public static final FD_LENGTH_UNKNOWN:J = 0x7ffffffffffffffL

.field private static final LONG_MAX:J = 0x7ffffffffffffffL

.field public static final POSITION_UNKNOWN:J = 0x7ffffffffffffffL

.field public static final TYPE_CALLBACK:I = 0x1

.field public static final TYPE_FD:I = 0x2

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_URI:I = 0x3


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
.method private constructor <init>()V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroid/support/v4/media/DataSourceDesc;->mType:I

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Landroid/support/v4/media/DataSourceDesc;->mFDOffset:J

    const-wide v2, 0x7ffffffffffffffL

    .line 5
    iput-wide v2, p0, Landroid/support/v4/media/DataSourceDesc;->mFDLength:J

    .line 6
    iput-wide v0, p0, Landroid/support/v4/media/DataSourceDesc;->mStartPositionMs:J

    .line 7
    iput-wide v2, p0, Landroid/support/v4/media/DataSourceDesc;->mEndPositionMs:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/media/DataSourceDesc$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v4/media/DataSourceDesc;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/media/DataSourceDesc;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/support/v4/media/DataSourceDesc;->mType:I

    return p0
.end method

.method static synthetic access$002(Landroid/support/v4/media/DataSourceDesc;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/media/DataSourceDesc;->mType:I

    return p1
.end method

.method static synthetic access$100(Landroid/support/v4/media/DataSourceDesc;)Landroid/support/v4/media/Media2DataSource;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/DataSourceDesc;->mMedia2DataSource:Landroid/support/v4/media/Media2DataSource;

    return-object p0
.end method

.method static synthetic access$1000(Landroid/support/v4/media/DataSourceDesc;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/media/DataSourceDesc;->mStartPositionMs:J

    return-wide v0
.end method

.method static synthetic access$1002(Landroid/support/v4/media/DataSourceDesc;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/support/v4/media/DataSourceDesc;->mStartPositionMs:J

    return-wide p1
.end method

.method static synthetic access$102(Landroid/support/v4/media/DataSourceDesc;Landroid/support/v4/media/Media2DataSource;)Landroid/support/v4/media/Media2DataSource;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/DataSourceDesc;->mMedia2DataSource:Landroid/support/v4/media/Media2DataSource;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/support/v4/media/DataSourceDesc;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/media/DataSourceDesc;->mEndPositionMs:J

    return-wide v0
.end method

.method static synthetic access$1102(Landroid/support/v4/media/DataSourceDesc;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/support/v4/media/DataSourceDesc;->mEndPositionMs:J

    return-wide p1
.end method

.method static synthetic access$200(Landroid/support/v4/media/DataSourceDesc;)Ljava/io/FileDescriptor;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/DataSourceDesc;->mFD:Ljava/io/FileDescriptor;

    return-object p0
.end method

.method static synthetic access$202(Landroid/support/v4/media/DataSourceDesc;Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/DataSourceDesc;->mFD:Ljava/io/FileDescriptor;

    return-object p1
.end method

.method static synthetic access$300(Landroid/support/v4/media/DataSourceDesc;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/media/DataSourceDesc;->mFDOffset:J

    return-wide v0
.end method

.method static synthetic access$302(Landroid/support/v4/media/DataSourceDesc;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/support/v4/media/DataSourceDesc;->mFDOffset:J

    return-wide p1
.end method

.method static synthetic access$400(Landroid/support/v4/media/DataSourceDesc;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/media/DataSourceDesc;->mFDLength:J

    return-wide v0
.end method

.method static synthetic access$402(Landroid/support/v4/media/DataSourceDesc;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/support/v4/media/DataSourceDesc;->mFDLength:J

    return-wide p1
.end method

.method static synthetic access$500(Landroid/support/v4/media/DataSourceDesc;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/DataSourceDesc;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$502(Landroid/support/v4/media/DataSourceDesc;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/DataSourceDesc;->mUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$600(Landroid/support/v4/media/DataSourceDesc;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/DataSourceDesc;->mUriHeader:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$602(Landroid/support/v4/media/DataSourceDesc;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/DataSourceDesc;->mUriHeader:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$700(Landroid/support/v4/media/DataSourceDesc;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/DataSourceDesc;->mUriCookies:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$702(Landroid/support/v4/media/DataSourceDesc;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/DataSourceDesc;->mUriCookies:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Landroid/support/v4/media/DataSourceDesc;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/DataSourceDesc;->mUriContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$802(Landroid/support/v4/media/DataSourceDesc;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/DataSourceDesc;->mUriContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$900(Landroid/support/v4/media/DataSourceDesc;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/DataSourceDesc;->mMediaId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$902(Landroid/support/v4/media/DataSourceDesc;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/DataSourceDesc;->mMediaId:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getEndPosition()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/media/DataSourceDesc;->mEndPositionMs:J

    return-wide v0
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/DataSourceDesc;->mFD:Ljava/io/FileDescriptor;

    return-object p0
.end method

.method public getFileDescriptorLength()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/media/DataSourceDesc;->mFDLength:J

    return-wide v0
.end method

.method public getFileDescriptorOffset()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/media/DataSourceDesc;->mFDOffset:J

    return-wide v0
.end method

.method public getMedia2DataSource()Landroid/support/v4/media/Media2DataSource;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/DataSourceDesc;->mMedia2DataSource:Landroid/support/v4/media/Media2DataSource;

    return-object p0
.end method

.method public getMediaId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/DataSourceDesc;->mMediaId:Ljava/lang/String;

    return-object p0
.end method

.method public getStartPosition()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/media/DataSourceDesc;->mStartPositionMs:J

    return-wide v0
.end method

.method public getType()I
    .locals 0

    .line 1
    iget p0, p0, Landroid/support/v4/media/DataSourceDesc;->mType:I

    return p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/DataSourceDesc;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method public getUriContext()Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/DataSourceDesc;->mUriContext:Landroid/content/Context;

    return-object p0
.end method

.method public getUriCookies()Ljava/util/List;
    .locals 1

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/DataSourceDesc;->mUriCookies:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getUriHeaders()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/DataSourceDesc;->mUriHeader:Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
