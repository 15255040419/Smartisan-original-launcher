.class Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_2;
.super Landroid/icu/text/CharsetRecog_sbcs;
.source "CharsetRecog_sbcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CharsetRecog_sbcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetRecog_8859_2"
.end annotation


# static fields
.field protected static byteMap:[B

.field private static ngrams_8859_2:[Landroid/icu/text/CharsetRecog_sbcs$NGramsPlusLang;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 453
    fill-array-data v0, :array_0

    sput-object v0, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_2;->byteMap:[B

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/icu/text/CharsetRecog_sbcs$NGramsPlusLang;

    .line 488
    new-instance v1, Landroid/icu/text/CharsetRecog_sbcs$NGramsPlusLang;

    const/16 v2, 0x40

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const-string v4, "cs"

    invoke-direct {v1, v4, v3}, Landroid/icu/text/CharsetRecog_sbcs$NGramsPlusLang;-><init>(Ljava/lang/String;[I)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Landroid/icu/text/CharsetRecog_sbcs$NGramsPlusLang;

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    const-string v4, "hu"

    invoke-direct {v1, v4, v3}, Landroid/icu/text/CharsetRecog_sbcs$NGramsPlusLang;-><init>(Ljava/lang/String;[I)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Landroid/icu/text/CharsetRecog_sbcs$NGramsPlusLang;

    new-array v3, v2, [I

    fill-array-data v3, :array_3

    const-string/jumbo v4, "pl"

    invoke-direct {v1, v4, v3}, Landroid/icu/text/CharsetRecog_sbcs$NGramsPlusLang;-><init>(Ljava/lang/String;[I)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-instance v1, Landroid/icu/text/CharsetRecog_sbcs$NGramsPlusLang;

    new-array v2, v2, [I

    fill-array-data v2, :array_4

    const-string/jumbo v3, "ro"

    invoke-direct {v1, v3, v2}, Landroid/icu/text/CharsetRecog_sbcs$NGramsPlusLang;-><init>(Ljava/lang/String;[I)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_2;->ngrams_8859_2:[Landroid/icu/text/CharsetRecog_sbcs$NGramsPlusLang;

    return-void

    nop

    :array_0
    .array-data 1
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x0t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        -0x4ft
        0x20t
        -0x4dt
        0x20t
        -0x4bt
        -0x4at
        0x20t
        0x20t
        -0x47t
        -0x46t
        -0x45t
        -0x44t
        0x20t
        -0x42t
        -0x41t
        0x20t
        -0x4ft
        0x20t
        -0x4dt
        0x20t
        -0x4bt
        -0x4at
        -0x49t
        0x20t
        -0x47t
        -0x46t
        -0x45t
        -0x44t
        0x20t
        -0x42t
        -0x41t
        -0x20t
        -0x1ft
        -0x1et
        -0x1dt
        -0x1ct
        -0x1bt
        -0x1at
        -0x19t
        -0x18t
        -0x17t
        -0x16t
        -0x15t
        -0x14t
        -0x13t
        -0x12t
        -0x11t
        -0x10t
        -0xft
        -0xet
        -0xdt
        -0xct
        -0xbt
        -0xat
        0x20t
        -0x8t
        -0x7t
        -0x6t
        -0x5t
        -0x4t
        -0x3t
        -0x2t
        -0x21t
        -0x20t
        -0x1ft
        -0x1et
        -0x1dt
        -0x1ct
        -0x1bt
        -0x1at
        -0x19t
        -0x18t
        -0x17t
        -0x16t
        -0x15t
        -0x14t
        -0x13t
        -0x12t
        -0x11t
        -0x10t
        -0xft
        -0xet
        -0xdt
        -0xct
        -0xbt
        -0xat
        0x20t
        -0x8t
        -0x7t
        -0x6t
        -0x5t
        -0x4t
        -0x3t
        -0x2t
        0x20t
    .end array-data

    :array_1
    .array-data 4
        0x206120
        0x206279
        0x20646f
        0x206a65
        0x206e61
        0x206e65
        0x206f20
        0x206f64
        0x20706f
        0x207072
        0x2070f8
        0x20726f
        0x207365
        0x20736f
        0x207374
        0x20746f
        0x207620
        0x207679
        0x207a61
        0x612070
        0x636520
        0x636820
        0x652070
        0x652073
        0x652076
        0x656d20
        0x656eed
        0x686f20
        0x686f64
        0x697374
        0x6a6520
        0x6b7465
        0x6c6520
        0x6c6920
        0x6e6120
        0x6ee920
        0x6eec20
        0x6eed20
        0x6f2070
        0x6f646e
        0x6f6a69
        0x6f7374
        0x6f7520
        0x6f7661
        0x706f64
        0x706f6a
        0x70726f
        0x70f865
        0x736520
        0x736f75
        0x737461
        0x737469
        0x73746e
        0x746572
        0x746eed
        0x746f20
        0x752070
        0xbe6520
        0xe16eed
        0xe9686f
        0xed2070
        0xed2073
        0xed6d20
        0xf86564
    .end array-data

    :array_2
    .array-data 4
        0x206120
        0x20617a
        0x206265
        0x206567
        0x20656c
        0x206665
        0x206861
        0x20686f
        0x206973
        0x206b65
        0x206b69
        0x206bf6
        0x206c65
        0x206d61
        0x206d65
        0x206d69
        0x206e65
        0x20737a
        0x207465
        0x20e973
        0x612061
        0x61206b
        0x61206d
        0x612073
        0x616b20
        0x616e20
        0x617a20
        0x62616e
        0x62656e
        0x656779
        0x656b20
        0x656c20
        0x656c65
        0x656d20
        0x656e20
        0x657265
        0x657420
        0x657465
        0x657474
        0x677920
        0x686f67
        0x696e74
        0x697320
        0x6b2061
        0x6bf67a
        0x6d6567
        0x6d696e
        0x6e2061
        0x6e616b
        0x6e656b
        0x6e656d
        0x6e7420
        0x6f6779
        0x732061
        0x737a65
        0x737a74
        0x737ae1
        0x73e967
        0x742061
        0x747420
        0x74e173
        0x7a6572
        0xe16e20
        0xe97320
    .end array-data

    :array_3
    .array-data 4
        0x20637a
        0x20646f
        0x206920
        0x206a65
        0x206b6f
        0x206d61
        0x206d69
        0x206e61
        0x206e69
        0x206f64
        0x20706f
        0x207072
        0x207369
        0x207720
        0x207769
        0x207779
        0x207a20
        0x207a61
        0x612070
        0x612077
        0x616e69
        0x636820
        0x637a65
        0x637a79
        0x646f20
        0x647a69
        0x652070
        0x652073
        0x652077
        0x65207a
        0x65676f
        0x656a20
        0x656d20
        0x656e69
        0x676f20
        0x696120
        0x696520
        0x69656a
        0x6b6120
        0x6b6920
        0x6b6965
        0x6d6965
        0x6e6120
        0x6e6961
        0x6e6965
        0x6f2070
        0x6f7761
        0x6f7769
        0x706f6c
        0x707261
        0x70726f
        0x70727a
        0x727a65
        0x727a79
        0x7369ea
        0x736b69
        0x737461
        0x776965
        0x796368
        0x796d20
        0x7a6520
        0x7a6965
        0x7a7920
        0xf37720
    .end array-data

    :array_4
    .array-data 4
        0x206120
        0x206163
        0x206361
        0x206365
        0x20636f
        0x206375
        0x206465
        0x206469
        0x206c61
        0x206d61
        0x207065
        0x207072
        0x207365
        0x2073e3
        0x20756e
        0x20ba69
        0x20ee6e
        0x612063
        0x612064
        0x617265
        0x617420
        0x617465
        0x617520
        0x636172
        0x636f6e
        0x637520
        0x63e320
        0x646520
        0x652061    # 9.287E-39f
        0x652063
        0x652064
        0x652070
        0x652073
        0x656120
        0x656920
        0x656c65
        0x656e74
        0x657374
        0x692061
        0x692063
        0x692064
        0x692070
        0x696520
        0x696920
        0x696e20
        0x6c6120
        0x6c6520
        0x6c6f72
        0x6c7569
        0x6e6520
        0x6e7472
        0x6f7220
        0x70656e
        0x726520
        0x726561
        0x727520
        0x73e320
        0x746520
        0x747275
        0x74e320
        0x756920
        0x756c20
        0xba6920
        0xee6e20
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 451
    invoke-direct {p0}, Landroid/icu/text/CharsetRecog_sbcs;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "ISO-8859-2"

    return-object p0
.end method

.method public match(Landroid/icu/text/CharsetDetector;)Landroid/icu/text/CharsetMatch;
    .locals 10

    .line 526
    iget-boolean v0, p1, Landroid/icu/text/CharsetDetector;->fC1Bytes:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "windows-1250"

    goto :goto_0

    :cond_0
    const-string v0, "ISO-8859-2"

    :goto_0
    move-object v5, v0

    const/4 v0, -0x1

    .line 529
    sget-object v1, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_2;->ngrams_8859_2:[Landroid/icu/text/CharsetRecog_sbcs$NGramsPlusLang;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, v4

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v7, v1, v3

    .line 530
    iget-object v8, v7, Landroid/icu/text/CharsetRecog_sbcs$NGramsPlusLang;->fNGrams:[I

    sget-object v9, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_2;->byteMap:[B

    invoke-virtual {p0, p1, v8, v9}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_2;->match(Landroid/icu/text/CharsetDetector;[I[B)I

    move-result v8

    if-le v8, v0, :cond_1

    .line 533
    iget-object v6, v7, Landroid/icu/text/CharsetRecog_sbcs$NGramsPlusLang;->fLang:Ljava/lang/String;

    move v0, v8

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-gtz v0, :cond_3

    goto :goto_2

    .line 536
    :cond_3
    new-instance v7, Landroid/icu/text/CharsetMatch;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p0

    move v4, v0

    invoke-direct/range {v1 .. v6}, Landroid/icu/text/CharsetMatch;-><init>(Landroid/icu/text/CharsetDetector;Landroid/icu/text/CharsetRecognizer;ILjava/lang/String;Ljava/lang/String;)V

    move-object v4, v7

    :goto_2
    return-object v4
.end method
