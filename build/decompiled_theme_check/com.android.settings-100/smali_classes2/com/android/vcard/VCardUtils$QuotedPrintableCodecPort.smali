.class Lcom/android/vcard/VCardUtils$QuotedPrintableCodecPort;
.super Ljava/lang/Object;
.source "VCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vcard/VCardUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QuotedPrintableCodecPort"
.end annotation


# static fields
.field private static ESCAPE_CHAR:B = 0x3dt


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final decodeQuotedPrintable([B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/VCardUtils$DecoderException;
        }
    .end annotation

    const-string v0, "Invalid quoted-printable encoding"

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 65
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x0

    .line 66
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    .line 67
    aget-byte v3, p0, v2

    .line 68
    sget-byte v4, Lcom/android/vcard/VCardUtils$QuotedPrintableCodecPort;->ESCAPE_CHAR:B

    if-ne v3, v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 70
    :try_start_0
    aget-byte v3, p0, v2

    int-to-char v3, v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    .line 71
    aget-byte v5, p0, v2

    int-to-char v5, v5

    invoke-static {v5, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    if-eq v4, v5, :cond_1

    shl-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v4

    int-to-char v3, v3

    .line 75
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 73
    :cond_1
    new-instance p0, Lcom/android/vcard/VCardUtils$DecoderException;

    invoke-direct {p0, v0}, Lcom/android/vcard/VCardUtils$DecoderException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :catch_0
    new-instance p0, Lcom/android/vcard/VCardUtils$DecoderException;

    invoke-direct {p0, v0}, Lcom/android/vcard/VCardUtils$DecoderException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 80
    :cond_2
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    :cond_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
