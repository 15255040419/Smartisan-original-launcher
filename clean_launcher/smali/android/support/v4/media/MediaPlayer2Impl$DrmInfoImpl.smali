.class public final Landroid/support/v4/media/MediaPlayer2Impl$DrmInfoImpl;
.super Landroid/support/v4/media/MediaPlayer2$DrmInfo;
.source "MediaPlayer2Impl.java"


# instance fields
.field private mMapPssh:Ljava/util/Map;

.field private mSupportedSchemes:[Ljava/util/UUID;


# direct methods
.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .line 5
    invoke-direct {p0}, Landroid/support/v4/media/MediaPlayer2$DrmInfo;-><init>()V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DrmInfoImpl("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer2Impl"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 8
    new-array v2, v0, [B

    .line 9
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DrmInfoImpl() PSSH: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Landroid/support/v4/media/MediaPlayer2Impl$DrmInfoImpl;->arrToHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-direct {p0, v2, v0}, Landroid/support/v4/media/MediaPlayer2Impl$DrmInfoImpl;->parsePSSH([BI)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/media/MediaPlayer2Impl$DrmInfoImpl;->mMapPssh:Ljava/util/Map;

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/v4/media/MediaPlayer2Impl$DrmInfoImpl;->mMapPssh:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 14
    new-array v3, v2, [Ljava/util/UUID;

    iput-object v3, p0, Landroid/support/v4/media/MediaPlayer2Impl$DrmInfoImpl;->mSupportedSchemes:[Ljava/util/UUID;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    const/16 v4, 0x10

    new-array v4, v4, [B

    .line 15
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readByteArray([B)V

    .line 16
    iget-object v5, p0, Landroid/support/v4/media/MediaPlayer2Impl$DrmInfoImpl;->mSupportedSchemes:[Ljava/util/UUID;

    invoke-direct {p0, v4}, Landroid/support/v4/media/MediaPlayer2Impl$DrmInfoImpl;->bytesToUUID([B)Ljava/util/UUID;

    move-result-object v4

    aput-object v4, v5, v3

    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DrmInfoImpl() supportedScheme["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/support/v4/media/MediaPlayer2Impl$DrmInfoImpl;->mSupportedSchemes:[Ljava/util/UUID;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "DrmInfoImpl() Parcel psshsize: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " supportedDRMsCount: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;[Ljava/util/UUID;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroid/support/v4/media/MediaPlayer2$DrmInfo;-><init>()V

    .line 3
    iput-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$DrmInfoImpl;->mMapPssh:Ljava/util/Map;

    .line 4
    iput-object p2, p0, Landroid/support/v4/media/MediaPlayer2Impl$DrmInfoImpl;->mSupportedSchemes:[Ljava/util/UUID;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;[Ljava/util/UUID;Landroid/support/v4/media/MediaPlayer2Impl$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/MediaPlayer2Impl$DrmInfoImpl;-><init>(Ljava/util/Map;[Ljava/util/UUID;)V

    return-void
.end method

.method private arrToHex([B)Ljava/lang/String;
    .locals 4

    const/4 p0, 0x0

    const-string v0, "0x"

    move-object v1, v0

    move v0, p0

    .line 1
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aget-byte v3, p1, v0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, p0

    const-string v3, "%02x"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private bytesToUUID([B)Ljava/util/UUID;
    .locals 10

    const-wide/16 v0, 0x0

    const/4 p0, 0x0

    move-wide v2, v0

    :goto_0
    const/16 v4, 0x8

    if-ge p0, v4, :cond_0

    .line 1
    aget-byte v5, p1, p0

    int-to-long v5, v5

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    rsub-int/lit8 v9, p0, 0x7

    mul-int/2addr v9, v4

    shl-long v4, v5, v9

    or-long/2addr v0, v4

    add-int/lit8 v4, p0, 0x8

    .line 2
    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v7

    shl-long/2addr v4, v9

    or-long/2addr v2, v4

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Ljava/util/UUID;

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    return-object p0
.end method

.method private makeCopy()Landroid/support/v4/media/MediaPlayer2Impl$DrmInfoImpl;
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v4/media/MediaPlayer2Impl$DrmInfoImpl;

    iget-object v1, p0, Landroid/support/v4/media/MediaPlayer2Impl$DrmInfoImpl;->mMapPssh:Ljava/util/Map;

    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$DrmInfoImpl;->mSupportedSchemes:[Ljava/util/UUID;

    invoke-direct {v0, v1, p0}, Landroid/support/v4/media/MediaPlayer2Impl$DrmInfoImpl;-><init>(Ljava/util/Map;[Ljava/util/UUID;)V

    return-object v0
.end method

.method private parsePSSH([BI)Ljava/util/Map;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    move/from16 v4, p2

    move v5, v3

    move v6, v5

    :goto_0
    if-lez v4, :cond_4

    const/4 v7, 0x0

    const-string v8, "MediaPlayer2Impl"

    const/16 v9, 0x10

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ge v4, v9, :cond_0

    new-array v0, v10, [Ljava/lang/Object;

    .line 2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v11

    const-string v1, "parsePSSH: len is too short to parse UUID: (%d < 16) pssh: %d"

    .line 3
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_0
    add-int/lit8 v12, v5, 0x10

    .line 4
    invoke-static {v1, v5, v12}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 5
    invoke-direct {v0, v5}, Landroid/support/v4/media/MediaPlayer2Impl$DrmInfoImpl;->bytesToUUID([B)Ljava/util/UUID;

    move-result-object v5

    add-int/lit8 v4, v4, -0x10

    const/4 v13, 0x4

    if-ge v4, v13, :cond_1

    new-array v0, v10, [Ljava/lang/Object;

    .line 6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v11

    const-string v1, "parsePSSH: len is too short to parse datalen: (%d < 4) pssh: %d"

    .line 7
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_1
    add-int/lit8 v14, v12, 0x4

    .line 8
    invoke-static {v1, v12, v14}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v12

    .line 9
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v15

    sget-object v13, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v7, 0x3

    if-ne v15, v13, :cond_2

    aget-byte v13, v12, v7

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x18

    aget-byte v15, v12, v10

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v9, v15, 0x10

    or-int/2addr v9, v13

    aget-byte v13, v12, v11

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v9, v13

    aget-byte v12, v12, v3

    goto :goto_1

    :cond_2
    aget-byte v13, v12, v3

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x18

    aget-byte v15, v12, v11

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v9, v15, 0x10

    or-int/2addr v9, v13

    aget-byte v13, v12, v10

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v9, v13

    aget-byte v12, v12, v7

    :goto_1
    and-int/lit16 v12, v12, 0xff

    or-int/2addr v9, v12

    add-int/lit8 v4, v4, -0x4

    if-ge v4, v9, :cond_3

    new-array v0, v7, [Ljava/lang/Object;

    .line 10
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v11

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v10

    const-string v1, "parsePSSH: len is too short to parse data: (%d < %d) pssh: %d"

    .line 11
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_3
    add-int v12, v14, v9

    .line 12
    invoke-static {v1, v14, v12}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v13

    sub-int/2addr v4, v9

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    .line 13
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v9, v3

    aput-object v5, v9, v11

    invoke-direct {v0, v13}, Landroid/support/v4/media/MediaPlayer2Impl$DrmInfoImpl;->arrToHex([B)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v9, v10

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    const-string v7, "parsePSSH[%d]: <%s, %s> pssh: %d"

    .line 14
    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/2addr v6, v11

    .line 15
    invoke-interface {v2, v5, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v5, v12

    goto/16 :goto_0

    :cond_4
    return-object v2
.end method


# virtual methods
.method public getPssh()Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$DrmInfoImpl;->mMapPssh:Ljava/util/Map;

    return-object p0
.end method

.method public getSupportedSchemes()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$DrmInfoImpl;->mSupportedSchemes:[Ljava/util/UUID;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
