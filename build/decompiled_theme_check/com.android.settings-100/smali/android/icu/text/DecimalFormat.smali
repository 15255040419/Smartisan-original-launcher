.class public Landroid/icu/text/DecimalFormat;
.super Landroid/icu/text/NumberFormat;
.source "DecimalFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/DecimalFormat$PropertySetter;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final PAD_AFTER_PREFIX:I = 0x1

.field public static final PAD_AFTER_SUFFIX:I = 0x3

.field public static final PAD_BEFORE_PREFIX:I = 0x0

.field public static final PAD_BEFORE_SUFFIX:I = 0x2

.field private static final serialVersionUID:J = 0xbff0362d872303aL

.field private static final threadLocalProperties:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/icu/impl/number/DecimalFormatProperties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile transient exportedProperties:Landroid/icu/impl/number/DecimalFormatProperties;

.field volatile transient formatter:Landroid/icu/number/LocalizedNumberFormatter;

.field private transient icuMathContextForm:I

.field transient properties:Landroid/icu/impl/number/DecimalFormatProperties;

.field private final serialVersionOnStream:I

.field volatile transient symbols:Landroid/icu/text/DecimalFormatSymbols;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2252
    new-instance v0, Landroid/icu/text/DecimalFormat$1;

    invoke-direct {v0}, Landroid/icu/text/DecimalFormat$1;-><init>()V

    sput-object v0, Landroid/icu/text/DecimalFormat;->threadLocalProperties:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 299
    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    const/4 v0, 0x5

    .line 243
    iput v0, p0, Landroid/icu/text/DecimalFormat;->serialVersionOnStream:I

    const/4 v0, 0x0

    .line 1192
    iput v0, p0, Landroid/icu/text/DecimalFormat;->icuMathContextForm:I

    .line 301
    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    .line 302
    invoke-static {v1, v0}, Landroid/icu/text/DecimalFormat;->getPattern(Landroid/icu/util/ULocale;I)Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-static {}, Landroid/icu/text/DecimalFormat;->getDefaultSymbols()Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 304
    new-instance v1, Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-direct {v1}, Landroid/icu/impl/number/DecimalFormatProperties;-><init>()V

    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    .line 305
    new-instance v1, Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-direct {v1}, Landroid/icu/impl/number/DecimalFormatProperties;-><init>()V

    iput-object v1, p0, Landroid/icu/text/DecimalFormat;->exportedProperties:Landroid/icu/impl/number/DecimalFormatProperties;

    const/4 v1, 0x1

    .line 307
    invoke-virtual {p0, v0, v1}, Landroid/icu/text/DecimalFormat;->setPropertiesFromPattern(Ljava/lang/String;I)V

    .line 308
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 330
    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    const/4 v0, 0x5

    .line 243
    iput v0, p0, Landroid/icu/text/DecimalFormat;->serialVersionOnStream:I

    const/4 v0, 0x0

    .line 1192
    iput v0, p0, Landroid/icu/text/DecimalFormat;->icuMathContextForm:I

    .line 331
    invoke-static {}, Landroid/icu/text/DecimalFormat;->getDefaultSymbols()Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 332
    new-instance v0, Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-direct {v0}, Landroid/icu/impl/number/DecimalFormatProperties;-><init>()V

    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    .line 333
    new-instance v0, Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-direct {v0}, Landroid/icu/impl/number/DecimalFormatProperties;-><init>()V

    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->exportedProperties:Landroid/icu/impl/number/DecimalFormatProperties;

    const/4 v0, 0x1

    .line 335
    invoke-virtual {p0, p1, v0}, Landroid/icu/text/DecimalFormat;->setPropertiesFromPattern(Ljava/lang/String;I)V

    .line 336
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;)V
    .locals 1

    .line 358
    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    const/4 v0, 0x5

    .line 243
    iput v0, p0, Landroid/icu/text/DecimalFormat;->serialVersionOnStream:I

    const/4 v0, 0x0

    .line 1192
    iput v0, p0, Landroid/icu/text/DecimalFormat;->icuMathContextForm:I

    .line 359
    invoke-virtual {p2}, Landroid/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/icu/text/DecimalFormatSymbols;

    iput-object p2, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 360
    new-instance p2, Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-direct {p2}, Landroid/icu/impl/number/DecimalFormatProperties;-><init>()V

    iput-object p2, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    .line 361
    new-instance p2, Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-direct {p2}, Landroid/icu/impl/number/DecimalFormatProperties;-><init>()V

    iput-object p2, p0, Landroid/icu/text/DecimalFormat;->exportedProperties:Landroid/icu/impl/number/DecimalFormatProperties;

    const/4 p2, 0x1

    .line 363
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/DecimalFormat;->setPropertiesFromPattern(Ljava/lang/String;I)V

    .line 364
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;I)V
    .locals 2

    .line 394
    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    const/4 v0, 0x5

    .line 243
    iput v0, p0, Landroid/icu/text/DecimalFormat;->serialVersionOnStream:I

    const/4 v1, 0x0

    .line 1192
    iput v1, p0, Landroid/icu/text/DecimalFormat;->icuMathContextForm:I

    .line 395
    invoke-virtual {p2}, Landroid/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/icu/text/DecimalFormatSymbols;

    iput-object p2, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 396
    new-instance p2, Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-direct {p2}, Landroid/icu/impl/number/DecimalFormatProperties;-><init>()V

    iput-object p2, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    .line 397
    new-instance p2, Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-direct {p2}, Landroid/icu/impl/number/DecimalFormatProperties;-><init>()V

    iput-object p2, p0, Landroid/icu/text/DecimalFormat;->exportedProperties:Landroid/icu/impl/number/DecimalFormatProperties;

    const/4 p2, 0x1

    if-eq p3, p2, :cond_1

    if-eq p3, v0, :cond_1

    const/4 v0, 0x7

    if-eq p3, v0, :cond_1

    const/16 v0, 0x8

    if-eq p3, v0, :cond_1

    const/16 v0, 0x9

    if-eq p3, v0, :cond_1

    const/4 v0, 0x6

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 407
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/DecimalFormat;->setPropertiesFromPattern(Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x2

    .line 405
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/DecimalFormat;->setPropertiesFromPattern(Ljava/lang/String;I)V

    .line 409
    :goto_1
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;Landroid/icu/text/CurrencyPluralInfo;I)V
    .locals 0

    .line 388
    invoke-direct {p0, p1, p2, p4}, Landroid/icu/text/DecimalFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;I)V

    .line 389
    iget-object p1, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {p1, p3}, Landroid/icu/impl/number/DecimalFormatProperties;->setCurrencyPluralInfo(Landroid/icu/text/CurrencyPluralInfo;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 390
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V

    return-void
.end method

.method private static getDefaultSymbols()Landroid/icu/text/DecimalFormatSymbols;
    .locals 1

    .line 413
    invoke-static {}, Landroid/icu/text/DecimalFormatSymbols;->getInstance()Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 509
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v1

    .line 510
    invoke-virtual {v1}, Ljava/io/ObjectInputStream$GetField;->getObjectStreamClass()Ljava/io/ObjectStreamClass;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->getFields()[Ljava/io/ObjectStreamField;

    move-result-object v2

    const-string/jumbo v3, "serialVersionOnStream"

    const/4 v4, -0x1

    .line 511
    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x5

    if-gt v3, v4, :cond_25

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2

    .line 519
    array-length v1, v2

    if-gt v1, v5, :cond_1

    .line 523
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readInt()I

    .line 525
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 526
    instance-of v2, v1, Landroid/icu/impl/number/DecimalFormatProperties;

    if-eqz v2, :cond_0

    .line 528
    check-cast v1, Landroid/icu/impl/number/DecimalFormatProperties;

    iput-object v1, v0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    goto :goto_0

    .line 531
    :cond_0
    check-cast v1, Landroid/icu/impl/number/Properties;

    invoke-virtual {v1}, Landroid/icu/impl/number/Properties;->getInstance()Landroid/icu/impl/number/DecimalFormatProperties;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    .line 534
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/DecimalFormatSymbols;

    iput-object v1, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 536
    new-instance v1, Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-direct {v1}, Landroid/icu/impl/number/DecimalFormatProperties;-><init>()V

    iput-object v1, v0, Landroid/icu/text/DecimalFormat;->exportedProperties:Landroid/icu/impl/number/DecimalFormatProperties;

    .line 537
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V

    goto/16 :goto_8

    .line 520
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Too many fields when reading serial version 5"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 540
    :cond_2
    new-instance v3, Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-direct {v3}, Landroid/icu/impl/number/DecimalFormatProperties;-><init>()V

    iput-object v3, v0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    .line 544
    array-length v3, v2

    const/4 v4, 0x0

    move v7, v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1
    if-ge v7, v3, :cond_1f

    aget-object v16, v2, v7

    .line 545
    invoke-virtual/range {v16 .. v16}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v5, "decimalSeparatorAlwaysShown"

    .line 546
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 547
    invoke-virtual {v1, v5, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/icu/text/DecimalFormat;->setDecimalSeparatorAlwaysShown(Z)V

    :goto_2
    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_3
    const-string v5, "exponentSignAlwaysShown"

    .line 548
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 549
    invoke-virtual {v1, v5, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/icu/text/DecimalFormat;->setExponentSignAlwaysShown(Z)V

    goto :goto_2

    :cond_4
    const-string v5, "formatWidth"

    .line 550
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 551
    invoke-virtual {v1, v5, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/icu/text/DecimalFormat;->setFormatWidth(I)V

    goto :goto_2

    :cond_5
    const-string v5, "groupingSize"

    .line 552
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    const/4 v6, 0x3

    .line 553
    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;B)B

    move-result v5

    invoke-virtual {v0, v5}, Landroid/icu/text/DecimalFormat;->setGroupingSize(I)V

    goto :goto_2

    :cond_6
    const-string v5, "groupingSize2"

    .line 554
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 555
    invoke-virtual {v1, v5, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;B)B

    move-result v5

    invoke-virtual {v0, v5}, Landroid/icu/text/DecimalFormat;->setSecondaryGroupingSize(I)V

    goto :goto_2

    :cond_7
    const-string v5, "maxSignificantDigits"

    .line 556
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    const/4 v6, 0x6

    .line 557
    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/icu/text/DecimalFormat;->setMaximumSignificantDigits(I)V

    goto :goto_2

    :cond_8
    const-string v5, "minExponentDigits"

    .line 558
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 559
    invoke-virtual {v1, v5, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;B)B

    move-result v5

    invoke-virtual {v0, v5}, Landroid/icu/text/DecimalFormat;->setMinimumExponentDigits(B)V

    goto :goto_2

    :cond_9
    const-string v5, "minSignificantDigits"

    .line 560
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    const/4 v4, 0x1

    .line 561
    invoke-virtual {v1, v5, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/icu/text/DecimalFormat;->setMinimumSignificantDigits(I)V

    goto :goto_2

    :cond_a
    const/4 v4, 0x1

    const-string v5, "multiplier"

    .line 562
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 563
    invoke-virtual {v1, v5, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/icu/text/DecimalFormat;->setMultiplier(I)V

    goto/16 :goto_2

    :cond_b
    const-string/jumbo v4, "pad"

    .line 564
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/16 v5, 0x20

    .line 565
    invoke-virtual {v1, v4, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v4

    invoke-virtual {v0, v4}, Landroid/icu/text/DecimalFormat;->setPadCharacter(C)V

    goto/16 :goto_2

    :cond_c
    const-string/jumbo v4, "padPosition"

    .line 566
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const/4 v5, 0x0

    .line 567
    invoke-virtual {v1, v4, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/icu/text/DecimalFormat;->setPadPosition(I)V

    goto/16 :goto_2

    :cond_d
    const/4 v5, 0x0

    const-string/jumbo v4, "parseBigDecimal"

    .line 568
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string/jumbo v4, "parseBigDecimal"

    .line 569
    invoke-virtual {v1, v4, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/icu/text/DecimalFormat;->setParseBigDecimal(Z)V

    goto/16 :goto_2

    :cond_e
    const-string/jumbo v4, "parseRequireDecimalPoint"

    .line 570
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const-string/jumbo v4, "parseRequireDecimalPoint"

    .line 571
    invoke-virtual {v1, v4, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/icu/text/DecimalFormat;->setDecimalPatternMatchRequired(Z)V

    goto/16 :goto_2

    :cond_f
    const-string/jumbo v4, "roundingMode"

    .line 572
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const-string/jumbo v4, "roundingMode"

    .line 573
    invoke-virtual {v1, v4, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/icu/text/DecimalFormat;->setRoundingMode(I)V

    goto/16 :goto_2

    :cond_10
    const-string/jumbo v4, "useExponentialNotation"

    .line 574
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    const-string/jumbo v4, "useExponentialNotation"

    .line 575
    invoke-virtual {v1, v4, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/icu/text/DecimalFormat;->setScientificNotation(Z)V

    goto/16 :goto_2

    :cond_11
    const-string/jumbo v4, "useSignificantDigits"

    .line 576
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    const-string/jumbo v4, "useSignificantDigits"

    .line 577
    invoke-virtual {v1, v4, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/icu/text/DecimalFormat;->setSignificantDigitsUsed(Z)V

    goto/16 :goto_2

    :cond_12
    const-string v4, "currencyPluralInfo"

    .line 578
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    const-string v4, "currencyPluralInfo"

    const/4 v6, 0x0

    .line 579
    invoke-virtual {v1, v4, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/text/CurrencyPluralInfo;

    invoke-virtual {v0, v4}, Landroid/icu/text/DecimalFormat;->setCurrencyPluralInfo(Landroid/icu/text/CurrencyPluralInfo;)V

    move-object v4, v6

    goto/16 :goto_3

    :cond_13
    const/4 v4, 0x0

    const-string v5, "mathContext"

    .line 580
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    const-string v5, "mathContext"

    .line 581
    invoke-virtual {v1, v5, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/math/MathContext;

    invoke-virtual {v0, v5}, Landroid/icu/text/DecimalFormat;->setMathContextICU(Landroid/icu/math/MathContext;)V

    goto/16 :goto_3

    :cond_14
    const-string v5, "negPrefixPattern"

    .line 582
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const-string v5, "negPrefixPattern"

    .line 583
    invoke-virtual {v1, v5, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v8, v5

    goto/16 :goto_3

    :cond_15
    const-string v5, "negSuffixPattern"

    .line 584
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    const-string v5, "negSuffixPattern"

    .line 585
    invoke-virtual {v1, v5, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v10, v5

    goto/16 :goto_3

    :cond_16
    const-string v5, "negativePrefix"

    .line 586
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    const-string v5, "negativePrefix"

    .line 587
    invoke-virtual {v1, v5, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v9, v5

    goto/16 :goto_3

    :cond_17
    const-string v5, "negativeSuffix"

    .line 588
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const-string v5, "negativeSuffix"

    .line 589
    invoke-virtual {v1, v5, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v11, v5

    goto/16 :goto_3

    :cond_18
    const-string/jumbo v5, "posPrefixPattern"

    .line 590
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    const-string/jumbo v5, "posPrefixPattern"

    .line 591
    invoke-virtual {v1, v5, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v12, v5

    goto :goto_3

    :cond_19
    const-string/jumbo v5, "posSuffixPattern"

    .line 592
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    const-string/jumbo v5, "posSuffixPattern"

    .line 593
    invoke-virtual {v1, v5, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v14, v5

    goto :goto_3

    :cond_1a
    const-string/jumbo v5, "positivePrefix"

    .line 594
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    const-string/jumbo v5, "positivePrefix"

    .line 595
    invoke-virtual {v1, v5, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v13, v5

    goto :goto_3

    :cond_1b
    const-string/jumbo v5, "positiveSuffix"

    .line 596
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    const-string/jumbo v5, "positiveSuffix"

    .line 597
    invoke-virtual {v1, v5, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v15, v5

    goto :goto_3

    :cond_1c
    const-string/jumbo v5, "roundingIncrement"

    .line 598
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    const-string/jumbo v5, "roundingIncrement"

    .line 599
    invoke-virtual {v1, v5, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/math/BigDecimal;

    invoke-virtual {v0, v5}, Landroid/icu/text/DecimalFormat;->setRoundingIncrement(Ljava/math/BigDecimal;)V

    goto :goto_3

    :cond_1d
    const-string/jumbo v5, "symbols"

    .line 600
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    const-string/jumbo v5, "symbols"

    .line 601
    invoke-virtual {v1, v5, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0, v5}, Landroid/icu/text/DecimalFormat;->setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V

    :cond_1e
    :goto_3
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_1f
    if-nez v8, :cond_20

    .line 615
    iget-object v1, v0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v1, v9}, Landroid/icu/impl/number/DecimalFormatProperties;->setNegativePrefix(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    goto :goto_4

    .line 617
    :cond_20
    iget-object v1, v0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v1, v8}, Landroid/icu/impl/number/DecimalFormatProperties;->setNegativePrefixPattern(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    :goto_4
    if-nez v10, :cond_21

    .line 620
    iget-object v1, v0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v1, v11}, Landroid/icu/impl/number/DecimalFormatProperties;->setNegativeSuffix(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    goto :goto_5

    .line 622
    :cond_21
    iget-object v1, v0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v1, v10}, Landroid/icu/impl/number/DecimalFormatProperties;->setNegativeSuffixPattern(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    :goto_5
    if-nez v12, :cond_22

    .line 625
    iget-object v1, v0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v1, v13}, Landroid/icu/impl/number/DecimalFormatProperties;->setPositivePrefix(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    goto :goto_6

    .line 627
    :cond_22
    iget-object v1, v0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v1, v12}, Landroid/icu/impl/number/DecimalFormatProperties;->setPositivePrefixPattern(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    :goto_6
    if-nez v14, :cond_23

    .line 630
    iget-object v1, v0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v1, v15}, Landroid/icu/impl/number/DecimalFormatProperties;->setPositiveSuffix(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    goto :goto_7

    .line 632
    :cond_23
    iget-object v1, v0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v1, v14}, Landroid/icu/impl/number/DecimalFormatProperties;->setPositiveSuffixPattern(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 637
    :goto_7
    :try_start_0
    const-class v1, Landroid/icu/text/NumberFormat;

    const-string v2, "groupingUsed"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 638
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 639
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setGroupingUsed(Z)V

    .line 640
    const-class v1, Landroid/icu/text/NumberFormat;

    const-string/jumbo v2, "parseIntegerOnly"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 641
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 642
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setParseIntegerOnly(Z)V

    .line 643
    const-class v1, Landroid/icu/text/NumberFormat;

    const-string v2, "maximumIntegerDigits"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 644
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 645
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMaximumIntegerDigits(I)V

    .line 646
    const-class v1, Landroid/icu/text/NumberFormat;

    const-string v2, "minimumIntegerDigits"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 647
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 648
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    .line 649
    const-class v1, Landroid/icu/text/NumberFormat;

    const-string v2, "maximumFractionDigits"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 650
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 651
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 652
    const-class v1, Landroid/icu/text/NumberFormat;

    const-string v2, "minimumFractionDigits"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 653
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 654
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 655
    const-class v1, Landroid/icu/text/NumberFormat;

    const-string v2, "currency"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 656
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 657
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/Currency;

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setCurrency(Landroid/icu/util/Currency;)V

    .line 658
    const-class v1, Landroid/icu/text/NumberFormat;

    const-string/jumbo v2, "parseStrict"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 659
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 660
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setParseStrict(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 671
    iget-object v1, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    if-nez v1, :cond_24

    .line 672
    invoke-static {}, Landroid/icu/text/DecimalFormat;->getDefaultSymbols()Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 674
    :cond_24
    new-instance v1, Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-direct {v1}, Landroid/icu/impl/number/DecimalFormatProperties;-><init>()V

    iput-object v1, v0, Landroid/icu/text/DecimalFormat;->exportedProperties:Landroid/icu/impl/number/DecimalFormatProperties;

    .line 675
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V

    :goto_8
    return-void

    :catch_0
    move-exception v0

    .line 668
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 666
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    .line 664
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    .line 662
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 514
    :cond_25
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot deserialize newer android.icu.text.DecimalFormat (v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private safeConvertBigDecimal(Ljava/math/BigDecimal;)Ljava/lang/Number;
    .locals 0

    .line 2289
    :try_start_0
    new-instance p0, Landroid/icu/math/BigDecimal;

    invoke-direct {p0, p1}, Landroid/icu/math/BigDecimal;-><init>(Ljava/math/BigDecimal;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 2291
    :catch_0
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result p0

    if-lez p0, :cond_0

    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result p0

    if-gez p0, :cond_0

    const-wide/high16 p0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 2292
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 2293
    :cond_0
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result p0

    if-gez p0, :cond_1

    const-wide/high16 p0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 2294
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 2295
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result p0

    if-gez p0, :cond_2

    const-wide/high16 p0, -0x8000000000000000L

    .line 2296
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_2
    const-wide/16 p0, 0x0

    .line 2298
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method private static useCurrency(Landroid/icu/impl/number/DecimalFormatProperties;)Z
    .locals 1

    .line 2308
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getCurrency()Landroid/icu/util/Currency;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2309
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getCurrencyPluralInfo()Landroid/icu/text/CurrencyPluralInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2310
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getCurrencyUsage()Landroid/icu/util/Currency$CurrencyUsage;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2311
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getPositivePrefixPattern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/number/AffixUtils;->hasCurrencySymbols(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2312
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getPositiveSuffixPattern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/number/AffixUtils;->hasCurrencySymbols(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2313
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getNegativePrefixPattern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/number/AffixUtils;->hasCurrencySymbols(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2314
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getNegativeSuffixPattern()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/icu/impl/number/AffixUtils;->hasCurrencySymbols(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 495
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    const/4 v0, 0x0

    .line 497
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 499
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 501
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized applyLocalizedPattern(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 469
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/icu/impl/number/PatternStringUtils;->convertLocalized(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;Z)Ljava/lang/String;

    move-result-object p1

    .line 470
    invoke-virtual {p0, p1}, Landroid/icu/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized applyPattern(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 446
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/icu/text/DecimalFormat;->setPropertiesFromPattern(Ljava/lang/String;I)V

    .line 449
    iget-object p1, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/icu/impl/number/DecimalFormatProperties;->setPositivePrefix(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 450
    iget-object p1, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {p1, v0}, Landroid/icu/impl/number/DecimalFormatProperties;->setNegativePrefix(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 451
    iget-object p1, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {p1, v0}, Landroid/icu/impl/number/DecimalFormatProperties;->setPositiveSuffix(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 452
    iget-object p1, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {p1, v0}, Landroid/icu/impl/number/DecimalFormatProperties;->setNegativeSuffix(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 453
    iget-object p1, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {p1, v0}, Landroid/icu/impl/number/DecimalFormatProperties;->setCurrencyPluralInfo(Landroid/icu/text/CurrencyPluralInfo;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 454
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized areSignificantDigitsUsed()Z
    .locals 2

    monitor-enter p0

    .line 1397
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMinimumSignificantDigits()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1398
    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMaximumSignificantDigits()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1397
    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 480
    invoke-super {p0}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DecimalFormat;

    .line 481
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/DecimalFormatSymbols;

    iput-object v1, v0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 482
    iget-object p0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->clone()Landroid/icu/impl/number/DecimalFormatProperties;

    move-result-object p0

    iput-object p0, v0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    .line 483
    new-instance p0, Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-direct {p0}, Landroid/icu/impl/number/DecimalFormatProperties;-><init>()V

    iput-object p0, v0, Landroid/icu/text/DecimalFormat;->exportedProperties:Landroid/icu/impl/number/DecimalFormatProperties;

    .line 484
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V

    return-object v0
.end method

.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2156
    monitor-exit p0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    .line 2157
    monitor-exit p0

    return v1

    .line 2158
    :cond_1
    :try_start_0
    instance-of v2, p1, Landroid/icu/text/DecimalFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    monitor-exit p0

    return v0

    .line 2159
    :cond_2
    :try_start_1
    check-cast p1, Landroid/icu/text/DecimalFormat;

    .line 2160
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    iget-object v3, p1, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v2, v3}, Landroid/icu/impl/number/DecimalFormatProperties;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    iget-object p1, p1, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v2, p1}, Landroid/icu/text/DecimalFormatSymbols;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_3

    move v0, v1

    :cond_3
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 0

    .line 688
    iget-object p0, p0, Landroid/icu/text/DecimalFormat;->formatter:Landroid/icu/number/LocalizedNumberFormatter;

    invoke-virtual {p0, p1, p2}, Landroid/icu/number/LocalizedNumberFormatter;->format(D)Landroid/icu/number/FormattedNumber;

    move-result-object p0

    .line 689
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    invoke-virtual {p0, p4, p1}, Landroid/icu/number/FormattedNumber;->populateFieldPosition(Ljava/text/FieldPosition;I)V

    .line 690
    invoke-virtual {p0, p3}, Landroid/icu/number/FormattedNumber;->appendTo(Ljava/lang/Appendable;)Ljava/lang/Appendable;

    return-object p3
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 0

    .line 699
    iget-object p0, p0, Landroid/icu/text/DecimalFormat;->formatter:Landroid/icu/number/LocalizedNumberFormatter;

    invoke-virtual {p0, p1, p2}, Landroid/icu/number/LocalizedNumberFormatter;->format(J)Landroid/icu/number/FormattedNumber;

    move-result-object p0

    .line 700
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    invoke-virtual {p0, p4, p1}, Landroid/icu/number/FormattedNumber;->populateFieldPosition(Ljava/text/FieldPosition;I)V

    .line 701
    invoke-virtual {p0, p3}, Landroid/icu/number/FormattedNumber;->appendTo(Ljava/lang/Appendable;)Ljava/lang/Appendable;

    return-object p3
.end method

.method public format(Landroid/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 0

    .line 733
    iget-object p0, p0, Landroid/icu/text/DecimalFormat;->formatter:Landroid/icu/number/LocalizedNumberFormatter;

    invoke-virtual {p0, p1}, Landroid/icu/number/LocalizedNumberFormatter;->format(Ljava/lang/Number;)Landroid/icu/number/FormattedNumber;

    move-result-object p0

    .line 734
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    invoke-virtual {p0, p3, p1}, Landroid/icu/number/FormattedNumber;->populateFieldPosition(Ljava/text/FieldPosition;I)V

    .line 735
    invoke-virtual {p0, p2}, Landroid/icu/number/FormattedNumber;->appendTo(Ljava/lang/Appendable;)Ljava/lang/Appendable;

    return-object p2
.end method

.method public format(Landroid/icu/util/CurrencyAmount;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 0

    .line 755
    iget-object p0, p0, Landroid/icu/text/DecimalFormat;->formatter:Landroid/icu/number/LocalizedNumberFormatter;

    invoke-virtual {p0, p1}, Landroid/icu/number/LocalizedNumberFormatter;->format(Landroid/icu/util/Measure;)Landroid/icu/number/FormattedNumber;

    move-result-object p0

    .line 756
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    invoke-virtual {p0, p3, p1}, Landroid/icu/number/FormattedNumber;->populateFieldPosition(Ljava/text/FieldPosition;I)V

    .line 757
    invoke-virtual {p0, p2}, Landroid/icu/number/FormattedNumber;->appendTo(Ljava/lang/Appendable;)Ljava/lang/Appendable;

    return-object p2
.end method

.method public format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 0

    .line 722
    iget-object p0, p0, Landroid/icu/text/DecimalFormat;->formatter:Landroid/icu/number/LocalizedNumberFormatter;

    invoke-virtual {p0, p1}, Landroid/icu/number/LocalizedNumberFormatter;->format(Ljava/lang/Number;)Landroid/icu/number/FormattedNumber;

    move-result-object p0

    .line 723
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    invoke-virtual {p0, p3, p1}, Landroid/icu/number/FormattedNumber;->populateFieldPosition(Ljava/text/FieldPosition;I)V

    .line 724
    invoke-virtual {p0, p2}, Landroid/icu/number/FormattedNumber;->appendTo(Ljava/lang/Appendable;)Ljava/lang/Appendable;

    return-object p2
.end method

.method public format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 0

    .line 710
    iget-object p0, p0, Landroid/icu/text/DecimalFormat;->formatter:Landroid/icu/number/LocalizedNumberFormatter;

    invoke-virtual {p0, p1}, Landroid/icu/number/LocalizedNumberFormatter;->format(Ljava/lang/Number;)Landroid/icu/number/FormattedNumber;

    move-result-object p0

    .line 711
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    invoke-virtual {p0, p3, p1}, Landroid/icu/number/FormattedNumber;->populateFieldPosition(Ljava/text/FieldPosition;I)V

    .line 712
    invoke-virtual {p0, p2}, Landroid/icu/number/FormattedNumber;->appendTo(Ljava/lang/Appendable;)Ljava/lang/Appendable;

    return-object p2
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 1

    .line 744
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 745
    check-cast p1, Ljava/lang/Number;

    .line 746
    iget-object p0, p0, Landroid/icu/text/DecimalFormat;->formatter:Landroid/icu/number/LocalizedNumberFormatter;

    invoke-virtual {p0, p1}, Landroid/icu/number/LocalizedNumberFormatter;->format(Ljava/lang/Number;)Landroid/icu/number/FormattedNumber;

    move-result-object p0

    .line 747
    invoke-virtual {p0}, Landroid/icu/number/FormattedNumber;->getFieldIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object p0

    return-object p0

    .line 744
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public declared-synchronized getCurrency()Landroid/icu/util/Currency;
    .locals 1

    monitor-enter p0

    .line 1828
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getCurrency()Landroid/icu/util/Currency;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCurrencyPluralInfo()Landroid/icu/text/CurrencyPluralInfo;
    .locals 1

    monitor-enter p0

    .line 1904
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getCurrencyPluralInfo()Landroid/icu/text/CurrencyPluralInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCurrencyUsage()Landroid/icu/util/Currency$CurrencyUsage;
    .locals 1

    monitor-enter p0

    .line 1865
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getCurrencyUsage()Landroid/icu/util/Currency$CurrencyUsage;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1867
    sget-object v0, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1869
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;
    .locals 1

    monitor-enter p0

    .line 814
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DecimalFormatSymbols;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFixedDecimal(D)Landroid/icu/text/PluralRules$IFixedDecimal;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2249
    iget-object p0, p0, Landroid/icu/text/DecimalFormat;->formatter:Landroid/icu/number/LocalizedNumberFormatter;

    invoke-virtual {p0, p1, p2}, Landroid/icu/number/LocalizedNumberFormatter;->format(D)Landroid/icu/number/FormattedNumber;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/number/FormattedNumber;->getFixedDecimal()Landroid/icu/text/PluralRules$IFixedDecimal;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getFormatWidth()I
    .locals 1

    monitor-enter p0

    .line 1502
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getFormatWidth()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getGroupingSize()I
    .locals 1

    monitor-enter p0

    .line 1709
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getGroupingSize()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMathContext()Ljava/math/MathContext;
    .locals 1

    monitor-enter p0

    .line 1165
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->exportedProperties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMathContext()Ljava/math/MathContext;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1167
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMathContextICU()Landroid/icu/math/MathContext;
    .locals 5

    monitor-enter p0

    .line 1200
    :try_start_0
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->getMathContext()Ljava/math/MathContext;

    move-result-object v0

    .line 1201
    new-instance v1, Landroid/icu/math/MathContext;

    .line 1202
    invoke-virtual {v0}, Ljava/math/MathContext;->getPrecision()I

    move-result v2

    iget v3, p0, Landroid/icu/text/DecimalFormat;->icuMathContextForm:I

    const/4 v4, 0x0

    .line 1205
    invoke-virtual {v0}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/RoundingMode;->ordinal()I

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/icu/math/MathContext;-><init>(IIZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1201
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMaximumFractionDigits()I
    .locals 1

    monitor-enter p0

    .line 1358
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->exportedProperties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMaximumFractionDigits()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMaximumIntegerDigits()I
    .locals 1

    monitor-enter p0

    .line 1277
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->exportedProperties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMaximumIntegerDigits()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMaximumSignificantDigits()I
    .locals 1

    monitor-enter p0

    .line 1464
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->exportedProperties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMaximumSignificantDigits()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMinimumExponentDigits()B
    .locals 1

    monitor-enter p0

    .line 1623
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMinimumExponentDigits()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-byte v0, v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMinimumFractionDigits()I
    .locals 1

    monitor-enter p0

    .line 1314
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->exportedProperties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMinimumFractionDigits()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMinimumGroupingDigits()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 1774
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMinimumGroupingDigits()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1775
    monitor-exit p0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 1777
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMinimumIntegerDigits()I
    .locals 1

    monitor-enter p0

    .line 1238
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->exportedProperties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMinimumIntegerDigits()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMinimumSignificantDigits()I
    .locals 1

    monitor-enter p0

    .line 1432
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->exportedProperties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMinimumSignificantDigits()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMultiplier()I
    .locals 4

    monitor-enter p0

    .line 1010
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMultiplier()Ljava/math/BigDecimal;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1011
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMultiplier()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 1013
    :try_start_1
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v2}, Landroid/icu/impl/number/DecimalFormatProperties;->getMagnitudeMultiplier()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    double-to-int v0, v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNegativePrefix()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 874
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->formatter:Landroid/icu/number/LocalizedNumberFormatter;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/icu/number/LocalizedNumberFormatter;->format(J)Landroid/icu/number/FormattedNumber;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/number/FormattedNumber;->getPrefix()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNegativeSuffix()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 940
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->formatter:Landroid/icu/number/LocalizedNumberFormatter;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/icu/number/LocalizedNumberFormatter;->format(J)Landroid/icu/number/FormattedNumber;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/number/FormattedNumber;->getSuffix()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPadCharacter()C
    .locals 2

    monitor-enter p0

    .line 1534
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getPadString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/16 v0, 0x2e

    .line 1536
    monitor-exit p0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 1538
    :try_start_1
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPadPosition()I
    .locals 1

    monitor-enter p0

    .line 1563
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getPadPosition()Landroid/icu/impl/number/Padder$PadPosition;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1564
    :cond_0
    invoke-virtual {v0}, Landroid/icu/impl/number/Padder$PadPosition;->toOld()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getParseCaseSensitive()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 2087
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getParseCaseSensitive()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getParseMaxDigits()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 p0, 0x3e8

    return p0
.end method

.method public declared-synchronized getParseNoExponent()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 2060
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getParseNoExponent()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPositivePrefix()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 841
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->formatter:Landroid/icu/number/LocalizedNumberFormatter;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/icu/number/LocalizedNumberFormatter;->format(J)Landroid/icu/number/FormattedNumber;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/number/FormattedNumber;->getPrefix()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPositiveSuffix()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 907
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->formatter:Landroid/icu/number/LocalizedNumberFormatter;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/icu/number/LocalizedNumberFormatter;->format(J)Landroid/icu/number/FormattedNumber;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/number/FormattedNumber;->getSuffix()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRoundingIncrement()Ljava/math/BigDecimal;
    .locals 1

    monitor-enter p0

    .line 1060
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->exportedProperties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getRoundingIncrement()Ljava/math/BigDecimal;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRoundingMode()I
    .locals 1

    monitor-enter p0

    .line 1129
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->exportedProperties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1130
    :cond_0
    invoke-virtual {v0}, Ljava/math/RoundingMode;->ordinal()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSecondaryGroupingSize()I
    .locals 2

    monitor-enter p0

    .line 1737
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getGroupingSize()I

    move-result v0

    .line 1738
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v1}, Landroid/icu/impl/number/DecimalFormatProperties;->getSecondaryGroupingSize()I

    move-result v1

    if-eq v0, v1, :cond_1

    if-gez v1, :cond_0

    goto :goto_0

    .line 1742
    :cond_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getSecondaryGroupingSize()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 1740
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSignAlwaysShown()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 971
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getSignAlwaysShown()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hashCode()I
    .locals 2

    monitor-enter p0

    .line 2168
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->hashCode()I

    move-result v0

    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->hashCode()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDecimalPatternMatchRequired()Z
    .locals 1

    monitor-enter p0

    .line 2010
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getDecimalPatternMatchRequired()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDecimalSeparatorAlwaysShown()Z
    .locals 1

    monitor-enter p0

    .line 1802
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getDecimalSeparatorAlwaysShown()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isExponentSignAlwaysShown()Z
    .locals 1

    monitor-enter p0

    .line 1647
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getExponentSignAlwaysShown()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isGroupingUsed()Z
    .locals 1

    monitor-enter p0

    .line 1673
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getGroupingSize()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getSecondaryGroupingSize()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isParseBigDecimal()Z
    .locals 1

    monitor-enter p0

    .line 1927
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getParseToBigDecimal()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isParseIntegerOnly()Z
    .locals 1

    monitor-enter p0

    .line 1986
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getParseIntegerOnly()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isParseStrict()Z
    .locals 2

    monitor-enter p0

    .line 1966
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getParseMode()Landroid/icu/impl/number/Parse$ParseMode;

    move-result-object v0

    sget-object v1, Landroid/icu/impl/number/Parse$ParseMode;->STRICT:Landroid/icu/impl/number/Parse$ParseMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isScientificNotation()Z
    .locals 2

    monitor-enter p0

    .line 1593
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMinimumExponentDigits()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 2

    .line 766
    sget-object v0, Landroid/icu/text/DecimalFormat;->threadLocalProperties:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/number/DecimalFormatProperties;

    .line 767
    monitor-enter p0

    .line 768
    :try_start_0
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->copyFrom(Landroid/icu/impl/number/DecimalFormatProperties;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 769
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-static {p1, p2, v0, v1}, Landroid/icu/impl/number/Parse;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Landroid/icu/impl/number/DecimalFormatProperties;Landroid/icu/text/DecimalFormatSymbols;)Ljava/lang/Number;

    move-result-object p1

    .line 773
    instance-of p2, p1, Ljava/math/BigDecimal;

    if-eqz p2, :cond_0

    .line 774
    check-cast p1, Ljava/math/BigDecimal;

    invoke-direct {p0, p1}, Landroid/icu/text/DecimalFormat;->safeConvertBigDecimal(Ljava/math/BigDecimal;)Ljava/lang/Number;

    move-result-object p1

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    .line 769
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public parseCurrency(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Landroid/icu/util/CurrencyAmount;
    .locals 3

    const/4 v0, 0x0

    .line 785
    :try_start_0
    sget-object v1, Landroid/icu/text/DecimalFormat;->threadLocalProperties:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/number/DecimalFormatProperties;

    .line 786
    monitor-enter p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 787
    :try_start_1
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v1, v2}, Landroid/icu/impl/number/DecimalFormatProperties;->copyFrom(Landroid/icu/impl/number/DecimalFormatProperties;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 788
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 789
    :try_start_2
    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-static {p1, p2, v1, v2}, Landroid/icu/impl/number/Parse;->parseCurrency(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Landroid/icu/impl/number/DecimalFormatProperties;Landroid/icu/text/DecimalFormatSymbols;)Landroid/icu/util/CurrencyAmount;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    .line 791
    :cond_0
    invoke-virtual {p1}, Landroid/icu/util/CurrencyAmount;->getNumber()Ljava/lang/Number;

    move-result-object p2

    .line 793
    instance-of v1, p2, Ljava/math/BigDecimal;

    if-eqz v1, :cond_1

    .line 794
    check-cast p2, Ljava/math/BigDecimal;

    invoke-direct {p0, p2}, Landroid/icu/text/DecimalFormat;->safeConvertBigDecimal(Ljava/math/BigDecimal;)Ljava/lang/Number;

    move-result-object p0

    .line 795
    new-instance p2, Landroid/icu/util/CurrencyAmount;

    invoke-virtual {p1}, Landroid/icu/util/CurrencyAmount;->getCurrency()Landroid/icu/util/Currency;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Landroid/icu/util/CurrencyAmount;-><init>(Ljava/lang/Number;Landroid/icu/util/Currency;)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    move-object p1, p2

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    .line 788
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return-object v0
.end method

.method refreshFormatter()V
    .locals 4

    .line 2262
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->exportedProperties:Landroid/icu/impl/number/DecimalFormatProperties;

    if-nez v0, :cond_0

    return-void

    .line 2267
    :cond_0
    sget-object v0, Landroid/icu/util/ULocale;->ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type;

    invoke-virtual {p0, v0}, Landroid/icu/text/DecimalFormat;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2270
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    sget-object v1, Landroid/icu/util/ULocale;->ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type;

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 2274
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v0

    .line 2277
    :cond_2
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    iget-object v2, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    iget-object v3, p0, Landroid/icu/text/DecimalFormat;->exportedProperties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-static {v1, v2, v3}, Landroid/icu/number/NumberFormatter;->fromDecimalFormat(Landroid/icu/impl/number/DecimalFormatProperties;Landroid/icu/text/DecimalFormatSymbols;Landroid/icu/impl/number/DecimalFormatProperties;)Landroid/icu/number/UnlocalizedNumberFormatter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/icu/number/UnlocalizedNumberFormatter;->locale(Landroid/icu/util/ULocale;)Landroid/icu/number/LocalizedNumberFormatter;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DecimalFormat;->formatter:Landroid/icu/number/LocalizedNumberFormatter;

    return-void
.end method

.method public declared-synchronized setCurrency(Landroid/icu/util/Currency;)V
    .locals 3

    monitor-enter p0

    .line 1847
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setCurrency(Landroid/icu/util/Currency;)Landroid/icu/impl/number/DecimalFormatProperties;

    if-eqz p1, :cond_0

    .line 1850
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormatSymbols;->setCurrency(Landroid/icu/util/Currency;)V

    .line 1851
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;I[Z)Ljava/lang/String;

    move-result-object p1

    .line 1852
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormatSymbols;->setCurrencySymbol(Ljava/lang/String;)V

    .line 1854
    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1855
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCurrencyPluralInfo(Landroid/icu/text/CurrencyPluralInfo;)V
    .locals 1

    monitor-enter p0

    .line 1917
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setCurrencyPluralInfo(Landroid/icu/text/CurrencyPluralInfo;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1918
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1919
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCurrencyUsage(Landroid/icu/util/Currency$CurrencyUsage;)V
    .locals 1

    monitor-enter p0

    .line 1893
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setCurrencyUsage(Landroid/icu/util/Currency$CurrencyUsage;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1894
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1895
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V
    .locals 0

    monitor-enter p0

    .line 825
    :try_start_0
    invoke-virtual {p1}, Landroid/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/icu/text/DecimalFormatSymbols;

    iput-object p1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 826
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 827
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDecimalPatternMatchRequired(Z)V
    .locals 1

    monitor-enter p0

    .line 2047
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setDecimalPatternMatchRequired(Z)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 2048
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2049
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDecimalSeparatorAlwaysShown(Z)V
    .locals 1

    monitor-enter p0

    .line 1816
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setDecimalSeparatorAlwaysShown(Z)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1817
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1818
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setExponentSignAlwaysShown(Z)V
    .locals 1

    monitor-enter p0

    .line 1662
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setExponentSignAlwaysShown(Z)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1663
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1664
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFormatWidth(I)V
    .locals 1

    monitor-enter p0

    .line 1524
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setFormatWidth(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1525
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1526
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setGroupingSize(I)V
    .locals 1

    monitor-enter p0

    .line 1727
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setGroupingSize(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1728
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1729
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setGroupingUsed(Z)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1695
    :try_start_0
    iget-object p1, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/icu/impl/number/DecimalFormatProperties;->setGroupingSize(I)Landroid/icu/impl/number/DecimalFormatProperties;

    goto :goto_0

    .line 1697
    :cond_0
    iget-object p1, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/icu/impl/number/DecimalFormatProperties;->setGroupingSize(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1698
    iget-object p1, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {p1, v0}, Landroid/icu/impl/number/DecimalFormatProperties;->setSecondaryGroupingSize(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1700
    :goto_0
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1701
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMathContext(Ljava/math/MathContext;)V
    .locals 1

    monitor-enter p0

    .line 1186
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setMathContext(Ljava/math/MathContext;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1187
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1188
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMathContextICU(Landroid/icu/math/MathContext;)V
    .locals 2

    monitor-enter p0

    .line 1216
    :try_start_0
    invoke-virtual {p1}, Landroid/icu/math/MathContext;->getForm()I

    move-result v0

    iput v0, p0, Landroid/icu/text/DecimalFormat;->icuMathContextForm:I

    .line 1218
    invoke-virtual {p1}, Landroid/icu/math/MathContext;->getLostDigits()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1222
    new-instance v0, Ljava/math/MathContext;

    invoke-virtual {p1}, Landroid/icu/math/MathContext;->getDigits()I

    move-result p1

    sget-object v1, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-direct {v0, p1, v1}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    goto :goto_0

    .line 1224
    :cond_0
    new-instance v0, Ljava/math/MathContext;

    .line 1226
    invoke-virtual {p1}, Landroid/icu/math/MathContext;->getDigits()I

    move-result v1

    invoke-virtual {p1}, Landroid/icu/math/MathContext;->getRoundingMode()I

    move-result p1

    invoke-static {p1}, Ljava/math/RoundingMode;->valueOf(I)Ljava/math/RoundingMode;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    .line 1228
    :goto_0
    invoke-virtual {p0, v0}, Landroid/icu/text/DecimalFormat;->setMathContext(Ljava/math/MathContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1229
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMaximumFractionDigits(I)V
    .locals 1

    monitor-enter p0

    .line 1383
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMinimumFractionDigits()I

    move-result v0

    if-ltz v0, :cond_0

    if-le v0, p1, :cond_0

    .line 1385
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumFractionDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1387
    :cond_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setMaximumFractionDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1388
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1389
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMaximumIntegerDigits(I)V
    .locals 1

    monitor-enter p0

    .line 1299
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMinimumIntegerDigits()I

    move-result v0

    if-ltz v0, :cond_0

    if-le v0, p1, :cond_0

    .line 1301
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumIntegerDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1303
    :cond_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setMaximumIntegerDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1304
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1305
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMaximumSignificantDigits(I)V
    .locals 1

    monitor-enter p0

    .line 1488
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMinimumSignificantDigits()I

    move-result v0

    if-ltz v0, :cond_0

    if-le v0, p1, :cond_0

    .line 1490
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumSignificantDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1492
    :cond_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setMaximumSignificantDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1493
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1494
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMinimumExponentDigits(B)V
    .locals 1

    monitor-enter p0

    .line 1637
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumExponentDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1638
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1639
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMinimumFractionDigits(I)V
    .locals 1

    monitor-enter p0

    .line 1343
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMaximumFractionDigits()I

    move-result v0

    if-ltz v0, :cond_0

    if-ge v0, p1, :cond_0

    .line 1345
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setMaximumFractionDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1347
    :cond_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumFractionDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1348
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1349
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMinimumGroupingDigits(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 1792
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumGroupingDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1793
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1794
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMinimumIntegerDigits(I)V
    .locals 1

    monitor-enter p0

    .line 1262
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMaximumIntegerDigits()I

    move-result v0

    if-ltz v0, :cond_0

    if-ge v0, p1, :cond_0

    .line 1264
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setMaximumIntegerDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1266
    :cond_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumIntegerDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1267
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1268
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMinimumSignificantDigits(I)V
    .locals 1

    monitor-enter p0

    .line 1450
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMaximumSignificantDigits()I

    move-result v0

    if-ltz v0, :cond_0

    if-ge v0, p1, :cond_0

    .line 1452
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setMaximumSignificantDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1454
    :cond_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumSignificantDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1455
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1456
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMultiplier(I)V
    .locals 5

    monitor-enter p0

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    move v1, p1

    :goto_0
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq p1, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 1039
    :try_start_0
    div-int/lit8 v3, v1, 0xa

    mul-int/lit8 v4, v3, 0xa

    if-eq v4, v1, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    :goto_1
    if-eq v0, v2, :cond_2

    .line 1047
    iget-object p1, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {p1, v0}, Landroid/icu/impl/number/DecimalFormatProperties;->setMagnitudeMultiplier(I)Landroid/icu/impl/number/DecimalFormatProperties;

    goto :goto_2

    .line 1049
    :cond_2
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setMultiplier(Ljava/math/BigDecimal;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1051
    :goto_2
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1052
    monitor-exit p0

    return-void

    .line 1031
    :cond_3
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Multiplier must be nonzero."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setNegativePrefix(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 891
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setNegativePrefix(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 892
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 893
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 889
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setNegativeSuffix(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 957
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setNegativeSuffix(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 958
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 959
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 955
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPadCharacter(C)V
    .locals 1

    monitor-enter p0

    .line 1553
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setPadString(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1554
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1555
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPadPosition(I)V
    .locals 1

    monitor-enter p0

    .line 1583
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-static {p1}, Landroid/icu/impl/number/Padder$PadPosition;->fromOld(I)Landroid/icu/impl/number/Padder$PadPosition;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setPadPosition(Landroid/icu/impl/number/Padder$PadPosition;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1584
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1585
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setParseBigDecimal(Z)V
    .locals 1

    monitor-enter p0

    .line 1939
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setParseToBigDecimal(Z)Landroid/icu/impl/number/DecimalFormatProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1941
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setParseCaseSensitive(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 2102
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setParseCaseSensitive(Z)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 2103
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2104
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setParseIntegerOnly(Z)V
    .locals 1

    monitor-enter p0

    .line 2000
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setParseIntegerOnly(Z)Landroid/icu/impl/number/DecimalFormatProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2002
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setParseMaxDigits(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public declared-synchronized setParseNoExponent(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 2074
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setParseNoExponent(Z)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 2075
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2076
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setParseStrict(Z)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1974
    :try_start_0
    sget-object p1, Landroid/icu/impl/number/Parse$ParseMode;->STRICT:Landroid/icu/impl/number/Parse$ParseMode;

    goto :goto_0

    :cond_0
    sget-object p1, Landroid/icu/impl/number/Parse$ParseMode;->LENIENT:Landroid/icu/impl/number/Parse$ParseMode;

    .line 1975
    :goto_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setParseMode(Landroid/icu/impl/number/Parse$ParseMode;)Landroid/icu/impl/number/DecimalFormatProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1977
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPositivePrefix(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 858
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setPositivePrefix(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 859
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 860
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 856
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPositiveSuffix(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 924
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setPositiveSuffix(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 925
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 926
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 922
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setProperties(Landroid/icu/text/DecimalFormat$PropertySetter;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 2341
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-interface {p1, v0}, Landroid/icu/text/DecimalFormat$PropertySetter;->set(Landroid/icu/impl/number/DecimalFormatProperties;)V

    .line 2342
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2343
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method setPropertiesFromPattern(Ljava/lang/String;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2332
    iget-object p0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-static {p1, p0, p2}, Landroid/icu/impl/number/PatternStringParser;->parseToExistingProperties(Ljava/lang/String;Landroid/icu/impl/number/DecimalFormatProperties;I)V

    return-void

    .line 2330
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public declared-synchronized setRoundingIncrement(D)V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 1115
    :try_start_0
    check-cast p1, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1}, Landroid/icu/text/DecimalFormat;->setRoundingIncrement(Ljava/math/BigDecimal;)V

    goto :goto_0

    .line 1117
    :cond_0
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p1

    .line 1118
    invoke-virtual {p0, p1}, Landroid/icu/text/DecimalFormat;->setRoundingIncrement(Ljava/math/BigDecimal;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1120
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setRoundingIncrement(Landroid/icu/math/BigDecimal;)V
    .locals 0

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1102
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/icu/math/BigDecimal;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object p1

    .line 1103
    :goto_0
    invoke-virtual {p0, p1}, Landroid/icu/text/DecimalFormat;->setRoundingIncrement(Ljava/math/BigDecimal;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1104
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setRoundingIncrement(Ljava/math/BigDecimal;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1085
    :try_start_0
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1086
    iget-object p1, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Landroid/icu/impl/number/DecimalFormatProperties;->setMaximumFractionDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1087
    monitor-exit p0

    return-void

    .line 1090
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setRoundingIncrement(Ljava/math/BigDecimal;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1091
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1092
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setRoundingMode(I)V
    .locals 1

    monitor-enter p0

    .line 1155
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-static {p1}, Ljava/math/RoundingMode;->valueOf(I)Ljava/math/RoundingMode;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setRoundingMode(Ljava/math/RoundingMode;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1156
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1157
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setScientificNotation(Z)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1610
    :try_start_0
    iget-object p1, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumExponentDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    goto :goto_0

    .line 1612
    :cond_0
    iget-object p1, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumExponentDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1614
    :goto_0
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1615
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSecondaryGroupingSize(I)V
    .locals 1

    monitor-enter p0

    .line 1760
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setSecondaryGroupingSize(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1761
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1762
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSignAlwaysShown(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 1000
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->setSignAlwaysShown(Z)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1001
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1002
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSignificantDigitsUsed(Z)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1417
    :try_start_0
    iget-object p1, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumSignificantDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1418
    iget-object p1, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/icu/impl/number/DecimalFormatProperties;->setMaximumSignificantDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    goto :goto_0

    .line 1420
    :cond_0
    iget-object p1, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumSignificantDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1421
    iget-object p1, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {p1, v0}, Landroid/icu/impl/number/DecimalFormatProperties;->setMaximumSignificantDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 1423
    :goto_0
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1424
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized toLocalizedPattern()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 2226
    :try_start_0
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    .line 2227
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/icu/impl/number/PatternStringUtils;->convertLocalized(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;Z)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toNumberFormatter()Landroid/icu/number/LocalizedNumberFormatter;
    .locals 0

    .line 2240
    iget-object p0, p0, Landroid/icu/text/DecimalFormat;->formatter:Landroid/icu/number/LocalizedNumberFormatter;

    return-object p0
.end method

.method public declared-synchronized toPattern()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 2209
    :try_start_0
    sget-object v0, Landroid/icu/text/DecimalFormat;->threadLocalProperties:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/number/DecimalFormatProperties;

    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->copyFrom(Landroid/icu/impl/number/DecimalFormatProperties;)Landroid/icu/impl/number/DecimalFormatProperties;

    move-result-object v0

    .line 2210
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-static {v1}, Landroid/icu/text/DecimalFormat;->useCurrency(Landroid/icu/impl/number/DecimalFormatProperties;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2211
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->exportedProperties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v1}, Landroid/icu/impl/number/DecimalFormatProperties;->getMinimumFractionDigits()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumFractionDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 2212
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->exportedProperties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v1}, Landroid/icu/impl/number/DecimalFormatProperties;->getMaximumFractionDigits()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->setMaximumFractionDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 2213
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->exportedProperties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v1}, Landroid/icu/impl/number/DecimalFormatProperties;->getRoundingIncrement()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->setRoundingIncrement(Ljava/math/BigDecimal;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 2215
    :cond_0
    invoke-static {v0}, Landroid/icu/impl/number/PatternStringUtils;->propertiesToPatternString(Landroid/icu/impl/number/DecimalFormatProperties;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2179
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    .line 2180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2181
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " { symbols@"

    .line 2182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2183
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2184
    monitor-enter p0

    .line 2185
    :try_start_0
    iget-object v1, p0, Landroid/icu/text/DecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v1, v0}, Landroid/icu/impl/number/DecimalFormatProperties;->toStringBare(Ljava/lang/StringBuilder;)V

    .line 2186
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, " }"

    .line 2187
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception v0

    .line 2186
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
