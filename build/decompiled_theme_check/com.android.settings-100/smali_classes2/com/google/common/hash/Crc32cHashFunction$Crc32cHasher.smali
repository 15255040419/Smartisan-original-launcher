.class final Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;
.super Lcom/google/common/hash/AbstractByteHasher;
.source "Crc32cHashFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Crc32cHashFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Crc32cHasher"
.end annotation


# static fields
.field static final CRC_TABLE:[I


# instance fields
.field private crc:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x100

    new-array v0, v0, [I

    .line 47
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->CRC_TABLE:[I

    return-void

    :array_0
    .array-data 4
        0x0
        -0xd947cfd
        -0x1ec48f09
        0x1350f3f4
        -0x386568e1
        0x35f1141c
        0x26a1e7e8
        -0x2b359b15
        -0x7526a731
        0x78b2dbcc
        0x6be22838
        -0x667654c5
        0x4d43cfd0    # 2.0532352E8f
        -0x40d7b32d
        -0x538740d9
        0x5e133c24
        0x105ec76f
        -0x1dcabb94
        -0xe9a4868
        0x30e349b
        -0x283baf90
        0x25afd373
        0x36ff2087
        -0x3b6b5c7c
        -0x65786060
        0x68ec1ca3
        0x7bbcef57
        -0x762893ac
        0x5d1d08bf
        -0x50897444
        -0x43d987b8
        0x4e4dfb4b    # 8.639495E8f
        0x20bd8ede
        -0x2d29f223
        -0x3e7901d7
        0x33ed7d2a
        -0x18d8e63f
        0x154c9ac2
        0x61c6936
        -0xb8815cb
        -0x559b29ef
        0x580f5512
        0x4b5fa6e6    # 1.4657254E7f
        -0x46cbda1b
        0x6dfe410e
        -0x606a3df3
        -0x733ace07
        0x7eaeb2fa
        0x30e349b1
        -0x3d77354e
        -0x2e27c6ba
        0x23b3ba45
        -0x8862152
        0x5125dad
        0x1642ae59
        -0x1bd6d2a6
        -0x45c5ee82
        0x4851927d
        0x5b016189
        -0x56951d76
        0x7da08661
        -0x7034fa9e
        -0x6364096a
        0x6ef07595
        0x417b1dbc
        -0x4cef6141
        -0x5fbf92b5
        0x522bee48
        -0x791e755d
        0x748a09a0
        0x67dafa54
        -0x6a4e86a9
        -0x345dba8d    # -2.1269222E7f
        0x39c9c670
        0x2a993584
        -0x270d4979
        0xc38d26c
        -0x1acae91
        -0x12fc5d65
        0x1f682198
        0x5125dad3
        -0x5cb1a630
        -0x4fe155dc
        0x42752927
        -0x6940b234
        0x64d4cecf
        0x77843d3b
        -0x7a1041c8
        -0x24037de4
        0x2997011f
        0x3ac7f2eb
        -0x37538e18    # -353167.25f
        0x1c661503
        -0x11f26a00
        -0x2a29a0c
        0xf36e6f7
        0x61c69362
        -0x6c52ef9f
        -0x7f021c6b
        0x72966096
        -0x59a3fb83
        0x5437877e
        0x4767748a
        -0x4af30877
        -0x14e03453
        0x197448ae
        0xa24bb5a
        -0x7b0c7a7
        0x2c855cb2
        -0x2111204f
        -0x3241d3bb
        0x3fd5af46
        0x7198540d
        -0x7c0c28f2
        -0x6f5cdb06
        0x62c8a7f9
        -0x49fd3cee
        0x44694011
        0x5739b3e5
        -0x5aadcf1a
        -0x4bef33e
        0x92a8fc1
        0x1a7a7c35
        -0x17ee00ca
        0x3cdb9bdd
        -0x314fe722
        -0x221f14d6
        0x2f8b6829
        -0x7d09c488
        0x709db87b
        0x63cd4b8f
        -0x6e593774
        0x456cac67
        -0x48f8d09c
        -0x5ba82370
        0x563c5f93
        0x82f63b7
        -0x5bb1f4c
        -0x16ebecc0
        0x1b7f9043
        -0x304a0b58
        0x3dde77ab
        0x2e8e845f
        -0x231af8a4
        -0x6d5703e9
        0x60c37f14
        0x73938ce0
        -0x7e07f01d
        0x55326b08
        -0x58a617f5
        -0x4bf6e401
        0x466298fc
        0x1871a4d8
        -0x15e5d825
        -0x6b52bd1
        0xb21572c
        -0x2014cc39
        0x2d80b0c4
        0x3ed04330    # 0.4067626f
        -0x33443fcd    # -9.843548E7f
        -0x5db44a5a
        0x502036a5
        0x4370c551
        -0x4ee4b9ae
        0x65d122b9
        -0x68455e46
        -0x7b15adb2
        0x7681d14d
        0x2892ed69
        -0x25069196
        -0x36566262
        0x3bc21e9d
        -0x10f7858a
        0x1d63f975
        0xe330a81
        -0x3a7767e
        -0x4dea8d37
        0x407ef1ca
        0x532e023e
        -0x5eba7ec3
        0x758fe5d6
        -0x781b992b
        -0x6b4b6adf
        0x66df1622
        0x38cc2a06
        -0x355856fb    # -5493890.5f
        -0x2608a50f
        0x2b9cd9f2
        -0xa942e7
        0xd3d3e1a
        0x1e6dcdee
        -0x13f9b113
        -0x3c72d93c
        0x31e6a5c7
        0x22b65633
        -0x2f222ad0
        0x417b1db
        -0x983cd28
        -0x1ad33ed4
        0x1747422f
        0x49547e0b
        -0x44c002f8
        -0x5790f104
        0x5a048dff
        -0x713116ec
        0x7ca56a17
        0x6ff599e3
        -0x6261e520
        -0x2c2c1e55
        0x21b862a8
        0x32e8915c
        -0x3f7ceda1
        0x144976b4
        -0x19dd0a49
        -0xa8df9bd
        0x7198540
        0x590ab964
        -0x549ec599
        -0x47ce366d
        0x4a5a4a90    # 3576484.0f
        -0x616fd185
        0x6cfbad78
        0x7fab5e8c
        -0x723f2271
        -0x1ccf57e6
        0x115b2b19
        0x20bd8ed
        -0xf9fa412
        0x24aa3f05
        -0x293e43fa
        -0x3a6eb00e    # -4649.993f
        0x37faccf1
        0x69e9f0d5
        -0x647d8c2a
        -0x772d7fde
        0x7ab90321
        -0x518c9836
        0x5c18e4c9
        0x4f48173d
        -0x42dc6bc2
        -0xc91908b
        0x105ec76
        0x12551f82
        -0x1fc1637f
        0x34f4f86a
        -0x39608497
        -0x2a307763
        0x27a40b9e
        0x79b737ba
        -0x74234b47
        -0x6773b8b3
        0x6ae7c44e
        -0x41d25f5b
        0x4c4623a6    # 5.1941016E7f
        0x5f16d052
        -0x5282acaf
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/google/common/hash/AbstractByteHasher;-><init>()V

    const/4 v0, 0x0

    .line 114
    iput v0, p0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->crc:I

    return-void
.end method


# virtual methods
.method public hash()Lcom/google/common/hash/HashCode;
    .locals 0

    .line 125
    iget p0, p0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->crc:I

    invoke-static {p0}, Lcom/google/common/hash/HashCode;->fromInt(I)Lcom/google/common/hash/HashCode;

    move-result-object p0

    return-object p0
.end method

.method public update(B)V
    .locals 3

    .line 118
    iget v0, p0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->crc:I

    not-int v0, v0

    iput v0, p0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->crc:I

    .line 120
    iget v0, p0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->crc:I

    ushr-int/lit8 v1, v0, 0x8

    sget-object v2, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->CRC_TABLE:[I

    xor-int/2addr p1, v0

    and-int/lit16 p1, p1, 0xff

    aget p1, v2, p1

    xor-int/2addr p1, v1

    not-int p1, p1

    iput p1, p0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;->crc:I

    return-void
.end method
