.class Landroid/icu/text/RBBISetBuilder;
.super Ljava/lang/Object;
.source "RBBISetBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/RBBISetBuilder$RangeDescriptor;
    }
.end annotation


# instance fields
.field fFrozenTrie:Landroid/icu/impl/Trie2_16;

.field fGroupCount:I

.field fRB:Landroid/icu/text/RBBIRuleBuilder;

.field fRangeList:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

.field fSawBOF:Z

.field fTrie:Landroid/icu/impl/Trie2Writable;


# direct methods
.method constructor <init>(Landroid/icu/text/RBBIRuleBuilder;)V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Landroid/icu/text/RBBISetBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    return-void
.end method


# virtual methods
.method addValToSet(Landroid/icu/text/RBBINode;I)V
    .locals 1

    .line 347
    new-instance p0, Landroid/icu/text/RBBINode;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/icu/text/RBBINode;-><init>(I)V

    .line 348
    iput p2, p0, Landroid/icu/text/RBBINode;->fVal:I

    .line 349
    iget-object p2, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    if-nez p2, :cond_0

    .line 350
    iput-object p0, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    .line 351
    iput-object p1, p0, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    goto :goto_0

    .line 356
    :cond_0
    new-instance p2, Landroid/icu/text/RBBINode;

    const/16 v0, 0x9

    invoke-direct {p2, v0}, Landroid/icu/text/RBBINode;-><init>(I)V

    .line 357
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iput-object v0, p2, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    .line 358
    iput-object p0, p2, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    .line 359
    iget-object p0, p2, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iput-object p2, p0, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    .line 360
    iget-object p0, p2, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iput-object p2, p0, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    .line 361
    iput-object p2, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    .line 362
    iput-object p1, p2, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    :goto_0
    return-void
.end method

.method addValToSets(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/icu/text/RBBINode;",
            ">;I)V"
        }
    .end annotation

    .line 341
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/RBBINode;

    .line 342
    invoke-virtual {p0, v0, p2}, Landroid/icu/text/RBBISetBuilder;->addValToSet(Landroid/icu/text/RBBINode;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method build()V
    .locals 10

    .line 163
    iget-object v0, p0, Landroid/icu/text/RBBISetBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/RBBISetBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    const-string/jumbo v1, "usets"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/icu/text/RBBISetBuilder;->printSets()V

    .line 168
    :cond_0
    new-instance v0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    invoke-direct {v0}, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RBBISetBuilder;->fRangeList:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    .line 169
    iget-object v0, p0, Landroid/icu/text/RBBISetBuilder;->fRangeList:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    const/4 v1, 0x0

    iput v1, v0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fStartChar:I

    const v2, 0x10ffff

    .line 170
    iput v2, v0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    .line 175
    iget-object v0, p0, Landroid/icu/text/RBBISetBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fUSetNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/RBBINode;

    .line 176
    iget-object v3, v2, Landroid/icu/text/RBBINode;->fInputSet:Landroid/icu/text/UnicodeSet;

    .line 177
    invoke-virtual {v3}, Landroid/icu/text/UnicodeSet;->getRangeCount()I

    move-result v4

    .line 179
    iget-object v5, p0, Landroid/icu/text/RBBISetBuilder;->fRangeList:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    move-object v6, v5

    move v5, v1

    :goto_1
    if-lt v5, v4, :cond_1

    goto :goto_0

    .line 185
    :cond_1
    invoke-virtual {v3, v5}, Landroid/icu/text/UnicodeSet;->getRangeStart(I)I

    move-result v7

    .line 186
    invoke-virtual {v3, v5}, Landroid/icu/text/UnicodeSet;->getRangeEnd(I)I

    move-result v8

    .line 190
    :goto_2
    iget v9, v6, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    if-ge v9, v7, :cond_2

    .line 191
    iget-object v6, v6, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    goto :goto_2

    .line 200
    :cond_2
    iget v9, v6, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fStartChar:I

    if-ge v9, v7, :cond_3

    .line 201
    invoke-virtual {v6, v7}, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->split(I)V

    goto :goto_1

    .line 210
    :cond_3
    iget v7, v6, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    if-le v7, v8, :cond_4

    add-int/lit8 v7, v8, 0x1

    .line 211
    invoke-virtual {v6, v7}, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->split(I)V

    .line 216
    :cond_4
    iget-object v7, v6, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    const/4 v9, -0x1

    if-ne v7, v9, :cond_5

    .line 217
    iget-object v7, v6, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_5
    iget v7, v6, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    if-ne v8, v7, :cond_6

    add-int/lit8 v5, v5, 0x1

    .line 224
    :cond_6
    iget-object v6, v6, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    goto :goto_1

    .line 228
    :cond_7
    iget-object v0, p0, Landroid/icu/text/RBBISetBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/icu/text/RBBISetBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    const-string/jumbo v2, "range"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_8

    invoke-virtual {p0}, Landroid/icu/text/RBBISetBuilder;->printRanges()V

    .line 242
    :cond_8
    iget-object v0, p0, Landroid/icu/text/RBBISetBuilder;->fRangeList:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    :goto_3
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_c

    .line 243
    iget-object v4, p0, Landroid/icu/text/RBBISetBuilder;->fRangeList:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    :goto_4
    if-eq v4, v0, :cond_a

    .line 244
    iget-object v5, v0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    iget-object v6, v4, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 245
    iget v4, v4, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    iput v4, v0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    goto :goto_5

    .line 243
    :cond_9
    iget-object v4, v4, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    goto :goto_4

    .line 249
    :cond_a
    :goto_5
    iget v4, v0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    if-nez v4, :cond_b

    .line 250
    iget v4, p0, Landroid/icu/text/RBBISetBuilder;->fGroupCount:I

    add-int/2addr v4, v3

    iput v4, p0, Landroid/icu/text/RBBISetBuilder;->fGroupCount:I

    .line 251
    iget v3, p0, Landroid/icu/text/RBBISetBuilder;->fGroupCount:I

    add-int/2addr v3, v2

    iput v3, v0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    .line 252
    invoke-virtual {v0}, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->setDictionaryFlag()V

    .line 253
    iget-object v3, v0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    iget v4, p0, Landroid/icu/text/RBBISetBuilder;->fGroupCount:I

    add-int/2addr v4, v2

    invoke-virtual {p0, v3, v4}, Landroid/icu/text/RBBISetBuilder;->addValToSets(Ljava/util/List;I)V

    .line 242
    :cond_b
    iget-object v0, v0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    goto :goto_3

    .line 270
    :cond_c
    iget-object v0, p0, Landroid/icu/text/RBBISetBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fUSetNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/text/RBBINode;

    .line 271
    iget-object v5, v4, Landroid/icu/text/RBBINode;->fInputSet:Landroid/icu/text/UnicodeSet;

    const-string v6, "eof"

    .line 272
    invoke-virtual {v5, v6}, Landroid/icu/text/UnicodeSet;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 273
    invoke-virtual {p0, v4, v3}, Landroid/icu/text/RBBISetBuilder;->addValToSet(Landroid/icu/text/RBBINode;I)V

    :cond_e
    const-string v6, "bof"

    .line 275
    invoke-virtual {v5, v6}, Landroid/icu/text/UnicodeSet;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 276
    invoke-virtual {p0, v4, v2}, Landroid/icu/text/RBBISetBuilder;->addValToSet(Landroid/icu/text/RBBINode;I)V

    .line 277
    iput-boolean v3, p0, Landroid/icu/text/RBBISetBuilder;->fSawBOF:Z

    goto :goto_6

    .line 282
    :cond_f
    iget-object v0, p0, Landroid/icu/text/RBBISetBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/icu/text/RBBISetBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    const-string/jumbo v2, "rgroup"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_10

    invoke-virtual {p0}, Landroid/icu/text/RBBISetBuilder;->printRangeGroups()V

    .line 283
    :cond_10
    iget-object v0, p0, Landroid/icu/text/RBBISetBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/icu/text/RBBISetBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    const-string v2, "esets"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_11

    invoke-virtual {p0}, Landroid/icu/text/RBBISetBuilder;->printSets()V

    .line 285
    :cond_11
    new-instance v0, Landroid/icu/impl/Trie2Writable;

    invoke-direct {v0, v1, v1}, Landroid/icu/impl/Trie2Writable;-><init>(II)V

    iput-object v0, p0, Landroid/icu/text/RBBISetBuilder;->fTrie:Landroid/icu/impl/Trie2Writable;

    .line 288
    iget-object v0, p0, Landroid/icu/text/RBBISetBuilder;->fRangeList:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    :goto_7
    if-eqz v0, :cond_12

    .line 289
    iget-object v1, p0, Landroid/icu/text/RBBISetBuilder;->fTrie:Landroid/icu/impl/Trie2Writable;

    iget v2, v0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fStartChar:I

    iget v4, v0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    iget v5, v0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/icu/impl/Trie2Writable;->setRange(IIIZ)Landroid/icu/impl/Trie2Writable;

    .line 288
    iget-object v0, v0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    goto :goto_7

    :cond_12
    return-void
.end method

.method getFirstChar(I)I
    .locals 1

    .line 396
    iget-object p0, p0, Landroid/icu/text/RBBISetBuilder;->fRangeList:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    :goto_0
    if-eqz p0, :cond_1

    .line 397
    iget v0, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    if-ne v0, p1, :cond_0

    .line 398
    iget p0, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fStartChar:I

    goto :goto_1

    .line 396
    :cond_0
    iget-object p0, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_1
    return p0
.end method

.method getNumCharCategories()I
    .locals 0

    .line 373
    iget p0, p0, Landroid/icu/text/RBBISetBuilder;->fGroupCount:I

    add-int/lit8 p0, p0, 0x3

    return p0
.end method

.method getTrieSize()I
    .locals 1

    .line 305
    iget-object v0, p0, Landroid/icu/text/RBBISetBuilder;->fFrozenTrie:Landroid/icu/impl/Trie2_16;

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Landroid/icu/text/RBBISetBuilder;->fTrie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v0}, Landroid/icu/impl/Trie2Writable;->toTrie2_16()Landroid/icu/impl/Trie2_16;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/RBBISetBuilder;->fFrozenTrie:Landroid/icu/impl/Trie2_16;

    const/4 v0, 0x0

    .line 307
    iput-object v0, p0, Landroid/icu/text/RBBISetBuilder;->fTrie:Landroid/icu/impl/Trie2Writable;

    .line 309
    :cond_0
    iget-object p0, p0, Landroid/icu/text/RBBISetBuilder;->fFrozenTrie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {p0}, Landroid/icu/impl/Trie2_16;->getSerializedLength()I

    move-result p0

    return p0
.end method

.method printRangeGroups()V
    .locals 8

    .line 453
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\nRanges grouped by Unicode Set Membership...\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 454
    iget-object p0, p0, Landroid/icu/text/RBBISetBuilder;->fRangeList:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const-string v2, "\n"

    if-eqz p0, :cond_8

    .line 455
    iget v3, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    const v4, 0xbfff

    and-int/2addr v3, v4

    if-le v3, v1, :cond_7

    const/16 v1, 0xa

    const-string v4, " "

    if-ge v3, v1, :cond_0

    .line 458
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 459
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 461
    iget v1, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, " <DICT> "

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_1
    move v1, v0

    .line 463
    :goto_1
    iget-object v5, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 464
    iget-object v5, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/text/RBBINode;

    .line 466
    iget-object v5, v5, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    if-eqz v5, :cond_2

    .line 468
    iget-object v5, v5, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    if-eqz v5, :cond_2

    .line 469
    iget v6, v5, Landroid/icu/text/RBBINode;->fType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 470
    iget-object v5, v5, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const-string v5, "anon"

    .line 473
    :goto_2
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move-object v1, p0

    move v4, v0

    :goto_3
    if-eqz v1, :cond_6

    .line 478
    iget v5, v1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    iget v6, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    if-ne v5, v6, :cond_5

    add-int/lit8 v5, v4, 0x1

    .line 479
    rem-int/lit8 v4, v4, 0x5

    if-nez v4, :cond_4

    .line 480
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "\n    "

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 482
    :cond_4
    iget v4, v1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fStartChar:I

    const/4 v6, -0x1

    invoke-static {v4, v6}, Landroid/icu/text/RBBINode;->printHex(II)V

    .line 483
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "-"

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 484
    iget v4, v1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    invoke-static {v4, v0}, Landroid/icu/text/RBBINode;->printHex(II)V

    move v4, v5

    .line 477
    :cond_5
    iget-object v1, v1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    goto :goto_3

    .line 487
    :cond_6
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    move v1, v3

    .line 454
    :cond_7
    iget-object p0, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    goto/16 :goto_0

    .line 490
    :cond_8
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method printRanges()V
    .locals 4

    .line 418
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\n\n Nonoverlapping Ranges ...\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 419
    iget-object p0, p0, Landroid/icu/text/RBBISetBuilder;->fRangeList:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    :goto_0
    if-eqz p0, :cond_2

    .line 420
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fStartChar:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 422
    :goto_1
    iget-object v1, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 423
    iget-object v1, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/RBBINode;

    .line 425
    iget-object v1, v1, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    if-eqz v1, :cond_0

    .line 427
    iget-object v1, v1, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    if-eqz v1, :cond_0

    .line 428
    iget v2, v1, Landroid/icu/text/RBBINode;->fType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 429
    iget-object v1, v1, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    goto :goto_2

    :cond_0
    const-string v1, "anon"

    .line 432
    :goto_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 434
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 419
    iget-object p0, p0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    goto :goto_0

    :cond_2
    return-void
.end method

.method printSets()V
    .locals 7

    .line 504
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\n\nUnicode Sets List\n------------------\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 505
    :goto_0
    iget-object v1, p0, Landroid/icu/text/RBBISetBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fUSetNodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "\n"

    if-ge v0, v1, :cond_2

    .line 511
    iget-object v1, p0, Landroid/icu/text/RBBISetBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fUSetNodes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/RBBINode;

    const/4 v3, 0x2

    .line 514
    invoke-static {v3, v0}, Landroid/icu/text/RBBINode;->printInt(II)V

    .line 516
    iget-object v4, v1, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    if-eqz v4, :cond_0

    .line 518
    iget-object v4, v4, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    if-eqz v4, :cond_0

    .line 519
    iget v5, v4, Landroid/icu/text/RBBINode;->fType:I

    if-ne v5, v3, :cond_0

    .line 520
    iget-object v3, v4, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string v3, "anonymous"

    .line 523
    :goto_1
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 524
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "   "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 525
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v4, v1, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 526
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 527
    iget-object v2, v1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    if-eqz v2, :cond_1

    .line 528
    iget-object v1, v1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/icu/text/RBBINode;->printTree(Z)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 531
    :cond_2
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method sawBOF()Z
    .locals 0

    .line 383
    iget-boolean p0, p0, Landroid/icu/text/RBBISetBuilder;->fSawBOF:Z

    return p0
.end method

.method serializeTrie(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 319
    iget-object v0, p0, Landroid/icu/text/RBBISetBuilder;->fFrozenTrie:Landroid/icu/impl/Trie2_16;

    if-nez v0, :cond_0

    .line 320
    iget-object v0, p0, Landroid/icu/text/RBBISetBuilder;->fTrie:Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v0}, Landroid/icu/impl/Trie2Writable;->toTrie2_16()Landroid/icu/impl/Trie2_16;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/RBBISetBuilder;->fFrozenTrie:Landroid/icu/impl/Trie2_16;

    const/4 v0, 0x0

    .line 321
    iput-object v0, p0, Landroid/icu/text/RBBISetBuilder;->fTrie:Landroid/icu/impl/Trie2Writable;

    .line 323
    :cond_0
    iget-object p0, p0, Landroid/icu/text/RBBISetBuilder;->fFrozenTrie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {p0, p1}, Landroid/icu/impl/Trie2_16;->serialize(Ljava/io/OutputStream;)I

    return-void
.end method
