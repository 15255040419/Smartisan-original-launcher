.class public Landroid/icu/impl/data/ResourceReader;
.super Ljava/lang/Object;
.source "ResourceReader.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private encoding:Ljava/lang/String;

.field private lineNo:I

.field private reader:Ljava/io/BufferedReader;

.field private resourceName:Ljava/lang/String;

.field private root:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 126
    invoke-direct {p0, p1, p2, v0}, Landroid/icu/impl/data/ResourceReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Landroid/icu/impl/data/ResourceReader;->reader:Ljava/io/BufferedReader;

    .line 102
    iput-object v0, p0, Landroid/icu/impl/data/ResourceReader;->root:Ljava/lang/Class;

    .line 103
    iput-object p2, p0, Landroid/icu/impl/data/ResourceReader;->resourceName:Ljava/lang/String;

    .line 104
    iput-object p3, p0, Landroid/icu/impl/data/ResourceReader;->encoding:Ljava/lang/String;

    const/4 p2, -0x1

    .line 106
    iput p2, p0, Landroid/icu/impl/data/ResourceReader;->lineNo:I

    if-nez p3, :cond_0

    .line 109
    :try_start_0
    new-instance p2, Ljava/io/InputStreamReader;

    invoke-direct {p2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 110
    :cond_0
    new-instance p2, Ljava/io/InputStreamReader;

    invoke-direct {p2, p1, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 112
    :goto_0
    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object p1, p0, Landroid/icu/impl/data/ResourceReader;->reader:Ljava/io/BufferedReader;

    const/4 p1, 0x0

    .line 113
    iput p1, p0, Landroid/icu/impl/data/ResourceReader;->lineNo:I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Landroid/icu/impl/data/ResourceReader;->reader:Ljava/io/BufferedReader;

    .line 136
    iput-object p1, p0, Landroid/icu/impl/data/ResourceReader;->root:Ljava/lang/Class;

    .line 137
    iput-object p2, p0, Landroid/icu/impl/data/ResourceReader;->resourceName:Ljava/lang/String;

    .line 138
    iput-object v0, p0, Landroid/icu/impl/data/ResourceReader;->encoding:Ljava/lang/String;

    const/4 p1, -0x1

    .line 139
    iput p1, p0, Landroid/icu/impl/data/ResourceReader;->lineNo:I

    .line 141
    :try_start_0
    invoke-direct {p0}, Landroid/icu/impl/data/ResourceReader;->_reset()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Landroid/icu/impl/data/ResourceReader;->reader:Ljava/io/BufferedReader;

    .line 88
    iput-object p1, p0, Landroid/icu/impl/data/ResourceReader;->root:Ljava/lang/Class;

    .line 89
    iput-object p2, p0, Landroid/icu/impl/data/ResourceReader;->resourceName:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Landroid/icu/impl/data/ResourceReader;->encoding:Ljava/lang/String;

    const/4 p1, -0x1

    .line 91
    iput p1, p0, Landroid/icu/impl/data/ResourceReader;->lineNo:I

    .line 92
    invoke-direct {p0}, Landroid/icu/impl/data/ResourceReader;->_reset()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 73
    const-class v0, Landroid/icu/impl/ICUData;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/icu/impl/data/ResourceReader;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 63
    const-class v0, Landroid/icu/impl/ICUData;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Landroid/icu/impl/data/ResourceReader;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private _reset()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 240
    :try_start_0
    invoke-virtual {p0}, Landroid/icu/impl/data/ResourceReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :catch_0
    iget v0, p0, Landroid/icu/impl/data/ResourceReader;->lineNo:I

    if-nez v0, :cond_0

    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/data/ResourceReader;->root:Ljava/lang/Class;

    iget-object v1, p0, Landroid/icu/impl/data/ResourceReader;->resourceName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/icu/impl/ICUData;->getStream(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 251
    iget-object v1, p0, Landroid/icu/impl/data/ResourceReader;->encoding:Ljava/lang/String;

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 252
    :cond_1
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v1, v2

    .line 253
    :goto_0
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Landroid/icu/impl/data/ResourceReader;->reader:Ljava/io/BufferedReader;

    const/4 v0, 0x0

    .line 254
    iput v0, p0, Landroid/icu/impl/data/ResourceReader;->lineNo:I

    return-void

    .line 247
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t open "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/icu/impl/data/ResourceReader;->resourceName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    iget-object v0, p0, Landroid/icu/impl/data/ResourceReader;->reader:Ljava/io/BufferedReader;

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    const/4 v0, 0x0

    .line 266
    iput-object v0, p0, Landroid/icu/impl/data/ResourceReader;->reader:Ljava/io/BufferedReader;

    :cond_0
    return-void
.end method

.method public describePosition()Ljava/lang/String;
    .locals 2

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/icu/impl/data/ResourceReader;->resourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/icu/impl/data/ResourceReader;->lineNo:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLineNumber()I
    .locals 0

    .line 203
    iget p0, p0, Landroid/icu/impl/data/ResourceReader;->lineNo:I

    return p0
.end method

.method public readLine()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    iget v0, p0, Landroid/icu/impl/data/ResourceReader;->lineNo:I

    const/4 v1, 0x1

    if-nez v0, :cond_2

    add-int/2addr v0, v1

    .line 152
    iput v0, p0, Landroid/icu/impl/data/ResourceReader;->lineNo:I

    .line 153
    iget-object p0, p0, Landroid/icu/impl/data/ResourceReader;->reader:Ljava/io/BufferedReader;

    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 154
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v3, 0xffef

    if-eq v2, v3, :cond_0

    .line 155
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const v2, 0xfeff

    if-ne v0, v2, :cond_1

    .line 156
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0

    :cond_2
    add-int/2addr v0, v1

    .line 160
    iput v0, p0, Landroid/icu/impl/data/ResourceReader;->lineNo:I

    .line 161
    iget-object p0, p0, Landroid/icu/impl/data/ResourceReader;->reader:Ljava/io/BufferedReader;

    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public readLineSkippingComments()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 193
    invoke-virtual {p0, v0}, Landroid/icu/impl/data/ResourceReader;->readLineSkippingComments(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public readLineSkippingComments(Z)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/icu/impl/data/ResourceReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v0

    :cond_1
    const/4 v1, 0x0

    .line 176
    invoke-static {v0, v1}, Landroid/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 178
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public reset()V
    .locals 0

    .line 224
    :try_start_0
    invoke-direct {p0}, Landroid/icu/impl/data/ResourceReader;->_reset()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
