.class Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022KR;
.super Landroid/icu/text/CharsetRecog_2022;
.source "CharsetRecog_2022.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CharsetRecog_2022;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetRecog_2022KR"
.end annotation


# instance fields
.field private escapeSequences:[[B


# direct methods
.method constructor <init>()V
    .locals 3

    .line 129
    invoke-direct {p0}, Landroid/icu/text/CharsetRecog_2022;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [[B

    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 130
    fill-array-data v1, :array_0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022KR;->escapeSequences:[[B

    return-void

    :array_0
    .array-data 1
        0x1bt
        0x24t
        0x29t
        0x43t
    .end array-data
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .locals 0

    const-string p0, "ISO-2022-KR"

    return-object p0
.end method

.method match(Landroid/icu/text/CharsetDetector;)Landroid/icu/text/CharsetMatch;
    .locals 3

    .line 141
    iget-object v0, p1, Landroid/icu/text/CharsetDetector;->fInputBytes:[B

    iget v1, p1, Landroid/icu/text/CharsetDetector;->fInputLen:I

    iget-object v2, p0, Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022KR;->escapeSequences:[[B

    invoke-virtual {p0, v0, v1, v2}, Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022KR;->match([BI[[B)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 142
    :cond_0
    new-instance v1, Landroid/icu/text/CharsetMatch;

    invoke-direct {v1, p1, p0, v0}, Landroid/icu/text/CharsetMatch;-><init>(Landroid/icu/text/CharsetDetector;Landroid/icu/text/CharsetRecognizer;I)V

    move-object p0, v1

    :goto_0
    return-object p0
.end method
