.class Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_windows_1256;
.super Landroid/icu/text/CharsetRecog_sbcs;
.source "CharsetRecog_sbcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CharsetRecog_sbcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetRecog_windows_1256"
.end annotation


# static fields
.field private static byteMap:[B

.field private static ngrams:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [I

    .line 983
    fill-array-data v0, :array_0

    sput-object v0, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_windows_1256;->ngrams:[I

    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 990
    fill-array-data v0, :array_1

    sput-object v0, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_windows_1256;->byteMap:[B

    return-void

    nop

    :array_0
    .array-data 4
        0x20c7e1
        0x20c7e4
        0x20c8c7
        0x20dae1
        0x20dded
        0x20e1e1
        0x20e3e4
        0x20e6c7
        0xc720c7
        0xc7c120
        0xc7ca20
        0xc7d120
        0xc7e120
        0xc7e1c3
        0xc7e1c7
        0xc7e1c8
        0xc7e1ca
        0xc7e1cc
        0xc7e1cd
        0xc7e1cf
        0xc7e1d3
        0xc7e1da
        0xc7e1de
        0xc7e1e3
        0xc7e1e6
        0xc7e1ed
        0xc7e320
        0xc7e420
        0xc7e4ca
        0xc820c7
        0xc920c7
        0xc920dd
        0xc920e1
        0xc920e3
        0xc920e6
        0xca20c7
        0xcf20c7
        0xcfc920
        0xd120c7
        0xd1c920
        0xd320c7
        0xda20c7
        0xdae1ec
        0xdded20
        0xe120c7
        0xe1c920
        0xe1ec20
        0xe1ed20
        0xe320c7
        0xe3c720
        0xe3c920
        0xe3e420
        0xe420c7
        0xe520c7
        0xe5c720
        0xe6c7e1
        0xe6e420
        0xec20c7
        0xed20c7
        0xed20e3
        0xed20e6
        0xedc920
        0xedd120
        0xede420
    .end array-data

    :array_1
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
        -0x7ft
        0x20t
        -0x7dt
        0x20t
        0x20t
        0x20t
        0x20t
        -0x78t
        0x20t
        -0x76t
        0x20t
        -0x64t
        -0x73t
        -0x72t
        -0x71t
        -0x70t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        -0x68t
        0x20t
        -0x66t
        0x20t
        -0x64t
        0x20t
        0x20t
        -0x61t
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
        -0x56t
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
        -0x4bt
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
        -0x40t
        -0x3ft
        -0x3et
        -0x3dt
        -0x3ct
        -0x3bt
        -0x3at
        -0x39t
        -0x38t
        -0x37t
        -0x36t
        -0x35t
        -0x34t
        -0x33t
        -0x32t
        -0x31t
        -0x30t
        -0x2ft
        -0x2et
        -0x2dt
        -0x2ct
        -0x2bt
        -0x2at
        0x20t
        -0x28t
        -0x27t
        -0x26t
        -0x25t
        -0x24t
        -0x23t
        -0x22t
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
        0x20t
        0x20t
        0x20t
        0x20t
        -0xct
        0x20t
        0x20t
        0x20t
        0x20t
        -0x7t
        0x20t
        -0x5t
        -0x4t
        0x20t
        0x20t
        -0x1t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 981
    invoke-direct {p0}, Landroid/icu/text/CharsetRecog_sbcs;-><init>()V

    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 0

    const-string p0, "ar"

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "windows-1256"

    return-object p0
.end method

.method public match(Landroid/icu/text/CharsetDetector;)Landroid/icu/text/CharsetMatch;
    .locals 2

    .line 1040
    sget-object v0, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_windows_1256;->ngrams:[I

    sget-object v1, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_windows_1256;->byteMap:[B

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_windows_1256;->match(Landroid/icu/text/CharsetDetector;[I[B)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1041
    :cond_0
    new-instance v1, Landroid/icu/text/CharsetMatch;

    invoke-direct {v1, p1, p0, v0}, Landroid/icu/text/CharsetMatch;-><init>(Landroid/icu/text/CharsetDetector;Landroid/icu/text/CharsetRecognizer;I)V

    move-object p0, v1

    :goto_0
    return-object p0
.end method
