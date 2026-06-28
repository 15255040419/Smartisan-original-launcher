.class Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar_rtl;
.super Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar;
.source "CharsetRecog_sbcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CharsetRecog_sbcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetRecog_IBM420_ar_rtl"
.end annotation


# static fields
.field private static ngrams:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [I

    .line 1212
    fill-array-data v0, :array_0

    sput-object v0, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar_rtl;->ngrams:[I

    return-void

    :array_0
    .array-data 4
        0x4056b1
        0x4056bd
        0x405856
        0x409ab1
        0x40abdc
        0x40b1b1
        0x40bbbd
        0x40cf56
        0x564056
        0x564640
        0x566340
        0x567540
        0x56b140
        0x56b149
        0x56b156
        0x56b158
        0x56b163
        0x56b167
        0x56b169
        0x56b173
        0x56b178
        0x56b19a
        0x56b1ad
        0x56b1bb
        0x56b1cf
        0x56b1dc
        0x56bb40
        0x56bd40
        0x56bd63
        0x584056
        0x624056
        0x6240ab
        0x6240b1
        0x6240bb
        0x6240cf
        0x634056
        0x734056
        0x736240
        0x754056
        0x756240    # 1.0779999E-38f
        0x784056
        0x9a4056
        0x9ab1da
        0xabdc40
        0xb14056
        0xb16240
        0xb1da40
        0xb1dc40
        0xbb4056
        0xbb5640
        0xbb6240
        0xbbbd40
        0xbd4056
        0xbf4056
        0xbf5640
        0xcf56b1
        0xcfbd40
        0xda4056
        0xdc4056
        0xdc40bb
        0xdc40cf
        0xdc6240
        0xdc7540
        0xdcbd40
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 1210
    invoke-direct {p0}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "IBM420_rtl"

    return-object p0
.end method

.method public match(Landroid/icu/text/CharsetDetector;)Landroid/icu/text/CharsetMatch;
    .locals 3

    .line 1227
    sget-object v0, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar_rtl;->ngrams:[I

    sget-object v1, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar_rtl;->byteMap:[B

    const/16 v2, 0x40

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar_rtl;->matchIBM420(Landroid/icu/text/CharsetDetector;[I[BB)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1228
    :cond_0
    new-instance v1, Landroid/icu/text/CharsetMatch;

    invoke-direct {v1, p1, p0, v0}, Landroid/icu/text/CharsetMatch;-><init>(Landroid/icu/text/CharsetDetector;Landroid/icu/text/CharsetRecognizer;I)V

    move-object p0, v1

    :goto_0
    return-object p0
.end method
