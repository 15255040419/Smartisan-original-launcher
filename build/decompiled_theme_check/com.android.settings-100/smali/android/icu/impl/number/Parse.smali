.class public Landroid/icu/impl/number/Parse;
.super Ljava/lang/Object;
.source "Parse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/number/Parse$CurrencyAffixPatterns;,
        Landroid/icu/impl/number/Parse$AffixHolder;,
        Landroid/icu/impl/number/Parse$ParserState;,
        Landroid/icu/impl/number/Parse$StateItem;,
        Landroid/icu/impl/number/Parse$DigitType;,
        Landroid/icu/impl/number/Parse$SeparatorType;,
        Landroid/icu/impl/number/Parse$StateName;,
        Landroid/icu/impl/number/Parse$GroupingMode;,
        Landroid/icu/impl/number/Parse$ParseMode;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static volatile DEBUGGING:Z

.field private static final MAX_LONG_AS_BIG_DECIMAL:Ljava/math/BigDecimal;

.field private static final MIN_LONG_AS_BIG_DECIMAL:Ljava/math/BigDecimal;

.field private static final UNISET_BIDI:Landroid/icu/text/UnicodeSet;

.field private static final UNISET_COMMA_LIKE:Landroid/icu/text/UnicodeSet;

.field public static final UNISET_MINUS:Landroid/icu/text/UnicodeSet;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final UNISET_OTHER_GROUPING_SEPARATORS:Landroid/icu/text/UnicodeSet;

.field private static final UNISET_PERIOD_LIKE:Landroid/icu/text/UnicodeSet;

.field public static final UNISET_PLUS:Landroid/icu/text/UnicodeSet;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final UNISET_STRICT_COMMA_LIKE:Landroid/icu/text/UnicodeSet;

.field private static final UNISET_STRICT_PERIOD_LIKE:Landroid/icu/text/UnicodeSet;

.field private static final UNISET_WHITESPACE:Landroid/icu/text/UnicodeSet;

.field protected static final threadLocalParsePosition:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/ParsePosition;",
            ">;"
        }
    .end annotation
.end field

.field protected static final threadLocalParseState:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/icu/impl/number/Parse$ParserState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 139
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string v1, "[[:Zs:][\\u0009]]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/number/Parse;->UNISET_WHITESPACE:Landroid/icu/text/UnicodeSet;

    .line 143
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string v1, "[[\\u200E\\u200F\\u061C]]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/number/Parse;->UNISET_BIDI:Landroid/icu/text/UnicodeSet;

    .line 147
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string v1, "[.\\u2024\\u3002\\uFE12\\uFE52\\uFF0E\\uFF61]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/number/Parse;->UNISET_PERIOD_LIKE:Landroid/icu/text/UnicodeSet;

    .line 149
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string v1, "[.\\u2024\\uFE52\\uFF0E\\uFF61]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/number/Parse;->UNISET_STRICT_PERIOD_LIKE:Landroid/icu/text/UnicodeSet;

    .line 151
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string v1, "[,\\u060C\\u066B\\u3001\\uFE10\\uFE11\\uFE50\\uFE51\\uFF0C\\uFF64]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/number/Parse;->UNISET_COMMA_LIKE:Landroid/icu/text/UnicodeSet;

    .line 153
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string v1, "[,\\u066B\\uFE10\\uFE50\\uFF0C]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/number/Parse;->UNISET_STRICT_COMMA_LIKE:Landroid/icu/text/UnicodeSet;

    .line 155
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string v1, "[\\ \'\\u00A0\\u066C\\u2000-\\u200A\\u2018\\u2019\\u202F\\u205F\\u3000\\uFF07]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/number/Parse;->UNISET_OTHER_GROUPING_SEPARATORS:Landroid/icu/text/UnicodeSet;

    .line 161
    new-instance v0, Ljava/math/BigDecimal;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(J)V

    sput-object v0, Landroid/icu/impl/number/Parse;->MIN_LONG_AS_BIG_DECIMAL:Ljava/math/BigDecimal;

    .line 162
    new-instance v0, Ljava/math/BigDecimal;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(J)V

    sput-object v0, Landroid/icu/impl/number/Parse;->MAX_LONG_AS_BIG_DECIMAL:Ljava/math/BigDecimal;

    .line 880
    new-instance v0, Landroid/icu/impl/number/Parse$1;

    invoke-direct {v0}, Landroid/icu/impl/number/Parse$1;-><init>()V

    sput-object v0, Landroid/icu/impl/number/Parse;->threadLocalParseState:Ljava/lang/ThreadLocal;

    .line 888
    new-instance v0, Landroid/icu/impl/number/Parse$2;

    invoke-direct {v0}, Landroid/icu/impl/number/Parse$2;-><init>()V

    sput-object v0, Landroid/icu/impl/number/Parse;->threadLocalParsePosition:Ljava/lang/ThreadLocal;

    .line 901
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const/16 v1, 0xe

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Landroid/icu/text/UnicodeSet;-><init>([I)V

    .line 905
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/number/Parse;->UNISET_PLUS:Landroid/icu/text/UnicodeSet;

    .line 912
    new-instance v0, Landroid/icu/text/UnicodeSet;

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>([I)V

    .line 916
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/number/Parse;->UNISET_MINUS:Landroid/icu/text/UnicodeSet;

    const/4 v0, 0x0

    .line 925
    sput-boolean v0, Landroid/icu/impl/number/Parse;->DEBUGGING:Z

    return-void

    :array_0
    .array-data 4
        0x2b
        0x2b
        0x207a
        0x207a
        0x208a
        0x208a
        0x2795
        0x2795
        0xfb29
        0xfb29
        0xfe62
        0xfe62
        0xff0b
        0xff0b
    .end array-data

    :array_1
    .array-data 4
        0x2d
        0x2d
        0x207b
        0x207b
        0x208b
        0x208b
        0x2212
        0x2212
        0x2796
        0x2796
        0xfe63
        0xfe63
        0xff0d
        0xff0d
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;ZLandroid/icu/impl/number/DecimalFormatProperties;Landroid/icu/text/DecimalFormatSymbols;)Landroid/icu/impl/number/Parse$StateItem;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    if-eqz v0, :cond_5f

    if-eqz v1, :cond_5f

    if-eqz v3, :cond_5f

    if-eqz v4, :cond_5f

    .line 980
    invoke-virtual/range {p3 .. p3}, Landroid/icu/impl/number/DecimalFormatProperties;->getParseMode()Landroid/icu/impl/number/Parse$ParseMode;

    move-result-object v5

    if-nez v5, :cond_0

    .line 981
    sget-object v5, Landroid/icu/impl/number/Parse$ParseMode;->LENIENT:Landroid/icu/impl/number/Parse$ParseMode;

    .line 982
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/icu/impl/number/DecimalFormatProperties;->getParseIntegerOnly()Z

    move-result v6

    .line 983
    invoke-virtual/range {p3 .. p3}, Landroid/icu/impl/number/DecimalFormatProperties;->getParseNoExponent()Z

    move-result v7

    .line 984
    invoke-virtual/range {p3 .. p3}, Landroid/icu/impl/number/DecimalFormatProperties;->getGroupingSize()I

    move-result v8

    const/4 v9, 0x0

    if-gtz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    move v8, v9

    .line 987
    :goto_0
    sget-object v11, Landroid/icu/impl/number/Parse;->threadLocalParseState:Ljava/lang/ThreadLocal;

    invoke-virtual {v11}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/icu/impl/number/Parse$ParserState;

    invoke-virtual {v11}, Landroid/icu/impl/number/Parse$ParserState;->clear()Landroid/icu/impl/number/Parse$ParserState;

    move-result-object v11

    .line 988
    iput-object v3, v11, Landroid/icu/impl/number/Parse$ParserState;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    .line 989
    iput-object v4, v11, Landroid/icu/impl/number/Parse$ParserState;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 990
    iput-object v5, v11, Landroid/icu/impl/number/Parse$ParserState;->mode:Landroid/icu/impl/number/Parse$ParseMode;

    .line 991
    iput-boolean v2, v11, Landroid/icu/impl/number/Parse$ParserState;->parseCurrency:Z

    .line 992
    invoke-virtual/range {p3 .. p3}, Landroid/icu/impl/number/DecimalFormatProperties;->getParseGroupingMode()Landroid/icu/impl/number/Parse$GroupingMode;

    move-result-object v12

    iput-object v12, v11, Landroid/icu/impl/number/Parse$ParserState;->groupingMode:Landroid/icu/impl/number/Parse$GroupingMode;

    .line 993
    iget-object v12, v11, Landroid/icu/impl/number/Parse$ParserState;->groupingMode:Landroid/icu/impl/number/Parse$GroupingMode;

    if-nez v12, :cond_2

    sget-object v12, Landroid/icu/impl/number/Parse$GroupingMode;->DEFAULT:Landroid/icu/impl/number/Parse$GroupingMode;

    iput-object v12, v11, Landroid/icu/impl/number/Parse$ParserState;->groupingMode:Landroid/icu/impl/number/Parse$GroupingMode;

    .line 994
    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/icu/impl/number/DecimalFormatProperties;->getParseCaseSensitive()Z

    move-result v12

    iput-boolean v12, v11, Landroid/icu/impl/number/Parse$ParserState;->caseSensitive:Z

    .line 995
    invoke-virtual/range {p4 .. p4}, Landroid/icu/text/DecimalFormatSymbols;->getDecimalSeparatorString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v9}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v12

    iput v12, v11, Landroid/icu/impl/number/Parse$ParserState;->decimalCp1:I

    .line 996
    invoke-virtual/range {p4 .. p4}, Landroid/icu/text/DecimalFormatSymbols;->getMonetaryDecimalSeparatorString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v9}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v12

    iput v12, v11, Landroid/icu/impl/number/Parse$ParserState;->decimalCp2:I

    .line 997
    invoke-virtual/range {p4 .. p4}, Landroid/icu/text/DecimalFormatSymbols;->getGroupingSeparatorString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v9}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v12

    iput v12, v11, Landroid/icu/impl/number/Parse$ParserState;->groupingCp1:I

    .line 998
    invoke-virtual/range {p4 .. p4}, Landroid/icu/text/DecimalFormatSymbols;->getMonetaryGroupingSeparatorString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v9}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v12

    iput v12, v11, Landroid/icu/impl/number/Parse$ParserState;->groupingCp2:I

    .line 999
    iget v12, v11, Landroid/icu/impl/number/Parse$ParserState;->decimalCp1:I

    invoke-static {v12, v5}, Landroid/icu/impl/number/Parse$SeparatorType;->fromCp(ILandroid/icu/impl/number/Parse$ParseMode;)Landroid/icu/impl/number/Parse$SeparatorType;

    move-result-object v12

    iput-object v12, v11, Landroid/icu/impl/number/Parse$ParserState;->decimalType1:Landroid/icu/impl/number/Parse$SeparatorType;

    .line 1000
    iget v12, v11, Landroid/icu/impl/number/Parse$ParserState;->decimalCp2:I

    invoke-static {v12, v5}, Landroid/icu/impl/number/Parse$SeparatorType;->fromCp(ILandroid/icu/impl/number/Parse$ParseMode;)Landroid/icu/impl/number/Parse$SeparatorType;

    move-result-object v12

    iput-object v12, v11, Landroid/icu/impl/number/Parse$ParserState;->decimalType2:Landroid/icu/impl/number/Parse$SeparatorType;

    .line 1001
    iget v12, v11, Landroid/icu/impl/number/Parse$ParserState;->groupingCp1:I

    invoke-static {v12, v5}, Landroid/icu/impl/number/Parse$SeparatorType;->fromCp(ILandroid/icu/impl/number/Parse$ParseMode;)Landroid/icu/impl/number/Parse$SeparatorType;

    move-result-object v12

    iput-object v12, v11, Landroid/icu/impl/number/Parse$ParserState;->groupingType1:Landroid/icu/impl/number/Parse$SeparatorType;

    .line 1002
    iget v12, v11, Landroid/icu/impl/number/Parse$ParserState;->groupingCp2:I

    invoke-static {v12, v5}, Landroid/icu/impl/number/Parse$SeparatorType;->fromCp(ILandroid/icu/impl/number/Parse$ParseMode;)Landroid/icu/impl/number/Parse$SeparatorType;

    move-result-object v12

    iput-object v12, v11, Landroid/icu/impl/number/Parse$ParserState;->groupingType2:Landroid/icu/impl/number/Parse$SeparatorType;

    .line 1003
    invoke-virtual {v11}, Landroid/icu/impl/number/Parse$ParserState;->getNext()Landroid/icu/impl/number/Parse$StateItem;

    move-result-object v12

    invoke-virtual {v12}, Landroid/icu/impl/number/Parse$StateItem;->clear()Landroid/icu/impl/number/Parse$StateItem;

    move-result-object v12

    .line 1004
    sget-object v13, Landroid/icu/impl/number/Parse$StateName;->BEFORE_PREFIX:Landroid/icu/impl/number/Parse$StateName;

    iput-object v13, v12, Landroid/icu/impl/number/Parse$StateItem;->name:Landroid/icu/impl/number/Parse$StateName;

    .line 1006
    sget-object v12, Landroid/icu/impl/number/Parse$ParseMode;->LENIENT:Landroid/icu/impl/number/Parse$ParseMode;

    if-eq v5, v12, :cond_3

    sget-object v12, Landroid/icu/impl/number/Parse$ParseMode;->STRICT:Landroid/icu/impl/number/Parse$ParseMode;

    if-ne v5, v12, :cond_4

    .line 1007
    :cond_3
    invoke-virtual/range {p4 .. p4}, Landroid/icu/text/DecimalFormatSymbols;->getDigitStringsLocal()[Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/icu/impl/number/Parse;->makeDigitTrie([Ljava/lang/String;)Landroid/icu/impl/TextTrieMap;

    move-result-object v12

    iput-object v12, v11, Landroid/icu/impl/number/Parse$ParserState;->digitTrie:Landroid/icu/impl/TextTrieMap;

    .line 1008
    invoke-static {v11, v3}, Landroid/icu/impl/number/Parse$AffixHolder;->addToState(Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/DecimalFormatProperties;)V

    if-eqz v2, :cond_4

    .line 1010
    invoke-virtual/range {p4 .. p4}, Landroid/icu/text/DecimalFormatSymbols;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v4

    invoke-static {v4, v11}, Landroid/icu/impl/number/Parse$CurrencyAffixPatterns;->addToState(Landroid/icu/util/ULocale;Landroid/icu/impl/number/Parse$ParserState;)V

    .line 1014
    :cond_4
    sget-boolean v4, Landroid/icu/impl/number/Parse;->DEBUGGING:Z

    if-eqz v4, :cond_5

    .line 1015
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Parsing: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1016
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 1017
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v11}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 1022
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    .line 1023
    :goto_1
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-ge v4, v12, :cond_3b

    .line 1024
    invoke-static {v0, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v12

    .line 1025
    invoke-virtual {v11}, Landroid/icu/impl/number/Parse$ParserState;->swap()V

    move v13, v9

    .line 1026
    :goto_2
    iget v14, v11, Landroid/icu/impl/number/Parse$ParserState;->prevLength:I

    if-ge v13, v14, :cond_39

    .line 1027
    iget-object v14, v11, Landroid/icu/impl/number/Parse$ParserState;->prevItems:[Landroid/icu/impl/number/Parse$StateItem;

    aget-object v14, v14, v13

    .line 1028
    sget-boolean v15, Landroid/icu/impl/number/Parse;->DEBUGGING:Z

    if-eqz v15, :cond_6

    .line 1029
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-char v10, v14, Landroid/icu/impl/number/Parse$StateItem;->id:C

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1038
    :cond_6
    sget-object v9, Landroid/icu/impl/number/Parse$3;->$SwitchMap$android$icu$impl$number$Parse$StateName:[I

    iget-object v10, v14, Landroid/icu/impl/number/Parse$StateItem;->name:Landroid/icu/impl/number/Parse$StateName;

    invoke-virtual {v10}, Landroid/icu/impl/number/Parse$StateName;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    :cond_7
    :goto_3
    const/4 v10, 0x0

    goto/16 :goto_6

    .line 1240
    :pswitch_0
    invoke-static {v12, v11, v14}, Landroid/icu/impl/number/Parse;->acceptAffixPatternOffset(ILandroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)J

    goto :goto_3

    .line 1236
    :pswitch_1
    invoke-static {v12, v11, v14}, Landroid/icu/impl/number/Parse;->acceptStringOffset(ILandroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)J

    goto :goto_3

    .line 1232
    :pswitch_2
    invoke-static {v12, v11, v14}, Landroid/icu/impl/number/Parse;->acceptDigitTrieOffset(ILandroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    goto :goto_3

    .line 1228
    :pswitch_3
    invoke-static {v12, v11, v14}, Landroid/icu/impl/number/Parse;->acceptCurrencyOffset(ILandroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    goto :goto_3

    .line 1214
    :pswitch_4
    sget-object v9, Landroid/icu/impl/number/Parse$ParseMode;->LENIENT:Landroid/icu/impl/number/Parse$ParseMode;

    if-eq v5, v9, :cond_8

    sget-object v9, Landroid/icu/impl/number/Parse$ParseMode;->FAST:Landroid/icu/impl/number/Parse$ParseMode;

    if-ne v5, v9, :cond_7

    :cond_8
    if-eqz v2, :cond_7

    .line 1216
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->AFTER_SUFFIX:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptBidi(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    .line 1217
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->AFTER_SUFFIX:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptPadding(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    .line 1218
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->AFTER_SUFFIX:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptWhitespace(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    if-eqz v2, :cond_7

    .line 1221
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->AFTER_SUFFIX:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptCurrency(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    goto :goto_3

    .line 1199
    :pswitch_5
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX_SEEN_EXPONENT:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptBidi(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    .line 1200
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX_SEEN_EXPONENT:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptPadding(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    .line 1201
    sget-object v9, Landroid/icu/impl/number/Parse$ParseMode;->LENIENT:Landroid/icu/impl/number/Parse$ParseMode;

    if-eq v5, v9, :cond_9

    sget-object v9, Landroid/icu/impl/number/Parse$ParseMode;->STRICT:Landroid/icu/impl/number/Parse$ParseMode;

    if-ne v5, v9, :cond_a

    .line 1202
    :cond_9
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->AFTER_SUFFIX:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptSuffix(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    .line 1204
    :cond_a
    sget-object v9, Landroid/icu/impl/number/Parse$ParseMode;->LENIENT:Landroid/icu/impl/number/Parse$ParseMode;

    if-eq v5, v9, :cond_b

    sget-object v9, Landroid/icu/impl/number/Parse$ParseMode;->FAST:Landroid/icu/impl/number/Parse$ParseMode;

    if-ne v5, v9, :cond_7

    .line 1205
    :cond_b
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX_SEEN_EXPONENT:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptWhitespace(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    if-eqz v2, :cond_7

    .line 1208
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX_SEEN_EXPONENT:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptCurrency(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    goto :goto_3

    .line 1180
    :pswitch_6
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptBidi(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    .line 1181
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptPadding(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    if-nez v7, :cond_c

    .line 1183
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->AFTER_EXPONENT_SEPARATOR:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptExponentSeparator(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    .line 1185
    :cond_c
    sget-object v9, Landroid/icu/impl/number/Parse$ParseMode;->LENIENT:Landroid/icu/impl/number/Parse$ParseMode;

    if-eq v5, v9, :cond_d

    sget-object v9, Landroid/icu/impl/number/Parse$ParseMode;->STRICT:Landroid/icu/impl/number/Parse$ParseMode;

    if-ne v5, v9, :cond_e

    .line 1186
    :cond_d
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->AFTER_SUFFIX:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptSuffix(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    .line 1188
    :cond_e
    sget-object v9, Landroid/icu/impl/number/Parse$ParseMode;->LENIENT:Landroid/icu/impl/number/Parse$ParseMode;

    if-eq v5, v9, :cond_f

    sget-object v9, Landroid/icu/impl/number/Parse$ParseMode;->FAST:Landroid/icu/impl/number/Parse$ParseMode;

    if-ne v5, v9, :cond_7

    .line 1189
    :cond_f
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptWhitespace(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    if-eqz v2, :cond_7

    .line 1192
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptCurrency(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    goto/16 :goto_3

    .line 1163
    :pswitch_7
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX_SEEN_EXPONENT:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptBidi(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    .line 1164
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX_SEEN_EXPONENT:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptPadding(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    .line 1165
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->AFTER_EXPONENT_DIGIT:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptExponentDigit(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    .line 1166
    sget-object v9, Landroid/icu/impl/number/Parse$ParseMode;->LENIENT:Landroid/icu/impl/number/Parse$ParseMode;

    if-eq v5, v9, :cond_10

    sget-object v9, Landroid/icu/impl/number/Parse$ParseMode;->STRICT:Landroid/icu/impl/number/Parse$ParseMode;

    if-ne v5, v9, :cond_11

    .line 1167
    :cond_10
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->AFTER_SUFFIX:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptSuffix(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    .line 1169
    :cond_11
    sget-object v9, Landroid/icu/impl/number/Parse$ParseMode;->LENIENT:Landroid/icu/impl/number/Parse$ParseMode;

    if-eq v5, v9, :cond_12

    sget-object v9, Landroid/icu/impl/number/Parse$ParseMode;->FAST:Landroid/icu/impl/number/Parse$ParseMode;

    if-ne v5, v9, :cond_7

    .line 1170
    :cond_12
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX_SEEN_EXPONENT:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptWhitespace(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    if-eqz v2, :cond_7

    .line 1173
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX_SEEN_EXPONENT:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptCurrency(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    goto/16 :goto_3

    .line 1157
    :pswitch_8
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->AFTER_EXPONENT_SEPARATOR:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptBidi(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    .line 1158
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->AFTER_EXPONENT_SEPARATOR:Landroid/icu/impl/number/Parse$StateName;

    const/4 v10, 0x1

    invoke-static {v12, v9, v11, v14, v10}, Landroid/icu/impl/number/Parse;->acceptMinusOrPlusSign(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Z)V

    .line 1159
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->AFTER_EXPONENT_DIGIT:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptExponentDigit(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    goto/16 :goto_3

    .line 1132
    :pswitch_9
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->AFTER_FRACTION_DIGIT:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptFractionDigit(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    .line 1133
    iget v9, v11, Landroid/icu/impl/number/Parse$ParserState;->length:I

    if-lez v9, :cond_13

    sget-object v9, Landroid/icu/impl/number/Parse$ParseMode;->FAST:Landroid/icu/impl/number/Parse$ParseMode;

    if-ne v5, v9, :cond_13

    goto/16 :goto_3

    .line 1134
    :cond_13
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptBidi(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    .line 1135
    iget v9, v11, Landroid/icu/impl/number/Parse$ParserState;->length:I

    if-lez v9, :cond_14

    sget-object v9, Landroid/icu/impl/number/Parse$ParseMode;->FAST:Landroid/icu/impl/number/Parse$ParseMode;

    if-ne v5, v9, :cond_14

    goto/16 :goto_3

    .line 1136
    :cond_14
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptPadding(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    .line 1137
    iget v9, v11, Landroid/icu/impl/number/Parse$ParserState;->length:I

    if-lez v9, :cond_15

    sget-object v9, Landroid/icu/impl/number/Parse$ParseMode;->FAST:Landroid/icu/impl/number/Parse$ParseMode;

    if-ne v5, v9, :cond_15

    goto/16 :goto_3

    :cond_15
    if-nez v7, :cond_16

    .line 1139
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->AFTER_EXPONENT_SEPARATOR:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptExponentSeparator(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    .line 1140
    iget v9, v11, Landroid/icu/impl/number/Parse$ParserState;->length:I

    if-lez v9, :cond_16

    sget-object v9, Landroid/icu/impl/number/Parse$ParseMode;->FAST:Landroid/icu/impl/number/Parse$ParseMode;

    if-ne v5, v9, :cond_16

    goto/16 :goto_3

    .line 1142
    :cond_16
    sget-object v9, Landroid/icu/impl/number/Parse$ParseMode;->LENIENT:Landroid/icu/impl/number/Parse$ParseMode;

    if-eq v5, v9, :cond_17

    sget-object v9, Landroid/icu/impl/number/Parse$ParseMode;->STRICT:Landroid/icu/impl/number/Parse$ParseMode;

    if-ne v5, v9, :cond_18

    .line 1143
    :cond_17
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->AFTER_SUFFIX:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptSuffix(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    .line 1145
    :cond_18
    sget-object v9, Landroid/icu/impl/number/Parse$ParseMode;->LENIENT:Landroid/icu/impl/number/Parse$ParseMode;

    if-eq v5, v9, :cond_19

    sget-object v9, Landroid/icu/impl/number/Parse$ParseMode;->FAST:Landroid/icu/impl/number/Parse$ParseMode;

    if-ne v5, v9, :cond_7

    .line 1146
    :cond_19
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptWhitespace(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    .line 1147
    iget v9, v11, Landroid/icu/impl/number/Parse$ParserState;->length:I

    if-lez v9, :cond_1a

    sget-object v9, Landroid/icu/impl/number/Parse$ParseMode;->FAST:Landroid/icu/impl/number/Parse$ParseMode;

    if-ne v5, v9, :cond_1a

    goto/16 :goto_3

    .line 1149
    :cond_1a
    iget v9, v11, Landroid/icu/impl/number/Parse$ParserState;->length:I

    if-lez v9, :cond_1b

    sget-object v9, Landroid/icu/impl/number/Parse$ParseMode;->FAST:Landroid/icu/impl/number/Parse$ParseMode;

    if-ne v5, v9, :cond_1b

    goto/16 :goto_3

    :cond_1b
    if-eqz v2, :cond_7

    .line 1151
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptCurrency(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    goto/16 :goto_3

    .line 1098
    :pswitch_a
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->AFTER_INTEGER_DIGIT:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptIntegerDigit(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    .line 1099
    iget v9, v11, Landroid/icu/impl/number/Parse$ParserState;->length:I

    if-lez v9, :cond_1c

    sget-object v9, Landroid/icu/impl/number/Parse$ParseMode;->FAST:Landroid/icu/impl/number/Parse$ParseMode;

    if-ne v5, v9, :cond_1c

    goto/16 :goto_3

    :cond_1c
    if-nez v6, :cond_1d

    .line 1101
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->AFTER_FRACTION_DIGIT:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptDecimalPoint(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    .line 1102
    iget v9, v11, Landroid/icu/impl/number/Parse$ParserState;->length:I

    if-lez v9, :cond_1d

    sget-object v9, Landroid/icu/impl/number/Parse$ParseMode;->FAST:Landroid/icu/impl/number/Parse$ParseMode;

    if-ne v5, v9, :cond_1d

    goto/16 :goto_3

    :cond_1d
    if-nez v8, :cond_1e

    .line 1105
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->AFTER_INTEGER_DIGIT:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptGrouping(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    .line 1106
    iget v9, v11, Landroid/icu/impl/number/Parse$ParserState;->length:I

    if-lez v9, :cond_1e

    sget-object v9, Landroid/icu/impl/number/Parse$ParseMode;->FAST:Landroid/icu/impl/number/Parse$ParseMode;

    if-ne v5, v9, :cond_1e

    goto/16 :goto_3

    .line 1108
    :cond_1e
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptBidi(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    .line 1109
    iget v9, v11, Landroid/icu/impl/number/Parse$ParserState;->length:I

    if-lez v9, :cond_1f

    sget-object v9, Landroid/icu/impl/number/Parse$ParseMode;->FAST:Landroid/icu/impl/number/Parse$ParseMode;

    if-ne v5, v9, :cond_1f

    goto/16 :goto_3

    .line 1110
    :cond_1f
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptPadding(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    .line 1111
    iget v9, v11, Landroid/icu/impl/number/Parse$ParserState;->length:I

    if-lez v9, :cond_20

    sget-object v9, Landroid/icu/impl/number/Parse$ParseMode;->FAST:Landroid/icu/impl/number/Parse$ParseMode;

    if-ne v5, v9, :cond_20

    goto/16 :goto_3

    :cond_20
    if-nez v7, :cond_21

    .line 1113
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->AFTER_EXPONENT_SEPARATOR:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptExponentSeparator(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    .line 1114
    iget v9, v11, Landroid/icu/impl/number/Parse$ParserState;->length:I

    if-lez v9, :cond_21

    sget-object v9, Landroid/icu/impl/number/Parse$ParseMode;->FAST:Landroid/icu/impl/number/Parse$ParseMode;

    if-ne v5, v9, :cond_21

    goto/16 :goto_3

    .line 1116
    :cond_21
    sget-object v9, Landroid/icu/impl/number/Parse$ParseMode;->LENIENT:Landroid/icu/impl/number/Parse$ParseMode;

    if-eq v5, v9, :cond_22

    sget-object v9, Landroid/icu/impl/number/Parse$ParseMode;->STRICT:Landroid/icu/impl/number/Parse$ParseMode;

    if-ne v5, v9, :cond_23

    .line 1117
    :cond_22
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->AFTER_SUFFIX:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptSuffix(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    .line 1119
    :cond_23
    sget-object v9, Landroid/icu/impl/number/Parse$ParseMode;->LENIENT:Landroid/icu/impl/number/Parse$ParseMode;

    if-eq v5, v9, :cond_24

    sget-object v9, Landroid/icu/impl/number/Parse$ParseMode;->FAST:Landroid/icu/impl/number/Parse$ParseMode;

    if-ne v5, v9, :cond_7

    .line 1120
    :cond_24
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptWhitespace(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    .line 1121
    iget v9, v11, Landroid/icu/impl/number/Parse$ParserState;->length:I

    if-lez v9, :cond_25

    sget-object v9, Landroid/icu/impl/number/Parse$ParseMode;->FAST:Landroid/icu/impl/number/Parse$ParseMode;

    if-ne v5, v9, :cond_25

    goto/16 :goto_3

    .line 1123
    :cond_25
    iget v9, v11, Landroid/icu/impl/number/Parse$ParserState;->length:I

    if-lez v9, :cond_26

    sget-object v9, Landroid/icu/impl/number/Parse$ParseMode;->FAST:Landroid/icu/impl/number/Parse$ParseMode;

    if-ne v5, v9, :cond_26

    goto/16 :goto_3

    :cond_26
    if-eqz v2, :cond_7

    .line 1125
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptCurrency(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    goto/16 :goto_3

    .line 1077
    :pswitch_b
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->AFTER_PREFIX:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptBidi(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    .line 1078
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->AFTER_PREFIX:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptPadding(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    .line 1079
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptNan(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    .line 1080
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptInfinity(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    .line 1081
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->AFTER_INTEGER_DIGIT:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptIntegerDigit(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    if-nez v6, :cond_27

    .line 1083
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->AFTER_FRACTION_DIGIT:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptDecimalPoint(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    .line 1085
    :cond_27
    sget-object v9, Landroid/icu/impl/number/Parse$ParseMode;->LENIENT:Landroid/icu/impl/number/Parse$ParseMode;

    if-eq v5, v9, :cond_28

    sget-object v9, Landroid/icu/impl/number/Parse$ParseMode;->FAST:Landroid/icu/impl/number/Parse$ParseMode;

    if-ne v5, v9, :cond_7

    .line 1086
    :cond_28
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->AFTER_PREFIX:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptWhitespace(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    if-nez v8, :cond_29

    .line 1088
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->AFTER_INTEGER_DIGIT:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptGrouping(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    :cond_29
    if-eqz v2, :cond_7

    .line 1091
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->AFTER_PREFIX:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptCurrency(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    goto/16 :goto_3

    .line 1041
    :pswitch_c
    sget-object v9, Landroid/icu/impl/number/Parse$ParseMode;->LENIENT:Landroid/icu/impl/number/Parse$ParseMode;

    if-eq v5, v9, :cond_2b

    sget-object v9, Landroid/icu/impl/number/Parse$ParseMode;->FAST:Landroid/icu/impl/number/Parse$ParseMode;

    if-ne v5, v9, :cond_2a

    goto :goto_4

    :cond_2a
    const/4 v10, 0x0

    goto :goto_5

    .line 1042
    :cond_2b
    :goto_4
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->BEFORE_PREFIX:Landroid/icu/impl/number/Parse$StateName;

    const/4 v10, 0x0

    invoke-static {v12, v9, v11, v14, v10}, Landroid/icu/impl/number/Parse;->acceptMinusOrPlusSign(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Z)V

    .line 1043
    iget v9, v11, Landroid/icu/impl/number/Parse$ParserState;->length:I

    if-lez v9, :cond_2c

    sget-object v9, Landroid/icu/impl/number/Parse$ParseMode;->FAST:Landroid/icu/impl/number/Parse$ParseMode;

    if-ne v5, v9, :cond_2c

    goto/16 :goto_6

    .line 1045
    :cond_2c
    :goto_5
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->AFTER_INTEGER_DIGIT:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptIntegerDigit(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    .line 1046
    iget v9, v11, Landroid/icu/impl/number/Parse$ParserState;->length:I

    if-lez v9, :cond_2d

    sget-object v9, Landroid/icu/impl/number/Parse$ParseMode;->FAST:Landroid/icu/impl/number/Parse$ParseMode;

    if-ne v5, v9, :cond_2d

    goto/16 :goto_6

    .line 1047
    :cond_2d
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->BEFORE_PREFIX:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptBidi(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    .line 1048
    iget v9, v11, Landroid/icu/impl/number/Parse$ParserState;->length:I

    if-lez v9, :cond_2e

    sget-object v9, Landroid/icu/impl/number/Parse$ParseMode;->FAST:Landroid/icu/impl/number/Parse$ParseMode;

    if-ne v5, v9, :cond_2e

    goto/16 :goto_6

    .line 1049
    :cond_2e
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->BEFORE_PREFIX:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptWhitespace(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    .line 1050
    iget v9, v11, Landroid/icu/impl/number/Parse$ParserState;->length:I

    if-lez v9, :cond_2f

    sget-object v9, Landroid/icu/impl/number/Parse$ParseMode;->FAST:Landroid/icu/impl/number/Parse$ParseMode;

    if-ne v5, v9, :cond_2f

    goto/16 :goto_6

    .line 1051
    :cond_2f
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->BEFORE_PREFIX:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptPadding(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    .line 1052
    iget v9, v11, Landroid/icu/impl/number/Parse$ParserState;->length:I

    if-lez v9, :cond_30

    sget-object v9, Landroid/icu/impl/number/Parse$ParseMode;->FAST:Landroid/icu/impl/number/Parse$ParseMode;

    if-ne v5, v9, :cond_30

    goto :goto_6

    .line 1053
    :cond_30
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptNan(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    .line 1054
    iget v9, v11, Landroid/icu/impl/number/Parse$ParserState;->length:I

    if-lez v9, :cond_31

    sget-object v9, Landroid/icu/impl/number/Parse$ParseMode;->FAST:Landroid/icu/impl/number/Parse$ParseMode;

    if-ne v5, v9, :cond_31

    goto :goto_6

    .line 1055
    :cond_31
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->BEFORE_SUFFIX:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptInfinity(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    .line 1056
    iget v9, v11, Landroid/icu/impl/number/Parse$ParserState;->length:I

    if-lez v9, :cond_32

    sget-object v9, Landroid/icu/impl/number/Parse$ParseMode;->FAST:Landroid/icu/impl/number/Parse$ParseMode;

    if-ne v5, v9, :cond_32

    goto :goto_6

    :cond_32
    if-nez v6, :cond_33

    .line 1058
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->AFTER_FRACTION_DIGIT:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptDecimalPoint(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    .line 1059
    iget v9, v11, Landroid/icu/impl/number/Parse$ParserState;->length:I

    if-lez v9, :cond_33

    sget-object v9, Landroid/icu/impl/number/Parse$ParseMode;->FAST:Landroid/icu/impl/number/Parse$ParseMode;

    if-ne v5, v9, :cond_33

    goto :goto_6

    .line 1061
    :cond_33
    sget-object v9, Landroid/icu/impl/number/Parse$ParseMode;->LENIENT:Landroid/icu/impl/number/Parse$ParseMode;

    if-eq v5, v9, :cond_34

    sget-object v9, Landroid/icu/impl/number/Parse$ParseMode;->STRICT:Landroid/icu/impl/number/Parse$ParseMode;

    if-ne v5, v9, :cond_35

    .line 1062
    :cond_34
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->AFTER_PREFIX:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptPrefix(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    .line 1064
    :cond_35
    sget-object v9, Landroid/icu/impl/number/Parse$ParseMode;->LENIENT:Landroid/icu/impl/number/Parse$ParseMode;

    if-eq v5, v9, :cond_36

    sget-object v9, Landroid/icu/impl/number/Parse$ParseMode;->FAST:Landroid/icu/impl/number/Parse$ParseMode;

    if-ne v5, v9, :cond_38

    :cond_36
    if-nez v8, :cond_37

    .line 1066
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->AFTER_INTEGER_DIGIT:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptGrouping(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    .line 1067
    iget v9, v11, Landroid/icu/impl/number/Parse$ParserState;->length:I

    if-lez v9, :cond_37

    sget-object v9, Landroid/icu/impl/number/Parse$ParseMode;->FAST:Landroid/icu/impl/number/Parse$ParseMode;

    if-ne v5, v9, :cond_37

    goto :goto_6

    :cond_37
    if-eqz v2, :cond_38

    .line 1070
    sget-object v9, Landroid/icu/impl/number/Parse$StateName;->BEFORE_PREFIX:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v12, v9, v11, v14}, Landroid/icu/impl/number/Parse;->acceptCurrency(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V

    :cond_38
    :goto_6
    add-int/lit8 v13, v13, 0x1

    move v9, v10

    goto/16 :goto_2

    :cond_39
    move v10, v9

    .line 1245
    iget v9, v11, Landroid/icu/impl/number/Parse$ParserState;->length:I

    if-nez v9, :cond_3a

    .line 1248
    invoke-virtual {v11}, Landroid/icu/impl/number/Parse$ParserState;->swapBack()V

    goto :goto_7

    .line 1252
    :cond_3a
    invoke-static {v12}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    add-int/2addr v4, v9

    move v9, v10

    goto/16 :goto_1

    :cond_3b
    move v10, v9

    .line 1256
    :goto_7
    iget v0, v11, Landroid/icu/impl/number/Parse$ParserState;->length:I

    const-string v6, "- - - - - - - - - -"

    const/4 v7, 0x0

    if-nez v0, :cond_3d

    .line 1257
    sget-boolean v0, Landroid/icu/impl/number/Parse;->DEBUGGING:Z

    if-eqz v0, :cond_3c

    .line 1258
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "No matches found"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1259
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3c
    return-object v7

    :cond_3d
    move-object v8, v7

    move v0, v10

    .line 1267
    :goto_8
    iget v9, v11, Landroid/icu/impl/number/Parse$ParserState;->length:I

    if-ge v0, v9, :cond_5c

    .line 1268
    iget-object v9, v11, Landroid/icu/impl/number/Parse$ParserState;->items:[Landroid/icu/impl/number/Parse$StateItem;

    aget-object v9, v9, v0

    .line 1270
    sget-boolean v12, Landroid/icu/impl/number/Parse;->DEBUGGING:Z

    if-eqz v12, :cond_3e

    .line 1271
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ":end "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1275
    :cond_3e
    invoke-virtual {v9}, Landroid/icu/impl/number/Parse$StateItem;->hasNumber()Z

    move-result v12

    if-nez v12, :cond_40

    .line 1276
    sget-boolean v9, Landroid/icu/impl/number/Parse;->DEBUGGING:Z

    if-eqz v9, :cond_3f

    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "-> rejected due to no number value"

    invoke-virtual {v9, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3f
    :goto_9
    move-object/from16 v21, v11

    goto/16 :goto_19

    .line 1280
    :cond_40
    sget-object v12, Landroid/icu/impl/number/Parse$ParseMode;->STRICT:Landroid/icu/impl/number/Parse$ParseMode;

    if-ne v5, v12, :cond_53

    .line 1283
    iget-boolean v12, v9, Landroid/icu/impl/number/Parse$StateItem;->sawPrefix:Z

    if-nez v12, :cond_42

    iget-object v12, v9, Landroid/icu/impl/number/Parse$StateItem;->affix:Landroid/icu/impl/number/Parse$AffixHolder;

    if-eqz v12, :cond_41

    iget-object v12, v9, Landroid/icu/impl/number/Parse$StateItem;->affix:Landroid/icu/impl/number/Parse$AffixHolder;

    iget-object v12, v12, Landroid/icu/impl/number/Parse$AffixHolder;->p:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_41

    goto :goto_a

    :cond_41
    move v12, v10

    goto :goto_b

    :cond_42
    :goto_a
    const/4 v12, 0x1

    .line 1284
    :goto_b
    iget-boolean v13, v9, Landroid/icu/impl/number/Parse$StateItem;->sawSuffix:Z

    if-nez v13, :cond_44

    iget-object v13, v9, Landroid/icu/impl/number/Parse$StateItem;->affix:Landroid/icu/impl/number/Parse$AffixHolder;

    if-eqz v13, :cond_43

    iget-object v13, v9, Landroid/icu/impl/number/Parse$StateItem;->affix:Landroid/icu/impl/number/Parse$AffixHolder;

    iget-object v13, v13, Landroid/icu/impl/number/Parse$AffixHolder;->s:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_43

    goto :goto_c

    :cond_43
    move v13, v10

    goto :goto_d

    :cond_44
    :goto_c
    const/4 v13, 0x1

    .line 1285
    :goto_d
    iget-object v14, v11, Landroid/icu/impl/number/Parse$ParserState;->affixHolders:Ljava/util/Set;

    sget-object v15, Landroid/icu/impl/number/Parse$AffixHolder;->EMPTY_POSITIVE:Landroid/icu/impl/number/Parse$AffixHolder;

    .line 1286
    invoke-interface {v14, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_46

    iget-object v14, v11, Landroid/icu/impl/number/Parse$ParserState;->affixHolders:Ljava/util/Set;

    sget-object v15, Landroid/icu/impl/number/Parse$AffixHolder;->EMPTY_NEGATIVE:Landroid/icu/impl/number/Parse$AffixHolder;

    .line 1287
    invoke-interface {v14, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_45

    goto :goto_e

    :cond_45
    move v14, v10

    goto :goto_f

    :cond_46
    :goto_e
    const/4 v14, 0x1

    :goto_f
    if-eqz v12, :cond_47

    if-eqz v13, :cond_47

    goto :goto_10

    :cond_47
    if-nez v12, :cond_52

    if-nez v13, :cond_52

    if-eqz v14, :cond_52

    .line 1299
    :goto_10
    invoke-virtual/range {p3 .. p3}, Landroid/icu/impl/number/DecimalFormatProperties;->getMinimumExponentDigits()I

    move-result v12

    if-lez v12, :cond_48

    iget-boolean v12, v9, Landroid/icu/impl/number/Parse$StateItem;->sawExponentDigit:Z

    if-nez v12, :cond_48

    .line 1300
    sget-boolean v9, Landroid/icu/impl/number/Parse;->DEBUGGING:Z

    if-eqz v9, :cond_3f

    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "-> reject due to lack of exponent"

    invoke-virtual {v9, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_9

    .line 1305
    :cond_48
    invoke-virtual/range {p3 .. p3}, Landroid/icu/impl/number/DecimalFormatProperties;->getGroupingSize()I

    move-result v12

    .line 1306
    invoke-virtual/range {p3 .. p3}, Landroid/icu/impl/number/DecimalFormatProperties;->getSecondaryGroupingSize()I

    move-result v13

    if-lez v12, :cond_49

    goto :goto_11

    :cond_49
    move v12, v13

    :goto_11
    if-lez v13, :cond_4a

    goto :goto_12

    :cond_4a
    move v13, v12

    .line 1309
    :goto_12
    iget-wide v14, v9, Landroid/icu/impl/number/Parse$StateItem;->groupingWidths:J

    .line 1310
    invoke-static {v14, v15}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v16

    const/16 v18, 0x4

    div-int/lit8 v16, v16, 0x4

    rsub-int/lit8 v16, v16, 0x10

    move-wide/from16 v25, v14

    move/from16 v14, v16

    move-wide/from16 v15, v25

    :goto_13
    const-wide/16 v19, 0xf

    const/4 v10, 0x1

    if-le v14, v10, :cond_4c

    and-long v21, v15, v19

    const-wide/16 v23, 0x0

    cmp-long v10, v21, v23

    if-nez v10, :cond_4c

    .line 1314
    iget-boolean v10, v9, Landroid/icu/impl/number/Parse$StateItem;->sawDecimalPoint:Z

    if-eqz v10, :cond_4b

    .line 1315
    sget-boolean v9, Landroid/icu/impl/number/Parse;->DEBUGGING:Z

    if-eqz v9, :cond_3f

    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "-> rejected due to decimal point after grouping"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_4b
    ushr-long v15, v15, v18

    add-int/lit8 v14, v14, -0x1

    const/4 v10, 0x0

    goto :goto_13

    :cond_4c
    if-gtz v12, :cond_4d

    goto :goto_15

    :cond_4d
    const/4 v10, 0x1

    if-gt v14, v10, :cond_4e

    goto :goto_15

    :cond_4e
    and-long v17, v15, v19

    move-object/from16 v21, v11

    int-to-long v10, v12

    cmp-long v10, v17, v10

    if-eqz v10, :cond_4f

    .line 1328
    sget-boolean v9, Landroid/icu/impl/number/Parse;->DEBUGGING:Z

    if-eqz v9, :cond_5b

    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "-> rejected due to first grouping violation"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_19

    :cond_4f
    add-int/lit8 v14, v14, -0x1

    mul-int/lit8 v10, v14, 0x4

    ushr-long v10, v15, v10

    and-long v10, v10, v19

    int-to-long v12, v13

    cmp-long v10, v10, v12

    if-lez v10, :cond_50

    .line 1332
    sget-boolean v9, Landroid/icu/impl/number/Parse;->DEBUGGING:Z

    if-eqz v9, :cond_5b

    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "-> rejected due to final grouping violation"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_19

    :cond_50
    const/4 v10, 0x1

    :goto_14
    if-ge v10, v14, :cond_54

    mul-int/lit8 v11, v10, 0x4

    ushr-long v17, v15, v11

    and-long v17, v17, v19

    cmp-long v11, v17, v12

    if-eqz v11, :cond_51

    .line 1338
    sget-boolean v9, Landroid/icu/impl/number/Parse;->DEBUGGING:Z

    if-eqz v9, :cond_5b

    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "-> rejected due to inner grouping violation"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_19

    :cond_51
    add-int/lit8 v10, v10, 0x1

    goto :goto_14

    :cond_52
    move-object/from16 v21, v11

    .line 1294
    sget-boolean v9, Landroid/icu/impl/number/Parse;->DEBUGGING:Z

    if-eqz v9, :cond_5b

    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "-> rejected due to mismatched prefix/suffix"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_19

    :cond_53
    :goto_15
    move-object/from16 v21, v11

    .line 1346
    :cond_54
    invoke-virtual/range {p3 .. p3}, Landroid/icu/impl/number/DecimalFormatProperties;->getDecimalPatternMatchRequired()Z

    move-result v10

    if-eqz v10, :cond_57

    iget-boolean v10, v9, Landroid/icu/impl/number/Parse$StateItem;->sawDecimalPoint:Z

    .line 1348
    invoke-virtual/range {p3 .. p3}, Landroid/icu/impl/number/DecimalFormatProperties;->getDecimalSeparatorAlwaysShown()Z

    move-result v11

    if-nez v11, :cond_56

    .line 1349
    invoke-virtual/range {p3 .. p3}, Landroid/icu/impl/number/DecimalFormatProperties;->getMaximumFractionDigits()I

    move-result v11

    if-eqz v11, :cond_55

    goto :goto_16

    :cond_55
    const/4 v11, 0x0

    goto :goto_17

    :cond_56
    :goto_16
    const/4 v11, 0x1

    :goto_17
    if-eq v10, v11, :cond_57

    .line 1350
    sget-boolean v9, Landroid/icu/impl/number/Parse;->DEBUGGING:Z

    if-eqz v9, :cond_5b

    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "-> rejected due to decimal point violation"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_19

    :cond_57
    if-eqz v2, :cond_58

    .line 1355
    iget-boolean v10, v9, Landroid/icu/impl/number/Parse$StateItem;->sawCurrency:Z

    if-nez v10, :cond_58

    .line 1356
    sget-boolean v9, Landroid/icu/impl/number/Parse;->DEBUGGING:Z

    if-eqz v9, :cond_5b

    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "-> rejected due to lack of currency"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_19

    :cond_58
    if-nez v8, :cond_59

    goto :goto_18

    .line 1365
    :cond_59
    iget v10, v9, Landroid/icu/impl/number/Parse$StateItem;->score:I

    iget v11, v8, Landroid/icu/impl/number/Parse$StateItem;->score:I

    if-le v10, v11, :cond_5a

    goto :goto_18

    .line 1367
    :cond_5a
    iget v10, v9, Landroid/icu/impl/number/Parse$StateItem;->trailingCount:I

    iget v11, v8, Landroid/icu/impl/number/Parse$StateItem;->trailingCount:I

    if-ge v10, v11, :cond_5b

    :goto_18
    move-object v8, v9

    :cond_5b
    :goto_19
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v11, v21

    const/4 v10, 0x0

    goto/16 :goto_8

    .line 1372
    :cond_5c
    sget-boolean v0, Landroid/icu/impl/number/Parse;->DEBUGGING:Z

    if-eqz v0, :cond_5d

    .line 1373
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5d
    if-eqz v8, :cond_5e

    .line 1377
    iget v0, v8, Landroid/icu/impl/number/Parse$StateItem;->trailingCount:I

    sub-int/2addr v4, v0

    invoke-virtual {v1, v4}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object v8

    .line 1380
    :cond_5e
    invoke-virtual {v1, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-object v7

    .line 977
    :cond_5f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "All arguments are required for parse."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static acceptAffixHolder(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Landroid/icu/impl/number/Parse$AffixHolder;Z)V
    .locals 12

    move-object/from16 v0, p4

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p5, :cond_1

    .line 1716
    iget-object v1, v0, Landroid/icu/impl/number/Parse$AffixHolder;->p:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, v0, Landroid/icu/impl/number/Parse$AffixHolder;->s:Ljava/lang/String;

    .line 1718
    :goto_0
    iget-boolean v2, v0, Landroid/icu/impl/number/Parse$AffixHolder;->strings:Z

    const-wide/16 v10, 0x0

    if-eqz v2, :cond_2

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, v1

    .line 1719
    invoke-static/range {v2 .. v9}, Landroid/icu/impl/number/Parse;->acceptString(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;IZ)J

    move-result-wide v1

    goto :goto_1

    .line 1722
    :cond_2
    invoke-static {v10, v11, v1}, Landroid/icu/impl/number/AffixUtils;->nextToken(JLjava/lang/CharSequence;)J

    move-result-wide v7

    move v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v1

    invoke-static/range {v2 .. v8}, Landroid/icu/impl/number/Parse;->acceptAffixPattern(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;J)J

    move-result-wide v1

    .line 1725
    :goto_1
    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v3

    :goto_2
    const-wide/16 v4, 0x1

    shl-long/2addr v4, v3

    cmp-long v6, v4, v1

    if-gtz v6, :cond_a

    and-long/2addr v4, v1

    cmp-long v4, v4, v10

    if-eqz v4, :cond_8

    move-object v4, p2

    .line 1727
    invoke-virtual {p2, v3}, Landroid/icu/impl/number/Parse$ParserState;->getItem(I)Landroid/icu/impl/number/Parse$StateItem;

    move-result-object v5

    .line 1728
    iput-object v0, v5, Landroid/icu/impl/number/Parse$StateItem;->affix:Landroid/icu/impl/number/Parse$AffixHolder;

    const/4 v6, 0x1

    if-eqz p5, :cond_3

    .line 1729
    iput-boolean v6, v5, Landroid/icu/impl/number/Parse$StateItem;->sawPrefix:Z

    :cond_3
    if-nez p5, :cond_4

    .line 1730
    iput-boolean v6, v5, Landroid/icu/impl/number/Parse$StateItem;->sawSuffix:Z

    .line 1731
    :cond_4
    iget-boolean v7, v0, Landroid/icu/impl/number/Parse$AffixHolder;->negative:Z

    if-eqz v7, :cond_5

    iput-boolean v6, v5, Landroid/icu/impl/number/Parse$StateItem;->sawNegative:Z

    .line 1733
    :cond_5
    iget v7, v5, Landroid/icu/impl/number/Parse$StateItem;->score:I

    add-int/lit8 v7, v7, 0xa

    iput v7, v5, Landroid/icu/impl/number/Parse$StateItem;->score:I

    .line 1735
    iget-boolean v7, v0, Landroid/icu/impl/number/Parse$AffixHolder;->negative:Z

    if-nez v7, :cond_6

    iget v7, v5, Landroid/icu/impl/number/Parse$StateItem;->score:I

    add-int/2addr v7, v6

    iput v7, v5, Landroid/icu/impl/number/Parse$StateItem;->score:I

    .line 1737
    :cond_6
    iget-boolean v6, v5, Landroid/icu/impl/number/Parse$StateItem;->sawPrefix:Z

    if-nez v6, :cond_7

    iget-object v6, v0, Landroid/icu/impl/number/Parse$AffixHolder;->p:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    iget v6, v5, Landroid/icu/impl/number/Parse$StateItem;->score:I

    add-int/lit8 v6, v6, 0x5

    iput v6, v5, Landroid/icu/impl/number/Parse$StateItem;->score:I

    .line 1738
    :cond_7
    iget-boolean v6, v5, Landroid/icu/impl/number/Parse$StateItem;->sawSuffix:Z

    if-nez v6, :cond_9

    iget-object v6, v0, Landroid/icu/impl/number/Parse$AffixHolder;->s:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9

    iget v6, v5, Landroid/icu/impl/number/Parse$StateItem;->score:I

    add-int/lit8 v6, v6, 0x5

    iput v6, v5, Landroid/icu/impl/number/Parse$StateItem;->score:I

    goto :goto_3

    :cond_8
    move-object v4, p2

    :cond_9
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_a
    return-void
.end method

.method private static acceptAffixPattern(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;J)J
    .locals 10

    if-eqz p4, :cond_1

    .line 1881
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    .line 1882
    invoke-static/range {v0 .. v9}, Landroid/icu/impl/number/Parse;->acceptStringOrAffixPatternWithIgnorables(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;JZZ)J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static acceptAffixPatternHelper(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;J)J
    .locals 4

    .line 2028
    invoke-virtual {p2}, Landroid/icu/impl/number/Parse$ParserState;->getNext()Landroid/icu/impl/number/Parse$StateItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1, p0}, Landroid/icu/impl/number/Parse$StateItem;->copyFrom(Landroid/icu/impl/number/Parse$StateItem;Landroid/icu/impl/number/Parse$StateName;I)Landroid/icu/impl/number/Parse$StateItem;

    move-result-object p0

    .line 2029
    iget p3, p0, Landroid/icu/impl/number/Parse$StateItem;->score:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Landroid/icu/impl/number/Parse$StateItem;->score:I

    const-wide/16 v2, 0x0

    cmp-long p3, p5, v2

    if-ltz p3, :cond_0

    .line 2032
    sget-object p3, Landroid/icu/impl/number/Parse$StateName;->INSIDE_AFFIX_PATTERN:Landroid/icu/impl/number/Parse$StateName;

    iput-object p3, p0, Landroid/icu/impl/number/Parse$StateItem;->name:Landroid/icu/impl/number/Parse$StateName;

    .line 2033
    iput-object p1, p0, Landroid/icu/impl/number/Parse$StateItem;->returnTo1:Landroid/icu/impl/number/Parse$StateName;

    .line 2034
    iput-object p4, p0, Landroid/icu/impl/number/Parse$StateItem;->currentAffixPattern:Ljava/lang/CharSequence;

    .line 2035
    iput-wide p5, p0, Landroid/icu/impl/number/Parse$StateItem;->currentStepwiseParserTag:J

    goto :goto_0

    .line 2038
    :cond_0
    iput-object p1, p0, Landroid/icu/impl/number/Parse$StateItem;->name:Landroid/icu/impl/number/Parse$StateName;

    const/4 p1, 0x0

    .line 2039
    iput p1, p0, Landroid/icu/impl/number/Parse$StateItem;->trailingCount:I

    .line 2040
    iput-object v1, p0, Landroid/icu/impl/number/Parse$StateItem;->returnTo1:Landroid/icu/impl/number/Parse$StateName;

    :goto_0
    const-wide/16 p0, 0x1

    .line 2042
    invoke-virtual {p2}, Landroid/icu/impl/number/Parse$ParserState;->lastInsertedIndex()I

    move-result p2

    shl-long/2addr p0, p2

    return-wide p0
.end method

.method private static acceptAffixPatternNonIgnorable(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;IJJ)J
    .locals 23

    move/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v0, p5

    move-wide/from16 v12, p6

    const/16 v1, 0x25

    const/16 v2, 0x2030

    const/4 v14, 0x0

    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v4, -0x1

    if-gez v0, :cond_4

    const/16 v5, -0xf

    if-eq v0, v5, :cond_3

    packed-switch v0, :pswitch_data_0

    .line 1932
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    move v15, v3

    move/from16 v16, v7

    goto :goto_2

    :pswitch_1
    move/from16 v16, v3

    move v15, v7

    move/from16 v17, v15

    goto :goto_3

    .line 1912
    :pswitch_2
    iget-object v0, v10, Landroid/icu/impl/number/Parse$ParserState;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getPercentString()Ljava/lang/String;

    move-result-object v0

    .line 1913
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v3, :cond_0

    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-eq v2, v1, :cond_1

    :cond_0
    move-object/from16 v18, v0

    move v4, v1

    goto :goto_1

    .line 1918
    :pswitch_3
    iget-object v0, v10, Landroid/icu/impl/number/Parse$ParserState;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getPerMillString()Ljava/lang/String;

    move-result-object v0

    .line 1919
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v1, v3, :cond_2

    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move-object/from16 v18, v0

    goto :goto_1

    :cond_2
    :goto_0
    move-object/from16 v18, v0

    move v4, v2

    :goto_1
    move v15, v7

    move/from16 v16, v15

    move/from16 v17, v16

    goto :goto_4

    :cond_3
    :pswitch_4
    move/from16 v17, v3

    move v15, v7

    move/from16 v16, v15

    goto :goto_3

    :cond_4
    move v4, v0

    move v15, v7

    move/from16 v16, v15

    :goto_2
    move/from16 v17, v16

    :goto_3
    move-object/from16 v18, v14

    :goto_4
    const-wide/16 v19, 0x0

    if-ltz v4, :cond_6

    .line 1939
    invoke-static {v8, v4, v10}, Landroid/icu/impl/number/Parse;->codePointEquals(IILandroid/icu/impl/number/Parse$ParserState;)Z

    move-result v0

    if-eqz v0, :cond_6

    cmp-long v0, v12, v19

    if-ltz v0, :cond_5

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p6

    .line 1941
    invoke-static/range {v0 .. v6}, Landroid/icu/impl/number/Parse;->acceptAffixPatternHelper(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;J)J

    move-result-wide v0

    or-long v0, v0, v19

    move-wide/from16 v21, v0

    goto :goto_5

    :cond_5
    move-wide/from16 v21, v19

    :goto_5
    cmp-long v0, p8, v19

    if-gez v0, :cond_7

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p8

    .line 1944
    invoke-static/range {v0 .. v6}, Landroid/icu/impl/number/Parse;->acceptAffixPatternHelper(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;J)J

    move-result-wide v0

    or-long v0, v21, v0

    move-wide/from16 v21, v0

    goto :goto_6

    :cond_6
    move-wide/from16 v21, v19

    :cond_7
    :goto_6
    if-eqz v15, :cond_b

    cmp-long v0, v12, v19

    if-ltz v0, :cond_8

    .line 1949
    sget-object v1, Landroid/icu/impl/number/Parse$StateName;->INSIDE_AFFIX_PATTERN:Landroid/icu/impl/number/Parse$StateName;

    const/4 v5, 0x0

    move/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-static/range {v0 .. v5}, Landroid/icu/impl/number/Parse;->acceptMinusSign(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Z)J

    move-result-wide v0

    or-long v21, v21, v0

    :cond_8
    cmp-long v0, p8, v19

    if-gez v0, :cond_9

    const/4 v2, 0x0

    const/4 v5, 0x0

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 1952
    invoke-static/range {v0 .. v5}, Landroid/icu/impl/number/Parse;->acceptMinusSign(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Z)J

    move-result-wide v0

    or-long v0, v21, v0

    move-wide/from16 v21, v0

    :cond_9
    cmp-long v0, v21, v19

    if-nez v0, :cond_b

    .line 1956
    iget-object v0, v10, Landroid/icu/impl/number/Parse$ParserState;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getMinusSignString()Ljava/lang/String;

    move-result-object v0

    .line 1957
    invoke-static {v0, v7}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 1958
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    if-ne v2, v3, :cond_a

    sget-object v2, Landroid/icu/impl/number/Parse;->UNISET_MINUS:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v2, v1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    move-object/from16 v18, v0

    :cond_b
    if-eqz v16, :cond_f

    cmp-long v0, v12, v19

    if-ltz v0, :cond_c

    .line 1965
    sget-object v1, Landroid/icu/impl/number/Parse$StateName;->INSIDE_AFFIX_PATTERN:Landroid/icu/impl/number/Parse$StateName;

    const/4 v5, 0x0

    move/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-static/range {v0 .. v5}, Landroid/icu/impl/number/Parse;->acceptPlusSign(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Z)J

    move-result-wide v0

    or-long v21, v21, v0

    :cond_c
    cmp-long v0, p8, v19

    if-gez v0, :cond_d

    const/4 v2, 0x0

    const/4 v5, 0x0

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 1968
    invoke-static/range {v0 .. v5}, Landroid/icu/impl/number/Parse;->acceptPlusSign(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Z)J

    move-result-wide v0

    or-long v0, v21, v0

    move-wide/from16 v21, v0

    :cond_d
    cmp-long v0, v21, v19

    if-nez v0, :cond_f

    .line 1972
    iget-object v0, v10, Landroid/icu/impl/number/Parse$ParserState;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getPlusSignString()Ljava/lang/String;

    move-result-object v0

    .line 1973
    invoke-static {v0, v7}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 1974
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    if-ne v2, v3, :cond_e

    sget-object v2, Landroid/icu/impl/number/Parse;->UNISET_MINUS:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v2, v1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v1

    if-nez v1, :cond_f

    :cond_e
    move-object/from16 v18, v0

    :cond_f
    if-eqz v18, :cond_11

    cmp-long v0, v12, v19

    if-ltz v0, :cond_10

    .line 1981
    sget-object v1, Landroid/icu/impl/number/Parse$StateName;->INSIDE_AFFIX_PATTERN:Landroid/icu/impl/number/Parse$StateName;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, v18

    .line 1982
    invoke-static/range {v0 .. v7}, Landroid/icu/impl/number/Parse;->acceptString(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;IZ)J

    move-result-wide v0

    or-long v21, v21, v0

    :cond_10
    cmp-long v0, p8, v19

    if-gez v0, :cond_11

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, v18

    .line 1986
    invoke-static/range {v0 .. v7}, Landroid/icu/impl/number/Parse;->acceptString(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;IZ)J

    move-result-wide v0

    or-long v21, v21, v0

    :cond_11
    if-eqz v17, :cond_13

    cmp-long v0, v12, v19

    if-ltz v0, :cond_12

    .line 1991
    sget-object v0, Landroid/icu/impl/number/Parse$StateName;->INSIDE_AFFIX_PATTERN:Landroid/icu/impl/number/Parse$StateName;

    invoke-static {v8, v0, v9, v10, v11}, Landroid/icu/impl/number/Parse;->acceptCurrency(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)J

    move-result-wide v0

    or-long v21, v21, v0

    :cond_12
    cmp-long v0, p8, v19

    if-gez v0, :cond_13

    .line 1994
    invoke-static {v8, v9, v14, v10, v11}, Landroid/icu/impl/number/Parse;->acceptCurrency(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)J

    move-result-wide v0

    or-long v21, v21, v0

    .line 1999
    :cond_13
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    :goto_7
    const-wide/16 v1, 0x1

    shl-long/2addr v1, v0

    cmp-long v3, v1, v21

    if-gtz v3, :cond_15

    and-long v1, v1, v21

    cmp-long v1, v1, v19

    if-eqz v1, :cond_14

    .line 2001
    invoke-virtual {v10, v0}, Landroid/icu/impl/number/Parse$ParserState;->getItem(I)Landroid/icu/impl/number/Parse$StateItem;

    move-result-object v1

    move-object/from16 v2, p4

    iput-object v2, v1, Landroid/icu/impl/number/Parse$StateItem;->currentAffixPattern:Ljava/lang/CharSequence;

    .line 2002
    invoke-virtual {v10, v0}, Landroid/icu/impl/number/Parse$ParserState;->getItem(I)Landroid/icu/impl/number/Parse$StateItem;

    move-result-object v1

    iput-wide v12, v1, Landroid/icu/impl/number/Parse$StateItem;->currentStepwiseParserTag:J

    goto :goto_8

    :cond_14
    move-object/from16 v2, p4

    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_15
    return-wide v21

    nop

    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static acceptAffixPatternOffset(ILandroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)J
    .locals 7

    .line 1862
    iget-object v1, p2, Landroid/icu/impl/number/Parse$StateItem;->returnTo1:Landroid/icu/impl/number/Parse$StateName;

    iget-object v4, p2, Landroid/icu/impl/number/Parse$StateItem;->currentAffixPattern:Ljava/lang/CharSequence;

    iget-wide v5, p2, Landroid/icu/impl/number/Parse$StateItem;->currentStepwiseParserTag:J

    move v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v6}, Landroid/icu/impl/number/Parse;->acceptAffixPattern(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static acceptBidi(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V
    .locals 1

    .line 1414
    sget-object v0, Landroid/icu/impl/number/Parse;->UNISET_BIDI:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1415
    invoke-virtual {p2}, Landroid/icu/impl/number/Parse$ParserState;->getNext()Landroid/icu/impl/number/Parse$StateItem;

    move-result-object p2

    invoke-virtual {p2, p3, p1, p0}, Landroid/icu/impl/number/Parse$StateItem;->copyFrom(Landroid/icu/impl/number/Parse$StateItem;Landroid/icu/impl/number/Parse$StateName;I)Landroid/icu/impl/number/Parse$StateItem;

    :cond_0
    return-void
.end method

.method private static acceptCurrency(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)J
    .locals 17

    move/from16 v8, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    .line 2228
    iget-boolean v0, v10, Landroid/icu/impl/number/Parse$StateItem;->sawCurrency:Z

    const-wide/16 v11, 0x0

    if-eqz v0, :cond_0

    return-wide v11

    .line 2233
    :cond_0
    iget-object v0, v9, Landroid/icu/impl/number/Parse$ParserState;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getCurrency()Landroid/icu/util/Currency;

    move-result-object v0

    const/4 v13, 0x0

    if-eqz v0, :cond_1

    .line 2235
    iget-object v1, v9, Landroid/icu/impl/number/Parse$ParserState;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v13, v2}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;I[Z)Ljava/lang/String;

    move-result-object v1

    .line 2236
    invoke-virtual {v0}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    move-object v5, v1

    goto :goto_0

    .line 2239
    :cond_1
    iget-object v0, v9, Landroid/icu/impl/number/Parse$ParserState;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getCurrency()Landroid/icu/util/Currency;

    .line 2240
    iget-object v0, v9, Landroid/icu/impl/number/Parse$ParserState;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v0

    .line 2241
    iget-object v1, v9, Landroid/icu/impl/number/Parse$ParserState;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    move-result-object v1

    move-object v5, v0

    move-object v14, v1

    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 2243
    invoke-static/range {v0 .. v7}, Landroid/icu/impl/number/Parse;->acceptString(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;IZ)J

    move-result-wide v0

    or-long v15, v0, v11

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object v5, v14

    .line 2244
    invoke-static/range {v0 .. v7}, Landroid/icu/impl/number/Parse;->acceptString(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;IZ)J

    move-result-wide v0

    or-long v6, v15, v0

    .line 2245
    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    :goto_1
    const-wide/16 v1, 0x1

    shl-long/2addr v1, v0

    cmp-long v3, v1, v6

    const/4 v4, 0x1

    if-gtz v3, :cond_3

    and-long/2addr v1, v6

    cmp-long v1, v1, v11

    if-eqz v1, :cond_2

    .line 2247
    invoke-virtual {v9, v0}, Landroid/icu/impl/number/Parse$ParserState;->getItem(I)Landroid/icu/impl/number/Parse$StateItem;

    move-result-object v1

    iput-boolean v4, v1, Landroid/icu/impl/number/Parse$StateItem;->sawCurrency:Z

    .line 2248
    invoke-virtual {v9, v0}, Landroid/icu/impl/number/Parse$ParserState;->getItem(I)Landroid/icu/impl/number/Parse$StateItem;

    move-result-object v1

    iput-object v14, v1, Landroid/icu/impl/number/Parse$StateItem;->isoCode:Ljava/lang/String;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2253
    :cond_3
    iget-boolean v0, v9, Landroid/icu/impl/number/Parse$ParserState;->parseCurrency:Z

    if-eqz v0, :cond_4

    .line 2254
    iget-object v0, v9, Landroid/icu/impl/number/Parse$ParserState;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v0

    .line 2256
    invoke-static {v0, v8, v4}, Landroid/icu/util/Currency;->openParseState(Landroid/icu/util/ULocale;II)Landroid/icu/impl/TextTrieMap$ParseState;

    move-result-object v5

    .line 2258
    invoke-static {v0, v8, v13}, Landroid/icu/util/Currency;->openParseState(Landroid/icu/util/ULocale;II)Landroid/icu/impl/TextTrieMap$ParseState;

    move-result-object v11

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 2259
    invoke-static/range {v0 .. v5}, Landroid/icu/impl/number/Parse;->acceptCurrencyHelper(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Landroid/icu/impl/TextTrieMap$ParseState;)J

    move-result-wide v0

    or-long/2addr v6, v0

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object v5, v11

    .line 2260
    invoke-static/range {v0 .. v5}, Landroid/icu/impl/number/Parse;->acceptCurrencyHelper(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Landroid/icu/impl/TextTrieMap$ParseState;)J

    move-result-wide v0

    or-long/2addr v6, v0

    :cond_4
    return-wide v6
.end method

.method private static acceptCurrency(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V
    .locals 1

    const/4 v0, 0x0

    .line 2223
    invoke-static {p0, p1, v0, p2, p3}, Landroid/icu/impl/number/Parse;->acceptCurrency(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)J

    return-void
.end method

.method private static acceptCurrencyHelper(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Landroid/icu/impl/TextTrieMap$ParseState;)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/icu/impl/number/Parse$StateName;",
            "Landroid/icu/impl/number/Parse$StateName;",
            "Landroid/icu/impl/number/Parse$ParserState;",
            "Landroid/icu/impl/number/Parse$StateItem;",
            "Landroid/icu/impl/TextTrieMap<",
            "Landroid/icu/util/Currency$CurrencyStringInfo;",
            ">.ParseState;)J"
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-nez p5, :cond_0

    return-wide v0

    .line 2290
    :cond_0
    invoke-virtual {p5, p0}, Landroid/icu/impl/TextTrieMap$ParseState;->accept(I)V

    .line 2292
    invoke-virtual {p5}, Landroid/icu/impl/TextTrieMap$ParseState;->getCurrentMatches()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v2, 0x1

    const/4 v4, -0x1

    if-eqz p0, :cond_1

    .line 2296
    invoke-virtual {p3}, Landroid/icu/impl/number/Parse$ParserState;->getNext()Landroid/icu/impl/number/Parse$StateItem;

    move-result-object v5

    invoke-virtual {v5, p4, p1, v4}, Landroid/icu/impl/number/Parse$StateItem;->copyFrom(Landroid/icu/impl/number/Parse$StateItem;Landroid/icu/impl/number/Parse$StateName;I)Landroid/icu/impl/number/Parse$StateItem;

    move-result-object v5

    .line 2297
    iput-object p2, v5, Landroid/icu/impl/number/Parse$StateItem;->returnTo1:Landroid/icu/impl/number/Parse$StateName;

    const/4 v6, 0x0

    .line 2298
    iput-object v6, v5, Landroid/icu/impl/number/Parse$StateItem;->returnTo2:Landroid/icu/impl/number/Parse$StateName;

    const/4 v6, 0x1

    .line 2299
    iput-boolean v6, v5, Landroid/icu/impl/number/Parse$StateItem;->sawCurrency:Z

    .line 2300
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/util/Currency$CurrencyStringInfo;

    invoke-virtual {p0}, Landroid/icu/util/Currency$CurrencyStringInfo;->getISOCode()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v5, Landroid/icu/impl/number/Parse$StateItem;->isoCode:Ljava/lang/String;

    .line 2301
    invoke-virtual {p3}, Landroid/icu/impl/number/Parse$ParserState;->lastInsertedIndex()I

    move-result p0

    shl-long v5, v2, p0

    or-long/2addr v0, v5

    .line 2303
    :cond_1
    invoke-virtual {p5}, Landroid/icu/impl/TextTrieMap$ParseState;->atEnd()Z

    move-result p0

    if-nez p0, :cond_2

    .line 2305
    invoke-virtual {p3}, Landroid/icu/impl/number/Parse$ParserState;->getNext()Landroid/icu/impl/number/Parse$StateItem;

    move-result-object p0

    sget-object v5, Landroid/icu/impl/number/Parse$StateName;->INSIDE_CURRENCY:Landroid/icu/impl/number/Parse$StateName;

    invoke-virtual {p0, p4, v5, v4}, Landroid/icu/impl/number/Parse$StateItem;->copyFrom(Landroid/icu/impl/number/Parse$StateItem;Landroid/icu/impl/number/Parse$StateName;I)Landroid/icu/impl/number/Parse$StateItem;

    move-result-object p0

    .line 2306
    iput-object p1, p0, Landroid/icu/impl/number/Parse$StateItem;->returnTo1:Landroid/icu/impl/number/Parse$StateName;

    .line 2307
    iput-object p2, p0, Landroid/icu/impl/number/Parse$StateItem;->returnTo2:Landroid/icu/impl/number/Parse$StateName;

    .line 2308
    iput-object p5, p0, Landroid/icu/impl/number/Parse$StateItem;->currentCurrencyTrieState:Landroid/icu/impl/TextTrieMap$ParseState;

    .line 2309
    invoke-virtual {p3}, Landroid/icu/impl/number/Parse$ParserState;->lastInsertedIndex()I

    move-result p0

    shl-long p0, v2, p0

    or-long/2addr v0, p0

    :cond_2
    return-wide v0
.end method

.method private static acceptCurrencyOffset(ILandroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V
    .locals 6

    .line 2278
    iget-object v1, p2, Landroid/icu/impl/number/Parse$StateItem;->returnTo1:Landroid/icu/impl/number/Parse$StateName;

    iget-object v2, p2, Landroid/icu/impl/number/Parse$StateItem;->returnTo2:Landroid/icu/impl/number/Parse$StateName;

    iget-object v5, p2, Landroid/icu/impl/number/Parse$StateItem;->currentCurrencyTrieState:Landroid/icu/impl/TextTrieMap$ParseState;

    move v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Landroid/icu/impl/number/Parse;->acceptCurrencyHelper(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Landroid/icu/impl/TextTrieMap$ParseState;)J

    return-void
.end method

.method private static acceptDecimalPoint(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V
    .locals 2

    .line 1637
    iget v0, p3, Landroid/icu/impl/number/Parse$StateItem;->groupingCp:I

    if-ne p0, v0, :cond_0

    return-void

    .line 1642
    :cond_0
    iget-object v0, p2, Landroid/icu/impl/number/Parse$ParserState;->mode:Landroid/icu/impl/number/Parse$ParseMode;

    invoke-static {p0, v0}, Landroid/icu/impl/number/Parse$SeparatorType;->fromCp(ILandroid/icu/impl/number/Parse$ParseMode;)Landroid/icu/impl/number/Parse$SeparatorType;

    move-result-object v0

    .line 1645
    iget-object v1, p2, Landroid/icu/impl/number/Parse$ParserState;->decimalType1:Landroid/icu/impl/number/Parse$SeparatorType;

    if-eq v0, v1, :cond_1

    iget-object v1, p2, Landroid/icu/impl/number/Parse$ParserState;->decimalType2:Landroid/icu/impl/number/Parse$SeparatorType;

    if-eq v0, v1, :cond_1

    return-void

    .line 1650
    :cond_1
    sget-object v1, Landroid/icu/impl/number/Parse$SeparatorType;->OTHER_GROUPING:Landroid/icu/impl/number/Parse$SeparatorType;

    if-eq v0, v1, :cond_2

    sget-object v1, Landroid/icu/impl/number/Parse$SeparatorType;->UNKNOWN:Landroid/icu/impl/number/Parse$SeparatorType;

    if-ne v0, v1, :cond_3

    .line 1651
    :cond_2
    iget v0, p2, Landroid/icu/impl/number/Parse$ParserState;->decimalCp1:I

    if-eq p0, v0, :cond_3

    iget v0, p2, Landroid/icu/impl/number/Parse$ParserState;->decimalCp2:I

    if-eq p0, v0, :cond_3

    return-void

    .line 1657
    :cond_3
    invoke-virtual {p2}, Landroid/icu/impl/number/Parse$ParserState;->getNext()Landroid/icu/impl/number/Parse$StateItem;

    move-result-object p0

    const/4 p2, -0x1

    invoke-virtual {p0, p3, p1, p2}, Landroid/icu/impl/number/Parse$StateItem;->copyFrom(Landroid/icu/impl/number/Parse$StateItem;Landroid/icu/impl/number/Parse$StateName;I)Landroid/icu/impl/number/Parse$StateItem;

    move-result-object p0

    const/4 p1, 0x1

    .line 1658
    iput-boolean p1, p0, Landroid/icu/impl/number/Parse$StateItem;->sawDecimalPoint:Z

    return-void
.end method

.method private static acceptDigitHelper(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Landroid/icu/impl/number/Parse$DigitType;)V
    .locals 7

    const/16 v0, 0xa

    .line 1469
    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->digit(II)I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, -0x1

    if-ltz v1, :cond_0

    .line 1475
    invoke-virtual {p2}, Landroid/icu/impl/number/Parse$ParserState;->getNext()Landroid/icu/impl/number/Parse$StateItem;

    move-result-object v3

    invoke-virtual {v3, p3, p1, v2}, Landroid/icu/impl/number/Parse$StateItem;->copyFrom(Landroid/icu/impl/number/Parse$StateItem;Landroid/icu/impl/number/Parse$StateName;I)Landroid/icu/impl/number/Parse$StateItem;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-gez v1, :cond_5

    .line 1479
    iget-object v4, p2, Landroid/icu/impl/number/Parse$ParserState;->mode:Landroid/icu/impl/number/Parse$ParseMode;

    sget-object v5, Landroid/icu/impl/number/Parse$ParseMode;->LENIENT:Landroid/icu/impl/number/Parse$ParseMode;

    if-eq v4, v5, :cond_1

    iget-object v4, p2, Landroid/icu/impl/number/Parse$ParserState;->mode:Landroid/icu/impl/number/Parse$ParseMode;

    sget-object v5, Landroid/icu/impl/number/Parse$ParseMode;->STRICT:Landroid/icu/impl/number/Parse$ParseMode;

    if-ne v4, v5, :cond_5

    .line 1480
    :cond_1
    iget-object v4, p2, Landroid/icu/impl/number/Parse$ParserState;->digitTrie:Landroid/icu/impl/TextTrieMap;

    if-nez v4, :cond_4

    const/4 v4, 0x0

    move v5, v1

    move v1, v4

    :goto_1
    if-ge v1, v0, :cond_3

    .line 1483
    iget-object v6, p2, Landroid/icu/impl/number/Parse$ParserState;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v6}, Landroid/icu/text/DecimalFormatSymbols;->getDigitStringsLocal()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-static {v6, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    if-ne p0, v6, :cond_2

    .line 1486
    invoke-virtual {p2}, Landroid/icu/impl/number/Parse$ParserState;->getNext()Landroid/icu/impl/number/Parse$StateItem;

    move-result-object v3

    invoke-virtual {v3, p3, p1, v2}, Landroid/icu/impl/number/Parse$StateItem;->copyFrom(Landroid/icu/impl/number/Parse$StateItem;Landroid/icu/impl/number/Parse$StateName;I)Landroid/icu/impl/number/Parse$StateItem;

    move-result-object v3

    move v5, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_1

    :cond_3
    move v1, v5

    goto :goto_2

    .line 1491
    :cond_4
    invoke-static {p0, p1, p2, p3, p4}, Landroid/icu/impl/number/Parse;->acceptDigitTrie(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Landroid/icu/impl/number/Parse$DigitType;)J

    .line 1496
    :cond_5
    :goto_2
    invoke-static {v3, v1, p4}, Landroid/icu/impl/number/Parse;->recordDigit(Landroid/icu/impl/number/Parse$StateItem;BLandroid/icu/impl/number/Parse$DigitType;)V

    return-void
.end method

.method private static acceptDigitTrie(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Landroid/icu/impl/number/Parse$DigitType;)J
    .locals 7

    .line 2317
    iget-object v0, p2, Landroid/icu/impl/number/Parse$ParserState;->digitTrie:Landroid/icu/impl/TextTrieMap;

    invoke-virtual {v0, p0}, Landroid/icu/impl/TextTrieMap;->openParseState(I)Landroid/icu/impl/TextTrieMap$ParseState;

    move-result-object v6

    if-nez v6, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 2319
    invoke-static/range {v1 .. v6}, Landroid/icu/impl/number/Parse;->acceptDigitTrieHelper(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Landroid/icu/impl/number/Parse$DigitType;Landroid/icu/impl/TextTrieMap$ParseState;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static acceptDigitTrieHelper(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Landroid/icu/impl/number/Parse$DigitType;Landroid/icu/impl/TextTrieMap$ParseState;)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/icu/impl/number/Parse$StateName;",
            "Landroid/icu/impl/number/Parse$ParserState;",
            "Landroid/icu/impl/number/Parse$StateItem;",
            "Landroid/icu/impl/number/Parse$DigitType;",
            "Landroid/icu/impl/TextTrieMap<",
            "Ljava/lang/Byte;",
            ">.ParseState;)J"
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-nez p5, :cond_0

    return-wide v0

    .line 2335
    :cond_0
    invoke-virtual {p5, p0}, Landroid/icu/impl/TextTrieMap$ParseState;->accept(I)V

    .line 2337
    invoke-virtual {p5}, Landroid/icu/impl/TextTrieMap$ParseState;->getCurrentMatches()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v2, 0x1

    const/4 v4, -0x1

    if-eqz p0, :cond_1

    .line 2340
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    .line 2341
    invoke-virtual {p2}, Landroid/icu/impl/number/Parse$ParserState;->getNext()Landroid/icu/impl/number/Parse$StateItem;

    move-result-object v5

    invoke-virtual {v5, p3, p1, v4}, Landroid/icu/impl/number/Parse$StateItem;->copyFrom(Landroid/icu/impl/number/Parse$StateItem;Landroid/icu/impl/number/Parse$StateName;I)Landroid/icu/impl/number/Parse$StateItem;

    move-result-object v5

    const/4 v6, 0x0

    .line 2342
    iput-object v6, v5, Landroid/icu/impl/number/Parse$StateItem;->returnTo1:Landroid/icu/impl/number/Parse$StateName;

    .line 2343
    invoke-static {v5, p0, p4}, Landroid/icu/impl/number/Parse;->recordDigit(Landroid/icu/impl/number/Parse$StateItem;BLandroid/icu/impl/number/Parse$DigitType;)V

    .line 2344
    invoke-virtual {p2}, Landroid/icu/impl/number/Parse$ParserState;->lastInsertedIndex()I

    move-result p0

    shl-long v5, v2, p0

    or-long/2addr v0, v5

    .line 2346
    :cond_1
    invoke-virtual {p5}, Landroid/icu/impl/TextTrieMap$ParseState;->atEnd()Z

    move-result p0

    if-nez p0, :cond_2

    .line 2348
    invoke-virtual {p2}, Landroid/icu/impl/number/Parse$ParserState;->getNext()Landroid/icu/impl/number/Parse$StateItem;

    move-result-object p0

    sget-object v5, Landroid/icu/impl/number/Parse$StateName;->INSIDE_DIGIT:Landroid/icu/impl/number/Parse$StateName;

    invoke-virtual {p0, p3, v5, v4}, Landroid/icu/impl/number/Parse$StateItem;->copyFrom(Landroid/icu/impl/number/Parse$StateItem;Landroid/icu/impl/number/Parse$StateName;I)Landroid/icu/impl/number/Parse$StateItem;

    move-result-object p0

    .line 2349
    iput-object p1, p0, Landroid/icu/impl/number/Parse$StateItem;->returnTo1:Landroid/icu/impl/number/Parse$StateName;

    .line 2350
    iput-object p5, p0, Landroid/icu/impl/number/Parse$StateItem;->currentDigitTrieState:Landroid/icu/impl/TextTrieMap$ParseState;

    .line 2351
    iput-object p4, p0, Landroid/icu/impl/number/Parse$StateItem;->currentDigitType:Landroid/icu/impl/number/Parse$DigitType;

    .line 2352
    invoke-virtual {p2}, Landroid/icu/impl/number/Parse$ParserState;->lastInsertedIndex()I

    move-result p0

    shl-long p0, v2, p0

    or-long/2addr v0, p0

    :cond_2
    return-wide v0
.end method

.method private static acceptDigitTrieOffset(ILandroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V
    .locals 6

    .line 2323
    iget-object v1, p2, Landroid/icu/impl/number/Parse$StateItem;->returnTo1:Landroid/icu/impl/number/Parse$StateName;

    iget-object v4, p2, Landroid/icu/impl/number/Parse$StateItem;->currentDigitType:Landroid/icu/impl/number/Parse$DigitType;

    iget-object v5, p2, Landroid/icu/impl/number/Parse$StateItem;->currentDigitTrieState:Landroid/icu/impl/TextTrieMap$ParseState;

    move v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Landroid/icu/impl/number/Parse;->acceptDigitTrieHelper(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Landroid/icu/impl/number/Parse$DigitType;Landroid/icu/impl/TextTrieMap$ParseState;)J

    return-void
.end method

.method private static acceptExponentDigit(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V
    .locals 1

    .line 1450
    sget-object v0, Landroid/icu/impl/number/Parse$DigitType;->EXPONENT:Landroid/icu/impl/number/Parse$DigitType;

    invoke-static {p0, p1, p2, p3, v0}, Landroid/icu/impl/number/Parse;->acceptDigitHelper(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Landroid/icu/impl/number/Parse$DigitType;)V

    return-void
.end method

.method private static acceptExponentSeparator(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V
    .locals 9

    .line 1688
    iget-object v0, p2, Landroid/icu/impl/number/Parse$ParserState;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getExponentSeparator()Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    .line 1689
    invoke-static/range {v1 .. v8}, Landroid/icu/impl/number/Parse;->acceptString(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;IZ)J

    return-void
.end method

.method private static acceptFractionDigit(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V
    .locals 1

    .line 1445
    sget-object v0, Landroid/icu/impl/number/Parse$DigitType;->FRACTION:Landroid/icu/impl/number/Parse$DigitType;

    invoke-static {p0, p1, p2, p3, v0}, Landroid/icu/impl/number/Parse;->acceptDigitHelper(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Landroid/icu/impl/number/Parse$DigitType;)V

    return-void
.end method

.method private static acceptGrouping(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V
    .locals 4

    .line 1581
    iget v0, p3, Landroid/icu/impl/number/Parse$StateItem;->groupingCp:I

    const/4 v1, 0x4

    const/4 v2, -0x1

    if-ne v0, v2, :cond_7

    .line 1583
    iget-object v0, p2, Landroid/icu/impl/number/Parse$ParserState;->mode:Landroid/icu/impl/number/Parse$ParseMode;

    invoke-static {p0, v0}, Landroid/icu/impl/number/Parse$SeparatorType;->fromCp(ILandroid/icu/impl/number/Parse$ParseMode;)Landroid/icu/impl/number/Parse$SeparatorType;

    move-result-object v0

    .line 1586
    iget v2, p2, Landroid/icu/impl/number/Parse$ParserState;->groupingCp1:I

    if-eq p0, v2, :cond_6

    iget v2, p2, Landroid/icu/impl/number/Parse$ParserState;->groupingCp2:I

    if-eq p0, v2, :cond_6

    .line 1588
    sget-object v2, Landroid/icu/impl/number/Parse$SeparatorType;->UNKNOWN:Landroid/icu/impl/number/Parse$SeparatorType;

    if-ne v0, v2, :cond_0

    return-void

    .line 1591
    :cond_0
    iget-object v2, p2, Landroid/icu/impl/number/Parse$ParserState;->groupingMode:Landroid/icu/impl/number/Parse$GroupingMode;

    sget-object v3, Landroid/icu/impl/number/Parse$GroupingMode;->RESTRICTED:Landroid/icu/impl/number/Parse$GroupingMode;

    if-ne v2, v3, :cond_2

    .line 1593
    iget-object v2, p2, Landroid/icu/impl/number/Parse$ParserState;->groupingType1:Landroid/icu/impl/number/Parse$SeparatorType;

    if-ne v0, v2, :cond_1

    iget-object v2, p2, Landroid/icu/impl/number/Parse$ParserState;->groupingType2:Landroid/icu/impl/number/Parse$SeparatorType;

    if-eq v0, v2, :cond_6

    :cond_1
    return-void

    .line 1598
    :cond_2
    sget-object v2, Landroid/icu/impl/number/Parse$SeparatorType;->COMMA_LIKE:Landroid/icu/impl/number/Parse$SeparatorType;

    if-ne v0, v2, :cond_4

    iget-object v2, p2, Landroid/icu/impl/number/Parse$ParserState;->decimalType1:Landroid/icu/impl/number/Parse$SeparatorType;

    sget-object v3, Landroid/icu/impl/number/Parse$SeparatorType;->COMMA_LIKE:Landroid/icu/impl/number/Parse$SeparatorType;

    if-eq v2, v3, :cond_3

    iget-object v2, p2, Landroid/icu/impl/number/Parse$ParserState;->decimalType2:Landroid/icu/impl/number/Parse$SeparatorType;

    sget-object v3, Landroid/icu/impl/number/Parse$SeparatorType;->COMMA_LIKE:Landroid/icu/impl/number/Parse$SeparatorType;

    if-ne v2, v3, :cond_4

    :cond_3
    return-void

    .line 1603
    :cond_4
    sget-object v2, Landroid/icu/impl/number/Parse$SeparatorType;->PERIOD_LIKE:Landroid/icu/impl/number/Parse$SeparatorType;

    if-ne v0, v2, :cond_6

    iget-object v0, p2, Landroid/icu/impl/number/Parse$ParserState;->decimalType1:Landroid/icu/impl/number/Parse$SeparatorType;

    sget-object v2, Landroid/icu/impl/number/Parse$SeparatorType;->PERIOD_LIKE:Landroid/icu/impl/number/Parse$SeparatorType;

    if-eq v0, v2, :cond_5

    iget-object v0, p2, Landroid/icu/impl/number/Parse$ParserState;->decimalType2:Landroid/icu/impl/number/Parse$SeparatorType;

    sget-object v2, Landroid/icu/impl/number/Parse$SeparatorType;->PERIOD_LIKE:Landroid/icu/impl/number/Parse$SeparatorType;

    if-ne v0, v2, :cond_6

    :cond_5
    return-void

    .line 1612
    :cond_6
    invoke-virtual {p2}, Landroid/icu/impl/number/Parse$ParserState;->getNext()Landroid/icu/impl/number/Parse$StateItem;

    move-result-object p2

    invoke-virtual {p2, p3, p1, p0}, Landroid/icu/impl/number/Parse$StateItem;->copyFrom(Landroid/icu/impl/number/Parse$StateItem;Landroid/icu/impl/number/Parse$StateName;I)Landroid/icu/impl/number/Parse$StateItem;

    move-result-object p1

    .line 1613
    iput p0, p1, Landroid/icu/impl/number/Parse$StateItem;->groupingCp:I

    .line 1614
    iget-wide p2, p1, Landroid/icu/impl/number/Parse$StateItem;->groupingWidths:J

    shl-long/2addr p2, v1

    iput-wide p2, p1, Landroid/icu/impl/number/Parse$StateItem;->groupingWidths:J

    goto :goto_0

    .line 1617
    :cond_7
    iget v0, p3, Landroid/icu/impl/number/Parse$StateItem;->groupingCp:I

    if-ne p0, v0, :cond_8

    .line 1618
    invoke-virtual {p2}, Landroid/icu/impl/number/Parse$ParserState;->getNext()Landroid/icu/impl/number/Parse$StateItem;

    move-result-object p2

    invoke-virtual {p2, p3, p1, p0}, Landroid/icu/impl/number/Parse$StateItem;->copyFrom(Landroid/icu/impl/number/Parse$StateItem;Landroid/icu/impl/number/Parse$StateName;I)Landroid/icu/impl/number/Parse$StateItem;

    move-result-object p0

    .line 1619
    iget-wide p1, p0, Landroid/icu/impl/number/Parse$StateItem;->groupingWidths:J

    shl-long/2addr p1, v1

    iput-wide p1, p0, Landroid/icu/impl/number/Parse$StateItem;->groupingWidths:J

    :cond_8
    :goto_0
    return-void
.end method

.method private static acceptInfinity(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V
    .locals 9

    .line 1675
    iget-object v0, p2, Landroid/icu/impl/number/Parse$ParserState;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    .line 1676
    invoke-static/range {v1 .. v8}, Landroid/icu/impl/number/Parse;->acceptString(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;IZ)J

    move-result-wide p0

    .line 1679
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result p3

    :goto_0
    const-wide/16 v0, 0x1

    shl-long/2addr v0, p3

    cmp-long v2, v0, p0

    if-gtz v2, :cond_1

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1681
    invoke-virtual {p2, p3}, Landroid/icu/impl/number/Parse$ParserState;->getItem(I)Landroid/icu/impl/number/Parse$StateItem;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/icu/impl/number/Parse$StateItem;->sawInfinity:Z

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static acceptIntegerDigit(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V
    .locals 1

    .line 1440
    sget-object v0, Landroid/icu/impl/number/Parse$DigitType;->INTEGER:Landroid/icu/impl/number/Parse$DigitType;

    invoke-static {p0, p1, p2, p3, v0}, Landroid/icu/impl/number/Parse;->acceptDigitHelper(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Landroid/icu/impl/number/Parse$DigitType;)V

    return-void
.end method

.method private static acceptMinusOrPlusSign(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Z)V
    .locals 9

    const/4 v2, 0x0

    move v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 1526
    invoke-static/range {v0 .. v5}, Landroid/icu/impl/number/Parse;->acceptMinusSign(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Z)J

    const/4 v5, 0x0

    move v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    .line 1527
    invoke-static/range {v3 .. v8}, Landroid/icu/impl/number/Parse;->acceptPlusSign(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Z)J

    return-void
.end method

.method private static acceptMinusSign(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Z)J
    .locals 1

    .line 1537
    sget-object v0, Landroid/icu/impl/number/Parse;->UNISET_MINUS:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1538
    invoke-virtual {p3}, Landroid/icu/impl/number/Parse$ParserState;->getNext()Landroid/icu/impl/number/Parse$StateItem;

    move-result-object p0

    const/4 v0, -0x1

    invoke-virtual {p0, p4, p1, v0}, Landroid/icu/impl/number/Parse$StateItem;->copyFrom(Landroid/icu/impl/number/Parse$StateItem;Landroid/icu/impl/number/Parse$StateName;I)Landroid/icu/impl/number/Parse$StateItem;

    move-result-object p0

    .line 1539
    iput-object p2, p0, Landroid/icu/impl/number/Parse$StateItem;->returnTo1:Landroid/icu/impl/number/Parse$StateName;

    const/4 p1, 0x1

    if-eqz p5, :cond_0

    .line 1541
    iput-boolean p1, p0, Landroid/icu/impl/number/Parse$StateItem;->sawNegativeExponent:Z

    goto :goto_0

    .line 1543
    :cond_0
    iput-boolean p1, p0, Landroid/icu/impl/number/Parse$StateItem;->sawNegative:Z

    :goto_0
    const-wide/16 p0, 0x1

    .line 1545
    invoke-virtual {p3}, Landroid/icu/impl/number/Parse$ParserState;->lastInsertedIndex()I

    move-result p2

    shl-long/2addr p0, p2

    return-wide p0

    :cond_1
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private static acceptNan(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V
    .locals 9

    .line 1662
    iget-object v0, p2, Landroid/icu/impl/number/Parse$ParserState;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    .line 1663
    invoke-static/range {v1 .. v8}, Landroid/icu/impl/number/Parse;->acceptString(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;IZ)J

    move-result-wide p0

    .line 1666
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result p3

    :goto_0
    const-wide/16 v0, 0x1

    shl-long/2addr v0, p3

    cmp-long v2, v0, p0

    if-gtz v2, :cond_1

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1668
    invoke-virtual {p2, p3}, Landroid/icu/impl/number/Parse$ParserState;->getItem(I)Landroid/icu/impl/number/Parse$StateItem;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/icu/impl/number/Parse$StateItem;->sawNaN:Z

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static acceptPadding(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V
    .locals 2

    .line 1430
    iget-object v0, p2, Landroid/icu/impl/number/Parse$ParserState;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalFormatProperties;->getPadString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1431
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1432
    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne p0, v0, :cond_1

    .line 1434
    invoke-virtual {p2}, Landroid/icu/impl/number/Parse$ParserState;->getNext()Landroid/icu/impl/number/Parse$StateItem;

    move-result-object p2

    invoke-virtual {p2, p3, p1, p0}, Landroid/icu/impl/number/Parse$StateItem;->copyFrom(Landroid/icu/impl/number/Parse$StateItem;Landroid/icu/impl/number/Parse$StateName;I)Landroid/icu/impl/number/Parse$StateItem;

    :cond_1
    :goto_0
    return-void
.end method

.method private static acceptPlusSign(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Z)J
    .locals 0

    .line 1558
    sget-object p5, Landroid/icu/impl/number/Parse;->UNISET_PLUS:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p5, p0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1559
    invoke-virtual {p3}, Landroid/icu/impl/number/Parse$ParserState;->getNext()Landroid/icu/impl/number/Parse$StateItem;

    move-result-object p0

    const/4 p5, -0x1

    invoke-virtual {p0, p4, p1, p5}, Landroid/icu/impl/number/Parse$StateItem;->copyFrom(Landroid/icu/impl/number/Parse$StateItem;Landroid/icu/impl/number/Parse$StateName;I)Landroid/icu/impl/number/Parse$StateItem;

    move-result-object p0

    .line 1560
    iput-object p2, p0, Landroid/icu/impl/number/Parse$StateItem;->returnTo1:Landroid/icu/impl/number/Parse$StateName;

    const-wide/16 p0, 0x1

    .line 1561
    invoke-virtual {p3}, Landroid/icu/impl/number/Parse$ParserState;->lastInsertedIndex()I

    move-result p2

    shl-long/2addr p0, p2

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private static acceptPrefix(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V
    .locals 8

    .line 1693
    iget-object v0, p2, Landroid/icu/impl/number/Parse$ParserState;->affixHolders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/icu/impl/number/Parse$AffixHolder;

    const/4 v7, 0x1

    move v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 1694
    invoke-static/range {v2 .. v7}, Landroid/icu/impl/number/Parse;->acceptAffixHolder(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Landroid/icu/impl/number/Parse$AffixHolder;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static acceptString(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;IZ)J
    .locals 10

    if-eqz p5, :cond_1

    .line 1785
    invoke-interface {p5}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v0, p6

    int-to-long v6, v0

    const/4 v9, 0x1

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v8, p7

    .line 1786
    invoke-static/range {v0 .. v9}, Landroid/icu/impl/number/Parse;->acceptStringOrAffixPatternWithIgnorables(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;JZZ)J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static acceptStringHelper(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;IZ)J
    .locals 2

    .line 1841
    invoke-virtual {p3}, Landroid/icu/impl/number/Parse$ParserState;->getNext()Landroid/icu/impl/number/Parse$StateItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p4, v1, p0}, Landroid/icu/impl/number/Parse$StateItem;->copyFrom(Landroid/icu/impl/number/Parse$StateItem;Landroid/icu/impl/number/Parse$StateName;I)Landroid/icu/impl/number/Parse$StateItem;

    move-result-object p0

    .line 1842
    iget p4, p0, Landroid/icu/impl/number/Parse$StateItem;->score:I

    add-int/lit8 p4, p4, 0x1

    iput p4, p0, Landroid/icu/impl/number/Parse$StateItem;->score:I

    .line 1843
    invoke-interface {p5}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-ge p6, p4, :cond_0

    .line 1845
    sget-object p4, Landroid/icu/impl/number/Parse$StateName;->INSIDE_STRING:Landroid/icu/impl/number/Parse$StateName;

    iput-object p4, p0, Landroid/icu/impl/number/Parse$StateItem;->name:Landroid/icu/impl/number/Parse$StateName;

    .line 1846
    iput-object p1, p0, Landroid/icu/impl/number/Parse$StateItem;->returnTo1:Landroid/icu/impl/number/Parse$StateName;

    .line 1847
    iput-object p2, p0, Landroid/icu/impl/number/Parse$StateItem;->returnTo2:Landroid/icu/impl/number/Parse$StateName;

    .line 1848
    iput-object p5, p0, Landroid/icu/impl/number/Parse$StateItem;->currentString:Ljava/lang/CharSequence;

    .line 1849
    iput p6, p0, Landroid/icu/impl/number/Parse$StateItem;->currentOffset:I

    .line 1850
    iput-boolean p7, p0, Landroid/icu/impl/number/Parse$StateItem;->currentTrailing:Z

    goto :goto_0

    .line 1853
    :cond_0
    iput-object p1, p0, Landroid/icu/impl/number/Parse$StateItem;->name:Landroid/icu/impl/number/Parse$StateName;

    if-nez p7, :cond_1

    const/4 p1, 0x0

    .line 1854
    iput p1, p0, Landroid/icu/impl/number/Parse$StateItem;->trailingCount:I

    .line 1855
    :cond_1
    iput-object p2, p0, Landroid/icu/impl/number/Parse$StateItem;->returnTo1:Landroid/icu/impl/number/Parse$StateName;

    .line 1856
    iput-object v1, p0, Landroid/icu/impl/number/Parse$StateItem;->returnTo2:Landroid/icu/impl/number/Parse$StateName;

    :goto_0
    const-wide/16 p0, 0x1

    .line 1858
    invoke-virtual {p3}, Landroid/icu/impl/number/Parse$ParserState;->lastInsertedIndex()I

    move-result p2

    shl-long/2addr p0, p2

    return-wide p0
.end method

.method private static acceptStringNonIgnorable(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;ZIJJ)J
    .locals 15

    move-wide/from16 v0, p8

    long-to-int v6, v0

    move-wide/from16 v0, p10

    long-to-int v13, v0

    move v8, p0

    move-object/from16 v10, p3

    move/from16 v0, p7

    .line 1804
    invoke-static {v0, p0, v10}, Landroid/icu/impl/number/Parse;->codePointEquals(IILandroid/icu/impl/number/Parse$ParserState;)Z

    move-result v0

    const-wide/16 v11, 0x0

    if-eqz v0, :cond_2

    .line 1805
    invoke-interface/range {p5 .. p5}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge v6, v0, :cond_0

    move v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v7, p6

    .line 1806
    invoke-static/range {v0 .. v7}, Landroid/icu/impl/number/Parse;->acceptStringHelper(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;IZ)J

    move-result-wide v0

    or-long/2addr v11, v0

    :cond_0
    move-wide v0, v11

    .line 1808
    invoke-interface/range {p5 .. p5}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v13, v2, :cond_1

    move v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v14, p6

    .line 1809
    invoke-static/range {v7 .. v14}, Landroid/icu/impl/number/Parse;->acceptStringHelper(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;IZ)J

    move-result-wide v2

    or-long/2addr v0, v2

    :cond_1
    return-wide v0

    :cond_2
    return-wide v11
.end method

.method private static acceptStringOffset(ILandroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)J
    .locals 8

    .line 1744
    iget-object v1, p2, Landroid/icu/impl/number/Parse$StateItem;->returnTo1:Landroid/icu/impl/number/Parse$StateName;

    iget-object v2, p2, Landroid/icu/impl/number/Parse$StateItem;->returnTo2:Landroid/icu/impl/number/Parse$StateName;

    iget-object v5, p2, Landroid/icu/impl/number/Parse$StateItem;->currentString:Ljava/lang/CharSequence;

    iget v6, p2, Landroid/icu/impl/number/Parse$StateItem;->currentOffset:I

    iget-boolean v7, p2, Landroid/icu/impl/number/Parse$StateItem;->currentTrailing:Z

    move v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v7}, Landroid/icu/impl/number/Parse;->acceptString(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;IZ)J

    move-result-wide p0

    return-wide p0
.end method

.method private static acceptStringOrAffixPatternWithIgnorables(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;JZZ)J
    .locals 17

    move/from16 v8, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    if-eqz p9, :cond_0

    move-wide/from16 v0, p6

    long-to-int v2, v0

    .line 2102
    invoke-static {v10, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    goto :goto_0

    :cond_0
    move-wide/from16 v0, p6

    .line 2103
    invoke-static/range {p6 .. p7}, Landroid/icu/impl/number/AffixUtils;->getTypeOrCp(J)I

    move-result v2

    .line 2105
    :goto_0
    invoke-static {v2, v9}, Landroid/icu/impl/number/Parse;->isIgnorable(ILandroid/icu/impl/number/Parse$ParserState;)Z

    move-result v3

    const-wide/16 v11, 0x0

    if-eqz v3, :cond_d

    move-wide v5, v0

    move v0, v2

    move-wide v3, v11

    :goto_1
    if-eqz p9, :cond_1

    .line 2115
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, v5

    goto :goto_2

    .line 2116
    :cond_1
    invoke-static {v5, v6, v10}, Landroid/icu/impl/number/AffixUtils;->nextToken(JLjava/lang/CharSequence;)J

    move-result-wide v0

    :goto_2
    move-wide v13, v0

    cmp-long v0, v3, v11

    if-nez v0, :cond_2

    move-wide v3, v13

    :cond_2
    if-eqz p9, :cond_3

    .line 2118
    invoke-interface/range {p5 .. p5}, Ljava/lang/CharSequence;->length()I

    move-result v1

    int-to-long v0, v1

    cmp-long v0, v13, v0

    if-ltz v0, :cond_4

    goto :goto_3

    :cond_3
    cmp-long v0, v13, v11

    if-gez v0, :cond_4

    :goto_3
    const/high16 v0, -0x80000000

    :goto_4
    const/high16 v1, -0x80000000

    goto :goto_6

    :cond_4
    if-eqz p9, :cond_5

    long-to-int v0, v13

    .line 2126
    invoke-static {v10, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_5

    .line 2127
    :cond_5
    invoke-static {v13, v14}, Landroid/icu/impl/number/AffixUtils;->getTypeOrCp(J)I

    move-result v0

    .line 2128
    :goto_5
    invoke-static {v0, v9}, Landroid/icu/impl/number/Parse;->isIgnorable(ILandroid/icu/impl/number/Parse$ParserState;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_4

    :goto_6
    if-ne v0, v1, :cond_9

    .line 2133
    invoke-static {v8, v2, v9}, Landroid/icu/impl/number/Parse;->codePointEquals(IILandroid/icu/impl/number/Parse$ParserState;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p9, :cond_6

    long-to-int v6, v3

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide v15, v3

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v7, p8

    .line 2139
    invoke-static/range {v0 .. v7}, Landroid/icu/impl/number/Parse;->acceptStringHelper(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;IZ)J

    move-result-wide v0

    goto :goto_7

    :cond_6
    move-wide v15, v3

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-wide v5, v15

    .line 2141
    invoke-static/range {v0 .. v6}, Landroid/icu/impl/number/Parse;->acceptAffixPatternHelper(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;J)J

    move-result-wide v0

    :goto_7
    or-long/2addr v11, v0

    cmp-long v0, v15, v13

    if-eqz v0, :cond_8

    if-eqz p9, :cond_7

    long-to-int v6, v13

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v7, p8

    .line 2145
    invoke-static/range {v0 .. v7}, Landroid/icu/impl/number/Parse;->acceptStringHelper(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;IZ)J

    move-result-wide v0

    goto :goto_8

    :cond_7
    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-wide v5, v13

    .line 2147
    invoke-static/range {v0 .. v6}, Landroid/icu/impl/number/Parse;->acceptAffixPatternHelper(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;J)J

    move-result-wide v0

    :goto_8
    or-long/2addr v11, v0

    :cond_8
    return-wide v11

    .line 2157
    :cond_9
    invoke-static {v8, v9}, Landroid/icu/impl/number/Parse;->isIgnorable(ILandroid/icu/impl/number/Parse$ParserState;)Z

    move-result v1

    if-eqz v1, :cond_b

    if-eqz p9, :cond_a

    long-to-int v6, v5

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v7, p8

    .line 2161
    invoke-static/range {v0 .. v7}, Landroid/icu/impl/number/Parse;->acceptStringHelper(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;IZ)J

    move-result-wide v0

    goto :goto_9

    :cond_a
    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 2163
    invoke-static/range {v0 .. v6}, Landroid/icu/impl/number/Parse;->acceptAffixPatternHelper(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;J)J

    move-result-wide v0

    :goto_9
    return-wide v0

    :cond_b
    move v7, v0

    goto :goto_a

    :cond_c
    move-wide v15, v3

    move-wide v5, v13

    goto/16 :goto_1

    :cond_d
    move-wide v13, v0

    move v7, v2

    :goto_a
    move v0, v7

    move-wide v1, v11

    :goto_b
    if-eqz p9, :cond_e

    .line 2185
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    int-to-long v3, v0

    add-long/2addr v13, v3

    goto :goto_c

    .line 2186
    :cond_e
    invoke-static {v13, v14, v10}, Landroid/icu/impl/number/AffixUtils;->nextToken(JLjava/lang/CharSequence;)J

    move-result-wide v3

    move-wide v13, v3

    :goto_c
    cmp-long v0, v1, v11

    if-nez v0, :cond_f

    move-wide v15, v13

    goto :goto_d

    :cond_f
    move-wide v15, v1

    :goto_d
    if-eqz p9, :cond_10

    .line 2188
    invoke-interface/range {p5 .. p5}, Ljava/lang/CharSequence;->length()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, v13, v0

    if-ltz v0, :cond_11

    goto :goto_f

    :cond_10
    cmp-long v0, v13, v11

    if-gez v0, :cond_11

    goto :goto_f

    :cond_11
    if-eqz p9, :cond_12

    long-to-int v0, v13

    .line 2194
    invoke-static {v10, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_e

    .line 2195
    :cond_12
    invoke-static {v13, v14}, Landroid/icu/impl/number/AffixUtils;->getTypeOrCp(J)I

    move-result v0

    .line 2196
    :goto_e
    invoke-static {v0, v9}, Landroid/icu/impl/number/Parse;->isIgnorable(ILandroid/icu/impl/number/Parse$ParserState;)Z

    move-result v1

    if-nez v1, :cond_14

    :goto_f
    if-eqz p9, :cond_13

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p8

    move-wide v8, v15

    move-wide v10, v13

    .line 2201
    invoke-static/range {v0 .. v11}, Landroid/icu/impl/number/Parse;->acceptStringNonIgnorable(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;ZIJJ)J

    move-result-wide v0

    goto :goto_10

    :cond_13
    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move v5, v7

    move-wide v6, v15

    move-wide v8, v13

    .line 2203
    invoke-static/range {v0 .. v9}, Landroid/icu/impl/number/Parse;->acceptAffixPatternNonIgnorable(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Ljava/lang/CharSequence;IJJ)J

    move-result-wide v0

    :goto_10
    return-wide v0

    :cond_14
    move-wide v1, v15

    goto :goto_b
.end method

.method private static acceptSuffix(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V
    .locals 8

    .line 1699
    iget-object v0, p3, Landroid/icu/impl/number/Parse$StateItem;->affix:Landroid/icu/impl/number/Parse$AffixHolder;

    if-eqz v0, :cond_0

    .line 1700
    iget-object v5, p3, Landroid/icu/impl/number/Parse$StateItem;->affix:Landroid/icu/impl/number/Parse$AffixHolder;

    const/4 v6, 0x0

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v6}, Landroid/icu/impl/number/Parse;->acceptAffixHolder(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Landroid/icu/impl/number/Parse$AffixHolder;Z)V

    goto :goto_1

    .line 1702
    :cond_0
    iget-object v0, p2, Landroid/icu/impl/number/Parse$ParserState;->affixHolders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/icu/impl/number/Parse$AffixHolder;

    const/4 v7, 0x0

    move v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 1703
    invoke-static/range {v2 .. v7}, Landroid/icu/impl/number/Parse;->acceptAffixHolder(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;Landroid/icu/impl/number/Parse$AffixHolder;Z)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private static acceptWhitespace(ILandroid/icu/impl/number/Parse$StateName;Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/Parse$StateItem;)V
    .locals 1

    .line 1398
    sget-object v0, Landroid/icu/impl/number/Parse;->UNISET_WHITESPACE:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1399
    invoke-virtual {p2}, Landroid/icu/impl/number/Parse$ParserState;->getNext()Landroid/icu/impl/number/Parse$StateItem;

    move-result-object p2

    invoke-virtual {p2, p3, p1, p0}, Landroid/icu/impl/number/Parse$StateItem;->copyFrom(Landroid/icu/impl/number/Parse$StateItem;Landroid/icu/impl/number/Parse$StateName;I)Landroid/icu/impl/number/Parse$StateItem;

    :cond_0
    return-void
.end method

.method static synthetic access$000()Landroid/icu/text/UnicodeSet;
    .locals 1

    .line 38
    sget-object v0, Landroid/icu/impl/number/Parse;->UNISET_STRICT_COMMA_LIKE:Landroid/icu/text/UnicodeSet;

    return-object v0
.end method

.method static synthetic access$100()Landroid/icu/text/UnicodeSet;
    .locals 1

    .line 38
    sget-object v0, Landroid/icu/impl/number/Parse;->UNISET_STRICT_PERIOD_LIKE:Landroid/icu/text/UnicodeSet;

    return-object v0
.end method

.method static synthetic access$200()Landroid/icu/text/UnicodeSet;
    .locals 1

    .line 38
    sget-object v0, Landroid/icu/impl/number/Parse;->UNISET_OTHER_GROUPING_SEPARATORS:Landroid/icu/text/UnicodeSet;

    return-object v0
.end method

.method static synthetic access$300()Landroid/icu/text/UnicodeSet;
    .locals 1

    .line 38
    sget-object v0, Landroid/icu/impl/number/Parse;->UNISET_COMMA_LIKE:Landroid/icu/text/UnicodeSet;

    return-object v0
.end method

.method static synthetic access$400()Landroid/icu/text/UnicodeSet;
    .locals 1

    .line 38
    sget-object v0, Landroid/icu/impl/number/Parse;->UNISET_PERIOD_LIKE:Landroid/icu/text/UnicodeSet;

    return-object v0
.end method

.method static synthetic access$500()Ljava/math/BigDecimal;
    .locals 1

    .line 38
    sget-object v0, Landroid/icu/impl/number/Parse;->MIN_LONG_AS_BIG_DECIMAL:Ljava/math/BigDecimal;

    return-object v0
.end method

.method static synthetic access$600()Ljava/math/BigDecimal;
    .locals 1

    .line 38
    sget-object v0, Landroid/icu/impl/number/Parse;->MAX_LONG_AS_BIG_DECIMAL:Ljava/math/BigDecimal;

    return-object v0
.end method

.method private static codePointEquals(IILandroid/icu/impl/number/Parse$ParserState;)Z
    .locals 1

    .line 2365
    iget-boolean p2, p2, Landroid/icu/impl/number/Parse$ParserState;->caseSensitive:Z

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 2366
    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->foldCase(IZ)I

    move-result p0

    .line 2367
    invoke-static {p1, v0}, Landroid/icu/lang/UCharacter;->foldCase(IZ)I

    move-result p1

    :cond_0
    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isIgnorable(ILandroid/icu/impl/number/Parse$ParserState;)Z
    .locals 3

    const/4 v0, 0x0

    if-gez p0, :cond_0

    return v0

    .line 2384
    :cond_0
    sget-object v1, Landroid/icu/impl/number/Parse;->UNISET_BIDI:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1, p0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 2385
    :cond_1
    iget-object p1, p1, Landroid/icu/impl/number/Parse$ParserState;->mode:Landroid/icu/impl/number/Parse$ParseMode;

    sget-object v1, Landroid/icu/impl/number/Parse$ParseMode;->LENIENT:Landroid/icu/impl/number/Parse$ParseMode;

    if-ne p1, v1, :cond_2

    sget-object p1, Landroid/icu/impl/number/Parse;->UNISET_WHITESPACE:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result p0

    if-eqz p0, :cond_2

    move v0, v2

    :cond_2
    return v0
.end method

.method static makeDigitTrie([Ljava/lang/String;)Landroid/icu/impl/TextTrieMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Landroid/icu/impl/TextTrieMap<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    .line 863
    aget-object v3, p0, v1

    .line 864
    invoke-static {v3, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v4, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    if-nez v1, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 873
    :cond_2
    new-instance v1, Landroid/icu/impl/TextTrieMap;

    invoke-direct {v1, v0}, Landroid/icu/impl/TextTrieMap;-><init>(Z)V

    :goto_2
    if-ge v0, v2, :cond_3

    .line 875
    aget-object v3, p0, v0

    int-to-byte v4, v0

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/icu/impl/TextTrieMap;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-object v1
.end method

.method public static parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Landroid/icu/impl/number/DecimalFormatProperties;Landroid/icu/text/DecimalFormatSymbols;)Ljava/lang/Number;
    .locals 1

    const/4 v0, 0x0

    .line 948
    invoke-static {p0, p1, v0, p2, p3}, Landroid/icu/impl/number/Parse;->_parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;ZLandroid/icu/impl/number/DecimalFormatProperties;Landroid/icu/text/DecimalFormatSymbols;)Landroid/icu/impl/number/Parse$StateItem;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 949
    :cond_0
    invoke-virtual {p0, p2}, Landroid/icu/impl/number/Parse$StateItem;->toNumber(Landroid/icu/impl/number/DecimalFormatProperties;)Ljava/lang/Number;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static parse(Ljava/lang/String;Landroid/icu/impl/number/DecimalFormatProperties;Landroid/icu/text/DecimalFormatSymbols;)Ljava/lang/Number;
    .locals 2

    .line 919
    sget-object v0, Landroid/icu/impl/number/Parse;->threadLocalParsePosition:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    .line 920
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 921
    invoke-static {p0, v0, p1, p2}, Landroid/icu/impl/number/Parse;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Landroid/icu/impl/number/DecimalFormatProperties;Landroid/icu/text/DecimalFormatSymbols;)Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public static parseCurrency(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Landroid/icu/impl/number/DecimalFormatProperties;Landroid/icu/text/DecimalFormatSymbols;)Landroid/icu/util/CurrencyAmount;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 961
    sget-object p1, Landroid/icu/impl/number/Parse;->threadLocalParsePosition:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/text/ParsePosition;

    const/4 v0, 0x0

    .line 962
    invoke-virtual {p1, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    const/4 v0, -0x1

    .line 963
    invoke-virtual {p1, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    :cond_0
    const/4 v0, 0x1

    .line 965
    invoke-static {p0, p1, v0, p2, p3}, Landroid/icu/impl/number/Parse;->_parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;ZLandroid/icu/impl/number/DecimalFormatProperties;Landroid/icu/text/DecimalFormatSymbols;)Landroid/icu/impl/number/Parse$StateItem;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    .line 966
    :cond_1
    invoke-virtual {p0, p2}, Landroid/icu/impl/number/Parse$StateItem;->toCurrencyAmount(Landroid/icu/impl/number/DecimalFormatProperties;)Landroid/icu/util/CurrencyAmount;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static parseCurrency(Ljava/lang/String;Landroid/icu/impl/number/DecimalFormatProperties;Landroid/icu/text/DecimalFormatSymbols;)Landroid/icu/util/CurrencyAmount;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 954
    invoke-static {p0, v0, p1, p2}, Landroid/icu/impl/number/Parse;->parseCurrency(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Landroid/icu/impl/number/DecimalFormatProperties;Landroid/icu/text/DecimalFormatSymbols;)Landroid/icu/util/CurrencyAmount;

    move-result-object p0

    return-object p0
.end method

.method private static recordDigit(Landroid/icu/impl/number/Parse$StateItem;BLandroid/icu/impl/number/Parse$DigitType;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1509
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/number/Parse$StateItem;->appendDigit(BLandroid/icu/impl/number/Parse$DigitType;)V

    .line 1510
    sget-object p1, Landroid/icu/impl/number/Parse$DigitType;->INTEGER:Landroid/icu/impl/number/Parse$DigitType;

    if-ne p2, p1, :cond_1

    iget-wide p1, p0, Landroid/icu/impl/number/Parse$StateItem;->groupingWidths:J

    const-wide/16 v0, 0xf

    and-long/2addr p1, v0

    cmp-long p1, p1, v0

    if-gez p1, :cond_1

    .line 1511
    iget-wide p1, p0, Landroid/icu/impl/number/Parse$StateItem;->groupingWidths:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Landroid/icu/impl/number/Parse$StateItem;->groupingWidths:J

    :cond_1
    return-void
.end method
