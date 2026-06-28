.class public Landroid/icu/impl/duration/impl/XMLRecordReader;
.super Ljava/lang/Object;
.source "XMLRecordReader.java"

# interfaces
.implements Landroid/icu/impl/duration/impl/RecordReader;


# instance fields
.field private atTag:Z

.field private nameStack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/io/Reader;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Landroid/icu/impl/duration/impl/XMLRecordReader;->r:Ljava/io/Reader;

    .line 34
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/icu/impl/duration/impl/XMLRecordReader;->nameStack:Ljava/util/List;

    .line 37
    invoke-direct {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "?xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 38
    invoke-direct {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->advance()V

    .line 42
    :cond_0
    invoke-direct {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "!--"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 43
    invoke-direct {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->advance()V

    :cond_1
    return-void
.end method

.method private advance()V
    .locals 1

    const/4 v0, 0x0

    .line 207
    iput-object v0, p0, Landroid/icu/impl/duration/impl/XMLRecordReader;->tag:Ljava/lang/String;

    return-void
.end method

.method private getTag()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Landroid/icu/impl/duration/impl/XMLRecordReader;->tag:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 201
    invoke-direct {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->readNextTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/impl/XMLRecordReader;->tag:Ljava/lang/String;

    .line 203
    :cond_0
    iget-object p0, p0, Landroid/icu/impl/duration/impl/XMLRecordReader;->tag:Ljava/lang/String;

    return-object p0
.end method

.method private match(Ljava/lang/String;)Z
    .locals 1

    .line 191
    invoke-direct {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 193
    invoke-direct {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->advance()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private readData()Ljava/lang/String;
    .locals 10

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 215
    :goto_0
    invoke-virtual {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->readChar()I

    move-result v3

    const/4 v4, 0x1

    const/16 v5, 0x3c

    const/4 v6, -0x1

    if-eq v3, v6, :cond_d

    if-ne v3, v5, :cond_0

    goto/16 :goto_5

    :cond_0
    const/16 v7, 0x26

    if-ne v3, v7, :cond_a

    .line 221
    invoke-virtual {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->readChar()I

    move-result v3

    const/16 v8, 0x23

    const/16 v9, 0x3b

    if-ne v3, v8, :cond_3

    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0xa

    .line 225
    invoke-virtual {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->readChar()I

    move-result v7

    const/16 v8, 0x78

    if-ne v7, v8, :cond_1

    const/16 v5, 0x10

    .line 228
    invoke-virtual {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->readChar()I

    move-result v7

    :cond_1
    :goto_1
    if-eq v7, v9, :cond_2

    if-eq v7, v6, :cond_2

    int-to-char v7, v7

    .line 231
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->readChar()I

    move-result v7

    goto :goto_1

    .line 235
    :cond_2
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-char v3, v3

    goto/16 :goto_3

    :catch_0
    move-exception p0

    .line 238
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numbuf: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " radix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 240
    throw p0

    .line 243
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    if-eq v3, v9, :cond_4

    if-eq v3, v6, :cond_4

    int-to-char v3, v3

    .line 245
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->readChar()I

    move-result v3

    goto :goto_2

    .line 248
    :cond_4
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "lt"

    .line 249
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v3, v5

    goto :goto_3

    :cond_5
    const-string v5, "gt"

    .line 251
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v3, 0x3e

    goto :goto_3

    :cond_6
    const-string/jumbo v5, "quot"

    .line 253
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v3, 0x22

    goto :goto_3

    :cond_7
    const-string v5, "apos"

    .line 255
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v3, 0x27

    goto :goto_3

    :cond_8
    const-string v5, "amp"

    .line 257
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    move v3, v7

    goto :goto_3

    .line 260
    :cond_9
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unrecognized character entity: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 267
    :cond_a
    :goto_3
    invoke-static {v3}, Landroid/icu/lang/UCharacter;->isWhitespace(I)Z

    move-result v5

    if-eqz v5, :cond_c

    if-eqz v2, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v3, 0x20

    move v2, v4

    goto :goto_4

    :cond_c
    move v2, v1

    :goto_4
    int-to-char v3, v3

    .line 276
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_d
    :goto_5
    if-ne v3, v5, :cond_e

    move v1, v4

    .line 217
    :cond_e
    iput-boolean v1, p0, Landroid/icu/impl/duration/impl/XMLRecordReader;->atTag:Z

    .line 279
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private readNextTag()Ljava/lang/String;
    .locals 5

    .line 284
    :cond_0
    iget-boolean v0, p0, Landroid/icu/impl/duration/impl/XMLRecordReader;->atTag:Z

    const/4 v1, -0x1

    if-nez v0, :cond_3

    .line 285
    invoke-virtual {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->readChar()I

    move-result v0

    const/16 v2, 0x3c

    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 292
    :cond_1
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isWhitespace(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 293
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected non-whitespace character "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    .line 288
    iput-boolean v0, p0, Landroid/icu/impl/duration/impl/XMLRecordReader;->atTag:Z

    .line 299
    :cond_3
    :goto_1
    iget-boolean v0, p0, Landroid/icu/impl/duration/impl/XMLRecordReader;->atTag:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 300
    iput-boolean v0, p0, Landroid/icu/impl/duration/impl/XMLRecordReader;->atTag:Z

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    :goto_2
    invoke-virtual {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->readChar()I

    move-result v2

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_5

    if-ne v2, v1, :cond_4

    goto :goto_3

    :cond_4
    int-to-char v2, v2

    .line 307
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 310
    :cond_5
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public bool(Ljava/lang/String;)Z
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Landroid/icu/impl/duration/impl/XMLRecordReader;->string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string/jumbo p1, "true"

    .line 73
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public boolArray(Ljava/lang/String;)[Z
    .locals 3

    .line 80
    invoke-virtual {p0, p1}, Landroid/icu/impl/duration/impl/XMLRecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 82
    array-length p1, p0

    new-array p1, p1, [Z

    const/4 v0, 0x0

    .line 83
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 84
    aget-object v1, p0, v0

    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    aput-boolean v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public character(Ljava/lang/String;)C
    .locals 0

    .line 93
    invoke-virtual {p0, p1}, Landroid/icu/impl/duration/impl/XMLRecordReader;->string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 95
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0

    :cond_0
    const p0, 0xffff

    return p0
.end method

.method public characterArray(Ljava/lang/String;)[C
    .locals 3

    .line 102
    invoke-virtual {p0, p1}, Landroid/icu/impl/duration/impl/XMLRecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 104
    array-length p1, p0

    new-array p1, p1, [C

    const/4 v0, 0x0

    move v1, v0

    .line 105
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 106
    aget-object v2, p0, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public close()Z
    .locals 6

    .line 59
    iget-object v0, p0, Landroid/icu/impl/duration/impl/XMLRecordReader;->nameStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 60
    iget-object v2, p0, Landroid/icu/impl/duration/impl/XMLRecordReader;->nameStack:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 61
    invoke-direct {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->getTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    iget-object v2, p0, Landroid/icu/impl/duration/impl/XMLRecordReader;->nameStack:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 63
    invoke-direct {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->advance()V

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public namedIndex(Ljava/lang/String;[Ljava/lang/String;)B
    .locals 1

    .line 115
    invoke-virtual {p0, p1}, Landroid/icu/impl/duration/impl/XMLRecordReader;->string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    .line 117
    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_1

    .line 118
    aget-object v0, p2, p1

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-byte p0, p1

    return p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public namedIndexArray(Ljava/lang/String;[Ljava/lang/String;)[B
    .locals 5

    .line 128
    invoke-virtual {p0, p1}, Landroid/icu/impl/duration/impl/XMLRecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 130
    array-length p1, p0

    new-array p1, p1, [B

    const/4 v0, 0x0

    move v1, v0

    .line 131
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 132
    aget-object v2, p0, v1

    move v3, v0

    .line 133
    :goto_1
    array-length v4, p2

    if-ge v3, v4, :cond_1

    .line 134
    aget-object v4, p2, v3

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    int-to-byte v2, v3

    .line 135
    aput-byte v2, p1, v1

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    .line 139
    aput-byte v2, p1, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public open(Ljava/lang/String;)Z
    .locals 1

    .line 49
    invoke-direct {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Landroid/icu/impl/duration/impl/XMLRecordReader;->nameStack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-direct {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->advance()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method readChar()I
    .locals 0

    .line 317
    :try_start_0
    iget-object p0, p0, Landroid/icu/impl/duration/impl/XMLRecordReader;->r:Ljava/io/Reader;

    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method public string(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 148
    invoke-direct {p0, p1}, Landroid/icu/impl/duration/impl/XMLRecordReader;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-direct {p0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->readData()Ljava/lang/String;

    move-result-object v0

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/impl/duration/impl/XMLRecordReader;->match(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public stringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "List"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->match(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    :goto_0
    invoke-virtual {p0, p1}, Landroid/icu/impl/duration/impl/XMLRecordReader;->string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "Null"

    .line 163
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v3, v2

    .line 166
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 168
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/impl/duration/impl/XMLRecordReader;->match(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 169
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_2
    return-object v2
.end method

.method public stringTable(Ljava/lang/String;)[[Ljava/lang/String;
    .locals 4

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Table"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/impl/duration/impl/XMLRecordReader;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 180
    :goto_0
    invoke-virtual {p0, p1}, Landroid/icu/impl/duration/impl/XMLRecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 181
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 183
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/impl/duration/impl/XMLRecordReader;->match(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 184
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [[Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[Ljava/lang/String;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
