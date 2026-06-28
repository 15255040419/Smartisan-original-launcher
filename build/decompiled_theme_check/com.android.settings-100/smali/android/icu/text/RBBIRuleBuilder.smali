.class Landroid/icu/text/RBBIRuleBuilder;
.super Ljava/lang/Object;
.source "RBBIRuleBuilder.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final U_BRK_ASSIGN_ERROR:I = 0x10206

.field static final U_BRK_ERROR_LIMIT:I = 0x10210

.field static final U_BRK_ERROR_START:I = 0x10200

.field static final U_BRK_HEX_DIGITS_EXPECTED:I = 0x10202

.field static final U_BRK_INIT_ERROR:I = 0x1020b

.field static final U_BRK_INTERNAL_ERROR:I = 0x10201

.field static final U_BRK_MALFORMED_RULE_TAG:I = 0x1020e

.field static final U_BRK_MALFORMED_SET:I = 0x1020f

.field static final U_BRK_MISMATCHED_PAREN:I = 0x10208

.field static final U_BRK_NEW_LINE_IN_QUOTED_STRING:I = 0x10209

.field static final U_BRK_RULE_EMPTY_SET:I = 0x1020c

.field static final U_BRK_RULE_SYNTAX:I = 0x10204

.field static final U_BRK_SEMICOLON_EXPECTED:I = 0x10203

.field static final U_BRK_UNCLOSED_SET:I = 0x10205

.field static final U_BRK_UNDEFINED_VARIABLE:I = 0x1020a

.field static final U_BRK_UNRECOGNIZED_OPTION:I = 0x1020d

.field static final U_BRK_VARIABLE_REDFINITION:I = 0x10207

.field static final fForwardTree:I = 0x0

.field static final fReverseTree:I = 0x1

.field static final fSafeFwdTree:I = 0x2

.field static final fSafeRevTree:I = 0x3


# instance fields
.field fChainRules:Z

.field fDebugEnv:Ljava/lang/String;

.field fDefaultTree:I

.field fForwardTables:Landroid/icu/text/RBBITableBuilder;

.field fLBCMNoChain:Z

.field fLookAheadHardBreak:Z

.field fReverseTables:Landroid/icu/text/RBBITableBuilder;

.field fRuleStatusVals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field fRules:Ljava/lang/String;

.field fSafeFwdTables:Landroid/icu/text/RBBITableBuilder;

.field fSafeRevTables:Landroid/icu/text/RBBITableBuilder;

.field fScanner:Landroid/icu/text/RBBIRuleScanner;

.field fSetBuilder:Landroid/icu/text/RBBISetBuilder;

.field fStatusSets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field fTreeRoots:[Landroid/icu/text/RBBINode;

.field fUSetNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/text/RBBINode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/icu/text/RBBINode;

    .line 40
    iput-object v0, p0, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Landroid/icu/text/RBBIRuleBuilder;->fDefaultTree:I

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RBBIRuleBuilder;->fStatusSets:Ljava/util/Map;

    const-string/jumbo v0, "rbbi"

    .line 143
    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    .line 145
    iput-object p1, p0, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    .line 146
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/icu/text/RBBIRuleBuilder;->fUSetNodes:Ljava/util/List;

    .line 147
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/icu/text/RBBIRuleBuilder;->fRuleStatusVals:Ljava/util/List;

    .line 148
    new-instance p1, Landroid/icu/text/RBBIRuleScanner;

    invoke-direct {p1, p0}, Landroid/icu/text/RBBIRuleScanner;-><init>(Landroid/icu/text/RBBIRuleBuilder;)V

    iput-object p1, p0, Landroid/icu/text/RBBIRuleBuilder;->fScanner:Landroid/icu/text/RBBIRuleScanner;

    .line 149
    new-instance p1, Landroid/icu/text/RBBISetBuilder;

    invoke-direct {p1, p0}, Landroid/icu/text/RBBISetBuilder;-><init>(Landroid/icu/text/RBBIRuleBuilder;)V

    iput-object p1, p0, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    return-void
.end method

.method static final align8(I)I
    .locals 0

    add-int/lit8 p0, p0, 0x7

    and-int/lit8 p0, p0, -0x8

    return p0
.end method

.method static compileRules(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 337
    new-instance v0, Landroid/icu/text/RBBIRuleBuilder;

    invoke-direct {v0, p0}, Landroid/icu/text/RBBIRuleBuilder;-><init>(Ljava/lang/String;)V

    .line 338
    iget-object p0, v0, Landroid/icu/text/RBBIRuleBuilder;->fScanner:Landroid/icu/text/RBBIRuleScanner;

    invoke-virtual {p0}, Landroid/icu/text/RBBIRuleScanner;->parse()V

    .line 346
    iget-object p0, v0, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    invoke-virtual {p0}, Landroid/icu/text/RBBISetBuilder;->build()V

    .line 351
    new-instance p0, Landroid/icu/text/RBBITableBuilder;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/icu/text/RBBITableBuilder;-><init>(Landroid/icu/text/RBBIRuleBuilder;I)V

    iput-object p0, v0, Landroid/icu/text/RBBIRuleBuilder;->fForwardTables:Landroid/icu/text/RBBITableBuilder;

    .line 352
    new-instance p0, Landroid/icu/text/RBBITableBuilder;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/icu/text/RBBITableBuilder;-><init>(Landroid/icu/text/RBBIRuleBuilder;I)V

    iput-object p0, v0, Landroid/icu/text/RBBIRuleBuilder;->fReverseTables:Landroid/icu/text/RBBITableBuilder;

    .line 353
    new-instance p0, Landroid/icu/text/RBBITableBuilder;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Landroid/icu/text/RBBITableBuilder;-><init>(Landroid/icu/text/RBBIRuleBuilder;I)V

    iput-object p0, v0, Landroid/icu/text/RBBIRuleBuilder;->fSafeFwdTables:Landroid/icu/text/RBBITableBuilder;

    .line 354
    new-instance p0, Landroid/icu/text/RBBITableBuilder;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Landroid/icu/text/RBBITableBuilder;-><init>(Landroid/icu/text/RBBIRuleBuilder;I)V

    iput-object p0, v0, Landroid/icu/text/RBBIRuleBuilder;->fSafeRevTables:Landroid/icu/text/RBBITableBuilder;

    .line 355
    iget-object p0, v0, Landroid/icu/text/RBBIRuleBuilder;->fForwardTables:Landroid/icu/text/RBBITableBuilder;

    invoke-virtual {p0}, Landroid/icu/text/RBBITableBuilder;->build()V

    .line 356
    iget-object p0, v0, Landroid/icu/text/RBBIRuleBuilder;->fReverseTables:Landroid/icu/text/RBBITableBuilder;

    invoke-virtual {p0}, Landroid/icu/text/RBBITableBuilder;->build()V

    .line 357
    iget-object p0, v0, Landroid/icu/text/RBBIRuleBuilder;->fSafeFwdTables:Landroid/icu/text/RBBITableBuilder;

    invoke-virtual {p0}, Landroid/icu/text/RBBITableBuilder;->build()V

    .line 358
    iget-object p0, v0, Landroid/icu/text/RBBIRuleBuilder;->fSafeRevTables:Landroid/icu/text/RBBITableBuilder;

    invoke-virtual {p0}, Landroid/icu/text/RBBITableBuilder;->build()V

    .line 359
    iget-object p0, v0, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string/jumbo v1, "states"

    .line 360
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_0

    .line 361
    iget-object p0, v0, Landroid/icu/text/RBBIRuleBuilder;->fForwardTables:Landroid/icu/text/RBBITableBuilder;

    invoke-virtual {p0}, Landroid/icu/text/RBBITableBuilder;->printRuleStatusTable()V

    .line 368
    :cond_0
    invoke-virtual {v0, p1}, Landroid/icu/text/RBBIRuleBuilder;->flattenData(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method flattenData(Ljava/io/OutputStream;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 166
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 170
    iget-object v3, v0, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    invoke-static {v3}, Landroid/icu/text/RBBIRuleScanner;->stripRules(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 178
    iget-object v4, v0, Landroid/icu/text/RBBIRuleBuilder;->fForwardTables:Landroid/icu/text/RBBITableBuilder;

    invoke-virtual {v4}, Landroid/icu/text/RBBITableBuilder;->getTableSize()I

    move-result v4

    invoke-static {v4}, Landroid/icu/text/RBBIRuleBuilder;->align8(I)I

    move-result v4

    .line 179
    iget-object v5, v0, Landroid/icu/text/RBBIRuleBuilder;->fReverseTables:Landroid/icu/text/RBBITableBuilder;

    invoke-virtual {v5}, Landroid/icu/text/RBBITableBuilder;->getTableSize()I

    move-result v5

    invoke-static {v5}, Landroid/icu/text/RBBIRuleBuilder;->align8(I)I

    move-result v5

    .line 181
    iget-object v6, v0, Landroid/icu/text/RBBIRuleBuilder;->fSafeRevTables:Landroid/icu/text/RBBITableBuilder;

    invoke-virtual {v6}, Landroid/icu/text/RBBITableBuilder;->getTableSize()I

    move-result v6

    invoke-static {v6}, Landroid/icu/text/RBBIRuleBuilder;->align8(I)I

    move-result v6

    .line 182
    iget-object v7, v0, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    invoke-virtual {v7}, Landroid/icu/text/RBBISetBuilder;->getTrieSize()I

    move-result v7

    invoke-static {v7}, Landroid/icu/text/RBBIRuleBuilder;->align8(I)I

    move-result v7

    .line 183
    iget-object v8, v0, Landroid/icu/text/RBBIRuleBuilder;->fRuleStatusVals:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x4

    mul-int/2addr v8, v9

    invoke-static {v8}, Landroid/icu/text/RBBIRuleBuilder;->align8(I)I

    move-result v8

    .line 184
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x2

    mul-int/2addr v10, v11

    invoke-static {v10}, Landroid/icu/text/RBBIRuleBuilder;->align8(I)I

    move-result v10

    add-int/lit8 v12, v4, 0x60

    const/4 v13, 0x0

    add-int/2addr v12, v13

    add-int/2addr v12, v13

    if-lez v6, :cond_0

    move v14, v6

    goto :goto_0

    :cond_0
    move v14, v5

    :goto_0
    add-int/2addr v12, v14

    add-int/2addr v12, v8

    add-int/2addr v12, v7

    add-int/2addr v12, v10

    const v7, 0x42726b20

    const/high16 v10, 0x4000000

    .line 197
    invoke-static {v7, v10, v13, v2}, Landroid/icu/impl/ICUBinary;->writeHeader(IIILjava/io/DataOutputStream;)I

    const/16 v7, 0x18

    new-array v7, v7, [I

    const v14, 0xb1a0

    aput v14, v7, v13

    const/4 v14, 0x1

    aput v10, v7, v14

    aput v12, v7, v11

    const/4 v10, 0x3

    .line 206
    iget-object v12, v0, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    invoke-virtual {v12}, Landroid/icu/text/RBBISetBuilder;->getNumCharCategories()I

    move-result v12

    aput v12, v7, v10

    const/16 v10, 0x60

    aput v10, v7, v9

    const/4 v10, 0x5

    aput v4, v7, v10

    .line 221
    aget v10, v7, v9

    add-int/2addr v10, v4

    const/4 v4, 0x6

    aput v10, v7, v4

    const/4 v10, 0x7

    aput v13, v7, v10

    .line 225
    aget v4, v7, v4

    add-int/2addr v4, v13

    const/16 v10, 0x8

    aput v4, v7, v10

    const/16 v4, 0x9

    aput v13, v7, v4

    .line 230
    aget v4, v7, v10

    add-int/2addr v4, v13

    const/16 v10, 0xa

    aput v4, v7, v10

    const/16 v4, 0xb

    if-lez v6, :cond_1

    aput v6, v7, v4

    goto :goto_1

    :cond_1
    aput v5, v7, v4

    .line 239
    :goto_1
    aget v5, v7, v10

    aget v4, v7, v4

    add-int/2addr v5, v4

    const/16 v4, 0xc

    aput v5, v7, v4

    .line 241
    iget-object v5, v0, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    invoke-virtual {v5}, Landroid/icu/text/RBBISetBuilder;->getTrieSize()I

    move-result v5

    const/16 v12, 0xd

    aput v5, v7, v12

    .line 242
    aget v5, v7, v4

    aget v15, v7, v12

    add-int/2addr v5, v15

    const/16 v15, 0x10

    aput v5, v7, v15

    const/16 v5, 0x11

    aput v8, v7, v5

    .line 245
    aget v5, v7, v15

    add-int/2addr v5, v8

    const/16 v8, 0xe

    aput v5, v7, v8

    const/16 v5, 0xf

    .line 247
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v16

    mul-int/lit8 v16, v16, 0x2

    aput v16, v7, v5

    move v5, v13

    move v14, v5

    .line 248
    :goto_2
    array-length v11, v7

    if-ge v5, v11, :cond_2

    .line 249
    aget v11, v7, v5

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v14, v14, 0x4

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 255
    :cond_2
    iget-object v5, v0, Landroid/icu/text/RBBIRuleBuilder;->fForwardTables:Landroid/icu/text/RBBITableBuilder;

    invoke-virtual {v5}, Landroid/icu/text/RBBITableBuilder;->exportTable()[S

    move-result-object v5

    .line 256
    aget v9, v7, v9

    if-ne v14, v9, :cond_3

    const/4 v9, 0x1

    goto :goto_3

    :cond_3
    move v9, v13

    :goto_3
    invoke-static {v9}, Landroid/icu/impl/Assert;->assrt(Z)V

    move v9, v13

    .line 257
    :goto_4
    array-length v11, v5

    if-ge v9, v11, :cond_4

    .line 258
    aget-short v11, v5, v9

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeShort(I)V

    add-int/lit8 v14, v14, 0x2

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 282
    :cond_4
    aget v5, v7, v10

    if-ne v14, v5, :cond_5

    const/4 v5, 0x1

    goto :goto_5

    :cond_5
    move v5, v13

    :goto_5
    invoke-static {v5}, Landroid/icu/impl/Assert;->assrt(Z)V

    if-lez v6, :cond_6

    .line 284
    iget-object v5, v0, Landroid/icu/text/RBBIRuleBuilder;->fSafeRevTables:Landroid/icu/text/RBBITableBuilder;

    invoke-virtual {v5}, Landroid/icu/text/RBBITableBuilder;->exportTable()[S

    move-result-object v5

    goto :goto_6

    .line 286
    :cond_6
    iget-object v5, v0, Landroid/icu/text/RBBIRuleBuilder;->fReverseTables:Landroid/icu/text/RBBITableBuilder;

    invoke-virtual {v5}, Landroid/icu/text/RBBITableBuilder;->exportTable()[S

    move-result-object v5

    :goto_6
    move v6, v13

    .line 288
    :goto_7
    array-length v9, v5

    if-ge v6, v9, :cond_7

    .line 289
    aget-short v9, v5, v6

    invoke-virtual {v2, v9}, Ljava/io/DataOutputStream;->writeShort(I)V

    add-int/lit8 v14, v14, 0x2

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 294
    :cond_7
    aget v4, v7, v4

    if-ne v14, v4, :cond_8

    const/4 v4, 0x1

    goto :goto_8

    :cond_8
    move v4, v13

    :goto_8
    invoke-static {v4}, Landroid/icu/impl/Assert;->assrt(Z)V

    .line 295
    iget-object v4, v0, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    invoke-virtual {v4, v1}, Landroid/icu/text/RBBISetBuilder;->serializeTrie(Ljava/io/OutputStream;)V

    .line 296
    aget v1, v7, v12

    add-int/2addr v14, v1

    .line 297
    :goto_9
    rem-int/lit8 v1, v14, 0x8

    if-eqz v1, :cond_9

    .line 298
    invoke-virtual {v2, v13}, Ljava/io/DataOutputStream;->write(I)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    .line 303
    :cond_9
    aget v1, v7, v15

    if-ne v14, v1, :cond_a

    const/4 v1, 0x1

    goto :goto_a

    :cond_a
    move v1, v13

    :goto_a
    invoke-static {v1}, Landroid/icu/impl/Assert;->assrt(Z)V

    .line 304
    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fRuleStatusVals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 305
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v14, v14, 0x4

    goto :goto_b

    .line 309
    :cond_b
    :goto_c
    rem-int/lit8 v0, v14, 0x8

    if-eqz v0, :cond_c

    .line 310
    invoke-virtual {v2, v13}, Ljava/io/DataOutputStream;->write(I)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_c

    .line 316
    :cond_c
    aget v0, v7, v8

    if-ne v14, v0, :cond_d

    const/16 v16, 0x1

    goto :goto_d

    :cond_d
    move/from16 v16, v13

    :goto_d
    invoke-static/range {v16 .. v16}, Landroid/icu/impl/Assert;->assrt(Z)V

    .line 317
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeChars(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    add-int/2addr v14, v0

    .line 319
    :goto_e
    rem-int/lit8 v0, v14, 0x8

    if-eqz v0, :cond_e

    .line 320
    invoke-virtual {v2, v13}, Ljava/io/DataOutputStream;->write(I)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_e

    :cond_e
    return-void
.end method
