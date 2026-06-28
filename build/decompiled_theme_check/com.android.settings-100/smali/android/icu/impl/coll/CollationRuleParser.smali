.class public final Landroid/icu/impl/coll/CollationRuleParser;
.super Ljava/lang/Object;
.source "CollationRuleParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/coll/CollationRuleParser$Importer;,
        Landroid/icu/impl/coll/CollationRuleParser$Sink;,
        Landroid/icu/impl/coll/CollationRuleParser$Position;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BEFORE:Ljava/lang/String; = "[before"

.field private static final OFFSET_SHIFT:I = 0x8

.field static final POSITION_VALUES:[Landroid/icu/impl/coll/CollationRuleParser$Position;

.field static final POS_BASE:C = '\u2800'

.field static final POS_LEAD:C = '\ufffe'

.field private static final STARRED_FLAG:I = 0x10

.field private static final STRENGTH_MASK:I = 0xf

.field private static final UCOL_DEFAULT:I = -0x1

.field private static final UCOL_OFF:I = 0x0

.field private static final UCOL_ON:I = 0x1

.field private static final U_PARSE_CONTEXT_LEN:I = 0x10

.field private static final gSpecialReorderCodes:[Ljava/lang/String;

.field private static final positions:[Ljava/lang/String;


# instance fields
.field private final baseData:Landroid/icu/impl/coll/CollationData;

.field private importer:Landroid/icu/impl/coll/CollationRuleParser$Importer;

.field private nfc:Landroid/icu/text/Normalizer2;

.field private nfd:Landroid/icu/text/Normalizer2;

.field private final rawBuilder:Ljava/lang/StringBuilder;

.field private ruleIndex:I

.field private rules:Ljava/lang/String;

.field private settings:Landroid/icu/impl/coll/CollationSettings;

.field private sink:Landroid/icu/impl/coll/CollationRuleParser$Sink;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 51
    invoke-static {}, Landroid/icu/impl/coll/CollationRuleParser$Position;->values()[Landroid/icu/impl/coll/CollationRuleParser$Position;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser;->POSITION_VALUES:[Landroid/icu/impl/coll/CollationRuleParser$Position;

    const-string v1, "first tertiary ignorable"

    const-string v2, "last tertiary ignorable"

    const-string v3, "first secondary ignorable"

    const-string v4, "last secondary ignorable"

    const-string v5, "first primary ignorable"

    const-string v6, "last primary ignorable"

    const-string v7, "first variable"

    const-string v8, "last variable"

    const-string v9, "first regular"

    const-string v10, "last regular"

    const-string v11, "first implicit"

    const-string v12, "last implicit"

    const-string v13, "first trailing"

    const-string v14, "last trailing"

    .line 479
    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser;->positions:[Ljava/lang/String;

    const-string/jumbo v0, "space"

    const-string/jumbo v1, "punct"

    const-string/jumbo v2, "symbol"

    const-string v3, "currency"

    const-string v4, "digit"

    .line 737
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser;->gSpecialReorderCodes:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/icu/impl/coll/CollationData;)V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    .line 909
    invoke-static {}, Landroid/icu/text/Normalizer2;->getNFDInstance()Landroid/icu/text/Normalizer2;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->nfd:Landroid/icu/text/Normalizer2;

    .line 910
    invoke-static {}, Landroid/icu/text/Normalizer2;->getNFCInstance()Landroid/icu/text/Normalizer2;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->nfc:Landroid/icu/text/Normalizer2;

    .line 95
    iput-object p1, p0, Landroid/icu/impl/coll/CollationRuleParser;->baseData:Landroid/icu/impl/coll/CollationData;

    return-void
.end method

.method private appendErrorContext(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " at index "

    .line 866
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " near \""

    .line 869
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    iget p1, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    const/16 v1, 0xf

    sub-int/2addr p1, v1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    .line 874
    iget-object v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 877
    :cond_1
    :goto_0
    iget-object v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    iget v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    invoke-virtual {v0, v2, p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    const/16 p1, 0x21

    .line 879
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 881
    iget-object p1, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    sub-int/2addr p1, v2

    const/16 v3, 0x10

    if-lt p1, v3, :cond_2

    .line 884
    iget-object p1, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 v1, 0xe

    goto :goto_1

    :cond_2
    move v1, p1

    .line 888
    :cond_3
    :goto_1
    iget-object p1, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    iget p0, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    add-int/2addr v1, p0

    invoke-virtual {v0, p1, p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    const/16 p0, 0x22

    .line 889
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getOnOffValue(Ljava/lang/String;)I
    .locals 1

    const-string v0, "on"

    .line 767
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v0, "off"

    .line 769
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getReorderCode(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 747
    :goto_0
    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser;->gSpecialReorderCodes:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 748
    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit16 v0, v0, 0x1000

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x100a

    .line 753
    :try_start_0
    invoke-static {v0, p0}, Landroid/icu/lang/UCharacter;->getPropertyValueEnum(ILjava/lang/CharSequence;)I

    move-result v0
    :try_end_0
    .catch Landroid/icu/impl/IllegalIcuArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v0, :cond_2

    return v0

    :catch_0
    :cond_2
    const-string/jumbo v0, "others"

    .line 760
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/16 p0, 0x67

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method private static final isSurrogate(I)Z
    .locals 1

    and-int/lit16 p0, p0, -0x800

    const v0, 0xd800

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isSyntaxChar(I)Z
    .locals 1

    const/16 v0, 0x21

    if-gt v0, p0, :cond_3

    const/16 v0, 0x7e

    if-gt p0, v0, :cond_3

    const/16 v0, 0x2f

    if-le p0, v0, :cond_2

    const/16 v0, 0x3a

    if-gt v0, p0, :cond_0

    const/16 v0, 0x40

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x5b

    if-gt v0, p0, :cond_1

    const/16 v0, 0x60

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x7b

    if-gt v0, p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private makeParseException(Ljava/lang/String;)Ljava/text/ParseException;
    .locals 1

    .line 855
    new-instance v0, Ljava/text/ParseException;

    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationRuleParser;->appendErrorContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    invoke-direct {v0, p1, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method private parse(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 135
    iput-object p1, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    const/4 p1, 0x0

    .line 136
    iput p1, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    .line 138
    :goto_0
    iget p1, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    iget-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_6

    .line 139
    iget-object p1, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    iget v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 140
    invoke-static {p1}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 141
    iget p1, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    add-int/2addr p1, v1

    iput p1, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x21

    if-eq p1, v0, :cond_5

    const/16 v0, 0x23

    if-eq p1, v0, :cond_4

    const/16 v0, 0x26

    if-eq p1, v0, :cond_3

    const/16 v0, 0x40

    if-eq p1, v0, :cond_2

    const/16 v0, 0x5b

    if-eq p1, v0, :cond_1

    const-string p1, "expected a reset or setting or comment"

    .line 164
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_1
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationRuleParser;->parseSetting()V

    goto :goto_0

    .line 155
    :cond_2
    iget-object p1, p0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    const/16 v0, 0x800

    invoke-virtual {p1, v0, v1}, Landroid/icu/impl/coll/CollationSettings;->setFlag(IZ)V

    .line 156
    iget p1, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    add-int/2addr p1, v1

    iput p1, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    goto :goto_0

    .line 146
    :cond_3
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationRuleParser;->parseRuleChain()V

    goto :goto_0

    .line 152
    :cond_4
    iget p1, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    add-int/2addr p1, v1

    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationRuleParser;->skipComment(I)I

    move-result p1

    iput p1, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    goto :goto_0

    .line 161
    :cond_5
    iget p1, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    add-int/2addr p1, v1

    iput p1, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    goto :goto_0

    :cond_6
    return-void
.end method

.method private parseRelationOperator()I
    .locals 6

    .line 248
    iget v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    invoke-direct {p0, v0}, Landroid/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    move-result v0

    iput v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    .line 249
    iget v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    iget-object v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, -0x1

    if-lt v0, v1, :cond_0

    return v2

    .line 251
    :cond_0
    iget v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    .line 252
    iget-object v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2c

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v1, :cond_4

    const/16 v1, 0x2a

    packed-switch v0, :pswitch_data_0

    return v2

    :pswitch_0
    const/16 v4, 0xf

    .line 284
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v3, v0, :cond_4

    iget-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_4

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x1f

    goto :goto_2

    .line 255
    :pswitch_1
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v3, v0, :cond_2

    iget-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x3c

    if-ne v0, v2, :cond_2

    add-int/lit8 v3, v3, 0x1

    .line 257
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v3, v0, :cond_1

    iget-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 259
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v3, v0, :cond_3

    iget-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_3

    add-int/lit8 v3, v3, 0x1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_0
    move v4, v0

    .line 271
    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v3, v0, :cond_4

    iget-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_4

    add-int/lit8 v3, v3, 0x1

    or-int/lit8 v4, v4, 0x10

    goto :goto_2

    :pswitch_2
    move v4, v5

    .line 292
    :cond_4
    :goto_2
    iget p0, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    sub-int/2addr v3, p0

    shl-int/lit8 p0, v3, 0x8

    or-int/2addr p0, v4

    return p0

    :pswitch_data_0
    .packed-switch 0x3b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseRelationStrings(II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 301
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, p2, v0}, Landroid/icu/impl/coll/CollationRuleParser;->parseTailoringString(ILjava/lang/StringBuilder;)I

    move-result p2

    .line 302
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/16 v2, 0x7c

    const-string v3, ""

    if-ne v0, v2, :cond_2

    .line 304
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 p2, p2, 0x1

    .line 305
    iget-object v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, p2, v2}, Landroid/icu/impl/coll/CollationRuleParser;->parseTailoringString(ILjava/lang/StringBuilder;)I

    move-result p2

    .line 306
    iget-object v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p2, v2, :cond_1

    iget-object v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    move v5, v2

    move-object v2, v0

    move v0, v5

    goto :goto_2

    :cond_2
    move-object v2, v3

    :goto_2
    const/16 v4, 0x2f

    if-ne v0, v4, :cond_3

    .line 310
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p2, p2, 0x1

    .line 311
    invoke-direct {p0, p2, v3}, Landroid/icu/impl/coll/CollationRuleParser;->parseTailoringString(ILjava/lang/StringBuilder;)I

    move-result p2

    .line 314
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    .line 315
    invoke-virtual {v2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 316
    iget-object v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->codePointAt(I)I

    move-result v1

    .line 317
    iget-object v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->nfc:Landroid/icu/text/Normalizer2;

    invoke-virtual {v4, v0}, Landroid/icu/text/Normalizer2;->hasBoundaryBefore(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->nfc:Landroid/icu/text/Normalizer2;

    invoke-virtual {v0, v1}, Landroid/icu/text/Normalizer2;->hasBoundaryBefore(I)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const-string p1, "in \'prefix|str\', prefix and str must each start with an NFC boundary"

    .line 318
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return-void

    .line 323
    :cond_5
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->sink:Landroid/icu/impl/coll/CollationRuleParser$Sink;

    iget-object v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, v2, v1, v3}, Landroid/icu/impl/coll/CollationRuleParser$Sink;->addRelation(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    iput p2, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    return-void

    :catch_0
    move-exception p1

    const-string p2, "adding relation failed"

    .line 325
    invoke-direct {p0, p2, p1}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private parseReordering(Ljava/lang/CharSequence;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 707
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x7

    if-ne v1, v0, :cond_0

    .line 709
    iget-object p0, p0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationSettings;->resetReordering()V

    return-void

    .line 713
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 714
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    move v2, v1

    .line 717
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 718
    :cond_1
    invoke-interface {p1, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 719
    invoke-static {v1}, Landroid/icu/impl/coll/CollationRuleParser;->getReorderCode(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_2

    const-string/jumbo p1, "unknown script or reorder code"

    .line 721
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return-void

    .line 724
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_0

    .line 727
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 728
    iget-object p0, p0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationSettings;->resetReordering()V

    goto :goto_3

    .line 730
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [I

    const/4 v1, 0x0

    .line 732
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, p1, v1

    move v1, v3

    goto :goto_2

    .line 733
    :cond_5
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    iget-object p0, p0, Landroid/icu/impl/coll/CollationRuleParser;->baseData:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v0, p0, p1}, Landroid/icu/impl/coll/CollationSettings;->setReordering(Landroid/icu/impl/coll/CollationData;[I)V

    :goto_3
    return-void
.end method

.method private parseResetAndPosition()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 212
    iget v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Landroid/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    move-result v0

    .line 216
    iget-object v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const-string v4, "[before"

    invoke-virtual {v1, v0, v4, v3, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, 0x7

    .line 217
    iget-object v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    .line 218
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 219
    invoke-direct {p0, v1}, Landroid/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    iget-object v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    .line 220
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-gt v5, v4, :cond_0

    const/16 v6, 0x33

    if-gt v4, v6, :cond_0

    iget-object v6, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    .line 221
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v6, 0x5d

    if-ne v2, v6, :cond_0

    sub-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/lit8 v1, v1, 0x2

    .line 224
    invoke-direct {p0, v1}, Landroid/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v4, 0xf

    .line 228
    :goto_0
    iget-object v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, -0x1

    if-lt v0, v1, :cond_1

    const-string/jumbo v0, "reset without position"

    .line 229
    invoke-direct {p0, v0}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return v2

    .line 232
    :cond_1
    iget-object v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x5b

    if-ne v1, v3, :cond_2

    .line 233
    iget-object v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, v1}, Landroid/icu/impl/coll/CollationRuleParser;->parseSpecialPosition(ILjava/lang/StringBuilder;)I

    move-result v0

    goto :goto_1

    .line 235
    :cond_2
    iget-object v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, v1}, Landroid/icu/impl/coll/CollationRuleParser;->parseTailoringString(ILjava/lang/StringBuilder;)I

    move-result v0

    .line 238
    :goto_1
    :try_start_0
    iget-object v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->sink:Landroid/icu/impl/coll/CollationRuleParser$Sink;

    iget-object v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v3}, Landroid/icu/impl/coll/CollationRuleParser$Sink;->addReset(ILjava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    iput v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    return v4

    :catch_0
    move-exception v0

    const-string v1, "adding reset failed"

    .line 240
    invoke-direct {p0, v1, v0}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;Ljava/lang/Exception;)V

    return v2
.end method

.method private parseRuleChain()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 171
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationRuleParser;->parseResetAndPosition()I

    move-result v0

    const/4 v1, 0x1

    move v2, v1

    .line 174
    :goto_0
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationRuleParser;->parseRelationOperator()I

    move-result v3

    if-gez v3, :cond_2

    .line 176
    iget v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    iget-object v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    iget-object v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    iget v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_0

    .line 178
    iget v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    add-int/2addr v3, v1

    invoke-direct {p0, v3}, Landroid/icu/impl/coll/CollationRuleParser;->skipComment(I)I

    move-result v3

    iput v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    const-string/jumbo v0, "reset not followed by a relation"

    .line 182
    invoke-direct {p0, v0}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    and-int/lit8 v4, v3, 0xf

    const/16 v5, 0xf

    if-ge v0, v5, :cond_4

    if-eqz v2, :cond_3

    if-eq v4, v0, :cond_4

    const-string/jumbo v0, "reset-before strength differs from its first relation"

    .line 191
    invoke-direct {p0, v0}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return-void

    :cond_3
    if-ge v4, v0, :cond_4

    const-string/jumbo v0, "reset-before strength followed by a stronger relation"

    .line 196
    invoke-direct {p0, v0}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return-void

    .line 201
    :cond_4
    iget v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    shr-int/lit8 v5, v3, 0x8

    add-int/2addr v2, v5

    and-int/lit8 v3, v3, 0x10

    if-nez v3, :cond_5

    .line 203
    invoke-direct {p0, v4, v2}, Landroid/icu/impl/coll/CollationRuleParser;->parseRelationStrings(II)V

    goto :goto_1

    .line 205
    :cond_5
    invoke-direct {p0, v4, v2}, Landroid/icu/impl/coll/CollationRuleParser;->parseStarredCharacters(II)V

    :goto_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private parseSetting()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 527
    iget v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 528
    iget-object v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, v2}, Landroid/icu/impl/coll/CollationRuleParser;->readWords(ILjava/lang/StringBuilder;)I

    move-result v2

    if-le v2, v0, :cond_0

    .line 529
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "expected a setting/option at \'[\'"

    .line 530
    invoke-direct {p0, v0}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    .line 533
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 534
    iget-object v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5d

    if-ne v3, v4, :cond_20

    add-int/2addr v2, v1

    const-string/jumbo v3, "reorder"

    .line 536
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/16 v4, 0x20

    if-eqz v3, :cond_3

    .line 537
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x7

    if-eq v3, v5, :cond_2

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_3

    .line 538
    :cond_2
    invoke-direct {p0, v0}, Landroid/icu/impl/coll/CollationRuleParser;->parseReordering(Ljava/lang/CharSequence;)V

    .line 539
    iput v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    return-void

    :cond_3
    const-string v3, "backwards 2"

    .line 542
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 543
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    const/16 v3, 0x800

    invoke-virtual {v0, v3, v1}, Landroid/icu/impl/coll/CollationSettings;->setFlag(IZ)V

    .line 544
    iput v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    return-void

    .line 548
    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v4, 0x0

    if-ltz v3, :cond_5

    add-int/lit8 v5, v3, 0x1

    .line 550
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 551
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string v5, ""

    :goto_0
    const-string/jumbo v3, "strength"

    .line 555
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v6, -0x1

    if-eqz v3, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v1, :cond_8

    .line 557
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x31

    if-gt v1, v0, :cond_6

    const/16 v3, 0x34

    if-gt v0, v3, :cond_6

    sub-int/2addr v0, v1

    add-int/2addr v0, v4

    goto :goto_1

    :cond_6
    const/16 v1, 0x49

    if-ne v0, v1, :cond_7

    const/16 v0, 0xf

    goto :goto_1

    :cond_7
    move v0, v6

    :goto_1
    if-eq v0, v6, :cond_22

    .line 564
    iget-object v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v1, v0}, Landroid/icu/impl/coll/CollationSettings;->setStrength(I)V

    .line 565
    iput v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    return-void

    :cond_8
    const-string v3, "alternate"

    .line 568
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v0, "non-ignorable"

    .line 570
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v4

    goto :goto_2

    :cond_9
    const-string/jumbo v0, "shifted"

    .line 572
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_2

    :cond_a
    move v0, v6

    :goto_2
    if-eq v0, v6, :cond_22

    .line 576
    iget-object v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    if-lez v0, :cond_b

    goto :goto_3

    :cond_b
    move v1, v4

    :goto_3
    invoke-virtual {v3, v1}, Landroid/icu/impl/coll/CollationSettings;->setAlternateHandlingShifted(Z)V

    .line 577
    iput v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    return-void

    :cond_c
    const-string v3, "maxVariable"

    .line 580
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v7, 0x2

    if-eqz v3, :cond_11

    const-string/jumbo v0, "space"

    .line 582
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v1, v4

    goto :goto_4

    :cond_d
    const-string/jumbo v0, "punct"

    .line 584
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_4

    :cond_e
    const-string/jumbo v0, "symbol"

    .line 586
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v1, v7

    goto :goto_4

    :cond_f
    const-string v0, "currency"

    .line 588
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v1, 0x3

    goto :goto_4

    :cond_10
    move v1, v6

    :goto_4
    if-eq v1, v6, :cond_22

    .line 592
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v0, v1, v4}, Landroid/icu/impl/coll/CollationSettings;->setMaxVariable(II)V

    .line 593
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    iget-object v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->baseData:Landroid/icu/impl/coll/CollationData;

    add-int/lit16 v1, v1, 0x1000

    invoke-virtual {v3, v1}, Landroid/icu/impl/coll/CollationData;->getLastPrimaryForGroup(I)J

    move-result-wide v3

    iput-wide v3, v0, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    .line 596
    iput v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    return-void

    :cond_11
    const-string v3, "caseFirst"

    .line 599
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    const-string v0, "off"

    .line 601
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_5

    :cond_12
    const-string v0, "lower"

    .line 603
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 v4, 0x200

    goto :goto_5

    :cond_13
    const-string/jumbo v0, "upper"

    .line 605
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v4, 0x300

    goto :goto_5

    :cond_14
    move v4, v6

    :goto_5
    if-eq v4, v6, :cond_22

    .line 609
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v0, v4}, Landroid/icu/impl/coll/CollationSettings;->setCaseFirst(I)V

    .line 610
    iput v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    return-void

    :cond_15
    const-string v3, "caseLevel"

    .line 613
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 614
    invoke-static {v5}, Landroid/icu/impl/coll/CollationRuleParser;->getOnOffValue(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_22

    .line 616
    iget-object v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    const/16 v5, 0x400

    if-lez v0, :cond_16

    goto :goto_6

    :cond_16
    move v1, v4

    :goto_6
    invoke-virtual {v3, v5, v1}, Landroid/icu/impl/coll/CollationSettings;->setFlag(IZ)V

    .line 617
    iput v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    return-void

    :cond_17
    const-string v3, "normalization"

    .line 620
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 621
    invoke-static {v5}, Landroid/icu/impl/coll/CollationRuleParser;->getOnOffValue(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_22

    .line 623
    iget-object v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    if-lez v0, :cond_18

    move v4, v1

    :cond_18
    invoke-virtual {v3, v1, v4}, Landroid/icu/impl/coll/CollationSettings;->setFlag(IZ)V

    .line 624
    iput v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    return-void

    :cond_19
    const-string v3, "numericOrdering"

    .line 627
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 628
    invoke-static {v5}, Landroid/icu/impl/coll/CollationRuleParser;->getOnOffValue(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_22

    .line 630
    iget-object v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    if-lez v0, :cond_1a

    goto :goto_7

    :cond_1a
    move v1, v4

    :goto_7
    invoke-virtual {v3, v7, v1}, Landroid/icu/impl/coll/CollationSettings;->setFlag(IZ)V

    .line 631
    iput v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    return-void

    :cond_1b
    const-string v3, "hiraganaQ"

    .line 634
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 635
    invoke-static {v5}, Landroid/icu/impl/coll/CollationRuleParser;->getOnOffValue(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_22

    if-ne v0, v1, :cond_1c

    const-string v0, "[hiraganaQ on] is not supported"

    .line 638
    invoke-direct {p0, v0}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    .line 640
    :cond_1c
    iput v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    return-void

    :cond_1d
    const-string v1, "import"

    .line 643
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 647
    :try_start_0
    new-instance v0, Landroid/icu/util/ULocale$Builder;

    invoke-direct {v0}, Landroid/icu/util/ULocale$Builder;-><init>()V

    invoke-virtual {v0, v5}, Landroid/icu/util/ULocale$Builder;->setLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/ULocale$Builder;->build()Landroid/icu/util/ULocale;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 653
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "collation"

    .line 655
    invoke-virtual {v0, v3}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 656
    iget-object v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->importer:Landroid/icu/impl/coll/CollationRuleParser$Importer;

    if-nez v3, :cond_1e

    const-string v0, "[import langTag] is not supported"

    .line 657
    invoke-direct {p0, v0}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    goto :goto_a

    :cond_1e
    if-eqz v0, :cond_1f

    goto :goto_8

    :cond_1f
    :try_start_1
    const-string/jumbo v0, "standard"

    .line 662
    :goto_8
    invoke-interface {v3, v1, v0}, Landroid/icu/impl/coll/CollationRuleParser$Importer;->getRules(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 668
    iget-object v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    .line 669
    iget v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    .line 671
    :try_start_2
    invoke-direct {p0, v0}, Landroid/icu/impl/coll/CollationRuleParser;->parse(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    .line 673
    iput v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    const-string/jumbo v3, "parsing imported rules failed"

    .line 674
    invoke-direct {p0, v3, v0}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 676
    :goto_9
    iput-object v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    .line 677
    iput v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    :goto_a
    return-void

    :catch_1
    move-exception v0

    const-string v1, "[import langTag] failed"

    .line 665
    invoke-direct {p0, v1, v0}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    :catch_2
    move-exception v0

    const-string v1, "expected language tag in [import langTag]"

    .line 649
    invoke-direct {p0, v1, v0}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    .line 681
    :cond_20
    iget-object v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x5b

    if-ne v1, v3, :cond_22

    .line 682
    new-instance v1, Landroid/icu/text/UnicodeSet;

    invoke-direct {v1}, Landroid/icu/text/UnicodeSet;-><init>()V

    .line 683
    invoke-direct {p0, v2, v1}, Landroid/icu/impl/coll/CollationRuleParser;->parseUnicodeSet(ILandroid/icu/text/UnicodeSet;)I

    move-result v2

    const-string/jumbo v3, "optimize"

    .line 684
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 686
    :try_start_3
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->sink:Landroid/icu/impl/coll/CollationRuleParser$Sink;

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationRuleParser$Sink;->optimize(Landroid/icu/text/UnicodeSet;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_b

    :catch_3
    move-exception v0

    const-string v1, "[optimize set] failed"

    .line 688
    invoke-direct {p0, v1, v0}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 690
    :goto_b
    iput v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    return-void

    :cond_21
    const-string/jumbo v3, "suppressContractions"

    .line 692
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 694
    :try_start_4
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->sink:Landroid/icu/impl/coll/CollationRuleParser$Sink;

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationRuleParser$Sink;->suppressContractions(Landroid/icu/text/UnicodeSet;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_c

    :catch_4
    move-exception v0

    const-string v1, "[suppressContractions set] failed"

    .line 696
    invoke-direct {p0, v1, v0}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 698
    :goto_c
    iput v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    return-void

    :cond_22
    const-string v0, "not a valid setting/option"

    .line 702
    invoke-direct {p0, v0}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return-void
.end method

.method private parseSpecialPosition(ILjava/lang/StringBuilder;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x1

    .line 502
    iget-object v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, v1}, Landroid/icu/impl/coll/CollationRuleParser;->readWords(ILjava/lang/StringBuilder;)I

    move-result v0

    if-le v0, p1, :cond_3

    .line 503
    iget-object v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 505
    iget-object v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 506
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 507
    :goto_0
    sget-object v3, Landroid/icu/impl/coll/CollationRuleParser;->positions:[Ljava/lang/String;

    array-length v4, v3

    const v5, 0xfffe

    if-ge v2, v4, :cond_1

    .line 508
    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 509
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit16 v2, v2, 0x2800

    int-to-char p0, v2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "top"

    .line 513
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 514
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object p0, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_REGULAR:Landroid/icu/impl/coll/CollationRuleParser$Position;

    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationRuleParser$Position;->ordinal()I

    move-result p0

    add-int/lit16 p0, p0, 0x2800

    int-to-char p0, p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v0

    :cond_2
    const-string/jumbo v2, "variable top"

    .line 517
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 518
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object p0, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_VARIABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationRuleParser$Position;->ordinal()I

    move-result p0

    add-int/lit16 p0, p0, 0x2800

    int-to-char p0, p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v0

    :cond_3
    const-string p2, "not a valid special reset position"

    .line 522
    invoke-direct {p0, p2}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return p1
.end method

.method private parseStarredCharacters(II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 333
    invoke-direct {p0, p2}, Landroid/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    move-result p2

    iget-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, p2, v0}, Landroid/icu/impl/coll/CollationRuleParser;->parseString(ILjava/lang/StringBuilder;)I

    move-result p2

    .line 334
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "missing starred-relation string"

    .line 335
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, p2

    move p2, v0

    :goto_0
    move v3, v1

    .line 341
    :goto_1
    iget-object v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const-string v5, "adding relation failed"

    const-string v6, ""

    if-ge p2, v4, :cond_2

    .line 342
    iget-object v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->codePointAt(I)I

    move-result v3

    .line 343
    iget-object v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->nfd:Landroid/icu/text/Normalizer2;

    invoke-virtual {v4, v3}, Landroid/icu/text/Normalizer2;->isInert(I)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo p1, "starred-relation string is not all NFD-inert"

    .line 344
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return-void

    .line 348
    :cond_1
    :try_start_0
    iget-object v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->sink:Landroid/icu/impl/coll/CollationRuleParser$Sink;

    invoke-static {v3}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, p1, v6, v7, v6}, Landroid/icu/impl/coll/CollationRuleParser$Sink;->addRelation(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr p2, v4

    goto :goto_1

    :catch_0
    move-exception p1

    .line 350
    invoke-direct {p0, v5, p1}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    .line 356
    :cond_2
    iget-object p2, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-ge v2, p2, :cond_b

    iget-object p2, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v4, 0x2d

    if-eq p2, v4, :cond_3

    goto :goto_3

    :cond_3
    if-gez v3, :cond_4

    const-string/jumbo p1, "range without start in starred-relation string"

    .line 360
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return-void

    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 363
    iget-object p2, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v2, p2}, Landroid/icu/impl/coll/CollationRuleParser;->parseString(ILjava/lang/StringBuilder;)I

    move-result v2

    .line 364
    iget-object p2, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-nez p2, :cond_5

    const-string/jumbo p1, "range without end in starred-relation string"

    .line 365
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return-void

    .line 368
    :cond_5
    iget-object p2, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->codePointAt(I)I

    move-result p2

    if-ge p2, v3, :cond_6

    const-string/jumbo p1, "range start greater than end in starred-relation string"

    .line 370
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return-void

    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    if-gt v3, p2, :cond_a

    .line 375
    iget-object v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->nfd:Landroid/icu/text/Normalizer2;

    invoke-virtual {v4, v3}, Landroid/icu/text/Normalizer2;->isInert(I)Z

    move-result v4

    if-nez v4, :cond_7

    const-string/jumbo p1, "starred-relation string range is not all NFD-inert"

    .line 376
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return-void

    .line 379
    :cond_7
    invoke-static {v3}, Landroid/icu/impl/coll/CollationRuleParser;->isSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string/jumbo p1, "starred-relation string range contains a surrogate"

    .line 380
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return-void

    :cond_8
    const v4, 0xfffd

    if-gt v4, v3, :cond_9

    const v4, 0xffff

    if-gt v3, v4, :cond_9

    const-string/jumbo p1, "starred-relation string range contains U+FFFD, U+FFFE or U+FFFF"

    .line 384
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return-void

    .line 388
    :cond_9
    :try_start_1
    iget-object v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->sink:Landroid/icu/impl/coll/CollationRuleParser$Sink;

    invoke-static {v3}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, p1, v6, v7, v6}, Landroid/icu/impl/coll/CollationRuleParser$Sink;->addRelation(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 390
    invoke-direct {p0, v5, p1}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    .line 395
    :cond_a
    invoke-static {p2}, Ljava/lang/Character;->charCount(I)I

    move-result p2

    goto/16 :goto_0

    .line 397
    :cond_b
    :goto_3
    invoke-direct {p0, v2}, Landroid/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    move-result p1

    iput p1, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    return-void
.end method

.method private parseString(ILjava/lang/StringBuilder;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 409
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 410
    :goto_0
    iget-object v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_9

    .line 411
    iget-object v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 412
    invoke-static {p1}, Landroid/icu/impl/coll/CollationRuleParser;->isSyntaxChar(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x27

    if-ne p1, v1, :cond_4

    .line 414
    iget-object p1, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v2, p1, :cond_0

    iget-object p1, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, v1, :cond_0

    .line 416
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, v2, 0x1

    goto :goto_0

    .line 422
    :cond_0
    :goto_1
    iget-object p1, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ne v2, p1, :cond_1

    const-string/jumbo p1, "quoted literal text missing terminating apostrophe"

    .line 423
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return v2

    .line 426
    :cond_1
    iget-object p1, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, v1, :cond_3

    .line 428
    iget-object v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v3, v2, :cond_2

    iget-object v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    move p1, v3

    goto :goto_0

    :cond_3
    :goto_2
    move v2, v3

    .line 436
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const/16 v1, 0x5c

    if-ne p1, v1, :cond_7

    .line 439
    iget-object p1, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ne v2, p1, :cond_5

    const-string p1, "backslash escape at the end of the rule string"

    .line 440
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return v2

    .line 443
    :cond_5
    iget-object p1, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    .line 444
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 445
    invoke-static {p1}, Ljava/lang/Character;->charCount(I)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_3

    .line 451
    :cond_6
    invoke-static {p1}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    add-int/lit8 p1, v2, -0x1

    goto :goto_4

    .line 456
    :cond_8
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    move p1, v2

    goto/16 :goto_0

    .line 459
    :cond_9
    :goto_4
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 460
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->codePointAt(I)I

    move-result v1

    .line 461
    invoke-static {v1}, Landroid/icu/impl/coll/CollationRuleParser;->isSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string/jumbo p2, "string contains an unpaired surrogate"

    .line 462
    invoke-direct {p0, p2}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return p1

    :cond_a
    const v2, 0xfffd

    if-gt v2, v1, :cond_b

    const v2, 0xffff

    if-gt v1, v2, :cond_b

    const-string/jumbo p2, "string contains U+FFFD, U+FFFE or U+FFFF"

    .line 466
    invoke-direct {p0, p2}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return p1

    .line 469
    :cond_b
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_4

    :cond_c
    return p1
.end method

.method private parseTailoringString(ILjava/lang/StringBuilder;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 401
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    move-result p1

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/coll/CollationRuleParser;->parseString(ILjava/lang/StringBuilder;)I

    move-result p1

    .line 402
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "missing relation string"

    .line 403
    invoke-direct {p0, p2}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    .line 405
    :cond_0
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    move-result p0

    return p0
.end method

.method private parseUnicodeSet(ILandroid/icu/text/UnicodeSet;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v0, p1

    .line 781
    :goto_0
    iget-object v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_0

    const-string/jumbo p1, "unbalanced UnicodeSet pattern brackets"

    .line 782
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return v0

    .line 785
    :cond_0
    iget-object v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x5b

    if-ne v0, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1
    const/16 v2, 0x5d

    if-ne v0, v2, :cond_4

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_4

    .line 793
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v0, p1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;)Landroid/icu/text/UnicodeSet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 795
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not a valid UnicodeSet pattern: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    .line 797
    :goto_1
    invoke-direct {p0, v3}, Landroid/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    move-result p1

    .line 798
    iget-object p2, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-eq p1, p2, :cond_3

    iget-object p2, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-eq p2, v2, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_3
    :goto_2
    const-string p2, "missing option-terminating \']\' after UnicodeSet pattern"

    .line 799
    invoke-direct {p0, p2}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return p1

    :cond_4
    :goto_3
    move v0, v3

    goto :goto_0
.end method

.method private readWords(ILjava/lang/StringBuilder;)I
    .locals 4

    const/4 v0, 0x0

    .line 806
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 807
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    move-result p1

    .line 809
    :goto_0
    iget-object v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt p1, v1, :cond_0

    return v0

    .line 810
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 811
    invoke-static {v1}, Landroid/icu/impl/coll/CollationRuleParser;->isSyntaxChar(I)Z

    move-result v2

    const/16 v3, 0x20

    if-eqz v2, :cond_3

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_3

    const/16 v2, 0x5f

    if-eq v1, v2, :cond_3

    .line 812
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_1

    return p1

    .line 813
    :cond_1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    .line 814
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_2

    .line 815
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_2
    return p1

    .line 819
    :cond_3
    invoke-static {v1}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 820
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    .line 821
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    move-result p1

    goto :goto_0

    .line 823
    :cond_4
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private setParseError(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 845
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationRuleParser;->makeParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object p0

    throw p0
.end method

.method private setParseError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationRuleParser;->makeParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object p0

    .line 850
    invoke-virtual {p0, p2}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 851
    throw p0
.end method

.method private skipComment(I)I
    .locals 2

    .line 831
    :goto_0
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 832
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x85

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2028

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2029

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    move p1, v1

    goto :goto_0

    :cond_1
    :goto_1
    move p1, v1

    :cond_2
    return p1
.end method

.method private skipWhiteSpace(I)I
    .locals 1

    .line 903
    :goto_0
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method


# virtual methods
.method parse(Ljava/lang/String;Landroid/icu/impl/coll/CollationSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 115
    iput-object p2, p0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    .line 116
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationRuleParser;->parse(Ljava/lang/String;)V

    return-void
.end method

.method setImporter(Landroid/icu/impl/coll/CollationRuleParser$Importer;)V
    .locals 0

    .line 111
    iput-object p1, p0, Landroid/icu/impl/coll/CollationRuleParser;->importer:Landroid/icu/impl/coll/CollationRuleParser$Importer;

    return-void
.end method

.method setSink(Landroid/icu/impl/coll/CollationRuleParser$Sink;)V
    .locals 0

    .line 103
    iput-object p1, p0, Landroid/icu/impl/coll/CollationRuleParser;->sink:Landroid/icu/impl/coll/CollationRuleParser$Sink;

    return-void
.end method
