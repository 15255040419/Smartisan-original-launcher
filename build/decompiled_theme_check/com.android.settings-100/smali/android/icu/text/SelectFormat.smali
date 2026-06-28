.class public Landroid/icu/text/SelectFormat;
.super Ljava/text/Format;
.source "SelectFormat.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = 0x2989d201f7bc66f8L


# instance fields
.field private transient msgPattern:Landroid/icu/text/MessagePattern;

.field private pattern:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 169
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    .line 170
    invoke-virtual {p0, p1}, Landroid/icu/text/SelectFormat;->applyPattern(Ljava/lang/String;)V

    return-void
.end method

.method static findSubMessage(Landroid/icu/text/MessagePattern;ILjava/lang/String;)I
    .locals 5

    .line 220
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->countParts()I

    move-result v0

    const/4 v1, 0x0

    :cond_0
    add-int/lit8 v2, p1, 0x1

    .line 224
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object p1

    .line 225
    invoke-virtual {p1}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v3

    .line 226
    sget-object v4, Landroid/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v3, v4, :cond_1

    goto :goto_0

    .line 231
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/MessagePattern;->partSubstringMatches(Landroid/icu/text/MessagePattern$Part;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    if-nez v1, :cond_3

    const-string/jumbo v3, "other"

    .line 234
    invoke-virtual {p0, p1, v3}, Landroid/icu/text/MessagePattern;->partSubstringMatches(Landroid/icu/text/MessagePattern$Part;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v1, v2

    .line 237
    :cond_3
    invoke-virtual {p0, v2}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    if-lt p1, v0, :cond_0

    :goto_0
    return v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 370
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 371
    iget-object p1, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 372
    invoke-virtual {p0, p1}, Landroid/icu/text/SelectFormat;->applyPattern(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    .line 177
    iput-object v0, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    .line 178
    iget-object p0, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    if-eqz p0, :cond_0

    .line 179
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->clear()V

    :cond_0
    return-void
.end method


# virtual methods
.method public applyPattern(Ljava/lang/String;)V
    .locals 1

    .line 191
    iput-object p1, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    .line 192
    iget-object v0, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Landroid/icu/text/MessagePattern;

    invoke-direct {v0}, Landroid/icu/text/MessagePattern;-><init>()V

    iput-object v0, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    .line 196
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0, p1}, Landroid/icu/text/MessagePattern;->parseSelectStyle(Ljava/lang/String;)Landroid/icu/text/MessagePattern;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 198
    invoke-direct {p0}, Landroid/icu/text/SelectFormat;->reset()V

    .line 199
    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 342
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 345
    :cond_1
    check-cast p1, Landroid/icu/text/SelectFormat;

    .line 346
    iget-object p0, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    if-nez p0, :cond_3

    iget-object p0, p1, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object p1, p1, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public final format(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 251
    invoke-static {p1}, Landroid/icu/impl/PatternProps;->isIdentifier(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 255
    iget-object v0, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->countParts()I

    move-result v0

    if-eqz v0, :cond_7

    .line 260
    iget-object v0, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/icu/text/SelectFormat;->findSubMessage(Landroid/icu/text/MessagePattern;ILjava/lang/String;)I

    move-result p1

    .line 261
    iget-object v0, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->jdkAposMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0, p1}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v0

    .line 263
    iget-object v1, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v1}, Landroid/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v2, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object p1

    invoke-virtual {p1}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result p1

    iget-object p0, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    .line 264
    invoke-virtual {p0, v0}, Landroid/icu/text/MessagePattern;->getPatternIndex(I)I

    move-result p0

    .line 263
    invoke-virtual {v1, p1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 268
    iget-object v1, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v1, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v1

    .line 270
    :cond_1
    :goto_0
    iget-object v2, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v2, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v2

    .line 271
    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v3

    .line 272
    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$Part;->getIndex()I

    move-result v4

    .line 273
    sget-object v5, Landroid/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v3, v5, :cond_3

    if-nez v0, :cond_2

    .line 275
    iget-object p0, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 277
    :cond_2
    iget-object p0, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 279
    :cond_3
    sget-object v5, Landroid/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v3, v5, :cond_5

    if-nez v0, :cond_4

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    :cond_4
    iget-object v3, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v1

    goto :goto_0

    .line 285
    :cond_5
    sget-object v2, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v3, v2, :cond_1

    if-nez v0, :cond_6

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    :cond_6
    iget-object v2, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 291
    iget-object v1, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v1, p1}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result p1

    .line 292
    iget-object v1, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v1, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v1

    .line 293
    iget-object v2, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    invoke-static {v2, v4, v1, v0}, Landroid/icu/text/MessagePattern;->appendReducedApostrophes(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    goto :goto_0

    .line 256
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid format error."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 252
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid formatting argument."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 0

    .line 313
    instance-of p3, p1, Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 314
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/icu/text/SelectFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p2

    .line 316
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not a String"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hashCode()I
    .locals 0

    .line 354
    iget-object p0, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 355
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 0

    .line 331
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public toPattern()Ljava/lang/String;
    .locals 0

    .line 209
    iget-object p0, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pattern=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
