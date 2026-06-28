.class Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022CN;
.super Landroid/icu/text/CharsetRecog_2022;
.source "CharsetRecog_2022.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CharsetRecog_2022;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetRecog_2022CN"
.end annotation


# instance fields
.field private escapeSequences:[[B


# direct methods
.method constructor <init>()V
    .locals 5

    .line 146
    invoke-direct {p0}, Landroid/icu/text/CharsetRecog_2022;-><init>()V

    const/16 v0, 0xb

    new-array v0, v0, [[B

    const/4 v1, 0x4

    new-array v2, v1, [B

    .line 147
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_3

    const/4 v4, 0x3

    aput-object v2, v0, v4

    new-array v2, v1, [B

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    new-array v2, v1, [B

    fill-array-data v2, :array_5

    const/4 v4, 0x5

    aput-object v2, v0, v4

    new-array v2, v1, [B

    fill-array-data v2, :array_6

    const/4 v4, 0x6

    aput-object v2, v0, v4

    new-array v2, v1, [B

    fill-array-data v2, :array_7

    const/4 v4, 0x7

    aput-object v2, v0, v4

    new-array v1, v1, [B

    fill-array-data v1, :array_8

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-array v1, v3, [B

    fill-array-data v1, :array_9

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-array v1, v3, [B

    fill-array-data v1, :array_a

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iput-object v0, p0, Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022CN;->escapeSequences:[[B

    return-void

    nop

    :array_0
    .array-data 1
        0x1bt
        0x24t
        0x29t
        0x41t
    .end array-data

    :array_1
    .array-data 1
        0x1bt
        0x24t
        0x29t
        0x47t
    .end array-data

    :array_2
    .array-data 1
        0x1bt
        0x24t
        0x2at
        0x48t
    .end array-data

    :array_3
    .array-data 1
        0x1bt
        0x24t
        0x29t
        0x45t
    .end array-data

    :array_4
    .array-data 1
        0x1bt
        0x24t
        0x2bt
        0x49t
    .end array-data

    :array_5
    .array-data 1
        0x1bt
        0x24t
        0x2bt
        0x4at
    .end array-data

    :array_6
    .array-data 1
        0x1bt
        0x24t
        0x2bt
        0x4bt
    .end array-data

    :array_7
    .array-data 1
        0x1bt
        0x24t
        0x2bt
        0x4ct
    .end array-data

    :array_8
    .array-data 1
        0x1bt
        0x24t
        0x2bt
        0x4dt
    .end array-data

    :array_9
    .array-data 1
        0x1bt
        0x4et
    .end array-data

    nop

    :array_a
    .array-data 1
        0x1bt
        0x4ft
    .end array-data
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .locals 0

    const-string p0, "ISO-2022-CN"

    return-object p0
.end method

.method match(Landroid/icu/text/CharsetDetector;)Landroid/icu/text/CharsetMatch;
    .locals 3

    .line 168
    iget-object v0, p1, Landroid/icu/text/CharsetDetector;->fInputBytes:[B

    iget v1, p1, Landroid/icu/text/CharsetDetector;->fInputLen:I

    iget-object v2, p0, Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022CN;->escapeSequences:[[B

    invoke-virtual {p0, v0, v1, v2}, Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022CN;->match([BI[[B)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 169
    :cond_0
    new-instance v1, Landroid/icu/text/CharsetMatch;

    invoke-direct {v1, p1, p0, v0}, Landroid/icu/text/CharsetMatch;-><init>(Landroid/icu/text/CharsetDetector;Landroid/icu/text/CharsetRecognizer;I)V

    move-object p0, v1

    :goto_0
    return-object p0
.end method
