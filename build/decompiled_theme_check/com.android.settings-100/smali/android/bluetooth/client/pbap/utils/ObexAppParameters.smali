.class public final Landroid/bluetooth/client/pbap/utils/ObexAppParameters;
.super Ljava/lang/Object;
.source "ObexAppParameters.java"


# instance fields
.field private final mParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Byte;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->mParams:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 5

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->mParams:Ljava/util/HashMap;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    move v1, v0

    .line 38
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 39
    array-length v2, p1

    sub-int/2addr v2, v1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v1, 0x1

    .line 43
    aget-byte v1, p1, v1

    add-int/lit8 v3, v2, 0x1

    .line 44
    aget-byte v2, p1, v2

    .line 46
    array-length v4, p1

    sub-int/2addr v4, v3

    sub-int/2addr v4, v2

    if-gez v4, :cond_1

    goto :goto_1

    .line 50
    :cond_1
    new-array v4, v2, [B

    .line 52
    invoke-static {p1, v3, v4, v0, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 53
    invoke-virtual {p0, v1, v4}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->add(B[B)V

    add-int v1, v3, v2

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static fromHeaderSet(Ljavax/obex/HeaderSet;)Landroid/bluetooth/client/pbap/utils/ObexAppParameters;
    .locals 1

    const/16 v0, 0x4c

    .line 62
    :try_start_0
    invoke-virtual {p0, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    .line 63
    new-instance v0, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;

    invoke-direct {v0, p0}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public add(BB)V
    .locals 1

    const/4 v0, 0x1

    .line 104
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    .line 105
    iget-object p0, p0, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->mParams:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public add(BI)V
    .locals 1

    const/4 v0, 0x4

    .line 114
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    .line 115
    iget-object p0, p0, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->mParams:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public add(BJ)V
    .locals 1

    const/16 v0, 0x8

    .line 119
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    .line 120
    iget-object p0, p0, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->mParams:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public add(BLjava/lang/String;)V
    .locals 0

    .line 124
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    .line 125
    iget-object p0, p0, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->mParams:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public add(BS)V
    .locals 1

    const/4 v0, 0x2

    .line 109
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    .line 110
    iget-object p0, p0, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->mParams:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public add(B[B)V
    .locals 0

    .line 129
    iget-object p0, p0, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->mParams:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addToHeaderSet(Ljavax/obex/HeaderSet;)V
    .locals 1

    .line 94
    iget-object v0, p0, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->mParams:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x4c

    .line 95
    invoke-virtual {p0}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->getHeader()[B

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public exists(B)Z
    .locals 0

    .line 100
    iget-object p0, p0, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->mParams:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getByte(B)B
    .locals 1

    .line 133
    iget-object p0, p0, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->mParams:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    if-eqz p0, :cond_1

    .line 135
    array-length p1, p0

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getByteArray(B)[B
    .locals 0

    .line 173
    iget-object p0, p0, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->mParams:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public getHeader()[B
    .locals 7

    .line 74
    iget-object v0, p0, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->mParams:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 75
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v3, v3

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    goto :goto_0

    .line 78
    :cond_0
    new-array v0, v2, [B

    .line 81
    iget-object p0, p0, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->mParams:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v2, v1

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 82
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    array-length v4, v4

    add-int/lit8 v5, v2, 0x1

    .line 84
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    aput-byte v6, v0, v2

    add-int/lit8 v2, v5, 0x1

    int-to-byte v6, v4

    .line 85
    aput-byte v6, v0, v5

    .line 86
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v3, v1, v0, v2, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    add-int/2addr v2, v4

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public getInt(B)I
    .locals 1

    .line 153
    iget-object p0, p0, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->mParams:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    if-eqz p0, :cond_1

    .line 155
    array-length p1, p0

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getShort(B)S
    .locals 1

    .line 143
    iget-object p0, p0, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->mParams:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    if-eqz p0, :cond_1

    .line 145
    array-length p1, p0

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getString(B)Ljava/lang/String;
    .locals 0

    .line 163
    iget-object p0, p0, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->mParams:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 169
    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 180
    iget-object p0, p0, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->mParams:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
