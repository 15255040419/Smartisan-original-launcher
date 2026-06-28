.class Landroid/icu/text/RBBIRuleParseTable;
.super Ljava/lang/Object;
.source "RBBIRuleParseTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;
    }
.end annotation


# static fields
.field static final doCheckVarDef:S = 0x1s

.field static final doDotAny:S = 0x2s

.field static final doEndAssign:S = 0x3s

.field static final doEndOfRule:S = 0x4s

.field static final doEndVariableName:S = 0x5s

.field static final doExit:S = 0x6s

.field static final doExprCatOperator:S = 0x7s

.field static final doExprFinished:S = 0x8s

.field static final doExprOrOperator:S = 0x9s

.field static final doExprRParen:S = 0xas

.field static final doExprStart:S = 0xbs

.field static final doLParen:S = 0xcs

.field static final doNOP:S = 0xds

.field static final doNoChain:S = 0xes

.field static final doOptionEnd:S = 0xfs

.field static final doOptionStart:S = 0x10s

.field static final doReverseDir:S = 0x11s

.field static final doRuleChar:S = 0x12s

.field static final doRuleError:S = 0x13s

.field static final doRuleErrorAssignExpr:S = 0x14s

.field static final doScanUnicodeSet:S = 0x15s

.field static final doSlash:S = 0x16s

.field static final doStartAssign:S = 0x17s

.field static final doStartTagValue:S = 0x18s

.field static final doStartVariableName:S = 0x19s

.field static final doTagDigit:S = 0x1as

.field static final doTagExpectedError:S = 0x1bs

.field static final doTagValue:S = 0x1cs

.field static final doUnaryOpPlus:S = 0x1ds

.field static final doUnaryOpQuestion:S = 0x1es

.field static final doUnaryOpStar:S = 0x1fs

.field static final doVariableNameExpectedErr:S = 0x20s

.field static gRuleParseStateTable:[Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement; = null

.field static final kRuleSet_default:S = 0xffs

.field static final kRuleSet_digit_char:S = 0x80s

.field static final kRuleSet_eof:S = 0xfcs

.field static final kRuleSet_escaped:S = 0xfes

.field static final kRuleSet_name_char:S = 0x81s

.field static final kRuleSet_name_start_char:S = 0x82s

.field static final kRuleSet_rule_char:S = 0x83s

.field static final kRuleSet_white_space:S = 0x84s


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/16 v0, 0x68

    new-array v0, v0, [Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    .line 84
    new-instance v8, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v2, 0xd

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/4 v1, 0x0

    aput-object v8, v0, v1

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v10, 0xb

    const/16 v11, 0xfe

    const/16 v12, 0x1d

    const/16 v13, 0x9

    const/4 v14, 0x0

    const-string/jumbo v15, "start"

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0xd

    const/16 v5, 0x84

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0xe

    const/16 v5, 0x5e

    const/16 v6, 0xc

    const/16 v7, 0x9

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0xb

    const/16 v5, 0x24

    const/16 v6, 0x58

    const/16 v7, 0x62

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0xd

    const/16 v5, 0x21

    const/16 v6, 0x13

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v5, 0x3b

    const/4 v6, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v5, 0xfc

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0xb

    const/16 v5, 0xff

    const/16 v6, 0x1d

    const/16 v7, 0x9

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v4, 0x4

    const/16 v5, 0x3b

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v9, "break-rule-end"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0xd

    const/16 v5, 0x84

    const/16 v6, 0x9

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0x13

    const/16 v5, 0xff

    const/16 v6, 0x67

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0xb

    const/16 v5, 0xfe

    const/16 v6, 0x1d

    const-string/jumbo v9, "start-after-caret"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0xd

    const/16 v5, 0x84

    const/16 v6, 0xc

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0x13

    const/16 v5, 0x5e

    const/16 v6, 0x67

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0xb

    const/16 v5, 0x24

    const/16 v6, 0x58

    const/16 v7, 0x25

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0x13

    const/16 v5, 0x3b

    const/16 v6, 0x67

    const/4 v7, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v5, 0xfc

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0xb

    const/16 v5, 0xff

    const/16 v6, 0x1d

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0xd

    const/16 v5, 0x21

    const/16 v6, 0x15

    const/4 v8, 0x1

    const-string/jumbo v9, "rev-option"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0x11

    const/16 v5, 0xff

    const/16 v6, 0x1c

    const/16 v7, 0x9

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0x10

    const/16 v5, 0x82

    const/16 v6, 0x17

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string/jumbo v9, "option-scan1"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0x13

    const/16 v5, 0xff

    const/16 v6, 0x67

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0xd

    const/16 v5, 0x81

    const/16 v6, 0x17

    const/4 v8, 0x1

    const-string/jumbo v9, "option-scan2"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0xf

    const/16 v5, 0xff

    const/16 v6, 0x19

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0xd

    const/16 v5, 0x3b

    const/4 v6, 0x1

    const/4 v8, 0x1

    const-string/jumbo v9, "option-scan3"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x19

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v5, 0x84

    const/16 v6, 0x19

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0x13

    const/16 v5, 0xff

    const/16 v6, 0x67

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0xb

    const/16 v6, 0x1d

    const/16 v7, 0x9

    const-string/jumbo v9, "reverse-rule"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0x12

    const/16 v5, 0xfe

    const/16 v6, 0x26

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string/jumbo v9, "term"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0xd

    const/16 v5, 0x84

    const/16 v6, 0x1d

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0x12

    const/16 v5, 0x83

    const/16 v6, 0x26

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0xd

    const/16 v5, 0x5b

    const/16 v6, 0x5e

    const/16 v7, 0x26

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x20

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0xc

    const/16 v5, 0x28

    const/16 v6, 0x1d

    const/4 v8, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x21

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0xd

    const/16 v5, 0x24

    const/16 v6, 0x58

    const/16 v7, 0x25

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x22

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v4, 0x2

    const/16 v5, 0x2e

    const/16 v6, 0x26

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x23

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0x13

    const/16 v5, 0xff

    const/16 v6, 0x67

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x24

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v4, 0x1

    const/16 v6, 0x26

    const-string/jumbo v9, "term-var-ref"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x25

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0xd

    const/16 v5, 0x84

    const/4 v8, 0x1

    const-string v9, "expr-mod"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x26

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0x1f

    const/16 v5, 0x2a

    const/16 v6, 0x2b

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x27

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0x1d

    const/16 v5, 0x2b

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x28

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0x1e

    const/16 v5, 0x3f

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x29

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0xd

    const/16 v5, 0xff

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v4, 0x7

    const/16 v5, 0xfe

    const/16 v6, 0x1d

    const-string v9, "expr-cont"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0xd

    const/16 v5, 0x84

    const/16 v6, 0x2b

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v4, 0x7

    const/16 v5, 0x83

    const/16 v6, 0x1d

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v5, 0x5b

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v5, 0x28

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v5, 0x24

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x30

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v5, 0x2e

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x31

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v5, 0x2f

    const/16 v6, 0x37

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x32

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v5, 0x7b

    const/16 v6, 0x43

    const/4 v8, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x33

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0x9

    const/16 v5, 0x7c

    const/16 v6, 0x1d

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x34

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0xa

    const/16 v5, 0x29

    const/16 v6, 0xff

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x35

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0x8

    const/16 v5, 0xff

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x36

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0x16

    const/16 v5, 0x2f

    const/16 v6, 0x39

    const/4 v8, 0x1

    const-string v9, "look-ahead"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x37

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0xd

    const/16 v5, 0xff

    const/16 v6, 0x67

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x38

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v4, 0x7

    const/16 v5, 0xfe

    const/16 v6, 0x1d

    const-string v9, "expr-cont-no-slash"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x39

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0xd

    const/16 v5, 0x84

    const/16 v6, 0x2b

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v4, 0x7

    const/16 v5, 0x83

    const/16 v6, 0x1d

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v5, 0x5b

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v5, 0x28

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v5, 0x24

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v5, 0x2e

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0x9

    const/16 v5, 0x7c

    const/4 v8, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x40

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0xa

    const/16 v5, 0x29

    const/16 v6, 0xff

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x41

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0x8

    const/16 v5, 0xff

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x42

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0xd

    const/16 v5, 0x84

    const/16 v6, 0x43

    const/4 v8, 0x1

    const-string/jumbo v9, "tag-open"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x43

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0x18

    const/16 v5, 0x80

    const/16 v6, 0x46

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x44

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0x1b

    const/16 v5, 0xff

    const/16 v6, 0x67

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x45

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0xd

    const/16 v5, 0x84

    const/16 v6, 0x4a

    const/4 v8, 0x1

    const-string/jumbo v9, "tag-value"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x46

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v5, 0x7d

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x47

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0x1a

    const/16 v5, 0x80

    const/16 v6, 0x46

    const/4 v8, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x48

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0x1b

    const/16 v5, 0xff

    const/16 v6, 0x67

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x49

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0xd

    const/16 v5, 0x84

    const/16 v6, 0x4a

    const/4 v8, 0x1

    const-string/jumbo v9, "tag-close"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0x1c

    const/16 v5, 0x7d

    const/16 v6, 0x4d

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0x1b

    const/16 v5, 0xff

    const/16 v6, 0x67

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v4, 0x7

    const/16 v5, 0xfe

    const/16 v6, 0x1d

    const-string v9, "expr-cont-no-tag"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0xd

    const/16 v5, 0x84

    const/16 v6, 0x4d

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v4, 0x7

    const/16 v5, 0x83

    const/16 v6, 0x1d

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v5, 0x5b

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x50

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v5, 0x28

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x51

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v5, 0x24

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x52

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v5, 0x2e

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x53

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v5, 0x2f

    const/16 v6, 0x37

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x54

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0x9

    const/16 v5, 0x7c

    const/16 v6, 0x1d

    const/4 v8, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x55

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0xa

    const/16 v5, 0x29

    const/16 v6, 0xff

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x56

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0x8

    const/16 v5, 0xff

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x57

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0x19

    const/16 v5, 0x24

    const/16 v6, 0x5a

    const/4 v8, 0x1

    const-string/jumbo v9, "scan-var-name"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x58

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0xd

    const/16 v5, 0xff

    const/16 v6, 0x67

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x59

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v5, 0x82

    const/16 v6, 0x5c

    const/4 v8, 0x1

    const-string/jumbo v9, "scan-var-start"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0x20

    const/16 v5, 0xff

    const/16 v6, 0x67

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0xd

    const/16 v5, 0x81

    const/16 v6, 0x5c

    const/4 v8, 0x1

    const-string/jumbo v9, "scan-var-body"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v4, 0x5

    const/16 v5, 0xff

    const/16 v6, 0xff

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0x15

    const/16 v5, 0x5b

    const/4 v8, 0x1

    const-string/jumbo v9, "scan-unicode-set"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x5e

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v5, 0x70

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v5, 0x50

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x60

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0xd

    const/16 v5, 0xff

    const/16 v6, 0x67

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x61

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v5, 0x84

    const/16 v6, 0x62

    const/4 v8, 0x1

    const-string v9, "assign-or-rule"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x62

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0x17

    const/16 v5, 0x3d

    const/16 v6, 0x1d

    const/16 v7, 0x65

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x63

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0xd

    const/16 v5, 0xff

    const/16 v6, 0x25

    const/16 v7, 0x9

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x64

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v4, 0x3

    const/16 v5, 0x3b

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v9, "assign-end"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x65

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/16 v4, 0x14

    const/16 v5, 0xff

    const/16 v6, 0x67

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x66

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    const/4 v4, 0x6

    const/4 v8, 0x1

    const-string v9, "errorDeath"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;-><init>(SIIIZLjava/lang/String;)V

    const/16 v2, 0x67

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/text/RBBIRuleParseTable;->gRuleParseStateTable:[Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
