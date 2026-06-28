.class Landroid/icu/text/RBBIRuleScanner;
.super Ljava/lang/Object;
.source "RBBIRuleScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/RBBIRuleScanner$RBBISetTableEl;,
        Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;
    }
.end annotation


# static fields
.field static final chLS:I = 0x2028

.field static final chNEL:I = 0x85

.field private static gRuleSet_digit_char_pattern:Ljava/lang/String; = "[0-9]"

.field private static gRuleSet_name_char_pattern:Ljava/lang/String; = "[_\\p{L}\\p{N}]"

.field private static gRuleSet_name_start_char_pattern:Ljava/lang/String; = "[_\\p{L}]"

.field private static gRuleSet_rule_char_pattern:Ljava/lang/String; = "[^[\\p{Z}\\u0020-\\u007f]-[\\p{L}]-[\\p{N}]]"

.field private static gRuleSet_white_space_pattern:Ljava/lang/String; = "[\\p{Pattern_White_Space}]"

.field private static kAny:Ljava/lang/String; = "any"

.field private static final kStackSize:I = 0x64


# instance fields
.field fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

.field fCharNum:I

.field fLastChar:I

.field fLineNum:I

.field fLookAheadRule:Z

.field fNextIndex:I

.field fNoChainInRule:Z

.field fNodeStack:[Landroid/icu/text/RBBINode;

.field fNodeStackPtr:I

.field fOptionStart:I

.field fQuoteMode:Z

.field fRB:Landroid/icu/text/RBBIRuleBuilder;

.field fReverseRule:Z

.field fRuleNum:I

.field fRuleSets:[Landroid/icu/text/UnicodeSet;

.field fScanIndex:I

.field fSetTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/icu/text/RBBIRuleScanner$RBBISetTableEl;",
            ">;"
        }
    .end annotation
.end field

.field fStack:[S

.field fStackPtr:I

.field fSymbolTable:Landroid/icu/text/RBBISymbolTable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/icu/text/RBBIRuleBuilder;)V
    .locals 3

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    invoke-direct {v0}, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    const/16 v0, 0x64

    new-array v1, v0, [S

    .line 54
    iput-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fStack:[S

    new-array v0, v0, [Landroid/icu/text/RBBINode;

    .line 58
    iput-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fSetTable:Ljava/util/HashMap;

    const/16 v0, 0xa

    new-array v0, v0, [Landroid/icu/text/UnicodeSet;

    .line 81
    iput-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fRuleSets:[Landroid/icu/text/UnicodeSet;

    .line 110
    iput-object p1, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    const/4 p1, 0x1

    .line 111
    iput p1, p0, Landroid/icu/text/RBBIRuleScanner;->fLineNum:I

    .line 117
    iget-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fRuleSets:[Landroid/icu/text/UnicodeSet;

    new-instance v1, Landroid/icu/text/UnicodeSet;

    sget-object v2, Landroid/icu/text/RBBIRuleScanner;->gRuleSet_rule_char_pattern:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 118
    iget-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fRuleSets:[Landroid/icu/text/UnicodeSet;

    new-instance v1, Landroid/icu/text/UnicodeSet;

    sget-object v2, Landroid/icu/text/RBBIRuleScanner;->gRuleSet_white_space_pattern:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 119
    iget-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fRuleSets:[Landroid/icu/text/UnicodeSet;

    new-instance v1, Landroid/icu/text/UnicodeSet;

    sget-object v2, Landroid/icu/text/RBBIRuleScanner;->gRuleSet_name_char_pattern:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, p1

    .line 120
    iget-object p1, p0, Landroid/icu/text/RBBIRuleScanner;->fRuleSets:[Landroid/icu/text/UnicodeSet;

    new-instance v0, Landroid/icu/text/UnicodeSet;

    sget-object v1, Landroid/icu/text/RBBIRuleScanner;->gRuleSet_name_start_char_pattern:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    aput-object v0, p1, v1

    .line 121
    iget-object p1, p0, Landroid/icu/text/RBBIRuleScanner;->fRuleSets:[Landroid/icu/text/UnicodeSet;

    new-instance v0, Landroid/icu/text/UnicodeSet;

    sget-object v1, Landroid/icu/text/RBBIRuleScanner;->gRuleSet_digit_char_pattern:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 123
    new-instance p1, Landroid/icu/text/RBBISymbolTable;

    invoke-direct {p1, p0}, Landroid/icu/text/RBBISymbolTable;-><init>(Landroid/icu/text/RBBIRuleScanner;)V

    iput-object p1, p0, Landroid/icu/text/RBBIRuleScanner;->fSymbolTable:Landroid/icu/text/RBBISymbolTable;

    return-void
.end method

.method static stripRules(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 699
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    add-int/lit8 v3, v2, 0x1

    .line 701
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x23

    if-ne v2, v4, :cond_0

    :goto_1
    if-ge v3, v1, :cond_0

    const/16 v4, 0xd

    if-eq v2, v4, :cond_0

    const/16 v4, 0xa

    if-eq v2, v4, :cond_0

    const/16 v4, 0x85

    if-eq v2, v4, :cond_0

    add-int/lit8 v2, v3, 0x1

    .line 705
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v5, v3

    move v3, v2

    move v2, v5

    goto :goto_1

    .line 708
    :cond_0
    invoke-static {v2}, Landroid/icu/lang/UCharacter;->isISOControl(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 709
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    move v2, v3

    goto :goto_0

    .line 712
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method doParseActions(I)Z
    .locals 12

    const v0, 0x10204

    const/4 v1, 0x7

    const/16 v2, 0x9

    const/16 v3, 0x8

    const/4 v4, 0x0

    const v5, 0x10201

    const/16 v6, 0xa

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    packed-switch p1, :pswitch_data_0

    .line 513
    invoke-virtual {p0, v5}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    goto/16 :goto_5

    .line 329
    :pswitch_0
    invoke-virtual {p0, v0}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    goto/16 :goto_4

    .line 355
    :pswitch_1
    iget-object p1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    iget v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    aget-object p1, p1, v0

    .line 356
    invoke-virtual {p0, v6}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    move-result-object p0

    .line 357
    iput-object p1, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    .line 358
    iput-object p0, p1, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    goto/16 :goto_4

    .line 347
    :pswitch_2
    iget-object p1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    iget v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    aget-object p1, p1, v0

    const/16 v0, 0xc

    .line 348
    invoke-virtual {p0, v0}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    move-result-object p0

    .line 349
    iput-object p1, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    .line 350
    iput-object p0, p1, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    goto/16 :goto_4

    .line 339
    :pswitch_3
    iget-object p1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    iget v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    aget-object p1, p1, v0

    const/16 v0, 0xb

    .line 340
    invoke-virtual {p0, v0}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    move-result-object p0

    .line 341
    iput-object p1, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    .line 342
    iput-object p0, p1, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    goto/16 :goto_4

    .line 420
    :pswitch_4
    iget-object p1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    iget v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    aget-object p1, p1, v0

    .line 421
    iget v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    iput v0, p1, Landroid/icu/text/RBBINode;->fLastPos:I

    .line 422
    iget-object p0, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object p0, p0, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    iget v0, p1, Landroid/icu/text/RBBINode;->fFirstPos:I

    iget v1, p1, Landroid/icu/text/RBBINode;->fLastPos:I

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    goto/16 :goto_4

    :pswitch_5
    const p1, 0x1020e

    .line 426
    invoke-virtual {p0, p1}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    goto/16 :goto_5

    .line 413
    :pswitch_6
    iget-object p1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    iget v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    aget-object p1, p1, v0

    .line 414
    iget-object p0, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    iget p0, p0, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    int-to-char p0, p0

    invoke-static {p0, v6}, Landroid/icu/lang/UCharacter;->digit(II)I

    move-result p0

    .line 415
    iget v0, p1, Landroid/icu/text/RBBINode;->fVal:I

    mul-int/2addr v0, v6

    add-int/2addr v0, p0

    iput v0, p1, Landroid/icu/text/RBBINode;->fVal:I

    goto/16 :goto_4

    .line 466
    :pswitch_7
    invoke-virtual {p0, v9}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    move-result-object p1

    .line 467
    iget p0, p0, Landroid/icu/text/RBBIRuleScanner;->fScanIndex:I

    iput p0, p1, Landroid/icu/text/RBBINode;->fFirstPos:I

    goto/16 :goto_4

    :pswitch_8
    const/4 p1, 0x5

    .line 404
    invoke-virtual {p0, p1}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    move-result-object p1

    .line 405
    iput v10, p1, Landroid/icu/text/RBBINode;->fVal:I

    .line 406
    iget v0, p0, Landroid/icu/text/RBBIRuleScanner;->fScanIndex:I

    iput v0, p1, Landroid/icu/text/RBBINode;->fFirstPos:I

    .line 407
    iget p0, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    iput p0, p1, Landroid/icu/text/RBBINode;->fLastPos:I

    goto/16 :goto_4

    .line 203
    :pswitch_9
    iget-object p1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    iget v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    sub-int/2addr v0, v11

    aget-object p1, p1, v0

    .line 204
    iget v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    iput v0, p1, Landroid/icu/text/RBBINode;->fFirstPos:I

    .line 208
    invoke-virtual {p0, v1}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    goto/16 :goto_4

    .line 393
    :pswitch_a
    invoke-virtual {p0, v7}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    move-result-object p1

    .line 394
    iget v0, p0, Landroid/icu/text/RBBIRuleScanner;->fRuleNum:I

    iput v0, p1, Landroid/icu/text/RBBINode;->fVal:I

    .line 395
    iget v0, p0, Landroid/icu/text/RBBIRuleScanner;->fScanIndex:I

    iput v0, p1, Landroid/icu/text/RBBINode;->fFirstPos:I

    .line 396
    iget v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    iput v0, p1, Landroid/icu/text/RBBINode;->fLastPos:I

    .line 397
    iget-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    iget v1, p1, Landroid/icu/text/RBBINode;->fFirstPos:I

    iget v2, p1, Landroid/icu/text/RBBINode;->fLastPos:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    .line 398
    iput-boolean v11, p0, Landroid/icu/text/RBBIRuleScanner;->fLookAheadRule:Z

    goto/16 :goto_4

    .line 509
    :pswitch_b
    invoke-virtual {p0}, Landroid/icu/text/RBBIRuleScanner;->scanSet()V

    goto/16 :goto_4

    :pswitch_c
    const p1, 0x10206

    .line 500
    invoke-virtual {p0, p1}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    goto/16 :goto_5

    .line 324
    :pswitch_d
    invoke-virtual {p0, v0}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    goto/16 :goto_5

    .line 370
    :pswitch_e
    invoke-virtual {p0, v10}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    move-result-object p1

    .line 371
    iget-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    iget v0, v0, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 372
    invoke-virtual {p0, v0, p1, v4}, Landroid/icu/text/RBBIRuleScanner;->findSetFor(Ljava/lang/String;Landroid/icu/text/RBBINode;Landroid/icu/text/UnicodeSet;)V

    .line 373
    iget v0, p0, Landroid/icu/text/RBBIRuleScanner;->fScanIndex:I

    iput v0, p1, Landroid/icu/text/RBBINode;->fFirstPos:I

    .line 374
    iget v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    iput v0, p1, Landroid/icu/text/RBBINode;->fLastPos:I

    .line 375
    iget-object p0, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object p0, p0, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    iget v0, p1, Landroid/icu/text/RBBINode;->fFirstPos:I

    iget v1, p1, Landroid/icu/text/RBBINode;->fLastPos:I

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    goto/16 :goto_4

    .line 462
    :pswitch_f
    iput-boolean v11, p0, Landroid/icu/text/RBBIRuleScanner;->fReverseRule:Z

    goto/16 :goto_4

    .line 432
    :pswitch_10
    iget p1, p0, Landroid/icu/text/RBBIRuleScanner;->fScanIndex:I

    iput p1, p0, Landroid/icu/text/RBBIRuleScanner;->fOptionStart:I

    goto/16 :goto_4

    .line 436
    :pswitch_11
    iget-object p1, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object p1, p1, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    iget v0, p0, Landroid/icu/text/RBBIRuleScanner;->fOptionStart:I

    iget v1, p0, Landroid/icu/text/RBBIRuleScanner;->fScanIndex:I

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "chain"

    .line 437
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    iget-object p0, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iput-boolean v11, p0, Landroid/icu/text/RBBIRuleBuilder;->fChainRules:Z

    goto/16 :goto_4

    :cond_0
    const-string v0, "LBCMNoChain"

    .line 439
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 440
    iget-object p0, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iput-boolean v11, p0, Landroid/icu/text/RBBIRuleBuilder;->fLBCMNoChain:Z

    goto/16 :goto_4

    :cond_1
    const-string v0, "forward"

    .line 441
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 442
    iget-object p0, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iput v10, p0, Landroid/icu/text/RBBIRuleBuilder;->fDefaultTree:I

    goto/16 :goto_4

    :cond_2
    const-string/jumbo v0, "reverse"

    .line 443
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 444
    iget-object p0, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iput v11, p0, Landroid/icu/text/RBBIRuleBuilder;->fDefaultTree:I

    goto/16 :goto_4

    :cond_3
    const-string/jumbo v0, "safe_forward"

    .line 445
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 446
    iget-object p0, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iput v9, p0, Landroid/icu/text/RBBIRuleBuilder;->fDefaultTree:I

    goto/16 :goto_4

    :cond_4
    const-string/jumbo v0, "safe_reverse"

    .line 447
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 448
    iget-object p0, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iput v8, p0, Landroid/icu/text/RBBIRuleBuilder;->fDefaultTree:I

    goto/16 :goto_4

    :cond_5
    const-string v0, "lookAheadHardBreak"

    .line 449
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 450
    iget-object p0, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iput-boolean v11, p0, Landroid/icu/text/RBBIRuleBuilder;->fLookAheadHardBreak:Z

    goto/16 :goto_4

    :cond_6
    const-string/jumbo v0, "quoted_literals_only"

    .line 451
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 452
    iget-object p0, p0, Landroid/icu/text/RBBIRuleScanner;->fRuleSets:[Landroid/icu/text/UnicodeSet;

    aget-object p0, p0, v8

    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    goto/16 :goto_4

    :cond_7
    const-string/jumbo v0, "unquoted_literals"

    .line 453
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 454
    iget-object p0, p0, Landroid/icu/text/RBBIRuleScanner;->fRuleSets:[Landroid/icu/text/UnicodeSet;

    aget-object p0, p0, v8

    sget-object p1, Landroid/icu/text/RBBIRuleScanner;->gRuleSet_rule_char_pattern:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;)Landroid/icu/text/UnicodeSet;

    goto/16 :goto_4

    :cond_8
    const p1, 0x1020d

    .line 456
    invoke-virtual {p0, p1}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    goto/16 :goto_4

    .line 148
    :pswitch_12
    iput-boolean v11, p0, Landroid/icu/text/RBBIRuleScanner;->fNoChainInRule:Z

    goto/16 :goto_4

    :pswitch_13
    const/16 p1, 0xf

    .line 183
    invoke-virtual {p0, p1}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    goto/16 :goto_4

    .line 142
    :pswitch_14
    invoke-virtual {p0, v1}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    .line 143
    iget p1, p0, Landroid/icu/text/RBBIRuleScanner;->fRuleNum:I

    add-int/2addr p1, v11

    iput p1, p0, Landroid/icu/text/RBBIRuleScanner;->fRuleNum:I

    goto/16 :goto_4

    .line 187
    :pswitch_15
    invoke-virtual {p0, v9}, Landroid/icu/text/RBBIRuleScanner;->fixOpStack(I)V

    goto/16 :goto_4

    .line 153
    :pswitch_16
    invoke-virtual {p0, v7}, Landroid/icu/text/RBBIRuleScanner;->fixOpStack(I)V

    .line 154
    iget-object p1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    iget v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    aget-object p1, p1, v0

    .line 155
    invoke-virtual {p0, v2}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    move-result-object p0

    .line 156
    iput-object p1, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    .line 157
    iput-object p0, p1, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    goto/16 :goto_4

    .line 168
    :pswitch_17
    invoke-virtual {p0, v7}, Landroid/icu/text/RBBIRuleScanner;->fixOpStack(I)V

    .line 169
    iget-object p1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    iget v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    aget-object p1, p1, v0

    .line 170
    invoke-virtual {p0, v3}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    move-result-object p0

    .line 171
    iput-object p1, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    .line 172
    iput-object p0, p1, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    goto/16 :goto_4

    .line 471
    :pswitch_18
    iget-object p1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    iget v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    aget-object p1, p1, v0

    if-eqz p1, :cond_a

    .line 472
    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    if-eq v0, v9, :cond_9

    goto :goto_0

    .line 476
    :cond_9
    iget v0, p0, Landroid/icu/text/RBBIRuleScanner;->fScanIndex:I

    iput v0, p1, Landroid/icu/text/RBBINode;->fLastPos:I

    .line 477
    iget-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    iget v1, p1, Landroid/icu/text/RBBINode;->fFirstPos:I

    add-int/2addr v1, v11

    iget v2, p1, Landroid/icu/text/RBBINode;->fLastPos:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    .line 485
    iget-object p0, p0, Landroid/icu/text/RBBIRuleScanner;->fSymbolTable:Landroid/icu/text/RBBISymbolTable;

    iget-object v0, p1, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/icu/text/RBBISymbolTable;->lookupNode(Ljava/lang/String;)Landroid/icu/text/RBBINode;

    move-result-object p0

    iput-object p0, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    goto/16 :goto_4

    .line 473
    :cond_a
    :goto_0
    invoke-virtual {p0, v5}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    goto/16 :goto_4

    .line 247
    :pswitch_19
    invoke-virtual {p0, v11}, Landroid/icu/text/RBBIRuleScanner;->fixOpStack(I)V

    .line 250
    iget-object p1, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object p1, p1, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    if-eqz p1, :cond_b

    iget-object p1, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object p1, p1, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    const-string/jumbo v0, "rtree"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_b

    const-string p1, "end of rule"

    .line 251
    invoke-virtual {p0, p1}, Landroid/icu/text/RBBIRuleScanner;->printNodeStack(Ljava/lang/String;)V

    .line 253
    :cond_b
    iget p1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    if-ne p1, v11, :cond_c

    move p1, v11

    goto :goto_1

    :cond_c
    move p1, v10

    :goto_1
    invoke-static {p1}, Landroid/icu/impl/Assert;->assrt(Z)V

    .line 254
    iget-object p1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    iget v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    aget-object p1, p1, v0

    .line 258
    iget-boolean v0, p0, Landroid/icu/text/RBBIRuleScanner;->fLookAheadRule:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x6

    .line 259
    invoke-virtual {p0, v0}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    move-result-object v0

    .line 260
    invoke-virtual {p0, v3}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    move-result-object v1

    .line 261
    iget v3, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    sub-int/2addr v3, v9

    iput v3, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    .line 262
    iput-object p1, v1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    .line 263
    iput-object v0, v1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    .line 264
    iget-object p1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    iget v3, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    aput-object v1, p1, v3

    .line 265
    iget p1, p0, Landroid/icu/text/RBBIRuleScanner;->fRuleNum:I

    iput p1, v0, Landroid/icu/text/RBBINode;->fVal:I

    .line 266
    iput-boolean v11, v0, Landroid/icu/text/RBBINode;->fLookAheadEnd:Z

    move-object p1, v1

    .line 275
    :cond_d
    iput-boolean v11, p1, Landroid/icu/text/RBBINode;->fRuleRoot:Z

    .line 279
    iget-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-boolean v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fChainRules:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNoChainInRule:Z

    if-nez v0, :cond_e

    .line 281
    iput-boolean v11, p1, Landroid/icu/text/RBBINode;->fChainIn:Z

    .line 295
    :cond_e
    iget-boolean p1, p0, Landroid/icu/text/RBBIRuleScanner;->fReverseRule:Z

    if-eqz p1, :cond_f

    move p1, v11

    goto :goto_2

    :cond_f
    iget-object p1, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget p1, p1, Landroid/icu/text/RBBIRuleBuilder;->fDefaultTree:I

    .line 297
    :goto_2
    iget-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    aget-object v0, v0, p1

    if-eqz v0, :cond_10

    .line 303
    iget-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    iget v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    aget-object v0, v0, v1

    .line 304
    iget-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    aget-object v1, v1, p1

    .line 305
    invoke-virtual {p0, v2}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    move-result-object v2

    .line 306
    iput-object v1, v2, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    .line 307
    iput-object v2, v1, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    .line 308
    iput-object v0, v2, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    .line 309
    iput-object v2, v0, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    .line 310
    iget-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    aput-object v2, v0, p1

    goto :goto_3

    .line 314
    :cond_10
    iget-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    iget v2, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    aget-object v1, v1, v2

    aput-object v1, v0, p1

    .line 316
    :goto_3
    iput-boolean v10, p0, Landroid/icu/text/RBBIRuleScanner;->fReverseRule:Z

    .line 317
    iput-boolean v10, p0, Landroid/icu/text/RBBIRuleScanner;->fLookAheadRule:Z

    .line 318
    iput-boolean v10, p0, Landroid/icu/text/RBBIRuleScanner;->fNoChainInRule:Z

    .line 319
    iput v10, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    goto :goto_4

    .line 217
    :pswitch_1a
    invoke-virtual {p0, v11}, Landroid/icu/text/RBBIRuleScanner;->fixOpStack(I)V

    .line 219
    iget-object p1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    iget v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    add-int/lit8 v1, v0, -0x2

    aget-object v1, p1, v1

    add-int/lit8 v2, v0, -0x1

    .line 220
    aget-object v2, p1, v2

    .line 221
    aget-object p1, p1, v0

    .line 226
    iget v0, v1, Landroid/icu/text/RBBINode;->fFirstPos:I

    iput v0, p1, Landroid/icu/text/RBBINode;->fFirstPos:I

    .line 227
    iget v0, p0, Landroid/icu/text/RBBIRuleScanner;->fScanIndex:I

    iput v0, p1, Landroid/icu/text/RBBINode;->fLastPos:I

    .line 230
    iget-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    iget v1, p1, Landroid/icu/text/RBBINode;->fFirstPos:I

    iget v3, p1, Landroid/icu/text/RBBINode;->fLastPos:I

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    .line 235
    iput-object p1, v2, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    .line 236
    iput-object v2, p1, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    .line 239
    iget-object p1, p0, Landroid/icu/text/RBBIRuleScanner;->fSymbolTable:Landroid/icu/text/RBBISymbolTable;

    iget-object v0, v2, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/icu/text/RBBISymbolTable;->addEntry(Ljava/lang/String;Landroid/icu/text/RBBINode;)V

    .line 242
    iget p1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    sub-int/2addr p1, v8

    iput p1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    goto :goto_4

    .line 382
    :pswitch_1b
    invoke-virtual {p0, v10}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    move-result-object p1

    .line 383
    sget-object v0, Landroid/icu/text/RBBIRuleScanner;->kAny:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, v4}, Landroid/icu/text/RBBIRuleScanner;->findSetFor(Ljava/lang/String;Landroid/icu/text/RBBINode;Landroid/icu/text/UnicodeSet;)V

    .line 384
    iget v0, p0, Landroid/icu/text/RBBIRuleScanner;->fScanIndex:I

    iput v0, p1, Landroid/icu/text/RBBINode;->fFirstPos:I

    .line 385
    iget v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    iput v0, p1, Landroid/icu/text/RBBINode;->fLastPos:I

    .line 386
    iget-object p0, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object p0, p0, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    iget v0, p1, Landroid/icu/text/RBBINode;->fFirstPos:I

    iget v1, p1, Landroid/icu/text/RBBINode;->fLastPos:I

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    goto :goto_4

    .line 489
    :pswitch_1c
    iget-object p1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    iget v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    aget-object p1, p1, v0

    .line 490
    iget-object p1, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    if-nez p1, :cond_11

    const p1, 0x1020a

    .line 491
    invoke-virtual {p0, p1}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    goto :goto_5

    :cond_11
    :goto_4
    :pswitch_1d
    move v10, v11

    :goto_5
    :pswitch_1e
    return v10

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_1e
        :pswitch_17
        :pswitch_1d
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_1d
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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

.method error(I)V
    .locals 2

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " at line "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Landroid/icu/text/RBBIRuleScanner;->fLineNum:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " column "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/icu/text/RBBIRuleScanner;->fCharNum:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 529
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 530
    throw p1
.end method

.method findSetFor(Ljava/lang/String;Landroid/icu/text/RBBINode;Landroid/icu/text/UnicodeSet;)V
    .locals 3

    .line 635
    iget-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fSetTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/RBBIRuleScanner$RBBISetTableEl;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 637
    iget-object p0, v0, Landroid/icu/text/RBBIRuleScanner$RBBISetTableEl;->val:Landroid/icu/text/RBBINode;

    iput-object p0, p2, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    .line 638
    iget-object p0, p2, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget p0, p0, Landroid/icu/text/RBBINode;->fType:I

    if-ne p0, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v1}, Landroid/icu/impl/Assert;->assrt(Z)V

    return-void

    :cond_1
    if-nez p3, :cond_3

    .line 646
    sget-object p3, Landroid/icu/text/RBBIRuleScanner;->kAny:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 647
    new-instance p3, Landroid/icu/text/UnicodeSet;

    const v0, 0x10ffff

    invoke-direct {p3, v1, v0}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    goto :goto_0

    .line 650
    :cond_2
    invoke-static {p1, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result p3

    .line 651
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0, p3, p3}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    move-object p3, v0

    .line 660
    :cond_3
    :goto_0
    new-instance v0, Landroid/icu/text/RBBINode;

    invoke-direct {v0, v2}, Landroid/icu/text/RBBINode;-><init>(I)V

    .line 661
    iput-object p3, v0, Landroid/icu/text/RBBINode;->fInputSet:Landroid/icu/text/UnicodeSet;

    .line 662
    iput-object p2, v0, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    .line 663
    iput-object v0, p2, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    .line 664
    iput-object p1, v0, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    .line 669
    iget-object p2, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object p2, p2, Landroid/icu/text/RBBIRuleBuilder;->fUSetNodes:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 674
    new-instance p2, Landroid/icu/text/RBBIRuleScanner$RBBISetTableEl;

    invoke-direct {p2}, Landroid/icu/text/RBBIRuleScanner$RBBISetTableEl;-><init>()V

    .line 675
    iput-object p1, p2, Landroid/icu/text/RBBIRuleScanner$RBBISetTableEl;->key:Ljava/lang/String;

    .line 676
    iput-object v0, p2, Landroid/icu/text/RBBIRuleScanner$RBBISetTableEl;->val:Landroid/icu/text/RBBINode;

    .line 677
    iget-object p0, p0, Landroid/icu/text/RBBIRuleScanner;->fSetTable:Ljava/util/HashMap;

    iget-object p1, p2, Landroid/icu/text/RBBIRuleScanner$RBBISetTableEl;->key:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method fixOpStack(I)V
    .locals 4

    .line 554
    :goto_0
    iget-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    iget v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 555
    iget v1, v0, Landroid/icu/text/RBBINode;->fPrecedence:I

    if-nez v1, :cond_0

    .line 556
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "RBBIRuleScanner.fixOpStack, bad operator node"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const p1, 0x10201

    .line 557
    invoke-virtual {p0, p1}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    return-void

    .line 561
    :cond_0
    iget v1, v0, Landroid/icu/text/RBBINode;->fPrecedence:I

    const/4 v2, 0x2

    if-lt v1, p1, :cond_2

    iget v1, v0, Landroid/icu/text/RBBINode;->fPrecedence:I

    if-gt v1, v2, :cond_1

    goto :goto_1

    .line 569
    :cond_1
    iget-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    iget v2, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    aget-object v3, v1, v2

    iput-object v3, v0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    .line 570
    aget-object v1, v1, v2

    iput-object v0, v1, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    add-int/lit8 v2, v2, -0x1

    .line 571
    iput v2, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    goto :goto_0

    :cond_2
    :goto_1
    if-gt p1, v2, :cond_4

    .line 581
    iget v0, v0, Landroid/icu/text/RBBINode;->fPrecedence:I

    if-eq v0, p1, :cond_3

    const p1, 0x10208

    .line 584
    invoke-virtual {p0, p1}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    .line 586
    :cond_3
    iget-object p1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    iget v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    add-int/lit8 v1, v0, -0x1

    aget-object v2, p1, v0

    aput-object v2, p1, v1

    add-int/lit8 v0, v0, -0x1

    .line 587
    iput v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    :cond_4
    return-void
.end method

.method nextChar(Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;)V
    .locals 5

    .line 766
    iget v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    iput v0, p0, Landroid/icu/text/RBBIRuleScanner;->fScanIndex:I

    .line 767
    invoke-virtual {p0}, Landroid/icu/text/RBBIRuleScanner;->nextCharLL()I

    move-result v0

    iput v0, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    const/4 v0, 0x0

    .line 768
    iput-boolean v0, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fEscaped:Z

    .line 774
    iget v1, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    const/16 v2, 0x27

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    .line 775
    iget-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    iget v4, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    invoke-static {v1, v4}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 776
    invoke-virtual {p0}, Landroid/icu/text/RBBIRuleScanner;->nextCharLL()I

    move-result v1

    iput v1, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    .line 777
    iput-boolean v3, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fEscaped:Z

    goto :goto_1

    .line 782
    :cond_0
    iget-boolean v1, p0, Landroid/icu/text/RBBIRuleScanner;->fQuoteMode:Z

    xor-int/2addr v1, v3

    iput-boolean v1, p0, Landroid/icu/text/RBBIRuleScanner;->fQuoteMode:Z

    .line 783
    iget-boolean p0, p0, Landroid/icu/text/RBBIRuleScanner;->fQuoteMode:Z

    if-ne p0, v3, :cond_1

    const/16 p0, 0x28

    .line 784
    iput p0, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    goto :goto_0

    :cond_1
    const/16 p0, 0x29

    .line 786
    iput p0, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    .line 788
    :goto_0
    iput-boolean v0, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fEscaped:Z

    return-void

    .line 793
    :cond_2
    :goto_1
    iget-boolean v1, p0, Landroid/icu/text/RBBIRuleScanner;->fQuoteMode:Z

    if-eqz v1, :cond_3

    .line 794
    iput-boolean v3, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fEscaped:Z

    goto :goto_2

    .line 798
    :cond_3
    iget v1, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    const/16 v2, 0x23

    const/4 v4, -0x1

    if-ne v1, v2, :cond_5

    .line 805
    :cond_4
    invoke-virtual {p0}, Landroid/icu/text/RBBIRuleScanner;->nextCharLL()I

    move-result v1

    iput v1, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    .line 806
    iget v1, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    if-eq v1, v4, :cond_5

    iget v1, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    const/16 v2, 0xd

    if-eq v1, v2, :cond_5

    iget v1, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_5

    iget v1, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    const/16 v2, 0x85

    if-eq v1, v2, :cond_5

    iget v1, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    const/16 v2, 0x2028

    if-ne v1, v2, :cond_4

    .line 816
    :cond_5
    iget v1, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    if-ne v1, v4, :cond_6

    return-void

    .line 824
    :cond_6
    iget v1, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    const/16 v2, 0x5c

    if-ne v1, v2, :cond_8

    .line 825
    iput-boolean v3, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fEscaped:Z

    new-array v1, v3, [I

    .line 827
    iget v2, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    aput v2, v1, v0

    .line 828
    iget-object v2, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/icu/impl/Utility;->unescapeAt(Ljava/lang/String;[I)I

    move-result v2

    iput v2, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    .line 829
    aget p1, v1, v0

    iget v2, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    if-ne p1, v2, :cond_7

    const p1, 0x10202

    .line 830
    invoke-virtual {p0, p1}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    .line 833
    :cond_7
    iget p1, p0, Landroid/icu/text/RBBIRuleScanner;->fCharNum:I

    aget v2, v1, v0

    iget v3, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    sub-int/2addr v2, v3

    add-int/2addr p1, v2

    iput p1, p0, Landroid/icu/text/RBBIRuleScanner;->fCharNum:I

    .line 834
    aget p1, v1, v0

    iput p1, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    :cond_8
    :goto_2
    return-void
.end method

.method nextCharLL()I
    .locals 5

    .line 725
    iget v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    iget-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 728
    :cond_0
    iget-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    iget v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    invoke-static {v0, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    .line 729
    iget-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    iget v2, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/icu/text/UTF16;->moveCodePointOffset(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/16 v2, 0x85

    if-eq v0, v2, :cond_2

    const/16 v2, 0x2028

    if-eq v0, v2, :cond_2

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    .line 731
    iget v4, p0, Landroid/icu/text/RBBIRuleScanner;->fLastChar:I

    if-eq v4, v1, :cond_1

    goto :goto_0

    :cond_1
    if-eq v0, v2, :cond_3

    .line 747
    iget v1, p0, Landroid/icu/text/RBBIRuleScanner;->fCharNum:I

    add-int/2addr v1, v3

    iput v1, p0, Landroid/icu/text/RBBIRuleScanner;->fCharNum:I

    goto :goto_1

    .line 737
    :cond_2
    :goto_0
    iget v1, p0, Landroid/icu/text/RBBIRuleScanner;->fLineNum:I

    add-int/2addr v1, v3

    iput v1, p0, Landroid/icu/text/RBBIRuleScanner;->fLineNum:I

    const/4 v1, 0x0

    .line 738
    iput v1, p0, Landroid/icu/text/RBBIRuleScanner;->fCharNum:I

    .line 739
    iget-boolean v2, p0, Landroid/icu/text/RBBIRuleScanner;->fQuoteMode:Z

    if-eqz v2, :cond_3

    const v2, 0x10209

    .line 740
    invoke-virtual {p0, v2}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    .line 741
    iput-boolean v1, p0, Landroid/icu/text/RBBIRuleScanner;->fQuoteMode:Z

    .line 750
    :cond_3
    :goto_1
    iput v0, p0, Landroid/icu/text/RBBIRuleScanner;->fLastChar:I

    return v0
.end method

.method parse()V
    .locals 9

    .line 853
    iget-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    invoke-virtual {p0, v0}, Landroid/icu/text/RBBIRuleScanner;->nextChar(Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;)V

    const/4 v0, 0x1

    move v1, v0

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 875
    :cond_1
    sget-object v2, Landroid/icu/text/RBBIRuleParseTable;->gRuleParseStateTable:[Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    aget-object v2, v2, v1

    .line 876
    iget-object v3, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    const-string/jumbo v4, "scan"

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2

    .line 877
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "char, line, col = (\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    iget v6, v6, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v6, "\', "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Landroid/icu/text/RBBIRuleScanner;->fLineNum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Landroid/icu/text/RBBIRuleScanner;->fCharNum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "    state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fStateName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 883
    :cond_2
    :goto_1
    sget-object v2, Landroid/icu/text/RBBIRuleParseTable;->gRuleParseStateTable:[Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    aget-object v2, v2, v1

    .line 884
    iget-object v3, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_3

    .line 885
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 887
    :cond_3
    iget-short v3, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fCharClass:S

    const/16 v5, 0x7f

    const/16 v6, 0xff

    if-ge v3, v5, :cond_4

    iget-object v3, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    iget-boolean v3, v3, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fEscaped:Z

    if-nez v3, :cond_4

    iget-short v3, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fCharClass:S

    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    iget v5, v5, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    if-ne v3, v5, :cond_4

    goto :goto_2

    .line 894
    :cond_4
    iget-short v3, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fCharClass:S

    if-ne v3, v6, :cond_5

    goto :goto_2

    .line 898
    :cond_5
    iget-short v3, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fCharClass:S

    const/16 v5, 0xfe

    if-ne v3, v5, :cond_6

    iget-object v3, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    iget-boolean v3, v3, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fEscaped:Z

    if-eqz v3, :cond_6

    goto :goto_2

    .line 902
    :cond_6
    iget-short v3, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fCharClass:S

    const/16 v5, 0xfd

    if-ne v3, v5, :cond_7

    iget-object v3, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    iget-boolean v3, v3, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fEscaped:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    iget v3, v3, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    const/16 v5, 0x50

    if-eq v3, v5, :cond_9

    iget-object v3, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    iget v3, v3, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    const/16 v5, 0x70

    if-ne v3, v5, :cond_7

    goto :goto_2

    .line 907
    :cond_7
    iget-short v3, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fCharClass:S

    const/16 v5, 0xfc

    const/4 v7, -0x1

    if-ne v3, v5, :cond_8

    iget-object v3, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    iget v3, v3, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    if-ne v3, v7, :cond_8

    goto :goto_2

    .line 912
    :cond_8
    iget-short v3, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fCharClass:S

    const/16 v5, 0x80

    if-lt v3, v5, :cond_16

    iget-short v3, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fCharClass:S

    const/16 v8, 0xf0

    if-ge v3, v8, :cond_16

    iget-object v3, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    iget-boolean v3, v3, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fEscaped:Z

    if-nez v3, :cond_16

    iget-object v3, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    iget v3, v3, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    if-eq v3, v7, :cond_16

    .line 915
    iget-object v3, p0, Landroid/icu/text/RBBIRuleScanner;->fRuleSets:[Landroid/icu/text/UnicodeSet;

    iget-short v7, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fCharClass:S

    sub-int/2addr v7, v5

    aget-object v3, v3, v7

    .line 916
    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    iget v5, v5, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    invoke-virtual {v3, v5}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 924
    :cond_9
    :goto_2
    iget-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_a

    .line 925
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 931
    :cond_a
    iget-short v1, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fAction:S

    invoke-virtual {p0, v1}, Landroid/icu/text/RBBIRuleScanner;->doParseActions(I)Z

    move-result v1

    if-nez v1, :cond_11

    .line 968
    :goto_3
    iget-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-nez v1, :cond_b

    const v1, 0x10204

    .line 969
    invoke-virtual {p0, v1}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    .line 975
    :cond_b
    iget-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    aget-object v1, v1, v0

    const/4 v3, 0x2

    if-nez v1, :cond_c

    .line 976
    iget-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    const/16 v4, 0xa

    invoke-virtual {p0, v4}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    move-result-object v4

    aput-object v4, v1, v0

    .line 977
    invoke-virtual {p0, v2}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    move-result-object v1

    .line 978
    sget-object v4, Landroid/icu/text/RBBIRuleScanner;->kAny:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v1, v5}, Landroid/icu/text/RBBIRuleScanner;->findSetFor(Ljava/lang/String;Landroid/icu/text/RBBINode;Landroid/icu/text/UnicodeSet;)V

    .line 979
    iget-object v4, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v4, v4, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    aget-object v4, v4, v0

    iput-object v1, v4, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    .line 980
    iget-object v4, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v4, v4, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    aget-object v4, v4, v0

    iput-object v4, v1, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    .line 981
    iget v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    sub-int/2addr v1, v3

    iput v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    .line 989
    :cond_c
    iget-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    const-string/jumbo v4, "symbols"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_d

    .line 990
    iget-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fSymbolTable:Landroid/icu/text/RBBISymbolTable;

    invoke-virtual {v1}, Landroid/icu/text/RBBISymbolTable;->rbbiSymtablePrint()V

    .line 992
    :cond_d
    iget-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    if-eqz v1, :cond_10

    iget-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    const-string/jumbo v4, "ptree"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_10

    .line 993
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Completed Forward Rules Parse Tree..."

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 994
    iget-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Landroid/icu/text/RBBINode;->printTree(Z)V

    .line 995
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "\nCompleted Reverse Rules Parse Tree..."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 996
    iget-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    aget-object v1, v1, v0

    invoke-virtual {v1, v0}, Landroid/icu/text/RBBINode;->printTree(Z)V

    .line 997
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "\nCompleted Safe Point Forward Rules Parse Tree..."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 998
    iget-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    aget-object v1, v1, v3

    const-string v2, "  -- null -- "

    if-nez v1, :cond_e

    .line 999
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 1001
    :cond_e
    iget-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    aget-object v1, v1, v3

    invoke-virtual {v1, v0}, Landroid/icu/text/RBBINode;->printTree(Z)V

    .line 1003
    :goto_4
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "\nCompleted Safe Point Reverse Rules Parse Tree..."

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1004
    iget-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    const/4 v3, 0x3

    aget-object v1, v1, v3

    if-nez v1, :cond_f

    .line 1005
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 1007
    :cond_f
    iget-object p0, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object p0, p0, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    aget-object p0, p0, v3

    invoke-virtual {p0, v0}, Landroid/icu/text/RBBINode;->printTree(Z)V

    :cond_10
    :goto_5
    return-void

    .line 938
    :cond_11
    iget-short v1, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fPushState:S

    const v3, 0x10201

    if-eqz v1, :cond_13

    .line 939
    iget v1, p0, Landroid/icu/text/RBBIRuleScanner;->fStackPtr:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/icu/text/RBBIRuleScanner;->fStackPtr:I

    .line 940
    iget v1, p0, Landroid/icu/text/RBBIRuleScanner;->fStackPtr:I

    const/16 v4, 0x64

    if-lt v1, v4, :cond_12

    .line 941
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "RBBIRuleScanner.parse() - state stack overflow."

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 942
    invoke-virtual {p0, v3}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    .line 944
    :cond_12
    iget-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fStack:[S

    iget v4, p0, Landroid/icu/text/RBBIRuleScanner;->fStackPtr:I

    iget-short v5, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fPushState:S

    aput-short v5, v1, v4

    .line 947
    :cond_13
    iget-boolean v1, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fNextChar:Z

    if-eqz v1, :cond_14

    .line 948
    iget-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    invoke-virtual {p0, v1}, Landroid/icu/text/RBBIRuleScanner;->nextChar(Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;)V

    .line 953
    :cond_14
    iget-short v1, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fNextState:S

    if-eq v1, v6, :cond_15

    .line 954
    iget-short v1, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fNextState:S

    goto/16 :goto_0

    .line 956
    :cond_15
    iget-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fStack:[S

    iget v2, p0, Landroid/icu/text/RBBIRuleScanner;->fStackPtr:I

    aget-short v1, v1, v2

    sub-int/2addr v2, v0

    .line 957
    iput v2, p0, Landroid/icu/text/RBBIRuleScanner;->fStackPtr:I

    .line 958
    iget v2, p0, Landroid/icu/text/RBBIRuleScanner;->fStackPtr:I

    if-gez v2, :cond_0

    .line 959
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "RBBIRuleScanner.parse() - state stack underflow."

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 960
    invoke-virtual {p0, v3}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    goto/16 :goto_0

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
.end method

.method printNodeStack(Ljava/lang/String;)V
    .locals 2

    .line 1020
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".  Dumping node stack...\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1021
    iget p1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    :goto_0
    if-lez p1, :cond_0

    .line 1022
    iget-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/icu/text/RBBINode;->printTree(Z)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method pushNewNode(I)Landroid/icu/text/RBBINode;
    .locals 3

    .line 1034
    iget v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    .line 1035
    iget v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 1036
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "RBBIRuleScanner.pushNewNode - stack overflow."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const v0, 0x10201

    .line 1037
    invoke-virtual {p0, v0}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    .line 1039
    :cond_0
    iget-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    iget v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    new-instance v2, Landroid/icu/text/RBBINode;

    invoke-direct {v2, p1}, Landroid/icu/text/RBBINode;-><init>(I)V

    aput-object v2, v0, v1

    .line 1040
    iget-object p1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    iget p0, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    aget-object p0, p1, p0

    return-object p0
.end method

.method scanSet()V
    .locals 6

    .line 1060
    new-instance v0, Ljava/text/ParsePosition;

    iget v1, p0, Landroid/icu/text/RBBIRuleScanner;->fScanIndex:I

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1063
    iget v1, p0, Landroid/icu/text/RBBIRuleScanner;->fScanIndex:I

    .line 1065
    :try_start_0
    new-instance v2, Landroid/icu/text/UnicodeSet;

    iget-object v3, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    iget-object v4, p0, Landroid/icu/text/RBBIRuleScanner;->fSymbolTable:Landroid/icu/text/RBBISymbolTable;

    const/4 v5, 0x1

    invoke-direct {v2, v3, v0, v4, v5}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const v2, 0x1020f

    .line 1068
    invoke-virtual {p0, v2}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    const/4 v2, 0x0

    .line 1073
    :goto_0
    invoke-virtual {v2}, Landroid/icu/text/UnicodeSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x1020c

    .line 1079
    invoke-virtual {p0, v3}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    .line 1085
    :cond_0
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 1087
    :goto_1
    iget v3, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    if-lt v3, v0, :cond_1

    const/4 v0, 0x0

    .line 1095
    invoke-virtual {p0, v0}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    move-result-object v0

    .line 1096
    iput v1, v0, Landroid/icu/text/RBBINode;->fFirstPos:I

    .line 1097
    iget v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    iput v1, v0, Landroid/icu/text/RBBINode;->fLastPos:I

    .line 1098
    iget-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    iget v3, v0, Landroid/icu/text/RBBINode;->fFirstPos:I

    iget v4, v0, Landroid/icu/text/RBBINode;->fLastPos:I

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    .line 1105
    iget-object v1, v0, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    invoke-virtual {p0, v1, v0, v2}, Landroid/icu/text/RBBIRuleScanner;->findSetFor(Ljava/lang/String;Landroid/icu/text/RBBINode;Landroid/icu/text/UnicodeSet;)V

    return-void

    .line 1090
    :cond_1
    invoke-virtual {p0}, Landroid/icu/text/RBBIRuleScanner;->nextCharLL()I

    goto :goto_1
.end method
