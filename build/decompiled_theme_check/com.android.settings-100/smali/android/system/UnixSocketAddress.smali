.class public final Landroid/system/UnixSocketAddress;
.super Ljava/net/SocketAddress;
.source "UnixSocketAddress.java"


# static fields
.field private static final NAMED_PATH_LENGTH:I

.field private static final UNNAMED_PATH:[B


# instance fields
.field private sun_path:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    sget v0, Landroid/system/OsConstants;->UNIX_PATH_MAX:I

    sput v0, Landroid/system/UnixSocketAddress;->NAMED_PATH_LENGTH:I

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 31
    sput-object v0, Landroid/system/UnixSocketAddress;->UNNAMED_PATH:[B

    return-void
.end method

.method private constructor <init>([B)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    if-eqz p1, :cond_2

    .line 44
    array-length v0, p1

    sget v1, Landroid/system/UnixSocketAddress;->NAMED_PATH_LENGTH:I

    if-gt v0, v1, :cond_1

    .line 48
    array-length v0, p1

    if-nez v0, :cond_0

    .line 49
    sget-object p1, Landroid/system/UnixSocketAddress;->UNNAMED_PATH:[B

    iput-object p1, p0, Landroid/system/UnixSocketAddress;->sun_path:[B

    goto :goto_0

    .line 51
    :cond_0
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/system/UnixSocketAddress;->sun_path:[B

    .line 52
    iget-object p0, p0, Landroid/system/UnixSocketAddress;->sun_path:[B

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    :goto_0
    return-void

    .line 45
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "sun_path exceeds the maximum length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 42
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "sun_path must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createAbstract(Ljava/lang/String;)Landroid/system/UnixSocketAddress;
    .locals 4

    .line 60
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 62
    array-length v0, p0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 63
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 64
    new-instance p0, Landroid/system/UnixSocketAddress;

    invoke-direct {p0, v0}, Landroid/system/UnixSocketAddress;-><init>([B)V

    return-object p0
.end method

.method public static createFileSystem(Ljava/lang/String;)Landroid/system/UnixSocketAddress;
    .locals 3

    .line 71
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 73
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    .line 74
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 75
    new-instance p0, Landroid/system/UnixSocketAddress;

    invoke-direct {p0, v0}, Landroid/system/UnixSocketAddress;-><init>([B)V

    return-object p0
.end method

.method public static createUnnamed()Landroid/system/UnixSocketAddress;
    .locals 2

    .line 82
    new-instance v0, Landroid/system/UnixSocketAddress;

    sget-object v1, Landroid/system/UnixSocketAddress;->UNNAMED_PATH:[B

    invoke-direct {v0, v1}, Landroid/system/UnixSocketAddress;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 104
    :cond_1
    check-cast p1, Landroid/system/UnixSocketAddress;

    .line 105
    iget-object p0, p0, Landroid/system/UnixSocketAddress;->sun_path:[B

    iget-object p1, p1, Landroid/system/UnixSocketAddress;->sun_path:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getSunPath()[B
    .locals 3

    .line 87
    iget-object p0, p0, Landroid/system/UnixSocketAddress;->sun_path:[B

    array-length v0, p0

    if-nez v0, :cond_0

    return-object p0

    .line 90
    :cond_0
    array-length v0, p0

    new-array v0, v0, [B

    .line 91
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v0
.end method

.method public hashCode()I
    .locals 0

    .line 110
    iget-object p0, p0, Landroid/system/UnixSocketAddress;->sun_path:[B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnixSocketAddress[sun_path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/system/UnixSocketAddress;->sun_path:[B

    .line 116
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
