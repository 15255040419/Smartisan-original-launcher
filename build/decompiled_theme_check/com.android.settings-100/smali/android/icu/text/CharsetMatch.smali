.class public Landroid/icu/text/CharsetMatch;
.super Ljava/lang/Object;
.source "CharsetMatch.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroid/icu/text/CharsetMatch;",
        ">;"
    }
.end annotation


# instance fields
.field private fCharsetName:Ljava/lang/String;

.field private fConfidence:I

.field private fInputStream:Ljava/io/InputStream;

.field private fLang:Ljava/lang/String;

.field private fRawInput:[B

.field private fRawLength:I


# direct methods
.method constructor <init>(Landroid/icu/text/CharsetDetector;Landroid/icu/text/CharsetRecognizer;I)V
    .locals 1

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 224
    iput-object v0, p0, Landroid/icu/text/CharsetMatch;->fRawInput:[B

    .line 228
    iput-object v0, p0, Landroid/icu/text/CharsetMatch;->fInputStream:Ljava/io/InputStream;

    .line 183
    iput p3, p0, Landroid/icu/text/CharsetMatch;->fConfidence:I

    .line 188
    iget-object p3, p1, Landroid/icu/text/CharsetDetector;->fInputStream:Ljava/io/InputStream;

    if-nez p3, :cond_0

    .line 191
    iget-object p3, p1, Landroid/icu/text/CharsetDetector;->fRawInput:[B

    iput-object p3, p0, Landroid/icu/text/CharsetMatch;->fRawInput:[B

    .line 192
    iget p3, p1, Landroid/icu/text/CharsetDetector;->fRawLength:I

    iput p3, p0, Landroid/icu/text/CharsetMatch;->fRawLength:I

    .line 194
    :cond_0
    iget-object p1, p1, Landroid/icu/text/CharsetDetector;->fInputStream:Ljava/io/InputStream;

    iput-object p1, p0, Landroid/icu/text/CharsetMatch;->fInputStream:Ljava/io/InputStream;

    .line 195
    invoke-virtual {p2}, Landroid/icu/text/CharsetRecognizer;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/CharsetMatch;->fCharsetName:Ljava/lang/String;

    .line 196
    invoke-virtual {p2}, Landroid/icu/text/CharsetRecognizer;->getLanguage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/CharsetMatch;->fLang:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/icu/text/CharsetDetector;Landroid/icu/text/CharsetRecognizer;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 224
    iput-object p2, p0, Landroid/icu/text/CharsetMatch;->fRawInput:[B

    .line 228
    iput-object p2, p0, Landroid/icu/text/CharsetMatch;->fInputStream:Ljava/io/InputStream;

    .line 203
    iput p3, p0, Landroid/icu/text/CharsetMatch;->fConfidence:I

    .line 208
    iget-object p2, p1, Landroid/icu/text/CharsetDetector;->fInputStream:Ljava/io/InputStream;

    if-nez p2, :cond_0

    .line 211
    iget-object p2, p1, Landroid/icu/text/CharsetDetector;->fRawInput:[B

    iput-object p2, p0, Landroid/icu/text/CharsetMatch;->fRawInput:[B

    .line 212
    iget p2, p1, Landroid/icu/text/CharsetDetector;->fRawLength:I

    iput p2, p0, Landroid/icu/text/CharsetMatch;->fRawLength:I

    .line 214
    :cond_0
    iget-object p1, p1, Landroid/icu/text/CharsetDetector;->fInputStream:Ljava/io/InputStream;

    iput-object p1, p0, Landroid/icu/text/CharsetMatch;->fInputStream:Ljava/io/InputStream;

    .line 215
    iput-object p4, p0, Landroid/icu/text/CharsetMatch;->fCharsetName:Ljava/lang/String;

    .line 216
    iput-object p5, p0, Landroid/icu/text/CharsetMatch;->fLang:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Landroid/icu/text/CharsetMatch;)I
    .locals 0

    .line 171
    iget p0, p0, Landroid/icu/text/CharsetMatch;->fConfidence:I

    iget p1, p1, Landroid/icu/text/CharsetMatch;->fConfidence:I

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    if-ge p0, p1, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 32
    check-cast p1, Landroid/icu/text/CharsetMatch;

    invoke-virtual {p0, p1}, Landroid/icu/text/CharsetMatch;->compareTo(Landroid/icu/text/CharsetMatch;)I

    move-result p0

    return p0
.end method

.method public getConfidence()I
    .locals 0

    .line 127
    iget p0, p0, Landroid/icu/text/CharsetMatch;->fConfidence:I

    return p0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 0

    .line 153
    iget-object p0, p0, Landroid/icu/text/CharsetMatch;->fLang:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 144
    iget-object p0, p0, Landroid/icu/text/CharsetMatch;->fCharsetName:Ljava/lang/String;

    return-object p0
.end method

.method public getReader()Ljava/io/Reader;
    .locals 4

    .line 47
    iget-object v0, p0, Landroid/icu/text/CharsetMatch;->fInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Landroid/icu/text/CharsetMatch;->fRawInput:[B

    const/4 v2, 0x0

    iget v3, p0, Landroid/icu/text/CharsetMatch;->fRawLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 54
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 55
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Landroid/icu/text/CharsetMatch;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 68
    invoke-virtual {p0, v0}, Landroid/icu/text/CharsetMatch;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Landroid/icu/text/CharsetMatch;->fInputStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x400

    new-array v3, v2, [C

    .line 89
    invoke-virtual {p0}, Landroid/icu/text/CharsetMatch;->getReader()Ljava/io/Reader;

    move-result-object p0

    if-gez p1, :cond_0

    const p1, 0x7fffffff

    .line 93
    :cond_0
    :goto_0
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p0, v3, v1, v4}, Ljava/io/Reader;->read([CII)I

    move-result v4

    if-ltz v4, :cond_1

    .line 94
    invoke-virtual {v0, v3, v1, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v4

    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 102
    :cond_2
    invoke-virtual {p0}, Landroid/icu/text/CharsetMatch;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "_rtl"

    .line 108
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_3

    const-string v0, "_ltr"

    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_4

    .line 110
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 112
    :cond_4
    new-instance v0, Ljava/lang/String;

    iget-object p0, p0, Landroid/icu/text/CharsetMatch;->fRawInput:[B

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method
