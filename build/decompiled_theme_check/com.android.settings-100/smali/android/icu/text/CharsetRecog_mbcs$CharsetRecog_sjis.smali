.class Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_sjis;
.super Landroid/icu/text/CharsetRecog_mbcs;
.source "CharsetRecog_mbcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CharsetRecog_mbcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetRecog_sjis"
.end annotation


# static fields
.field static commonChars:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x39

    new-array v0, v0, [I

    .line 190
    fill-array-data v0, :array_0

    sput-object v0, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_sjis;->commonChars:[I

    return-void

    :array_0
    .array-data 4
        0x8140
        0x8141
        0x8142
        0x8145
        0x815b
        0x8169
        0x816a
        0x8175
        0x8176
        0x82a0
        0x82a2
        0x82a4
        0x82a9
        0x82aa
        0x82ab
        0x82ad
        0x82af
        0x82b1
        0x82b3
        0x82b5
        0x82b7
        0x82bd
        0x82be
        0x82c1
        0x82c4
        0x82c5
        0x82c6
        0x82c8
        0x82c9
        0x82cc
        0x82cd
        0x82dc
        0x82e0
        0x82e7
        0x82e8
        0x82e9
        0x82ea
        0x82f0
        0x82f1
        0x8341
        0x8343
        0x834e
        0x834f
        0x8358
        0x835e
        0x8362
        0x8367
        0x8375
        0x8376
        0x8389
        0x838a
        0x838b
        0x838d
        0x8393
        0x8e96
        0x93fa
        0x95aa
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 189
    invoke-direct {p0}, Landroid/icu/text/CharsetRecog_mbcs;-><init>()V

    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 0

    const-string p0, "ja"

    return-object p0
.end method

.method getName()Ljava/lang/String;
    .locals 0

    const-string p0, "Shift_JIS"

    return-object p0
.end method

.method match(Landroid/icu/text/CharsetDetector;)Landroid/icu/text/CharsetMatch;
    .locals 2

    .line 228
    sget-object v0, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_sjis;->commonChars:[I

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_sjis;->match(Landroid/icu/text/CharsetDetector;[I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 229
    :cond_0
    new-instance v1, Landroid/icu/text/CharsetMatch;

    invoke-direct {v1, p1, p0, v0}, Landroid/icu/text/CharsetMatch;-><init>(Landroid/icu/text/CharsetDetector;Landroid/icu/text/CharsetRecognizer;I)V

    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method nextChar(Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;Landroid/icu/text/CharsetDetector;)Z
    .locals 4

    const/4 p0, 0x0

    .line 203
    iput-boolean p0, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    .line 205
    invoke-virtual {p1, p2}, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->nextByte(Landroid/icu/text/CharsetDetector;)I

    move-result v0

    iput v0, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    if-gez v0, :cond_0

    return p0

    :cond_0
    const/16 v1, 0x7f

    const/4 v2, 0x1

    if-le v0, v1, :cond_5

    const/16 v3, 0xa0

    if-le v0, v3, :cond_1

    const/16 v3, 0xdf

    if-gt v0, v3, :cond_1

    goto :goto_0

    .line 214
    :cond_1
    invoke-virtual {p1, p2}, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->nextByte(Landroid/icu/text/CharsetDetector;)I

    move-result p2

    if-gez p2, :cond_2

    return p0

    :cond_2
    shl-int/lit8 p0, v0, 0x8

    or-int/2addr p0, p2

    .line 218
    iput p0, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    const/16 p0, 0x40

    if-lt p2, p0, :cond_3

    if-le p2, v1, :cond_5

    :cond_3
    const/16 p0, 0x80

    if-lt p2, p0, :cond_4

    const/16 p0, 0xff

    if-le p2, p0, :cond_5

    .line 221
    :cond_4
    iput-boolean v2, p1, Landroid/icu/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    :cond_5
    :goto_0
    return v2
.end method
