.class Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_7_el;
.super Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_7;
.source "CharsetRecog_sbcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CharsetRecog_sbcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetRecog_8859_7_el"
.end annotation


# static fields
.field private static ngrams:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [I

    .line 728
    fill-array-data v0, :array_0

    sput-object v0, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_7_el;->ngrams:[I

    return-void

    :array_0
    .array-data 4
        0x20e1ed
        0x20e1f0
        0x20e3e9
        0x20e4e9
        0x20e5f0
        0x20e720
        0x20eae1
        0x20ece5
        0x20ede1
        0x20ef20
        0x20f0e1
        0x20f0ef
        0x20f0f1
        0x20f3f4
        0x20f3f5
        0x20f4e7
        0x20f4ef
        0xdfe120
        0xe120e1
        0xe120f4
        0xe1e920
        0xe1ed20
        0xe1f0fc
        0xe1f220
        0xe3e9e1
        0xe5e920
        0xe5f220
        0xe720f4
        0xe7ed20
        0xe7f220
        0xe920f4
        0xe9e120
        0xe9eade
        0xe9f220
        0xeae1e9
        0xeae1f4
        0xece520
        0xed20e1
        0xed20e5
        0xed20f0
        0xede120
        0xeff220
        0xeff520
        0xf0eff5
        0xf0f1ef
        0xf0fc20
        0xf220e1
        0xf220e5
        0xf220ea
        0xf220f0
        0xf220f4
        0xf3e520
        0xf3e720
        0xf3f4ef
        0xf4e120
        0xf4e1e9
        0xf4e7ed
        0xf4e7f2
        0xf4e9ea
        0xf4ef20
        0xf4eff5
        0xf4f9ed
        0xf9ed20
        0xfeed20
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 726
    invoke-direct {p0}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_7;-><init>()V

    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 0

    const-string p0, "el"

    return-object p0
.end method

.method public match(Landroid/icu/text/CharsetDetector;)Landroid/icu/text/CharsetMatch;
    .locals 7

    .line 744
    iget-boolean v0, p1, Landroid/icu/text/CharsetDetector;->fC1Bytes:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "windows-1253"

    goto :goto_0

    :cond_0
    const-string v0, "ISO-8859-7"

    :goto_0
    move-object v5, v0

    .line 745
    sget-object v0, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_7_el;->ngrams:[I

    sget-object v1, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_7_el;->byteMap:[B

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_7_el;->match(Landroid/icu/text/CharsetDetector;[I[B)I

    move-result v4

    if-nez v4, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    .line 746
    :cond_1
    new-instance v0, Landroid/icu/text/CharsetMatch;

    const-string v6, "el"

    move-object v1, v0

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Landroid/icu/text/CharsetMatch;-><init>(Landroid/icu/text/CharsetDetector;Landroid/icu/text/CharsetRecognizer;ILjava/lang/String;Ljava/lang/String;)V

    move-object p0, v0

    :goto_1
    return-object p0
.end method
