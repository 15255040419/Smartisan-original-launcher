.class Lcom/android/vcard/VCardParserImpl_V30;
.super Lcom/android/vcard/VCardParserImpl_V21;
.source "VCardParserImpl_V30.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "vCard"


# instance fields
.field private mEmittedAgentWarning:Z

.field private mPreviousLine:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/android/vcard/VCardParserImpl_V21;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/android/vcard/VCardParserImpl_V30;->mEmittedAgentWarning:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/vcard/VCardParserImpl_V21;-><init>(I)V

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/android/vcard/VCardParserImpl_V30;->mEmittedAgentWarning:Z

    return-void
.end method

.method private splitAndPutParam(Lcom/android/vcard/VCardProperty;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 212
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move v4, v3

    move-object v5, v2

    :goto_0
    const-string v6, "vCard"

    if-ge v3, v0, :cond_7

    .line 214
    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x22

    if-ne v7, v8, :cond_3

    if-eqz v4, :cond_0

    .line 218
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/vcard/VCardParserImpl_V30;->encodeParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, p2, v4}, Lcom/android/vcard/VCardProperty;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v1

    :goto_1
    move-object v5, v2

    goto :goto_3

    :cond_0
    if-eqz v5, :cond_2

    .line 223
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    const-string v4, "Unexpected Dquote inside property."

    .line 226
    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 231
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/vcard/VCardParserImpl_V30;->encodeParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, p2, v4}, Lcom/android/vcard/VCardProperty;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/16 v8, 0x2c

    if-ne v7, v8, :cond_5

    if-nez v4, :cond_5

    if-nez v5, :cond_4

    .line 238
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Comma is used before actual string comes. ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 241
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/vcard/VCardParserImpl_V30;->encodeParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, p2, v5}, Lcom/android/vcard/VCardProperty;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    if-nez v5, :cond_6

    .line 248
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    :cond_6
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    if-eqz v4, :cond_8

    const-string p3, "Dangling Dquote."

    .line 256
    invoke-static {v6, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-eqz v5, :cond_a

    .line 259
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    if-nez p3, :cond_9

    const-string p0, "Unintended behavior. We must not see empty StringBuilder at the end of parameter value parsing."

    .line 260
    invoke-static {v6, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 263
    :cond_9
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/android/vcard/VCardParserImpl_V30;->encodeParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/android/vcard/VCardProperty;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_4
    return-void
.end method

.method public static unescapeCharacter(C)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x6e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4e

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 355
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "\n"

    return-object p0
.end method

.method public static unescapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 331
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_2

    add-int/lit8 v4, v1, -0x1

    if-ge v2, v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 333
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x6e

    if-eq v3, v4, :cond_1

    const/16 v4, 0x4e

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 337
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    :goto_1
    const-string v3, "\n"

    .line 335
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 340
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 343
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected encodeParamValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string p0, "ISO-8859-1"

    const-string v0, "UTF-8"

    .line 272
    invoke-static {p1, p0, v0}, Lcom/android/vcard/VCardUtils;->convertStringCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    return-object p1
.end method

.method protected getKnownPropertyNameSet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 361
    sget-object p0, Lcom/android/vcard/VCardParser_V30;->sKnownPropertyNameSet:Ljava/util/Set;

    return-object p0
.end method

.method protected getLine()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V30;->mPreviousLine:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 76
    iput-object v1, p0, Lcom/android/vcard/VCardParserImpl_V30;->mPreviousLine:Ljava/lang/String;

    return-object v0

    .line 79
    :cond_0
    iget-object p0, p0, Lcom/android/vcard/VCardParserImpl_V30;->mReader:Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;

    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getNonEmptyLine()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    .line 91
    :goto_0
    iget-object v2, p0, Lcom/android/vcard/VCardParserImpl_V30;->mReader:Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;

    invoke-virtual {v2}, Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 94
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    if-nez v1, :cond_6

    .line 108
    iget-object v3, p0, Lcom/android/vcard/VCardParserImpl_V30;->mPreviousLine:Ljava/lang/String;

    if-eqz v3, :cond_2

    goto :goto_2

    .line 111
    :cond_2
    iput-object v2, p0, Lcom/android/vcard/VCardParserImpl_V30;->mPreviousLine:Ljava/lang/String;

    goto :goto_0

    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    :cond_4
    iget-object v3, p0, Lcom/android/vcard/VCardParserImpl_V30;->mPreviousLine:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 103
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iput-object v0, p0, Lcom/android/vcard/VCardParserImpl_V30;->mPreviousLine:Ljava/lang/String;

    :cond_5
    const/4 v3, 0x1

    .line 106
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    .line 117
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 118
    :cond_7
    iget-object v1, p0, Lcom/android/vcard/VCardParserImpl_V30;->mPreviousLine:Ljava/lang/String;

    if-eqz v1, :cond_8

    move-object v0, v1

    .line 121
    :cond_8
    :goto_3
    iput-object v2, p0, Lcom/android/vcard/VCardParserImpl_V30;->mPreviousLine:Ljava/lang/String;

    if-eqz v0, :cond_9

    return-object v0

    .line 123
    :cond_9
    new-instance p0, Lcom/android/vcard/exception/VCardException;

    const-string v0, "Reached end of buffer."

    invoke-direct {p0, v0}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected getVersion()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected getVersionString()Ljava/lang/String;
    .locals 0

    const-string p0, "3.0"

    return-object p0
.end method

.method protected handleAgent(Lcom/android/vcard/VCardProperty;)V
    .locals 1

    .line 296
    iget-boolean p1, p0, Lcom/android/vcard/VCardParserImpl_V30;->mEmittedAgentWarning:Z

    if-nez p1, :cond_0

    const-string p1, "vCard"

    const-string v0, "AGENT in vCard 3.0 is not supported yet. Ignore it"

    .line 297
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 298
    iput-boolean p1, p0, Lcom/android/vcard/VCardParserImpl_V30;->mEmittedAgentWarning:Z

    :cond_0
    return-void
.end method

.method protected handleAnyParam(Lcom/android/vcard/VCardProperty;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 164
    invoke-direct {p0, p1, p2, p3}, Lcom/android/vcard/VCardParserImpl_V30;->splitAndPutParam(Lcom/android/vcard/VCardProperty;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected handleParamWithoutName(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 0

    .line 169
    invoke-virtual {p0, p1, p2}, Lcom/android/vcard/VCardParserImpl_V30;->handleType(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    return-void
.end method

.method protected handleParams(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .line 147
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/android/vcard/VCardParserImpl_V21;->handleParams(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x2

    const-string v1, "="

    .line 150
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 151
    array-length v2, v1

    if-ne v2, v0, :cond_0

    const/4 p2, 0x0

    .line 152
    aget-object p2, v1, p2

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/vcard/VCardParserImpl_V30;->handleAnyParam(Lcom/android/vcard/VCardProperty;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 155
    :cond_0
    new-instance p0, Lcom/android/vcard/exception/VCardException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown params value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected handleType(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 1

    const-string v0, "TYPE"

    .line 186
    invoke-direct {p0, p1, v0, p2}, Lcom/android/vcard/VCardParserImpl_V30;->splitAndPutParam(Lcom/android/vcard/VCardProperty;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected maybeUnescapeCharacter(C)Ljava/lang/String;
    .locals 0

    .line 348
    invoke-static {p1}, Lcom/android/vcard/VCardParserImpl_V30;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected maybeUnescapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 324
    invoke-static {p1}, Lcom/android/vcard/VCardParserImpl_V30;->unescapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected peekLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V30;->mPreviousLine:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 68
    :cond_0
    iget-object p0, p0, Lcom/android/vcard/VCardParserImpl_V30;->mReader:Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;

    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->peekLine()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected readBeginVCard(Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .line 137
    invoke-super {p0, p1}, Lcom/android/vcard/VCardParserImpl_V21;->readBeginVCard(Z)Z

    move-result p0

    return p0
.end method
