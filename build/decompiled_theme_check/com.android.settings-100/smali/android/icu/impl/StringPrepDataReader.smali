.class public final Landroid/icu/impl/StringPrepDataReader;
.super Ljava/lang/Object;
.source "StringPrepDataReader.java"

# interfaces
.implements Landroid/icu/impl/ICUBinary$Authenticate;


# static fields
.field private static final DATA_FORMAT_ID:I = 0x53505250

.field private static final DATA_FORMAT_VERSION:[B

.field private static final debug:Z


# instance fields
.field private byteBuffer:Ljava/nio/ByteBuffer;

.field private unicodeVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "NormalizerDataReader"

    .line 30
    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/icu/impl/StringPrepDataReader;->debug:Z

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 85
    fill-array-data v0, :array_0

    sput-object v0, Landroid/icu/impl/StringPrepDataReader;->DATA_FORMAT_VERSION:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x3t
        0x2t
        0x5t
        0x2t
    .end array-data
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-boolean v0, Landroid/icu/impl/StringPrepDataReader;->debug:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bytes in buffer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 41
    :cond_0
    iput-object p1, p0, Landroid/icu/impl/StringPrepDataReader;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 42
    iget-object p1, p0, Landroid/icu/impl/StringPrepDataReader;->byteBuffer:Ljava/nio/ByteBuffer;

    const v0, 0x53505250

    invoke-static {p1, v0, p0}, Landroid/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)I

    move-result p1

    iput p1, p0, Landroid/icu/impl/StringPrepDataReader;->unicodeVersion:I

    .line 44
    sget-boolean p1, Landroid/icu/impl/StringPrepDataReader;->debug:Z

    if-eqz p1, :cond_1

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bytes left in byteBuffer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/icu/impl/StringPrepDataReader;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getUnicodeVersion()[B
    .locals 0

    .line 68
    iget p0, p0, Landroid/icu/impl/StringPrepDataReader;->unicodeVersion:I

    invoke-static {p0}, Landroid/icu/impl/ICUBinary;->getVersionByteArrayFromCompactInt(I)[B

    move-result-object p0

    return-object p0
.end method

.method public isDataVersionAcceptable([B)Z
    .locals 3

    const/4 p0, 0x0

    .line 54
    aget-byte v0, p1, p0

    sget-object v1, Landroid/icu/impl/StringPrepDataReader;->DATA_FORMAT_VERSION:[B

    aget-byte v2, v1, p0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x2

    aget-byte v2, p1, v0

    aget-byte v0, v1, v0

    if-ne v2, v0, :cond_0

    const/4 v0, 0x3

    aget-byte p1, p1, v0

    aget-byte v0, v1, v0

    if-ne p1, v0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method public read(I)[C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    iget-object p0, p0, Landroid/icu/impl/StringPrepDataReader;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object p0

    return-object p0
.end method

.method public readIndexes(I)[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    new-array v0, p1, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 62
    iget-object v2, p0, Landroid/icu/impl/StringPrepDataReader;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
