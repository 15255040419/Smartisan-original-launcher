.class public Landroid/icu/impl/UnicodeRegex;
.super Ljava/lang/Object;
.source "UnicodeRegex.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/icu/util/Freezable;
.implements Landroid/icu/text/StringTransform;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Landroid/icu/util/Freezable<",
        "Landroid/icu/impl/UnicodeRegex;",
        ">;",
        "Landroid/icu/text/StringTransform;"
    }
.end annotation


# static fields
.field private static final STANDARD:Landroid/icu/impl/UnicodeRegex;


# instance fields
.field private LongestFirst:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private bnfCommentString:Ljava/lang/String;

.field private bnfLineSeparator:Ljava/lang/String;

.field private bnfVariableInfix:Ljava/lang/String;

.field private symbolTable:Landroid/icu/text/SymbolTable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 355
    new-instance v0, Landroid/icu/impl/UnicodeRegex;

    invoke-direct {v0}, Landroid/icu/impl/UnicodeRegex;-><init>()V

    sput-object v0, Landroid/icu/impl/UnicodeRegex;->STANDARD:Landroid/icu/impl/UnicodeRegex;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "#"

    .line 356
    iput-object v0, p0, Landroid/icu/impl/UnicodeRegex;->bnfCommentString:Ljava/lang/String;

    const-string v0, "="

    .line 357
    iput-object v0, p0, Landroid/icu/impl/UnicodeRegex;->bnfVariableInfix:Ljava/lang/String;

    const-string v0, "\n"

    .line 358
    iput-object v0, p0, Landroid/icu/impl/UnicodeRegex;->bnfLineSeparator:Ljava/lang/String;

    .line 361
    new-instance v0, Landroid/icu/impl/UnicodeRegex$1;

    invoke-direct {v0, p0}, Landroid/icu/impl/UnicodeRegex$1;-><init>(Landroid/icu/impl/UnicodeRegex;)V

    iput-object v0, p0, Landroid/icu/impl/UnicodeRegex;->LongestFirst:Ljava/util/Comparator;

    return-void
.end method

.method public static appendLines(Ljava/util/List;Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    if-nez p2, :cond_0

    const-string p2, "UTF-8"

    :cond_0
    invoke-direct {v1, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 300
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-object p0

    .line 302
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static appendLines(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 282
    :try_start_0
    invoke-static {p0, v0, p2}, Landroid/icu/impl/UnicodeRegex;->appendLines(Ljava/util/List;Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw p0
.end method

.method public static compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 1

    .line 161
    sget-object v0, Landroid/icu/impl/UnicodeRegex;->STANDARD:Landroid/icu/impl/UnicodeRegex;

    invoke-virtual {v0, p0}, Landroid/icu/impl/UnicodeRegex;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public static compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;
    .locals 1

    .line 171
    sget-object v0, Landroid/icu/impl/UnicodeRegex;->STANDARD:Landroid/icu/impl/UnicodeRegex;

    invoke-virtual {v0, p0}, Landroid/icu/impl/UnicodeRegex;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public static fix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 151
    sget-object v0, Landroid/icu/impl/UnicodeRegex;->STANDARD:Landroid/icu/impl/UnicodeRegex;

    invoke-virtual {v0, p0}, Landroid/icu/impl/UnicodeRegex;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getVariables(Ljava/util/List;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 374
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Landroid/icu/impl/UnicodeRegex;->LongestFirst:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 376
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 378
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    move v5, v3

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x1

    add-int/2addr v5, v7

    .line 381
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    goto :goto_0

    .line 382
    :cond_1
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const v9, 0xfeff

    if-ne v8, v9, :cond_2

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 384
    :cond_2
    iget-object v7, p0, Landroid/icu/impl/UnicodeRegex;->bnfCommentString:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 385
    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_3

    .line 386
    invoke-virtual {v6, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 388
    :cond_3
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 389
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_4

    goto :goto_0

    .line 393
    :cond_4
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_5

    goto :goto_0

    :cond_5
    const-string v8, ";"

    .line 394
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v8, 0x3b

    .line 396
    invoke-virtual {v6, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    invoke-virtual {v6, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_6
    move-object v8, v6

    .line 398
    :goto_1
    iget-object v9, p0, Landroid/icu/impl/UnicodeRegex;->bnfVariableInfix:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const-string v10, ") "

    if-ltz v9, :cond_9

    if-nez v4, :cond_8

    .line 403
    invoke-virtual {v8, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 404
    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    add-int/lit8 v9, v9, 0x1

    .line 407
    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 405
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Duplicate variable definition in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 401
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Missing \';\' before "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    if-eqz v4, :cond_a

    .line 412
    iget-object v6, p0, Landroid/icu/impl/UnicodeRegex;->bnfLineSeparator:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    if-eqz v7, :cond_0

    .line 416
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    move-object v4, v2

    goto/16 :goto_0

    .line 410
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Missing \'=\' at "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    if-nez v4, :cond_c

    return-object v0

    .line 422
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Missing \';\' at end"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private processSet(Ljava/lang/String;ILjava/lang/StringBuilder;Landroid/icu/text/UnicodeSet;Ljava/text/ParsePosition;)I
    .locals 0

    .line 344
    :try_start_0
    invoke-virtual {p5, p2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 345
    invoke-virtual {p4}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    move-result-object p2

    iget-object p0, p0, Landroid/icu/impl/UnicodeRegex;->symbolTable:Landroid/icu/text/SymbolTable;

    const/4 p4, 0x0

    invoke-virtual {p2, p1, p5, p0, p4}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;I)Landroid/icu/text/UnicodeSet;

    move-result-object p0

    .line 346
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->complement()Landroid/icu/text/UnicodeSet;

    move-result-object p2

    invoke-virtual {p2}, Landroid/icu/text/UnicodeSet;->complement()Landroid/icu/text/UnicodeSet;

    .line 347
    invoke-virtual {p0, p4}, Landroid/icu/text/UnicodeSet;->toPattern(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {p5}, Ljava/text/ParsePosition;->getIndex()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p0, p0, -0x1

    return p0

    :catch_0
    move-exception p0

    .line 351
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Error in "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/IllegalArgumentException;

    throw p0
.end method


# virtual methods
.method public cloneAsThawed()Landroid/icu/impl/UnicodeRegex;
    .locals 0

    .line 316
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/UnicodeRegex;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 318
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0}, Landroid/icu/impl/UnicodeRegex;->cloneAsThawed()Landroid/icu/impl/UnicodeRegex;

    move-result-object p0

    return-object p0
.end method

.method public compileBnf(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "\\r\\n?|\\n"

    .line 181
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/icu/impl/UnicodeRegex;->compileBnf(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public compileBnf(Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 211
    invoke-direct {p0, p1}, Landroid/icu/impl/UnicodeRegex;->getVariables(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    .line 212
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_4

    .line 216
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 217
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 218
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 220
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 221
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 222
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 223
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    .line 226
    :cond_2
    invoke-virtual {v5, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 227
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 228
    invoke-interface {p1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 229
    invoke-interface {p0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    :cond_4
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 244
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 242
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not a single root: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public freeze()Landroid/icu/impl/UnicodeRegex;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0}, Landroid/icu/impl/UnicodeRegex;->freeze()Landroid/icu/impl/UnicodeRegex;

    move-result-object p0

    return-object p0
.end method

.method public getBnfCommentString()Ljava/lang/String;
    .locals 0

    .line 248
    iget-object p0, p0, Landroid/icu/impl/UnicodeRegex;->bnfCommentString:Ljava/lang/String;

    return-object p0
.end method

.method public getBnfLineSeparator()Ljava/lang/String;
    .locals 0

    .line 264
    iget-object p0, p0, Landroid/icu/impl/UnicodeRegex;->bnfLineSeparator:Ljava/lang/String;

    return-object p0
.end method

.method public getBnfVariableInfix()Ljava/lang/String;
    .locals 0

    .line 256
    iget-object p0, p0, Landroid/icu/impl/UnicodeRegex;->bnfVariableInfix:Ljava/lang/String;

    return-object p0
.end method

.method public getSymbolTable()Landroid/icu/text/SymbolTable;
    .locals 0

    .line 55
    iget-object p0, p0, Landroid/icu/impl/UnicodeRegex;->symbolTable:Landroid/icu/text/SymbolTable;

    return-object p0
.end method

.method public isFrozen()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setBnfCommentString(Ljava/lang/String;)V
    .locals 0

    .line 252
    iput-object p1, p0, Landroid/icu/impl/UnicodeRegex;->bnfCommentString:Ljava/lang/String;

    return-void
.end method

.method public setBnfLineSeparator(Ljava/lang/String;)V
    .locals 0

    .line 268
    iput-object p1, p0, Landroid/icu/impl/UnicodeRegex;->bnfLineSeparator:Ljava/lang/String;

    return-void
.end method

.method public setBnfVariableInfix(Ljava/lang/String;)V
    .locals 0

    .line 260
    iput-object p1, p0, Landroid/icu/impl/UnicodeRegex;->bnfVariableInfix:Ljava/lang/String;

    return-void
.end method

.method public setSymbolTable(Landroid/icu/text/SymbolTable;)Landroid/icu/impl/UnicodeRegex;
    .locals 0

    .line 63
    iput-object p1, p0, Landroid/icu/impl/UnicodeRegex;->symbolTable:Landroid/icu/text/SymbolTable;

    return-object p0
.end method

.method public bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/icu/impl/UnicodeRegex;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public transform(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .line 89
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    new-instance v7, Landroid/icu/text/UnicodeSet;

    invoke-direct {v7}, Landroid/icu/text/UnicodeSet;-><init>()V

    .line 91
    new-instance v8, Ljava/text/ParsePosition;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Ljava/text/ParsePosition;-><init>(I)V

    move v2, v9

    move v10, v2

    .line 98
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v2, v0, :cond_8

    .line 100
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5c

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v11, 0x1

    if-eqz v10, :cond_5

    if-eq v10, v11, :cond_2

    if-eq v10, v4, :cond_1

    if-eq v10, v3, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x45

    move v3, v4

    goto :goto_2

    :cond_1
    if-ne v0, v1, :cond_7

    goto :goto_2

    :cond_2
    const/16 v1, 0x51

    if-ne v0, v1, :cond_4

    :cond_3
    move v3, v11

    goto :goto_2

    :cond_4
    move v3, v9

    goto :goto_2

    :cond_5
    if-ne v0, v1, :cond_6

    .line 104
    invoke-static {p1, v2}, Landroid/icu/text/UnicodeSet;->resemblesPattern(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, p0

    move-object v1, p1

    move-object v3, v6

    move-object v4, v7

    move-object v5, v8

    .line 106
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/UnicodeRegex;->processSet(Ljava/lang/String;ILjava/lang/StringBuilder;Landroid/icu/text/UnicodeSet;Ljava/text/ParsePosition;)I

    move-result v2

    goto :goto_3

    :cond_6
    const/16 v1, 0x5b

    if-ne v0, v1, :cond_7

    .line 112
    invoke-static {p1, v2}, Landroid/icu/text/UnicodeSet;->resemblesPattern(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object v0, p0

    move-object v1, p1

    move-object v3, v6

    move-object v4, v7

    move-object v5, v8

    .line 113
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/UnicodeRegex;->processSet(Ljava/lang/String;ILjava/lang/StringBuilder;Landroid/icu/text/UnicodeSet;Ljava/text/ParsePosition;)I

    move-result v2

    goto :goto_3

    :cond_7
    :goto_1
    move v3, v10

    .line 140
    :goto_2
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v10, v3

    :goto_3
    add-int/2addr v2, v11

    goto :goto_0

    .line 142
    :cond_8
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
