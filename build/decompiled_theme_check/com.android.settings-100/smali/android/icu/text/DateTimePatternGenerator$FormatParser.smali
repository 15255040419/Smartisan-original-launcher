.class public Landroid/icu/text/DateTimePatternGenerator$FormatParser;
.super Ljava/lang/Object;
.source "DateTimePatternGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateTimePatternGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FormatParser"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final QUOTING_CHARS:Landroid/icu/text/UnicodeSet;

.field private static final SYNTAX_CHARS:Landroid/icu/text/UnicodeSet;


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private transient tokenizer:Landroid/icu/impl/PatternTokenizer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1402
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string v1, "[a-zA-Z]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->SYNTAX_CHARS:Landroid/icu/text/UnicodeSet;

    .line 1403
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string v1, "[[[:script=Latn:][:script=Cyrl:]]&[[:L:][:M:]]]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->QUOTING_CHARS:Landroid/icu/text/UnicodeSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1404
    new-instance v0, Landroid/icu/impl/PatternTokenizer;

    invoke-direct {v0}, Landroid/icu/impl/PatternTokenizer;-><init>()V

    sget-object v1, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->SYNTAX_CHARS:Landroid/icu/text/UnicodeSet;

    .line 1405
    invoke-virtual {v0, v1}, Landroid/icu/impl/PatternTokenizer;->setSyntaxCharacters(Landroid/icu/text/UnicodeSet;)Landroid/icu/impl/PatternTokenizer;

    move-result-object v0

    sget-object v1, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->QUOTING_CHARS:Landroid/icu/text/UnicodeSet;

    .line 1406
    invoke-virtual {v0, v1}, Landroid/icu/impl/PatternTokenizer;->setExtraQuotingCharacters(Landroid/icu/text/UnicodeSet;)Landroid/icu/impl/PatternTokenizer;

    move-result-object v0

    const/4 v1, 0x1

    .line 1407
    invoke-virtual {v0, v1}, Landroid/icu/impl/PatternTokenizer;->setUsingQuote(Z)Landroid/icu/impl/PatternTokenizer;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->tokenizer:Landroid/icu/impl/PatternTokenizer;

    .line 1408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;

    return-void
.end method

.method static synthetic access$600(Landroid/icu/text/DateTimePatternGenerator$FormatParser;)Ljava/util/List;
    .locals 0

    .line 1401
    iget-object p0, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;

    return-object p0
.end method

.method private addVariable(Ljava/lang/StringBuffer;Z)V
    .locals 2

    .line 1468
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1469
    iget-object p0, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;

    new-instance v0, Landroid/icu/text/DateTimePatternGenerator$VariableField;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/icu/text/DateTimePatternGenerator$VariableField;-><init>(Ljava/lang/String;Z)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    .line 1470
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1525
    iget-object p0, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;

    return-object p0
.end method

.method public hasDateAndTimeFields()Z
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1574
    iget-object p0, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1575
    instance-of v4, v2, Landroid/icu/text/DateTimePatternGenerator$VariableField;

    if-eqz v4, :cond_0

    .line 1576
    check-cast v2, Landroid/icu/text/DateTimePatternGenerator$VariableField;

    invoke-virtual {v2}, Landroid/icu/text/DateTimePatternGenerator$VariableField;->getType()I

    move-result v2

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_1
    and-int/lit16 p0, v1, 0x3ff

    if-eqz p0, :cond_2

    move p0, v3

    goto :goto_1

    :cond_2
    move p0, v0

    :goto_1
    const v2, 0xfc00

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    if-eqz p0, :cond_4

    if-eqz v1, :cond_4

    move v0, v3

    :cond_4
    return v0
.end method

.method public quoteLiteral(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1686
    iget-object p0, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->tokenizer:Landroid/icu/impl/PatternTokenizer;

    invoke-virtual {p0, p1}, Landroid/icu/impl/PatternTokenizer;->quoteLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final set(Ljava/lang/String;)Landroid/icu/text/DateTimePatternGenerator$FormatParser;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1430
    invoke-virtual {p0, p1, v0}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->set(Ljava/lang/String;Z)Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    move-result-object p0

    return-object p0
.end method

.method public set(Ljava/lang/String;Z)Landroid/icu/text/DateTimePatternGenerator$FormatParser;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1444
    iget-object p2, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 1445
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_0

    return-object p0

    .line 1446
    :cond_0
    iget-object p2, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->tokenizer:Landroid/icu/impl/PatternTokenizer;

    invoke-virtual {p2, p1}, Landroid/icu/impl/PatternTokenizer;->setPattern(Ljava/lang/String;)Landroid/icu/impl/PatternTokenizer;

    .line 1447
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1448
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    const/4 v0, 0x0

    .line 1450
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1451
    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->tokenizer:Landroid/icu/impl/PatternTokenizer;

    invoke-virtual {v1, p1}, Landroid/icu/impl/PatternTokenizer;->next(Ljava/lang/StringBuffer;)I

    move-result v1

    if-nez v1, :cond_1

    .line 1463
    invoke-direct {p0, p2, v0}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->addVariable(Ljava/lang/StringBuffer;Z)V

    return-object p0

    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 1454
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_2

    .line 1455
    invoke-direct {p0, p2, v0}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->addVariable(Ljava/lang/StringBuffer;Z)V

    .line 1457
    :cond_2
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1459
    :cond_3
    invoke-direct {p0, p2, v0}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->addVariable(Ljava/lang/StringBuffer;Z)V

    .line 1460
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1537
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(II)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-ge p1, p2, :cond_1

    .line 1553
    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1554
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1555
    check-cast v1, Ljava/lang/String;

    .line 1556
    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->tokenizer:Landroid/icu/impl/PatternTokenizer;

    invoke-virtual {v2, v1}, Landroid/icu/impl/PatternTokenizer;->quoteLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1558
    :cond_0
    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->items:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1561
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
