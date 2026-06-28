.class Landroid/icu/text/TransliteratorParser;
.super Ljava/lang/Object;
.source "TransliteratorParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/TransliteratorParser$RuleHalf;,
        Landroid/icu/text/TransliteratorParser$RuleArray;,
        Landroid/icu/text/TransliteratorParser$RuleBody;,
        Landroid/icu/text/TransliteratorParser$ParseData;
    }
.end annotation


# static fields
.field private static final ALT_FORWARD_RULE_OP:C = '\u2192'

.field private static final ALT_FUNCTION:C = '\u2206'

.field private static final ALT_FWDREV_RULE_OP:C = '\u2194'

.field private static final ALT_REVERSE_RULE_OP:C = '\u2190'

.field private static final ANCHOR_START:C = '^'

.field private static final CONTEXT_ANTE:C = '{'

.field private static final CONTEXT_POST:C = '}'

.field private static final CURSOR_OFFSET:C = '@'

.field private static final CURSOR_POS:C = '|'

.field private static final DOT:C = '.'

.field private static final DOT_SET:Ljava/lang/String; = "[^[:Zp:][:Zl:]\\r\\n$]"

.field private static final END_OF_RULE:C = ';'

.field private static final ESCAPE:C = '\\'

.field private static final FORWARD_RULE_OP:C = '>'

.field private static final FUNCTION:C = '&'

.field private static final FWDREV_RULE_OP:C = '~'

.field private static final HALF_ENDERS:Ljava/lang/String; = "=><\u2190\u2192\u2194;"

.field private static final ID_TOKEN:Ljava/lang/String; = "::"

.field private static final ID_TOKEN_LEN:I = 0x2

.field private static ILLEGAL_FUNC:Landroid/icu/text/UnicodeSet; = null

.field private static ILLEGAL_SEG:Landroid/icu/text/UnicodeSet; = null

.field private static ILLEGAL_TOP:Landroid/icu/text/UnicodeSet; = null

.field private static final KLEENE_STAR:C = '*'

.field private static final ONE_OR_MORE:C = '+'

.field private static final OPERATORS:Ljava/lang/String; = "=><\u2190\u2192\u2194"

.field private static final QUOTE:C = '\''

.field private static final REVERSE_RULE_OP:C = '<'

.field private static final RULE_COMMENT_CHAR:C = '#'

.field private static final SEGMENT_CLOSE:C = ')'

.field private static final SEGMENT_OPEN:C = '('

.field private static final VARIABLE_DEF_OP:C = '='

.field private static final ZERO_OR_ONE:C = '?'


# instance fields
.field public compoundFilter:Landroid/icu/text/UnicodeSet;

.field private curData:Landroid/icu/text/RuleBasedTransliterator$Data;

.field public dataVector:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/text/RuleBasedTransliterator$Data;",
            ">;"
        }
    .end annotation
.end field

.field private direction:I

.field private dotStandIn:I

.field public idBlockVector:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private parseData:Landroid/icu/text/TransliteratorParser$ParseData;

.field private segmentObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/text/StringMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private segmentStandins:Ljava/lang/StringBuffer;

.field private undefinedVariableName:Ljava/lang/String;

.field private variableLimit:C

.field private variableNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[C>;"
        }
    .end annotation
.end field

.field private variableNext:C

.field private variablesVector:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 185
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string v1, "[\\)]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/TransliteratorParser;->ILLEGAL_TOP:Landroid/icu/text/UnicodeSet;

    .line 188
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string v1, "[\\{\\}\\|\\@]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/TransliteratorParser;->ILLEGAL_SEG:Landroid/icu/text/UnicodeSet;

    .line 191
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string v1, "[\\^\\(\\.\\*\\+\\?\\{\\}\\|\\@]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/TransliteratorParser;->ILLEGAL_FUNC:Landroid/icu/text/UnicodeSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 866
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 119
    iput v0, p0, Landroid/icu/text/TransliteratorParser;->dotStandIn:I

    return-void
.end method

.method static synthetic access$000(Landroid/icu/text/TransliteratorParser;)Ljava/util/Map;
    .locals 0

    .line 24
    iget-object p0, p0, Landroid/icu/text/TransliteratorParser;->variableNames:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Landroid/icu/text/TransliteratorParser;)Landroid/icu/text/RuleBasedTransliterator$Data;
    .locals 0

    .line 24
    iget-object p0, p0, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    return-object p0
.end method

.method static synthetic access$1000(Landroid/icu/text/TransliteratorParser;Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/icu/text/TransliteratorParser;->appendVariableDef(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    return-void
.end method

.method static synthetic access$200(Landroid/icu/text/TransliteratorParser;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Landroid/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400()Landroid/icu/text/UnicodeSet;
    .locals 1

    .line 24
    sget-object v0, Landroid/icu/text/TransliteratorParser;->ILLEGAL_TOP:Landroid/icu/text/UnicodeSet;

    return-object v0
.end method

.method static synthetic access$500(Landroid/icu/text/TransliteratorParser;Ljava/lang/String;Ljava/text/ParsePosition;)C
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/icu/text/TransliteratorParser;->parseSet(Ljava/lang/String;Ljava/text/ParsePosition;)C

    move-result p0

    return p0
.end method

.method static synthetic access$600(Landroid/icu/text/TransliteratorParser;ILjava/lang/String;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/TransliteratorParser;->checkVariableRange(ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$700()Landroid/icu/text/UnicodeSet;
    .locals 1

    .line 24
    sget-object v0, Landroid/icu/text/TransliteratorParser;->ILLEGAL_SEG:Landroid/icu/text/UnicodeSet;

    return-object v0
.end method

.method static synthetic access$800()Landroid/icu/text/UnicodeSet;
    .locals 1

    .line 24
    sget-object v0, Landroid/icu/text/TransliteratorParser;->ILLEGAL_FUNC:Landroid/icu/text/UnicodeSet;

    return-object v0
.end method

.method static synthetic access$900(Landroid/icu/text/TransliteratorParser;)Landroid/icu/text/TransliteratorParser$ParseData;
    .locals 0

    .line 24
    iget-object p0, p0, Landroid/icu/text/TransliteratorParser;->parseData:Landroid/icu/text/TransliteratorParser$ParseData;

    return-object p0
.end method

.method private appendVariableDef(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 1

    .line 1543
    iget-object v0, p0, Landroid/icu/text/TransliteratorParser;->variableNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    if-nez v0, :cond_2

    .line 1549
    iget-object v0, p0, Landroid/icu/text/TransliteratorParser;->undefinedVariableName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1550
    iput-object p1, p0, Landroid/icu/text/TransliteratorParser;->undefinedVariableName:Ljava/lang/String;

    .line 1551
    iget-char p1, p0, Landroid/icu/text/TransliteratorParser;->variableNext:C

    iget-char v0, p0, Landroid/icu/text/TransliteratorParser;->variableLimit:C

    if-ge p1, v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    int-to-char p1, v0

    .line 1554
    iput-char p1, p0, Landroid/icu/text/TransliteratorParser;->variableLimit:C

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1552
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Private use variables exhausted"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1556
    :cond_1
    new-instance p0, Landroid/icu/impl/IllegalIcuArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Undefined variable $"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1560
    :cond_2
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :goto_0
    return-void
.end method

.method private checkVariableRange(ILjava/lang/String;I)V
    .locals 1

    .line 1333
    iget-object v0, p0, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    iget-char v0, v0, Landroid/icu/text/RuleBasedTransliterator$Data;->variablesBase:C

    if-lt p1, v0, :cond_0

    iget-char p0, p0, Landroid/icu/text/TransliteratorParser;->variableLimit:C

    if-ge p1, p0, :cond_0

    const-string p0, "Variable range character in rule"

    .line 1334
    invoke-static {p0, p2, p3}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private parsePragma(Ljava/lang/String;II)I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    add-int/lit8 p2, p2, 0x4

    const-string/jumbo v1, "~variable range # #~;"

    .line 1398
    invoke-static {p1, p2, p3, v1, v0}, Landroid/icu/impl/Utility;->parsePattern(Ljava/lang/String;IILjava/lang/String;[I)I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_0

    .line 1400
    aget p1, v0, v2

    const/4 p2, 0x1

    aget p2, v0, p2

    invoke-direct {p0, p1, p2}, Landroid/icu/text/TransliteratorParser;->setVariableRange(II)V

    return v1

    :cond_0
    const-string/jumbo v1, "~maximum backup #~;"

    .line 1404
    invoke-static {p1, p2, p3, v1, v0}, Landroid/icu/impl/Utility;->parsePattern(Ljava/lang/String;IILjava/lang/String;[I)I

    move-result v1

    if-ltz v1, :cond_1

    .line 1406
    aget p1, v0, v2

    invoke-direct {p0, p1}, Landroid/icu/text/TransliteratorParser;->pragmaMaximumBackup(I)V

    return v1

    :cond_1
    const/4 v0, 0x0

    const-string/jumbo v1, "~nfd rules~;"

    .line 1410
    invoke-static {p1, p2, p3, v1, v0}, Landroid/icu/impl/Utility;->parsePattern(Ljava/lang/String;IILjava/lang/String;[I)I

    move-result v1

    if-ltz v1, :cond_2

    .line 1412
    sget-object p1, Landroid/icu/text/Normalizer;->NFD:Landroid/icu/text/Normalizer$Mode;

    invoke-direct {p0, p1}, Landroid/icu/text/TransliteratorParser;->pragmaNormalizeRules(Landroid/icu/text/Normalizer$Mode;)V

    return v1

    :cond_2
    const-string/jumbo v1, "~nfc rules~;"

    .line 1416
    invoke-static {p1, p2, p3, v1, v0}, Landroid/icu/impl/Utility;->parsePattern(Ljava/lang/String;IILjava/lang/String;[I)I

    move-result p1

    if-ltz p1, :cond_3

    .line 1418
    sget-object p2, Landroid/icu/text/Normalizer;->NFC:Landroid/icu/text/Normalizer$Mode;

    invoke-direct {p0, p2}, Landroid/icu/text/TransliteratorParser;->pragmaNormalizeRules(Landroid/icu/text/Normalizer$Mode;)V

    return p1

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method private parseRule(Ljava/lang/String;II)I
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 1146
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v4, v0, Landroid/icu/text/TransliteratorParser;->segmentStandins:Ljava/lang/StringBuffer;

    .line 1147
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Landroid/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    .line 1149
    new-instance v4, Landroid/icu/text/TransliteratorParser$RuleHalf;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/icu/text/TransliteratorParser$RuleHalf;-><init>(Landroid/icu/text/TransliteratorParser$1;)V

    .line 1150
    new-instance v6, Landroid/icu/text/TransliteratorParser$RuleHalf;

    invoke-direct {v6, v5}, Landroid/icu/text/TransliteratorParser$RuleHalf;-><init>(Landroid/icu/text/TransliteratorParser$1;)V

    .line 1152
    iput-object v5, v0, Landroid/icu/text/TransliteratorParser;->undefinedVariableName:Ljava/lang/String;

    .line 1153
    invoke-virtual {v4, v1, v2, v3, v0}, Landroid/icu/text/TransliteratorParser$RuleHalf;->parse(Ljava/lang/String;IILandroid/icu/text/TransliteratorParser;)I

    move-result v7

    const/4 v8, 0x0

    if-eq v7, v3, :cond_0

    add-int/lit8 v7, v7, -0x1

    .line 1156
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const-string v10, "=><\u2190\u2192\u2194"

    invoke-virtual {v10, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-gez v10, :cond_1

    goto :goto_0

    :cond_0
    move v9, v8

    .line 1157
    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No operator pos="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v1, v2}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    const/4 v10, 0x1

    add-int/2addr v7, v10

    const/16 v11, 0x3c

    const/16 v12, 0x3e

    const/16 v13, 0x7e

    if-ne v9, v11, :cond_2

    if-ge v7, v3, :cond_2

    .line 1163
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-ne v14, v12, :cond_2

    add-int/lit8 v7, v7, 0x1

    move v9, v13

    :cond_2
    const/16 v14, 0x2190

    if-eq v9, v14, :cond_5

    const/16 v11, 0x2192

    if-eq v9, v11, :cond_4

    const/16 v11, 0x2194

    if-eq v9, v11, :cond_3

    goto :goto_1

    :cond_3
    move v9, v13

    goto :goto_1

    :cond_4
    move v9, v12

    goto :goto_1

    :cond_5
    move v9, v11

    .line 1181
    :goto_1
    invoke-virtual {v6, v1, v7, v3, v0}, Landroid/icu/text/TransliteratorParser$RuleHalf;->parse(Ljava/lang/String;IILandroid/icu/text/TransliteratorParser;)I

    move-result v7

    if-ge v7, v3, :cond_7

    add-int/lit8 v7, v7, -0x1

    .line 1184
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v11, 0x3b

    if-ne v3, v11, :cond_6

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    const-string v3, "Unquoted operator"

    .line 1188
    invoke-static {v3, v1, v2}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_7
    :goto_2
    const/16 v3, 0x3d

    if-ne v9, v3, :cond_d

    .line 1200
    iget-object v3, v0, Landroid/icu/text/TransliteratorParser;->undefinedVariableName:Ljava/lang/String;

    if-nez v3, :cond_8

    const-string v3, "Missing \'$\' or duplicate definition"

    .line 1201
    invoke-static {v3, v1, v2}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1203
    :cond_8
    iget-object v3, v4, Landroid/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v10, :cond_9

    iget-object v3, v4, Landroid/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-char v5, v0, Landroid/icu/text/TransliteratorParser;->variableLimit:C

    if-eq v3, v5, :cond_a

    :cond_9
    const-string v3, "Malformed LHS"

    .line 1204
    invoke-static {v3, v1, v2}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1206
    :cond_a
    iget-boolean v3, v4, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorStart:Z

    if-nez v3, :cond_b

    iget-boolean v3, v4, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorEnd:Z

    if-nez v3, :cond_b

    iget-boolean v3, v6, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorStart:Z

    if-nez v3, :cond_b

    iget-boolean v3, v6, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorEnd:Z

    if-eqz v3, :cond_c

    :cond_b
    const-string v3, "Malformed variable def"

    .line 1208
    invoke-static {v3, v1, v2}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1211
    :cond_c
    iget-object v1, v6, Landroid/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1212
    new-array v2, v1, [C

    .line 1213
    iget-object v3, v6, Landroid/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    invoke-virtual {v3, v8, v1, v2, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 1214
    iget-object v1, v0, Landroid/icu/text/TransliteratorParser;->variableNames:Ljava/util/Map;

    iget-object v3, v0, Landroid/icu/text/TransliteratorParser;->undefinedVariableName:Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    iget-char v1, v0, Landroid/icu/text/TransliteratorParser;->variableLimit:C

    add-int/2addr v1, v10

    int-to-char v1, v1

    iput-char v1, v0, Landroid/icu/text/TransliteratorParser;->variableLimit:C

    return v7

    .line 1222
    :cond_d
    iget-object v3, v0, Landroid/icu/text/TransliteratorParser;->undefinedVariableName:Ljava/lang/String;

    if-eqz v3, :cond_e

    .line 1223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Undefined variable $"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Landroid/icu/text/TransliteratorParser;->undefinedVariableName:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1, v2}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1228
    :cond_e
    iget-object v3, v0, Landroid/icu/text/TransliteratorParser;->segmentStandins:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    iget-object v11, v0, Landroid/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v3, v11, :cond_f

    const-string v3, "Undefined segment reference"

    .line 1229
    invoke-static {v3, v1, v2}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_f
    move v3, v8

    .line 1231
    :goto_3
    iget-object v11, v0, Landroid/icu/text/TransliteratorParser;->segmentStandins:Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    const-string v14, "Internal error"

    if-ge v3, v11, :cond_11

    .line 1232
    iget-object v11, v0, Landroid/icu/text/TransliteratorParser;->segmentStandins:Ljava/lang/StringBuffer;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v11

    if-nez v11, :cond_10

    .line 1233
    invoke-static {v14, v1, v2}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_11
    move v3, v8

    .line 1236
    :goto_4
    iget-object v11, v0, Landroid/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_13

    .line 1237
    iget-object v11, v0, Landroid/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_12

    .line 1238
    invoke-static {v14, v1, v2}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_13
    if-eq v9, v13, :cond_16

    .line 1244
    iget v3, v0, Landroid/icu/text/TransliteratorParser;->direction:I

    if-nez v3, :cond_14

    move v3, v10

    goto :goto_5

    :cond_14
    move v3, v8

    :goto_5
    if-ne v9, v12, :cond_15

    move v11, v10

    goto :goto_6

    :cond_15
    move v11, v8

    :goto_6
    if-eq v3, v11, :cond_16

    return v7

    .line 1251
    :cond_16
    iget v3, v0, Landroid/icu/text/TransliteratorParser;->direction:I

    if-ne v3, v10, :cond_17

    goto :goto_7

    :cond_17
    move-object/from16 v19, v6

    move-object v6, v4

    move-object/from16 v4, v19

    :goto_7
    if-ne v9, v13, :cond_18

    .line 1261
    invoke-virtual {v4}, Landroid/icu/text/TransliteratorParser$RuleHalf;->removeContext()V

    const/4 v3, -0x1

    .line 1262
    iput v3, v6, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursor:I

    .line 1263
    iput v8, v6, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    .line 1267
    :cond_18
    iget v3, v6, Landroid/icu/text/TransliteratorParser$RuleHalf;->ante:I

    if-gez v3, :cond_19

    .line 1268
    iput v8, v6, Landroid/icu/text/TransliteratorParser$RuleHalf;->ante:I

    .line 1270
    :cond_19
    iget v3, v6, Landroid/icu/text/TransliteratorParser$RuleHalf;->post:I

    if-gez v3, :cond_1a

    .line 1271
    iget-object v3, v6, Landroid/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, v6, Landroid/icu/text/TransliteratorParser$RuleHalf;->post:I

    .line 1280
    :cond_1a
    iget v3, v4, Landroid/icu/text/TransliteratorParser$RuleHalf;->ante:I

    if-gez v3, :cond_1c

    iget v3, v4, Landroid/icu/text/TransliteratorParser$RuleHalf;->post:I

    if-gez v3, :cond_1c

    iget v3, v6, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursor:I

    if-gez v3, :cond_1c

    iget v3, v4, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    if-eqz v3, :cond_1b

    iget v3, v4, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursor:I

    if-ltz v3, :cond_1c

    :cond_1b
    iget-boolean v3, v4, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorStart:Z

    if-nez v3, :cond_1c

    iget-boolean v3, v4, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorEnd:Z

    if-nez v3, :cond_1c

    .line 1289
    invoke-virtual {v6, v0}, Landroid/icu/text/TransliteratorParser$RuleHalf;->isValidInput(Landroid/icu/text/TransliteratorParser;)Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-virtual {v4, v0}, Landroid/icu/text/TransliteratorParser$RuleHalf;->isValidOutput(Landroid/icu/text/TransliteratorParser;)Z

    move-result v3

    if-eqz v3, :cond_1c

    iget v3, v6, Landroid/icu/text/TransliteratorParser$RuleHalf;->ante:I

    iget v8, v6, Landroid/icu/text/TransliteratorParser$RuleHalf;->post:I

    if-le v3, v8, :cond_1d

    :cond_1c
    const-string v3, "Malformed rule"

    .line 1291
    invoke-static {v3, v1, v2}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1296
    :cond_1d
    iget-object v1, v0, Landroid/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1e

    .line 1297
    iget-object v1, v0, Landroid/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v5, v1, [Landroid/icu/text/UnicodeMatcher;

    .line 1298
    iget-object v1, v0, Landroid/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_1e
    move-object v15, v5

    .line 1301
    iget-object v1, v0, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    iget-object v1, v1, Landroid/icu/text/RuleBasedTransliterator$Data;->ruleSet:Landroid/icu/text/TransliterationRuleSet;

    new-instance v2, Landroid/icu/text/TransliterationRule;

    iget-object v9, v6, Landroid/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    iget v10, v6, Landroid/icu/text/TransliteratorParser$RuleHalf;->ante:I

    iget v11, v6, Landroid/icu/text/TransliteratorParser$RuleHalf;->post:I

    iget-object v12, v4, Landroid/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    iget v13, v4, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursor:I

    iget v14, v4, Landroid/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    iget-boolean v3, v6, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorStart:Z

    iget-boolean v4, v6, Landroid/icu/text/TransliteratorParser$RuleHalf;->anchorEnd:Z

    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    move-object v8, v2

    move/from16 v16, v3

    move/from16 v17, v4

    move-object/from16 v18, v0

    invoke-direct/range {v8 .. v18}, Landroid/icu/text/TransliterationRule;-><init>(Ljava/lang/String;IILjava/lang/String;II[Landroid/icu/text/UnicodeMatcher;ZZLandroid/icu/text/RuleBasedTransliterator$Data;)V

    invoke-virtual {v1, v2}, Landroid/icu/text/TransliterationRuleSet;->addRule(Landroid/icu/text/TransliterationRule;)V

    return v7
.end method

.method private final parseSet(Ljava/lang/String;Ljava/text/ParsePosition;)C
    .locals 2

    .line 1454
    new-instance v0, Landroid/icu/text/UnicodeSet;

    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->parseData:Landroid/icu/text/TransliteratorParser$ParseData;

    invoke-direct {v0, p1, p2, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;)V

    .line 1455
    iget-char p1, p0, Landroid/icu/text/TransliteratorParser;->variableNext:C

    iget-char p2, p0, Landroid/icu/text/TransliteratorParser;->variableLimit:C

    if-ge p1, p2, :cond_0

    .line 1458
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->compact()Landroid/icu/text/UnicodeSet;

    .line 1459
    invoke-virtual {p0, v0}, Landroid/icu/text/TransliteratorParser;->generateStandInFor(Ljava/lang/Object;)C

    move-result p0

    return p0

    .line 1456
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Private use variables exhausted"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private pragmaMaximumBackup(I)V
    .locals 0

    .line 1348
    new-instance p0, Landroid/icu/impl/IllegalIcuArgumentException;

    const-string/jumbo p1, "use maximum backup pragma not implemented yet"

    invoke-direct {p0, p1}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private pragmaNormalizeRules(Landroid/icu/text/Normalizer$Mode;)V
    .locals 0

    .line 1362
    new-instance p0, Landroid/icu/impl/IllegalIcuArgumentException;

    const-string/jumbo p1, "use normalize rules pragma not implemented yet"

    invoke-direct {p0, p1}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static resemblesPragma(Ljava/lang/String;II)Z
    .locals 2

    const-string/jumbo v0, "use "

    const/4 v1, 0x0

    .line 1374
    invoke-static {p0, p1, p2, v0, v1}, Landroid/icu/impl/Utility;->parsePattern(Ljava/lang/String;IILjava/lang/String;[I)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static final ruleEnd(Ljava/lang/String;II)I
    .locals 1

    const-string v0, ";"

    .line 1442
    invoke-static {p0, p1, p2, v0}, Landroid/icu/impl/Utility;->quotedIndexOf(Ljava/lang/String;IILjava/lang/String;)I

    move-result p0

    if-gez p0, :cond_0

    move p0, p2

    :cond_0
    return p0
.end method

.method private setVariableRange(II)V
    .locals 2

    if-gt p1, p2, :cond_1

    if-ltz p1, :cond_1

    const v0, 0xffff

    if-gt p2, v0, :cond_1

    .line 1319
    iget-object v0, p0, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    int-to-char p1, p1

    iput-char p1, v0, Landroid/icu/text/RuleBasedTransliterator$Data;->variablesBase:C

    .line 1321
    iget-object v0, p0, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1322
    iput-char p1, p0, Landroid/icu/text/TransliteratorParser;->variableNext:C

    add-int/lit8 p2, p2, 0x1

    int-to-char p1, p2

    .line 1323
    iput-char p1, p0, Landroid/icu/text/TransliteratorParser;->variableLimit:C

    :cond_0
    return-void

    .line 1316
    :cond_1
    new-instance p0, Landroid/icu/impl/IllegalIcuArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid variable range "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static final syntaxError(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 1436
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p1, p2, v0}, Landroid/icu/text/TransliteratorParser;->ruleEnd(Ljava/lang/String;II)I

    move-result v0

    .line 1437
    new-instance v1, Landroid/icu/impl/IllegalIcuArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " in \""

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1438
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/icu/impl/Utility;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x22

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method generateStandInFor(Ljava/lang/Object;)C
    .locals 2

    const/4 v0, 0x0

    .line 1471
    :goto_0
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1472
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 1473
    iget-object p0, p0, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    iget-char p0, p0, Landroid/icu/text/RuleBasedTransliterator$Data;->variablesBase:C

    add-int/2addr p0, v0

    int-to-char p0, p0

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1477
    :cond_1
    iget-char v0, p0, Landroid/icu/text/TransliteratorParser;->variableNext:C

    iget-char v1, p0, Landroid/icu/text/TransliteratorParser;->variableLimit:C

    if-ge v0, v1, :cond_2

    .line 1480
    iget-object v0, p0, Landroid/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1481
    iget-char p1, p0, Landroid/icu/text/TransliteratorParser;->variableNext:C

    add-int/lit8 v0, p1, 0x1

    int-to-char v0, v0

    iput-char v0, p0, Landroid/icu/text/TransliteratorParser;->variableNext:C

    return p1

    .line 1478
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Variable range exhausted"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method getDotStandIn()C
    .locals 2

    .line 1531
    iget v0, p0, Landroid/icu/text/TransliteratorParser;->dotStandIn:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1532
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string v1, "[^[:Zp:][:Zl:]\\r\\n$]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/icu/text/TransliteratorParser;->generateStandInFor(Ljava/lang/Object;)C

    move-result v0

    iput v0, p0, Landroid/icu/text/TransliteratorParser;->dotStandIn:I

    .line 1534
    :cond_0
    iget p0, p0, Landroid/icu/text/TransliteratorParser;->dotStandIn:I

    int-to-char p0, p0

    return p0
.end method

.method public getSegmentStandin(I)C
    .locals 3

    .line 1488
    iget-object v0, p0, Landroid/icu/text/TransliteratorParser;->segmentStandins:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 1489
    iget-object v0, p0, Landroid/icu/text/TransliteratorParser;->segmentStandins:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1491
    :cond_0
    iget-object v0, p0, Landroid/icu/text/TransliteratorParser;->segmentStandins:Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-nez v0, :cond_2

    .line 1493
    iget-char v0, p0, Landroid/icu/text/TransliteratorParser;->variableNext:C

    iget-char v1, p0, Landroid/icu/text/TransliteratorParser;->variableLimit:C

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    int-to-char v1, v1

    .line 1496
    iput-char v1, p0, Landroid/icu/text/TransliteratorParser;->variableNext:C

    .line 1500
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1501
    iget-object p0, p0, Landroid/icu/text/TransliteratorParser;->segmentStandins:Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    goto :goto_0

    .line 1494
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Variable range exhausted"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return v0
.end method

.method public parse(Ljava/lang/String;I)V
    .locals 3

    .line 874
    new-instance v0, Landroid/icu/text/TransliteratorParser$RuleArray;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Landroid/icu/text/TransliteratorParser$RuleArray;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Landroid/icu/text/TransliteratorParser;->parseRules(Landroid/icu/text/TransliteratorParser$RuleBody;I)V

    return-void
.end method

.method parseRules(Landroid/icu/text/TransliteratorParser$RuleBody;I)V
    .locals 17

    move-object/from16 v1, p0

    .line 906
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    .line 907
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    const/4 v2, 0x0

    .line 908
    iput-object v2, v1, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    move/from16 v0, p2

    .line 909
    iput v0, v1, Landroid/icu/text/TransliteratorParser;->direction:I

    .line 910
    iput-object v2, v1, Landroid/icu/text/TransliteratorParser;->compoundFilter:Landroid/icu/text/UnicodeSet;

    .line 911
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Landroid/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    .line 912
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Landroid/icu/text/TransliteratorParser;->variableNames:Ljava/util/Map;

    .line 913
    new-instance v0, Landroid/icu/text/TransliteratorParser$ParseData;

    invoke-direct {v0, v1, v2}, Landroid/icu/text/TransliteratorParser$ParseData;-><init>(Landroid/icu/text/TransliteratorParser;Landroid/icu/text/TransliteratorParser$1;)V

    iput-object v0, v1, Landroid/icu/text/TransliteratorParser;->parseData:Landroid/icu/text/TransliteratorParser$ParseData;

    .line 915
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 918
    invoke-virtual/range {p1 .. p1}, Landroid/icu/text/TransliteratorParser$RuleBody;->reset()V

    .line 920
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 927
    iput-object v2, v1, Landroid/icu/text/TransliteratorParser;->compoundFilter:Landroid/icu/text/UnicodeSet;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move v0, v6

    move v8, v7

    move v10, v8

    const/4 v9, -0x1

    .line 932
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/icu/text/TransliteratorParser$RuleBody;->nextLine()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_0

    goto/16 :goto_c

    .line 937
    :cond_0
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    move v13, v10

    move v10, v9

    move v9, v0

    move v0, v7

    :cond_1
    :goto_1
    if-ge v0, v12, :cond_23

    add-int/lit8 v14, v0, 0x1

    .line 939
    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 940
    invoke-static {v0}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v15

    if-eqz v15, :cond_2

    goto :goto_2

    :cond_2
    const/16 v15, 0x23

    if-ne v0, v15, :cond_3

    const-string v0, "\n"

    .line 945
    invoke-virtual {v11, v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr v0, v6

    if-nez v0, :cond_1

    goto/16 :goto_14

    :cond_3
    const/16 v15, 0x3b

    if-ne v0, v15, :cond_4

    :goto_2
    move v0, v14

    goto :goto_1

    :cond_4
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v14, v14, -0x1

    add-int/lit8 v5, v14, 0x2

    add-int/lit8 v0, v5, 0x1

    if-gt v0, v12, :cond_10

    :try_start_0
    const-string v0, "::"

    const/4 v15, 0x2

    .line 969
    invoke-virtual {v11, v14, v0, v7, v15}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_10

    .line 971
    :try_start_1
    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move v14, v5

    .line 972
    :goto_3
    :try_start_2
    invoke-static {v0}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v0

    if-eqz v0, :cond_5

    if-ge v14, v12, :cond_5

    add-int/lit8 v14, v14, 0x1

    .line 974
    invoke-virtual {v11, v14}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_3

    :cond_5
    new-array v0, v6, [I

    aput v14, v0, v7

    if-nez v9, :cond_8

    .line 979
    iget-object v5, v1, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    if-eqz v5, :cond_7

    .line 980
    iget v5, v1, Landroid/icu/text/TransliteratorParser;->direction:I

    if-nez v5, :cond_6

    .line 981
    iget-object v5, v1, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    iget-object v15, v1, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 983
    :cond_6
    iget-object v5, v1, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    iget-object v15, v1, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    invoke-interface {v5, v7, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 984
    :goto_4
    iput-object v2, v1, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    :cond_7
    move v9, v6

    .line 989
    :cond_8
    iget v5, v1, Landroid/icu/text/TransliteratorParser;->direction:I

    .line 990
    invoke-static {v11, v0, v5}, Landroid/icu/text/TransliteratorIDParser;->parseSingleID(Ljava/lang/String;[II)Landroid/icu/text/TransliteratorIDParser$SingleID;

    move-result-object v5

    .line 992
    aget v15, v0, v7

    if-eq v15, v14, :cond_a

    const/16 v15, 0x3b

    invoke-static {v11, v0, v15}, Landroid/icu/impl/Utility;->parseChar(Ljava/lang/String;[IC)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 995
    iget v2, v1, Landroid/icu/text/TransliteratorParser;->direction:I

    if-nez v2, :cond_9

    .line 996
    iget-object v2, v5, Landroid/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 998
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v5, Landroid/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x3b

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v7, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_a
    new-array v2, v6, [I

    const/4 v15, -0x1

    aput v15, v2, v7

    .line 1004
    iget v5, v1, Landroid/icu/text/TransliteratorParser;->direction:I

    const/4 v15, 0x0

    invoke-static {v11, v0, v5, v2, v15}, Landroid/icu/text/TransliteratorIDParser;->parseGlobalFilter(Ljava/lang/String;[II[ILjava/lang/StringBuffer;)Landroid/icu/text/UnicodeSet;

    move-result-object v5

    if-eqz v5, :cond_e

    const/16 v15, 0x3b

    .line 1005
    invoke-static {v11, v0, v15}, Landroid/icu/impl/Utility;->parseChar(Ljava/lang/String;[IC)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 1006
    iget v15, v1, Landroid/icu/text/TransliteratorParser;->direction:I

    if-nez v15, :cond_b

    move v15, v6

    goto :goto_5

    :cond_b
    move v15, v7

    :goto_5
    aget v2, v2, v7

    if-nez v2, :cond_c

    move v2, v6

    goto :goto_6

    :cond_c
    move v2, v7

    :goto_6
    if-ne v15, v2, :cond_f

    .line 1008
    iget-object v2, v1, Landroid/icu/text/TransliteratorParser;->compoundFilter:Landroid/icu/text/UnicodeSet;

    if-eqz v2, :cond_d

    const-string v2, "Multiple global filters"

    .line 1010
    invoke-static {v2, v11, v14}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1012
    :cond_d
    iput-object v5, v1, Landroid/icu/text/TransliteratorParser;->compoundFilter:Landroid/icu/text/UnicodeSet;

    move v10, v8

    goto :goto_7

    :cond_e
    const-string v2, "Invalid ::ID"

    .line 1018
    invoke-static {v2, v11, v14}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1022
    :cond_f
    :goto_7
    aget v0, v0, v7

    goto :goto_a

    :catch_0
    move-exception v0

    move v14, v5

    goto :goto_b

    :catch_1
    move-exception v0

    goto :goto_b

    :cond_10
    if-eqz v9, :cond_12

    .line 1025
    iget v0, v1, Landroid/icu/text/TransliteratorParser;->direction:I

    if-nez v0, :cond_11

    .line 1026
    iget-object v0, v1, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1028
    :cond_11
    iget-object v0, v1, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v7, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1029
    :goto_8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v4, v7, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1031
    :try_start_3
    new-instance v0, Landroid/icu/text/RuleBasedTransliterator$Data;

    invoke-direct {v0}, Landroid/icu/text/RuleBasedTransliterator$Data;-><init>()V

    iput-object v0, v1, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    const v0, 0xf000

    const v2, 0xf8ff

    .line 1037
    invoke-direct {v1, v0, v2}, Landroid/icu/text/TransliteratorParser;->setVariableRange(II)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    move v9, v7

    goto :goto_9

    :catch_2
    move-exception v0

    move v9, v7

    goto :goto_b

    .line 1040
    :cond_12
    :goto_9
    :try_start_4
    invoke-static {v11, v14, v12}, Landroid/icu/text/TransliteratorParser;->resemblesPragma(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1041
    invoke-direct {v1, v11, v14, v12}, Landroid/icu/text/TransliteratorParser;->parsePragma(Ljava/lang/String;II)I

    move-result v0

    if-gez v0, :cond_14

    const-string v2, "Unrecognized pragma"

    .line 1043
    invoke-static {v2, v11, v14}, Landroid/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_a

    .line 1048
    :cond_13
    invoke-direct {v1, v11, v14, v12}, Landroid/icu/text/TransliteratorParser;->parseRule(Ljava/lang/String;II)I

    move-result v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_14
    :goto_a
    const/4 v2, 0x0

    goto/16 :goto_1

    :goto_b
    const/16 v2, 0x1e

    if-ne v13, v2, :cond_22

    .line 1053
    new-instance v2, Landroid/icu/impl/IllegalIcuArgumentException;

    const-string v5, "\nMore than 30 errors; further messages squelched"

    invoke-direct {v2, v5}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    .line 1054
    invoke-virtual {v2, v0}, Landroid/icu/impl/IllegalIcuArgumentException;->initCause(Ljava/lang/Throwable;)Landroid/icu/impl/IllegalIcuArgumentException;

    .line 1055
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v9

    move v9, v10

    :goto_c
    if-eqz v0, :cond_16

    .line 1065
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_16

    .line 1066
    iget v0, v1, Landroid/icu/text/TransliteratorParser;->direction:I

    if-nez v0, :cond_15

    .line 1067
    iget-object v0, v1, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1069
    :cond_15
    iget-object v0, v1, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v7, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_d

    :cond_16
    if-nez v0, :cond_18

    .line 1071
    iget-object v0, v1, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    if-eqz v0, :cond_18

    .line 1072
    iget v2, v1, Landroid/icu/text/TransliteratorParser;->direction:I

    if-nez v2, :cond_17

    .line 1073
    iget-object v2, v1, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1075
    :cond_17
    iget-object v2, v1, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v2, v7, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_18
    :goto_d
    move v0, v7

    .line 1079
    :goto_e
    iget-object v2, v1, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_19

    .line 1080
    iget-object v2, v1, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/RuleBasedTransliterator$Data;

    .line 1081
    iget-object v4, v1, Landroid/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/Object;

    iput-object v4, v2, Landroid/icu/text/RuleBasedTransliterator$Data;->variables:[Ljava/lang/Object;

    .line 1082
    iget-object v4, v1, Landroid/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    iget-object v5, v2, Landroid/icu/text/RuleBasedTransliterator$Data;->variables:[Ljava/lang/Object;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1083
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v2, Landroid/icu/text/RuleBasedTransliterator$Data;->variableNames:Ljava/util/Map;

    .line 1084
    iget-object v2, v2, Landroid/icu/text/RuleBasedTransliterator$Data;->variableNames:Ljava/util/Map;

    iget-object v4, v1, Landroid/icu/text/TransliteratorParser;->variableNames:Ljava/util/Map;

    invoke-interface {v2, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_19
    const/4 v2, 0x0

    .line 1086
    iput-object v2, v1, Landroid/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    .line 1090
    :try_start_5
    iget-object v0, v1, Landroid/icu/text/TransliteratorParser;->compoundFilter:Landroid/icu/text/UnicodeSet;

    if-eqz v0, :cond_1c

    .line 1091
    iget v0, v1, Landroid/icu/text/TransliteratorParser;->direction:I

    if-nez v0, :cond_1a

    if-ne v9, v6, :cond_1b

    :cond_1a
    iget v0, v1, Landroid/icu/text/TransliteratorParser;->direction:I

    if-ne v0, v6, :cond_1c

    if-ne v9, v8, :cond_1b

    goto :goto_f

    .line 1095
    :cond_1b
    new-instance v0, Landroid/icu/impl/IllegalIcuArgumentException;

    const-string v1, "Compound filters misplaced"

    invoke-direct {v0, v1}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    :goto_f
    move v0, v7

    .line 1099
    :goto_10
    iget-object v2, v1, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1d

    .line 1100
    iget-object v2, v1, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/RuleBasedTransliterator$Data;

    .line 1101
    iget-object v2, v2, Landroid/icu/text/RuleBasedTransliterator$Data;->ruleSet:Landroid/icu/text/TransliterationRuleSet;

    invoke-virtual {v2}, Landroid/icu/text/TransliterationRuleSet;->freeze()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 1104
    :cond_1d
    iget-object v0, v1, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v6, :cond_1e

    iget-object v0, v1, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1e

    .line 1105
    iget-object v0, v1, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_11

    :catch_3
    move-exception v0

    .line 1108
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1109
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1112
    :cond_1e
    :goto_11
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_21

    .line 1113
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v6

    :goto_12
    if-lez v0, :cond_20

    add-int/lit8 v1, v0, -0x1

    .line 1114
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/RuntimeException;

    .line 1115
    :goto_13
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 1116
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/RuntimeException;

    goto :goto_13

    .line 1118
    :cond_1f
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    .line 1120
    :cond_20
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_21
    return-void

    :cond_22
    const/4 v2, 0x0

    .line 1058
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1059
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    .line 1061
    invoke-static {v11, v14, v12}, Landroid/icu/text/TransliteratorParser;->ruleEnd(Ljava/lang/String;II)I

    move-result v0

    add-int/2addr v0, v6

    goto/16 :goto_1

    :cond_23
    :goto_14
    move v0, v9

    move v9, v10

    move v10, v13

    goto/16 :goto_0
.end method

.method public setSegmentObject(ILandroid/icu/text/StringMatcher;)V
    .locals 2

    .line 1514
    :goto_0
    iget-object v0, p0, Landroid/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 1515
    iget-object v0, p0, Landroid/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1517
    :cond_0
    invoke-virtual {p0, p1}, Landroid/icu/text/TransliteratorParser;->getSegmentStandin(I)C

    move-result v0

    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->curData:Landroid/icu/text/RuleBasedTransliterator$Data;

    iget-char v1, v1, Landroid/icu/text/RuleBasedTransliterator$Data;->variablesBase:C

    sub-int/2addr v0, v1

    .line 1518
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    .line 1519
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1522
    iget-object v1, p0, Landroid/icu/text/TransliteratorParser;->segmentObjects:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1523
    iget-object p0, p0, Landroid/icu/text/TransliteratorParser;->variablesVector:Ljava/util/List;

    invoke-interface {p0, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1520
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method
