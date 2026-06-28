.class Landroid/icu/text/TransliteratorIDParser;
.super Ljava/lang/Object;
.source "TransliteratorIDParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/TransliteratorIDParser$SingleID;,
        Landroid/icu/text/TransliteratorIDParser$Specs;
    }
.end annotation


# static fields
.field private static final ANY:Ljava/lang/String; = "Any"

.field private static final CLOSE_REV:C = ')'

.field private static final FORWARD:I = 0x0

.field private static final ID_DELIM:C = ';'

.field private static final OPEN_REV:C = '('

.field private static final REVERSE:I = 0x1

.field private static final SPECIAL_INVERSES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/icu/util/CaseInsensitiveString;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TARGET_SEP:C = '-'

.field private static final VARIANT_SEP:C = '/'


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 68
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/icu/text/TransliteratorIDParser;->SPECIAL_INVERSES:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IDtoSTV(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    const/16 v0, 0x2d

    .line 473
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0x2f

    .line 474
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 476
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "Any"

    if-gez v0, :cond_1

    .line 482
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 483
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    move v5, v2

    goto :goto_2

    :cond_1
    if-ge v0, v1, :cond_3

    if-lez v0, :cond_2

    .line 487
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move v5, v3

    goto :goto_0

    :cond_2
    move v5, v2

    :goto_0
    add-int/2addr v0, v3

    .line 490
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 491
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_3
    if-lez v1, :cond_4

    .line 495
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move v5, v3

    goto :goto_1

    :cond_4
    move v5, v2

    :goto_1
    add-int/lit8 v6, v0, 0x1

    .line 498
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 499
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    move-object v7, v0

    move-object v0, p0

    move-object p0, v7

    .line 502
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 503
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_5
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    const/4 v0, 0x2

    aput-object p0, v1, v0

    const/4 p0, 0x3

    if-eqz v5, :cond_6

    const-string v0, ""

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    aput-object v0, v1, p0

    return-object v1
.end method

.method public static STVtoID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 519
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "Any"

    .line 520
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 p0, 0x2d

    .line 522
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    .line 523
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x2f

    .line 524
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static instantiateList(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/icu/text/TransliteratorIDParser$SingleID;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/icu/text/Transliterator;",
            ">;"
        }
    .end annotation

    .line 433
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 434
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/TransliteratorIDParser$SingleID;

    .line 435
    iget-object v2, v1, Landroid/icu/text/TransliteratorIDParser$SingleID;->basicID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 438
    :cond_0
    invoke-virtual {v1}, Landroid/icu/text/TransliteratorIDParser$SingleID;->getInstance()Landroid/icu/text/Transliterator;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 442
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 440
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal ID "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 446
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_4

    const/4 p0, 0x0

    const-string v1, "Any-Null"

    .line 447
    invoke-static {v1, p0}, Landroid/icu/text/Transliterator;->getBasicInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/text/Transliterator;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 452
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 450
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Internal error; cannot instantiate Any-Null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    return-object v0
.end method

.method public static parseCompoundID(Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/util/List;[Landroid/icu/text/UnicodeSet;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/List<",
            "Landroid/icu/text/TransliteratorIDParser$SingleID;",
            ">;[",
            "Landroid/icu/text/UnicodeSet;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    new-array v3, v0, [I

    .line 351
    invoke-interface {p3}, Ljava/util/List;->clear()V

    const/4 v4, 0x0

    .line 353
    aput-object v4, p4, v2

    .line 354
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    aput v2, v3, v2

    .line 358
    invoke-static {p0, v1, p1, v3, p2}, Landroid/icu/text/TransliteratorIDParser;->parseGlobalFilter(Ljava/lang/String;[II[ILjava/lang/StringBuffer;)Landroid/icu/text/UnicodeSet;

    move-result-object v4

    const/16 v5, 0x3b

    if-eqz v4, :cond_1

    .line 360
    invoke-static {p0, v1, v5}, Landroid/icu/impl/Utility;->parseChar(Ljava/lang/String;[IC)Z

    move-result v6

    if-nez v6, :cond_0

    .line 362
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    aput v2, v1, v2

    :cond_0
    if-nez p1, :cond_1

    .line 366
    aput-object v4, p4, v2

    .line 372
    :cond_1
    invoke-static {p0, v1, p1}, Landroid/icu/text/TransliteratorIDParser;->parseSingleID(Ljava/lang/String;[II)Landroid/icu/text/TransliteratorIDParser$SingleID;

    move-result-object v4

    if-nez v4, :cond_2

    move v4, v0

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    .line 377
    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 379
    :cond_3
    invoke-interface {p3, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 381
    :goto_0
    invoke-static {p0, v1, v5}, Landroid/icu/impl/Utility;->parseChar(Ljava/lang/String;[IC)Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v2

    .line 387
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_4

    return v2

    :cond_4
    move v6, v2

    .line 392
    :goto_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 393
    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/icu/text/TransliteratorIDParser$SingleID;

    .line 394
    iget-object v7, v7, Landroid/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 395
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v0

    if-eq v6, v7, :cond_5

    .line 396
    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    if-eqz v4, :cond_7

    aput v0, v3, v2

    .line 404
    invoke-static {p0, v1, p1, v3, p2}, Landroid/icu/text/TransliteratorIDParser;->parseGlobalFilter(Ljava/lang/String;[II[ILjava/lang/StringBuffer;)Landroid/icu/text/UnicodeSet;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 407
    invoke-static {p0, v1, v5}, Landroid/icu/impl/Utility;->parseChar(Ljava/lang/String;[IC)Z

    if-ne p1, v0, :cond_7

    .line 410
    aput-object p2, p4, v2

    .line 416
    :cond_7
    aget p1, v1, v2

    invoke-static {p0, p1}, Landroid/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result p1

    aput p1, v1, v2

    .line 417
    aget p1, v1, v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-eq p1, p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public static parseFilterID(Ljava/lang/String;[I)Landroid/icu/text/TransliteratorIDParser$SingleID;
    .locals 3

    const/4 v0, 0x0

    .line 153
    aget v1, p1, v0

    const/4 v2, 0x1

    .line 154
    invoke-static {p0, p1, v2}, Landroid/icu/text/TransliteratorIDParser;->parseFilterID(Ljava/lang/String;[IZ)Landroid/icu/text/TransliteratorIDParser$Specs;

    move-result-object p0

    if-nez p0, :cond_0

    .line 156
    aput v1, p1, v0

    const/4 p0, 0x0

    return-object p0

    .line 161
    :cond_0
    invoke-static {p0, v0}, Landroid/icu/text/TransliteratorIDParser;->specsToID(Landroid/icu/text/TransliteratorIDParser$Specs;I)Landroid/icu/text/TransliteratorIDParser$SingleID;

    move-result-object p1

    .line 162
    iget-object p0, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->filter:Ljava/lang/String;

    iput-object p0, p1, Landroid/icu/text/TransliteratorIDParser$SingleID;->filter:Ljava/lang/String;

    return-object p1
.end method

.method private static parseFilterID(Ljava/lang/String;[IZ)Landroid/icu/text/TransliteratorIDParser$Specs;
    .locals 13

    const/4 v0, 0x0

    .line 602
    aget v1, p1, v0

    const/4 v2, 0x0

    move v3, v0

    move v7, v3

    move-object v4, v2

    move-object v5, v4

    move-object v6, v5

    move-object v8, v6

    .line 608
    :goto_0
    aget v9, p1, v0

    invoke-static {p0, v9}, Landroid/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result v9

    aput v9, p1, v0

    .line 609
    aget v9, p1, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    if-ne v9, v10, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    if-nez v8, :cond_1

    .line 614
    aget v9, p1, v0

    .line 615
    invoke-static {p0, v9}, Landroid/icu/text/UnicodeSet;->resemblesPattern(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 617
    new-instance v8, Ljava/text/ParsePosition;

    aget v9, p1, v0

    invoke-direct {v8, v9}, Ljava/text/ParsePosition;-><init>(I)V

    .line 619
    new-instance v9, Landroid/icu/text/UnicodeSet;

    invoke-direct {v9, p0, v8, v2}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;)V

    .line 620
    aget v9, p1, v0

    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    move-result v10

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 621
    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    aput v8, p1, v0

    move-object v8, v9

    goto :goto_0

    :cond_1
    const/16 v9, 0x2f

    const/16 v10, 0x2d

    if-nez v3, :cond_4

    .line 626
    aget v12, p1, v0

    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v12, v10, :cond_2

    if-eqz v4, :cond_3

    :cond_2
    if-ne v12, v9, :cond_4

    if-nez v6, :cond_4

    .line 630
    :cond_3
    aget v3, p1, v0

    add-int/2addr v3, v11

    aput v3, p1, v0

    move v3, v12

    goto :goto_0

    :cond_4
    if-nez v3, :cond_5

    if-lez v7, :cond_5

    goto :goto_1

    .line 642
    :cond_5
    invoke-static {p0, p1}, Landroid/icu/impl/Utility;->parseUnicodeIdentifier(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_b

    :goto_1
    if-eqz v5, :cond_6

    if-nez v4, :cond_7

    move-object v4, v5

    :cond_6
    move-object v5, v2

    :cond_7
    if-nez v5, :cond_8

    if-nez v4, :cond_8

    .line 677
    aput v1, p1, v0

    return-object v2

    :cond_8
    const-string p0, "Any"

    if-nez v5, :cond_9

    move-object v5, p0

    move v7, v0

    goto :goto_2

    :cond_9
    move v7, v11

    :goto_2
    if-nez v4, :cond_a

    goto :goto_3

    :cond_a
    move-object p0, v4

    .line 691
    :goto_3
    new-instance p1, Landroid/icu/text/TransliteratorIDParser$Specs;

    move-object v3, p1

    move-object v4, v5

    move-object v5, p0

    invoke-direct/range {v3 .. v8}, Landroid/icu/text/TransliteratorIDParser$Specs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-object p1

    :cond_b
    if-eqz v3, :cond_e

    if-eq v3, v10, :cond_d

    if-eq v3, v9, :cond_c

    goto :goto_4

    :cond_c
    move-object v6, v12

    goto :goto_4

    :cond_d
    move-object v4, v12

    goto :goto_4

    :cond_e
    move-object v5, v12

    :goto_4
    add-int/lit8 v7, v7, 0x1

    move v3, v0

    goto/16 :goto_0
.end method

.method public static parseGlobalFilter(Ljava/lang/String;[II[ILjava/lang/StringBuffer;)Landroid/icu/text/UnicodeSet;
    .locals 9

    const/4 v0, 0x0

    .line 272
    aget v1, p1, v0

    .line 274
    aget v2, p3, v0

    const/4 v3, 0x1

    const/16 v4, 0x28

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-ne v2, v6, :cond_0

    .line 275
    invoke-static {p0, p1, v4}, Landroid/icu/impl/Utility;->parseChar(Ljava/lang/String;[IC)Z

    move-result v2

    aput v2, p3, v0

    goto :goto_0

    .line 276
    :cond_0
    aget v2, p3, v0

    if-ne v2, v3, :cond_1

    .line 277
    invoke-static {p0, p1, v4}, Landroid/icu/impl/Utility;->parseChar(Ljava/lang/String;[IC)Z

    move-result v2

    if-nez v2, :cond_1

    .line 278
    aput v1, p1, v0

    return-object v5

    .line 283
    :cond_1
    :goto_0
    aget v2, p1, v0

    invoke-static {p0, v2}, Landroid/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result v2

    aput v2, p1, v0

    .line 285
    aget v2, p1, v0

    invoke-static {p0, v2}, Landroid/icu/text/UnicodeSet;->resemblesPattern(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 286
    new-instance v2, Ljava/text/ParsePosition;

    aget v6, p1, v0

    invoke-direct {v2, v6}, Ljava/text/ParsePosition;-><init>(I)V

    .line 288
    :try_start_0
    new-instance v6, Landroid/icu/text/UnicodeSet;

    invoke-direct {v6, p0, v2, v5}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    aget v7, p1, v0

    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 295
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    aput v2, p1, v0

    .line 297
    aget v2, p3, v0

    const/16 v8, 0x29

    if-ne v2, v3, :cond_2

    invoke-static {p0, p1, v8}, Landroid/icu/impl/Utility;->parseChar(Ljava/lang/String;[IC)Z

    move-result p0

    if-nez p0, :cond_2

    .line 298
    aput v1, p1, v0

    return-object v5

    :cond_2
    if-eqz p4, :cond_6

    const/16 p0, 0x3b

    if-nez p2, :cond_4

    .line 307
    aget p1, p3, v0

    if-ne p1, v3, :cond_3

    .line 308
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 310
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 312
    :cond_4
    aget p1, p3, v0

    if-nez p1, :cond_5

    .line 313
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 315
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, p0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    :goto_1
    move-object v5, v6

    goto :goto_2

    .line 290
    :catch_0
    aput v1, p1, v0

    :cond_7
    :goto_2
    return-object v5
.end method

.method public static parseSingleID(Ljava/lang/String;[II)Landroid/icu/text/TransliteratorIDParser$SingleID;
    .locals 9

    const/4 v0, 0x0

    .line 180
    aget v1, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v5, v2

    move v4, v3

    :goto_0
    const/4 v6, 0x2

    const/16 v7, 0x28

    const/16 v8, 0x29

    if-gt v4, v6, :cond_5

    if-ne v4, v6, :cond_0

    .line 192
    invoke-static {p0, p1, v3}, Landroid/icu/text/TransliteratorIDParser;->parseFilterID(Ljava/lang/String;[IZ)Landroid/icu/text/TransliteratorIDParser$Specs;

    move-result-object v5

    if-nez v5, :cond_0

    .line 194
    aput v1, p1, v0

    return-object v2

    .line 198
    :cond_0
    invoke-static {p0, p1, v7}, Landroid/icu/impl/Utility;->parseChar(Ljava/lang/String;[IC)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 200
    invoke-static {p0, p1, v8}, Landroid/icu/impl/Utility;->parseChar(Ljava/lang/String;[IC)Z

    move-result v4

    if-nez v4, :cond_3

    .line 201
    invoke-static {p0, p1, v3}, Landroid/icu/text/TransliteratorIDParser;->parseFilterID(Ljava/lang/String;[IZ)Landroid/icu/text/TransliteratorIDParser$Specs;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 203
    invoke-static {p0, p1, v8}, Landroid/icu/impl/Utility;->parseChar(Ljava/lang/String;[IC)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move p0, v3

    move-object v2, v4

    goto :goto_2

    .line 204
    :cond_2
    :goto_1
    aput v1, p1, v0

    return-object v2

    :cond_3
    move p0, v3

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    move p0, v0

    :goto_2
    if-eqz p0, :cond_7

    if-nez p2, :cond_6

    .line 216
    invoke-static {v5, v0}, Landroid/icu/text/TransliteratorIDParser;->specsToID(Landroid/icu/text/TransliteratorIDParser$Specs;I)Landroid/icu/text/TransliteratorIDParser$SingleID;

    move-result-object p0

    .line 217
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Landroid/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    invoke-static {v2, v0}, Landroid/icu/text/TransliteratorIDParser;->specsToID(Landroid/icu/text/TransliteratorIDParser$Specs;I)Landroid/icu/text/TransliteratorIDParser$SingleID;

    move-result-object p2

    iget-object p2, p2, Landroid/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    if-eqz v5, :cond_a

    .line 220
    iget-object p1, v5, Landroid/icu/text/TransliteratorIDParser$Specs;->filter:Ljava/lang/String;

    iput-object p1, p0, Landroid/icu/text/TransliteratorIDParser$SingleID;->filter:Ljava/lang/String;

    goto :goto_4

    .line 223
    :cond_6
    invoke-static {v2, v0}, Landroid/icu/text/TransliteratorIDParser;->specsToID(Landroid/icu/text/TransliteratorIDParser$Specs;I)Landroid/icu/text/TransliteratorIDParser$SingleID;

    move-result-object p0

    .line 224
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Landroid/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 225
    invoke-static {v5, v0}, Landroid/icu/text/TransliteratorIDParser;->specsToID(Landroid/icu/text/TransliteratorIDParser$Specs;I)Landroid/icu/text/TransliteratorIDParser$SingleID;

    move-result-object p2

    iget-object p2, p2, Landroid/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 227
    iget-object p1, v2, Landroid/icu/text/TransliteratorIDParser$Specs;->filter:Ljava/lang/String;

    iput-object p1, p0, Landroid/icu/text/TransliteratorIDParser$SingleID;->filter:Ljava/lang/String;

    goto :goto_4

    :cond_7
    if-nez p2, :cond_8

    .line 233
    invoke-static {v5, v0}, Landroid/icu/text/TransliteratorIDParser;->specsToID(Landroid/icu/text/TransliteratorIDParser$Specs;I)Landroid/icu/text/TransliteratorIDParser$SingleID;

    move-result-object p0

    goto :goto_3

    .line 235
    :cond_8
    invoke-static {v5}, Landroid/icu/text/TransliteratorIDParser;->specsToSpecialInverse(Landroid/icu/text/TransliteratorIDParser$Specs;)Landroid/icu/text/TransliteratorIDParser$SingleID;

    move-result-object p0

    if-nez p0, :cond_9

    .line 237
    invoke-static {v5, v3}, Landroid/icu/text/TransliteratorIDParser;->specsToID(Landroid/icu/text/TransliteratorIDParser$Specs;I)Landroid/icu/text/TransliteratorIDParser$SingleID;

    move-result-object p0

    .line 240
    :cond_9
    :goto_3
    iget-object p1, v5, Landroid/icu/text/TransliteratorIDParser$Specs;->filter:Ljava/lang/String;

    iput-object p1, p0, Landroid/icu/text/TransliteratorIDParser$SingleID;->filter:Ljava/lang/String;

    :cond_a
    :goto_4
    return-object p0
.end method

.method public static registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 564
    sget-object v0, Landroid/icu/text/TransliteratorIDParser;->SPECIAL_INVERSES:Ljava/util/Map;

    new-instance v1, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {v1, p0}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 565
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 566
    sget-object p2, Landroid/icu/text/TransliteratorIDParser;->SPECIAL_INVERSES:Ljava/util/Map;

    new-instance v0, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {v0, p1}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static specsToID(Landroid/icu/text/TransliteratorIDParser$Specs;I)Landroid/icu/text/TransliteratorIDParser$SingleID;
    .locals 3

    const-string v0, ""

    if-eqz p0, :cond_4

    .line 706
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2d

    if-nez p1, :cond_1

    .line 708
    iget-boolean p1, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->sawSource:Z

    if-eqz p1, :cond_0

    .line 709
    iget-object p1, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->source:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 711
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->source:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 713
    :goto_0
    iget-object p1, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->target:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 715
    :cond_1
    iget-object p1, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->target:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->source:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    :goto_1
    iget-object p1, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->variant:Ljava/lang/String;

    if-eqz p1, :cond_2

    const/16 p1, 0x2f

    .line 718
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->variant:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 721
    iget-object p1, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->filter:Ljava/lang/String;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 722
    iget-object p0, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->filter:Ljava/lang/String;

    invoke-virtual {v1, p1, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_4
    move-object p0, v0

    .line 726
    :goto_2
    new-instance p1, Landroid/icu/text/TransliteratorIDParser$SingleID;

    invoke-direct {p1, p0, v0}, Landroid/icu/text/TransliteratorIDParser$SingleID;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private static specsToSpecialInverse(Landroid/icu/text/TransliteratorIDParser$Specs;)Landroid/icu/text/TransliteratorIDParser$SingleID;
    .locals 5

    .line 737
    iget-object v0, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->source:Ljava/lang/String;

    const-string v1, "Any"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    .line 740
    :cond_0
    sget-object v0, Landroid/icu/text/TransliteratorIDParser;->SPECIAL_INVERSES:Ljava/util/Map;

    new-instance v3, Landroid/icu/util/CaseInsensitiveString;

    iget-object v4, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->target:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 745
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 746
    iget-object v3, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->filter:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 747
    iget-object v3, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->filter:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    :cond_1
    iget-boolean v3, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->sawSource:Z

    if-eqz v3, :cond_2

    .line 750
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 752
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Any-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 756
    iget-object v1, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->variant:Ljava/lang/String;

    if-eqz v1, :cond_3

    const/16 v1, 0x2f

    .line 757
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->variant:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->variant:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 760
    :cond_3
    new-instance p0, Landroid/icu/text/TransliteratorIDParser$SingleID;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Landroid/icu/text/TransliteratorIDParser$SingleID;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_4
    return-object v2
.end method
