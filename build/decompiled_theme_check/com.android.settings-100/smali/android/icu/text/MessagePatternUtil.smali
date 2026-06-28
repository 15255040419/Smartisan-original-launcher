.class public final Landroid/icu/text/MessagePatternUtil;
.super Ljava/lang/Object;
.source "MessagePatternUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/MessagePatternUtil$VariantNode;,
        Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;,
        Landroid/icu/text/MessagePatternUtil$ArgNode;,
        Landroid/icu/text/MessagePatternUtil$TextNode;,
        Landroid/icu/text/MessagePatternUtil$MessageContentsNode;,
        Landroid/icu/text/MessagePatternUtil$MessageNode;,
        Landroid/icu/text/MessagePatternUtil$Node;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildArgNode(Landroid/icu/text/MessagePattern;II)Landroid/icu/text/MessagePatternUtil$ArgNode;
    .locals 6

    .line 454
    invoke-static {}, Landroid/icu/text/MessagePatternUtil$ArgNode;->access$800()Landroid/icu/text/MessagePatternUtil$ArgNode;

    move-result-object v0

    .line 455
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v1

    .line 456
    invoke-virtual {v1}, Landroid/icu/text/MessagePattern$Part;->getArgType()Landroid/icu/text/MessagePattern$ArgType;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/icu/text/MessagePatternUtil$ArgNode;->access$902(Landroid/icu/text/MessagePatternUtil$ArgNode;Landroid/icu/text/MessagePattern$ArgType;)Landroid/icu/text/MessagePattern$ArgType;

    move-result-object v1

    const/4 v2, 0x1

    add-int/2addr p1, v2

    .line 457
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v3

    .line 458
    invoke-virtual {p0, v3}, Landroid/icu/text/MessagePattern;->getSubstring(Landroid/icu/text/MessagePattern$Part;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/icu/text/MessagePatternUtil$ArgNode;->access$1002(Landroid/icu/text/MessagePatternUtil$ArgNode;Ljava/lang/String;)Ljava/lang/String;

    .line 459
    invoke-virtual {v3}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v4

    sget-object v5, Landroid/icu/text/MessagePattern$Part$Type;->ARG_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v4, v5, :cond_0

    .line 460
    invoke-virtual {v3}, Landroid/icu/text/MessagePattern$Part;->getValue()I

    move-result v3

    invoke-static {v0, v3}, Landroid/icu/text/MessagePatternUtil$ArgNode;->access$1102(Landroid/icu/text/MessagePatternUtil$ArgNode;I)I

    :cond_0
    add-int/2addr p1, v2

    .line 463
    sget-object v3, Landroid/icu/text/MessagePatternUtil$1;->$SwitchMap$android$icu$text$MessagePattern$ArgType:[I

    invoke-virtual {v1}, Landroid/icu/text/MessagePattern$ArgType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v2, :cond_5

    const/4 v2, 0x2

    if-eq v3, v2, :cond_4

    const/4 v2, 0x3

    if-eq v3, v2, :cond_3

    const/4 v2, 0x4

    if-eq v3, v2, :cond_2

    const/4 v2, 0x5

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "selectordinal"

    .line 485
    invoke-static {v0, v2}, Landroid/icu/text/MessagePatternUtil$ArgNode;->access$1202(Landroid/icu/text/MessagePatternUtil$ArgNode;Ljava/lang/String;)Ljava/lang/String;

    .line 486
    invoke-static {p0, p1, p2, v1}, Landroid/icu/text/MessagePatternUtil;->buildPluralStyleNode(Landroid/icu/text/MessagePattern;IILandroid/icu/text/MessagePattern$ArgType;)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/icu/text/MessagePatternUtil$ArgNode;->access$1402(Landroid/icu/text/MessagePatternUtil$ArgNode;Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "select"

    .line 481
    invoke-static {v0, v1}, Landroid/icu/text/MessagePatternUtil$ArgNode;->access$1202(Landroid/icu/text/MessagePatternUtil$ArgNode;Ljava/lang/String;)Ljava/lang/String;

    .line 482
    invoke-static {p0, p1, p2}, Landroid/icu/text/MessagePatternUtil;->buildSelectStyleNode(Landroid/icu/text/MessagePattern;II)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/icu/text/MessagePatternUtil$ArgNode;->access$1402(Landroid/icu/text/MessagePatternUtil$ArgNode;Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "plural"

    .line 477
    invoke-static {v0, v2}, Landroid/icu/text/MessagePatternUtil$ArgNode;->access$1202(Landroid/icu/text/MessagePatternUtil$ArgNode;Ljava/lang/String;)Ljava/lang/String;

    .line 478
    invoke-static {p0, p1, p2, v1}, Landroid/icu/text/MessagePatternUtil;->buildPluralStyleNode(Landroid/icu/text/MessagePattern;IILandroid/icu/text/MessagePattern$ArgType;)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/icu/text/MessagePatternUtil$ArgNode;->access$1402(Landroid/icu/text/MessagePatternUtil$ArgNode;Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    goto :goto_0

    :cond_4
    const-string v1, "choice"

    .line 473
    invoke-static {v0, v1}, Landroid/icu/text/MessagePatternUtil$ArgNode;->access$1202(Landroid/icu/text/MessagePatternUtil$ArgNode;Ljava/lang/String;)Ljava/lang/String;

    .line 474
    invoke-static {p0, p1, p2}, Landroid/icu/text/MessagePatternUtil;->buildChoiceStyleNode(Landroid/icu/text/MessagePattern;II)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/icu/text/MessagePatternUtil$ArgNode;->access$1402(Landroid/icu/text/MessagePatternUtil$ArgNode;Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    goto :goto_0

    :cond_5
    add-int/lit8 v1, p1, 0x1

    .line 466
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getSubstring(Landroid/icu/text/MessagePattern$Part;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/icu/text/MessagePatternUtil$ArgNode;->access$1202(Landroid/icu/text/MessagePatternUtil$ArgNode;Ljava/lang/String;)Ljava/lang/String;

    if-ge v1, p2, :cond_6

    .line 469
    invoke-virtual {p0, v1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getSubstring(Landroid/icu/text/MessagePattern$Part;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/icu/text/MessagePatternUtil$ArgNode;->access$1302(Landroid/icu/text/MessagePatternUtil$ArgNode;Ljava/lang/String;)Ljava/lang/String;

    :cond_6
    :goto_0
    return-object v0
.end method

.method private static buildChoiceStyleNode(Landroid/icu/text/MessagePattern;II)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;
    .locals 7

    .line 497
    new-instance v0, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    sget-object v1, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;-><init>(Landroid/icu/text/MessagePattern$ArgType;Landroid/icu/text/MessagePatternUtil$1;)V

    :goto_0
    if-ge p1, p2, :cond_0

    .line 500
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v1

    .line 501
    invoke-virtual {p0, v1}, Landroid/icu/text/MessagePattern;->getNumericValue(Landroid/icu/text/MessagePattern$Part;)D

    move-result-wide v3

    add-int/lit8 v1, p1, 0x2

    .line 503
    invoke-virtual {p0, v1}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v5

    .line 504
    new-instance v6, Landroid/icu/text/MessagePatternUtil$VariantNode;

    invoke-direct {v6, v2}, Landroid/icu/text/MessagePatternUtil$VariantNode;-><init>(Landroid/icu/text/MessagePatternUtil$1;)V

    add-int/lit8 p1, p1, 0x1

    .line 505
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getSubstring(Landroid/icu/text/MessagePattern$Part;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/icu/text/MessagePatternUtil$VariantNode;->access$1702(Landroid/icu/text/MessagePatternUtil$VariantNode;Ljava/lang/String;)Ljava/lang/String;

    .line 506
    invoke-static {v6, v3, v4}, Landroid/icu/text/MessagePatternUtil$VariantNode;->access$1802(Landroid/icu/text/MessagePatternUtil$VariantNode;D)D

    .line 507
    invoke-static {p0, v1, v5}, Landroid/icu/text/MessagePatternUtil;->buildMessageNode(Landroid/icu/text/MessagePattern;II)Landroid/icu/text/MessagePatternUtil$MessageNode;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/icu/text/MessagePatternUtil$VariantNode;->access$1902(Landroid/icu/text/MessagePatternUtil$VariantNode;Landroid/icu/text/MessagePatternUtil$MessageNode;)Landroid/icu/text/MessagePatternUtil$MessageNode;

    .line 508
    invoke-static {v0, v6}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->access$2000(Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;Landroid/icu/text/MessagePatternUtil$VariantNode;)V

    add-int/lit8 p1, v5, 0x1

    goto :goto_0

    .line 511
    :cond_0
    invoke-static {v0}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->access$2100(Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    move-result-object p0

    return-object p0
.end method

.method public static buildMessageNode(Landroid/icu/text/MessagePattern;)Landroid/icu/text/MessagePatternUtil$MessageNode;
    .locals 4

    .line 56
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->countParts()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    const/4 v1, 0x0

    .line 59
    invoke-virtual {p0, v1}, Landroid/icu/text/MessagePattern;->getPartType(I)Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v2

    sget-object v3, Landroid/icu/text/MessagePattern$Part$Type;->MSG_START:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v2, v3, :cond_0

    .line 63
    invoke-static {p0, v1, v0}, Landroid/icu/text/MessagePatternUtil;->buildMessageNode(Landroid/icu/text/MessagePattern;II)Landroid/icu/text/MessagePatternUtil$MessageNode;

    move-result-object p0

    return-object p0

    .line 60
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The MessagePattern does not represent a MessageFormat pattern"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 58
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The MessagePattern is empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static buildMessageNode(Landroid/icu/text/MessagePattern;II)Landroid/icu/text/MessagePatternUtil$MessageNode;
    .locals 7

    .line 425
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v0

    .line 426
    new-instance v1, Landroid/icu/text/MessagePatternUtil$MessageNode;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/icu/text/MessagePatternUtil$MessageNode;-><init>(Landroid/icu/text/MessagePatternUtil$1;)V

    :goto_0
    add-int/lit8 p1, p1, 0x1

    .line 428
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v3

    .line 429
    invoke-virtual {v3}, Landroid/icu/text/MessagePattern$Part;->getIndex()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 431
    new-instance v5, Landroid/icu/text/MessagePatternUtil$TextNode;

    .line 432
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v2}, Landroid/icu/text/MessagePatternUtil$TextNode;-><init>(Ljava/lang/String;Landroid/icu/text/MessagePatternUtil$1;)V

    .line 431
    invoke-static {v1, v5}, Landroid/icu/text/MessagePatternUtil$MessageNode;->access$500(Landroid/icu/text/MessagePatternUtil$MessageNode;Landroid/icu/text/MessagePatternUtil$MessageContentsNode;)V

    :cond_0
    if-ne p1, p2, :cond_1

    .line 450
    invoke-static {v1}, Landroid/icu/text/MessagePatternUtil$MessageNode;->access$700(Landroid/icu/text/MessagePatternUtil$MessageNode;)Landroid/icu/text/MessagePatternUtil$MessageNode;

    move-result-object p0

    return-object p0

    .line 438
    :cond_1
    invoke-virtual {v3}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v0

    .line 439
    sget-object v4, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v0, v4, :cond_2

    .line 440
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v0

    .line 441
    invoke-static {p0, p1, v0}, Landroid/icu/text/MessagePatternUtil;->buildArgNode(Landroid/icu/text/MessagePattern;II)Landroid/icu/text/MessagePatternUtil$ArgNode;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/icu/text/MessagePatternUtil$MessageNode;->access$500(Landroid/icu/text/MessagePatternUtil$MessageNode;Landroid/icu/text/MessagePatternUtil$MessageContentsNode;)V

    .line 443
    invoke-virtual {p0, v0}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v3

    move p1, v0

    goto :goto_1

    .line 444
    :cond_2
    sget-object v4, Landroid/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v0, v4, :cond_3

    .line 445
    invoke-static {}, Landroid/icu/text/MessagePatternUtil$MessageContentsNode;->access$600()Landroid/icu/text/MessagePatternUtil$MessageContentsNode;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/icu/text/MessagePatternUtil$MessageNode;->access$500(Landroid/icu/text/MessagePatternUtil$MessageNode;Landroid/icu/text/MessagePatternUtil$MessageContentsNode;)V

    .line 448
    :cond_3
    :goto_1
    invoke-virtual {v3}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v0

    goto :goto_0
.end method

.method public static buildMessageNode(Ljava/lang/String;)Landroid/icu/text/MessagePatternUtil$MessageNode;
    .locals 1

    .line 45
    new-instance v0, Landroid/icu/text/MessagePattern;

    invoke-direct {v0, p0}, Landroid/icu/text/MessagePattern;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/icu/text/MessagePatternUtil;->buildMessageNode(Landroid/icu/text/MessagePattern;)Landroid/icu/text/MessagePatternUtil$MessageNode;

    move-result-object p0

    return-object p0
.end method

.method private static buildPluralStyleNode(Landroid/icu/text/MessagePattern;IILandroid/icu/text/MessagePattern$ArgType;)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;
    .locals 7

    .line 517
    new-instance v0, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;-><init>(Landroid/icu/text/MessagePattern$ArgType;Landroid/icu/text/MessagePatternUtil$1;)V

    .line 518
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object p3

    .line 519
    invoke-virtual {p3}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$Part$Type;->hasNumericValue()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 520
    invoke-static {v0, v3}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->access$2202(Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;Z)Z

    .line 521
    invoke-virtual {p0, p3}, Landroid/icu/text/MessagePattern;->getNumericValue(Landroid/icu/text/MessagePattern$Part;)D

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->access$2302(Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;D)D

    add-int/lit8 p1, p1, 0x1

    :cond_0
    :goto_0
    if-ge p1, p2, :cond_2

    add-int/lit8 p3, p1, 0x1

    .line 525
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object p1

    const-wide v4, -0x3e6290cbac000000L    # -1.23456789E8

    .line 527
    invoke-virtual {p0, p3}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v2

    .line 528
    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/icu/text/MessagePattern$Part$Type;->hasNumericValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 529
    invoke-virtual {p0, v2}, Landroid/icu/text/MessagePattern;->getNumericValue(Landroid/icu/text/MessagePattern$Part;)D

    move-result-wide v4

    add-int/lit8 p3, p3, 0x1

    .line 532
    :cond_1
    invoke-virtual {p0, p3}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v2

    .line 533
    new-instance v6, Landroid/icu/text/MessagePatternUtil$VariantNode;

    invoke-direct {v6, v1}, Landroid/icu/text/MessagePatternUtil$VariantNode;-><init>(Landroid/icu/text/MessagePatternUtil$1;)V

    .line 534
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getSubstring(Landroid/icu/text/MessagePattern$Part;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/icu/text/MessagePatternUtil$VariantNode;->access$1702(Landroid/icu/text/MessagePatternUtil$VariantNode;Ljava/lang/String;)Ljava/lang/String;

    .line 535
    invoke-static {v6, v4, v5}, Landroid/icu/text/MessagePatternUtil$VariantNode;->access$1802(Landroid/icu/text/MessagePatternUtil$VariantNode;D)D

    .line 536
    invoke-static {p0, p3, v2}, Landroid/icu/text/MessagePatternUtil;->buildMessageNode(Landroid/icu/text/MessagePattern;II)Landroid/icu/text/MessagePatternUtil$MessageNode;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/icu/text/MessagePatternUtil$VariantNode;->access$1902(Landroid/icu/text/MessagePatternUtil$VariantNode;Landroid/icu/text/MessagePatternUtil$MessageNode;)Landroid/icu/text/MessagePatternUtil$MessageNode;

    .line 537
    invoke-static {v0, v6}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->access$2000(Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;Landroid/icu/text/MessagePatternUtil$VariantNode;)V

    add-int/lit8 p1, v2, 0x1

    goto :goto_0

    .line 540
    :cond_2
    invoke-static {v0}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->access$2100(Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    move-result-object p0

    return-object p0
.end method

.method private static buildSelectStyleNode(Landroid/icu/text/MessagePattern;II)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;
    .locals 5

    .line 545
    new-instance v0, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    sget-object v1, Landroid/icu/text/MessagePattern$ArgType;->SELECT:Landroid/icu/text/MessagePattern$ArgType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;-><init>(Landroid/icu/text/MessagePattern$ArgType;Landroid/icu/text/MessagePatternUtil$1;)V

    :goto_0
    if-ge p1, p2, :cond_0

    add-int/lit8 v1, p1, 0x1

    .line 547
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object p1

    .line 548
    invoke-virtual {p0, v1}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v3

    .line 549
    new-instance v4, Landroid/icu/text/MessagePatternUtil$VariantNode;

    invoke-direct {v4, v2}, Landroid/icu/text/MessagePatternUtil$VariantNode;-><init>(Landroid/icu/text/MessagePatternUtil$1;)V

    .line 550
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getSubstring(Landroid/icu/text/MessagePattern$Part;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/icu/text/MessagePatternUtil$VariantNode;->access$1702(Landroid/icu/text/MessagePatternUtil$VariantNode;Ljava/lang/String;)Ljava/lang/String;

    .line 551
    invoke-static {p0, v1, v3}, Landroid/icu/text/MessagePatternUtil;->buildMessageNode(Landroid/icu/text/MessagePattern;II)Landroid/icu/text/MessagePatternUtil$MessageNode;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/icu/text/MessagePatternUtil$VariantNode;->access$1902(Landroid/icu/text/MessagePatternUtil$VariantNode;Landroid/icu/text/MessagePatternUtil$MessageNode;)Landroid/icu/text/MessagePatternUtil$MessageNode;

    .line 552
    invoke-static {v0, v4}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->access$2000(Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;Landroid/icu/text/MessagePatternUtil$VariantNode;)V

    add-int/lit8 p1, v3, 0x1

    goto :goto_0

    .line 555
    :cond_0
    invoke-static {v0}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->access$2100(Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    move-result-object p0

    return-object p0
.end method
