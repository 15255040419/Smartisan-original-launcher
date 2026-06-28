.class public final Landroid/icu/text/RawCollationKey;
.super Landroid/icu/util/ByteArrayWrapper;
.source "RawCollationKey.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Landroid/icu/util/ByteArrayWrapper;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 62
    invoke-direct {p0}, Landroid/icu/util/ByteArrayWrapper;-><init>()V

    .line 63
    new-array p1, p1, [B

    iput-object p1, p0, Landroid/icu/text/RawCollationKey;->bytes:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 72
    invoke-direct {p0}, Landroid/icu/util/ByteArrayWrapper;-><init>()V

    .line 73
    iput-object p1, p0, Landroid/icu/text/RawCollationKey;->bytes:[B

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/icu/util/ByteArrayWrapper;-><init>([BI)V

    return-void
.end method


# virtual methods
.method public compareTo(Landroid/icu/text/RawCollationKey;)I
    .locals 0

    .line 97
    invoke-super {p0, p1}, Landroid/icu/util/ByteArrayWrapper;->compareTo(Landroid/icu/util/ByteArrayWrapper;)I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method
