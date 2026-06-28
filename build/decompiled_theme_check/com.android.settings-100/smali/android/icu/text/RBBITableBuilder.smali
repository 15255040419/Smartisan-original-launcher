.class Landroid/icu/text/RBBITableBuilder;
.super Ljava/lang/Object;
.source "RBBITableBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    }
.end annotation


# instance fields
.field private fDStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private fRB:Landroid/icu/text/RBBIRuleBuilder;

.field private fRootIx:I


# direct methods
.method constructor <init>(Landroid/icu/text/RBBIRuleBuilder;I)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput p2, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    .line 84
    iput-object p1, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    .line 85
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    return-void
.end method


# virtual methods
.method addRuleRootNodes(Ljava/util/List;Landroid/icu/text/RBBINode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/icu/text/RBBINode;",
            ">;",
            "Landroid/icu/text/RBBINode;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 377
    :cond_0
    iget-boolean v0, p2, Landroid/icu/text/RBBINode;->fRuleRoot:Z

    if-eqz v0, :cond_1

    .line 378
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 383
    :cond_1
    iget-object v0, p2, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/RBBITableBuilder;->addRuleRootNodes(Ljava/util/List;Landroid/icu/text/RBBINode;)V

    .line 384
    iget-object p2, p2, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/RBBITableBuilder;->addRuleRootNodes(Ljava/util/List;Landroid/icu/text/RBBINode;)V

    return-void
.end method

.method bofFixup()V
    .locals 6

    .line 498
    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v1, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget-object v0, v0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    .line 499
    iget v1, v0, Landroid/icu/text/RBBINode;->fType:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-static {v1}, Landroid/icu/impl/Assert;->assrt(Z)V

    .line 500
    iget v1, v0, Landroid/icu/text/RBBINode;->fVal:I

    const/4 v5, 0x2

    if-ne v1, v5, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-static {v2}, Landroid/icu/impl/Assert;->assrt(Z)V

    .line 507
    iget-object v1, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget p0, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object p0, v1, p0

    iget-object p0, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget-object p0, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iget-object p0, p0, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    .line 508
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/RBBINode;

    .line 509
    iget v2, v1, Landroid/icu/text/RBBINode;->fType:I

    if-eq v2, v4, :cond_3

    goto :goto_2

    .line 513
    :cond_3
    iget v2, v1, Landroid/icu/text/RBBINode;->fVal:I

    iget v3, v0, Landroid/icu/text/RBBINode;->fVal:I

    if-ne v2, v3, :cond_2

    .line 519
    iget-object v2, v0, Landroid/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    iget-object v1, v1, Landroid/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_4
    return-void
.end method

.method build()V
    .locals 6

    .line 100
    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v1, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v1, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    iget-object v2, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v3, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/icu/text/RBBINode;->flattenVariables()Landroid/icu/text/RBBINode;

    move-result-object v2

    aput-object v2, v0, v1

    .line 109
    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    const-string v2, "ftree"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 110
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Parse tree after flattening variable references."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v2, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Landroid/icu/text/RBBINode;->printTree(Z)V

    .line 120
    :cond_1
    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    invoke-virtual {v0}, Landroid/icu/text/RBBISetBuilder;->sawBOF()Z

    move-result v0

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    .line 121
    new-instance v0, Landroid/icu/text/RBBINode;

    invoke-direct {v0, v2}, Landroid/icu/text/RBBINode;-><init>(I)V

    .line 122
    new-instance v3, Landroid/icu/text/RBBINode;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/icu/text/RBBINode;-><init>(I)V

    .line 123
    iput-object v3, v0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    .line 124
    iget-object v4, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v4, v4, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v5, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v4, v4, v5

    iput-object v4, v0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    .line 125
    iput-object v0, v3, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    const/4 v4, 0x2

    .line 126
    iput v4, v3, Landroid/icu/text/RBBINode;->fVal:I

    .line 127
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v4, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aput-object v0, v3, v4

    .line 135
    :cond_2
    new-instance v0, Landroid/icu/text/RBBINode;

    invoke-direct {v0, v2}, Landroid/icu/text/RBBINode;-><init>(I)V

    .line 136
    iget-object v2, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v3, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v2, v2, v3

    iput-object v2, v0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    .line 137
    iget-object v2, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v3, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v2, v2, v3

    iput-object v0, v2, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    .line 138
    new-instance v2, Landroid/icu/text/RBBINode;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Landroid/icu/text/RBBINode;-><init>(I)V

    iput-object v2, v0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    .line 139
    iget-object v2, v0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iput-object v0, v2, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    .line 140
    iget-object v2, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v3, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aput-object v0, v2, v3

    .line 146
    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v2, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/icu/text/RBBINode;->flattenSets()V

    .line 147
    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    const-string/jumbo v2, "stree"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 148
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Parse tree after flattening Unicode Set references."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v2, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Landroid/icu/text/RBBINode;->printTree(Z)V

    .line 160
    :cond_3
    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v1, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/icu/text/RBBITableBuilder;->calcNullable(Landroid/icu/text/RBBINode;)V

    .line 161
    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v1, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/icu/text/RBBITableBuilder;->calcFirstPos(Landroid/icu/text/RBBINode;)V

    .line 162
    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v1, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/icu/text/RBBITableBuilder;->calcLastPos(Landroid/icu/text/RBBINode;)V

    .line 163
    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v1, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/icu/text/RBBITableBuilder;->calcFollowPos(Landroid/icu/text/RBBINode;)V

    .line 164
    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    const-string/jumbo v1, "pos"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_4

    .line 165
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v1, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/icu/text/RBBITableBuilder;->printPosSets(Landroid/icu/text/RBBINode;)V

    .line 172
    :cond_4
    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-boolean v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fChainRules:Z

    if-eqz v0, :cond_5

    .line 173
    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v1, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/icu/text/RBBITableBuilder;->calcChainedFollowPos(Landroid/icu/text/RBBINode;)V

    .line 179
    :cond_5
    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    invoke-virtual {v0}, Landroid/icu/text/RBBISetBuilder;->sawBOF()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 180
    invoke-virtual {p0}, Landroid/icu/text/RBBITableBuilder;->bofFixup()V

    .line 186
    :cond_6
    invoke-virtual {p0}, Landroid/icu/text/RBBITableBuilder;->buildStateTable()V

    .line 187
    invoke-virtual {p0}, Landroid/icu/text/RBBITableBuilder;->flagAcceptingStates()V

    .line 188
    invoke-virtual {p0}, Landroid/icu/text/RBBITableBuilder;->flagLookAheadStates()V

    .line 189
    invoke-virtual {p0}, Landroid/icu/text/RBBITableBuilder;->flagTaggedStates()V

    .line 196
    invoke-virtual {p0}, Landroid/icu/text/RBBITableBuilder;->mergeRuleStatusVals()V

    .line 198
    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    const-string/jumbo v1, "states"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_7

    invoke-virtual {p0}, Landroid/icu/text/RBBITableBuilder;->printStates()V

    :cond_7
    return-void
.end method

.method buildStateTable()V
    .locals 10

    .line 536
    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    invoke-virtual {v0}, Landroid/icu/text/RBBISetBuilder;->getNumCharCategories()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 537
    new-instance v2, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    invoke-direct {v2, v0}, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;-><init>(I)V

    .line 538
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    new-instance v2, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    invoke-direct {v2, v0}, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;-><init>(I)V

    .line 543
    iget-object v3, v2, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fPositions:Ljava/util/Set;

    iget-object v4, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v4, v4, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v5, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v4, v4, v5

    iget-object v4, v4, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 544
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move v2, v1

    .line 550
    :goto_0
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_2

    .line 551
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    .line 552
    iget-boolean v5, v3, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fMarked:Z

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-object v3, v4

    :goto_1
    if-nez v3, :cond_3

    return-void

    .line 562
    :cond_3
    iput-boolean v1, v3, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fMarked:Z

    move v2, v1

    :goto_2
    if-gt v2, v0, :cond_0

    .line 571
    iget-object v5, v3, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fPositions:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v6, v4

    :cond_4
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/icu/text/RBBINode;

    .line 572
    iget v8, v7, Landroid/icu/text/RBBINode;->fType:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_4

    iget v8, v7, Landroid/icu/text/RBBINode;->fVal:I

    if-ne v8, v2, :cond_4

    if-nez v6, :cond_5

    .line 574
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 576
    :cond_5
    iget-object v7, v7, Landroid/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    invoke-interface {v6, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :cond_6
    if-eqz v6, :cond_b

    .line 584
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v5

    const/4 v7, 0x0

    if-lez v5, :cond_7

    move v5, v1

    goto :goto_4

    :cond_7
    move v5, v7

    :goto_4
    invoke-static {v5}, Landroid/icu/impl/Assert;->assrt(Z)V

    move v5, v7

    .line 586
    :goto_5
    iget-object v8, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_9

    .line 588
    iget-object v8, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    .line 589
    iget-object v9, v8, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fPositions:Ljava/util/Set;

    invoke-interface {v6, v9}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 590
    iget-object v6, v8, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fPositions:Ljava/util/Set;

    move v7, v1

    goto :goto_6

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_9
    move v5, v7

    :goto_6
    if-nez v7, :cond_a

    .line 600
    new-instance v5, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    invoke-direct {v5, v0}, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;-><init>(I)V

    .line 601
    iput-object v6, v5, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fPositions:Ljava/util/Set;

    .line 602
    iget-object v6, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    iget-object v5, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v1

    .line 607
    :cond_a
    iget-object v6, v3, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fDtran:[I

    aput v5, v6, v2

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method calcChainedFollowPos(Landroid/icu/text/RBBINode;)V
    .locals 8

    .line 395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 396
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x6

    .line 399
    invoke-virtual {p1, v0, v2}, Landroid/icu/text/RBBINode;->findNodes(Ljava/util/List;I)V

    const/4 v2, 0x3

    .line 402
    invoke-virtual {p1, v1, v2}, Landroid/icu/text/RBBINode;->findNodes(Ljava/util/List;I)V

    .line 408
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 409
    invoke-virtual {p0, v3, p1}, Landroid/icu/text/RBBITableBuilder;->addRuleRootNodes(Ljava/util/List;Landroid/icu/text/RBBINode;)V

    .line 411
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 412
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/text/RBBINode;

    .line 413
    iget-boolean v5, v4, Landroid/icu/text/RBBINode;->fChainIn:Z

    if-eqz v5, :cond_0

    .line 414
    iget-object v4, v4, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    invoke-interface {p1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 420
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/RBBINode;

    const/4 v4, 0x0

    .line 425
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/icu/text/RBBINode;

    .line 426
    iget-object v7, v3, Landroid/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_4
    move-object v3, v4

    :goto_2
    if-nez v3, :cond_5

    goto :goto_1

    .line 442
    :cond_5
    iget-object v4, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-boolean v4, v4, Landroid/icu/text/RBBIRuleBuilder;->fLBCMNoChain:Z

    if-eqz v4, :cond_6

    .line 443
    iget-object v4, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v4, v4, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    iget v5, v3, Landroid/icu/text/RBBINode;->fVal:I

    invoke-virtual {v4, v5}, Landroid/icu/text/RBBISetBuilder;->getFirstChar(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_6

    const/16 v5, 0x1008

    .line 446
    invoke-static {v4, v5}, Landroid/icu/lang/UCharacter;->getIntPropertyValue(II)I

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_6

    goto :goto_1

    .line 456
    :cond_6
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/text/RBBINode;

    .line 457
    iget v6, v5, Landroid/icu/text/RBBINode;->fType:I

    if-eq v6, v2, :cond_8

    goto :goto_3

    .line 461
    :cond_8
    iget v6, v3, Landroid/icu/text/RBBINode;->fVal:I

    iget v7, v5, Landroid/icu/text/RBBINode;->fVal:I

    if-ne v6, v7, :cond_7

    .line 469
    iget-object v6, v3, Landroid/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    iget-object v5, v5, Landroid/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :cond_9
    return-void
.end method

.method calcFirstPos(Landroid/icu/text/RBBINode;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 259
    :cond_0
    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_6

    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 270
    :cond_1
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    invoke-virtual {p0, v0}, Landroid/icu/text/RBBITableBuilder;->calcFirstPos(Landroid/icu/text/RBBINode;)V

    .line 271
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    invoke-virtual {p0, v0}, Landroid/icu/text/RBBITableBuilder;->calcFirstPos(Landroid/icu/text/RBBINode;)V

    .line 274
    iget p0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/16 v0, 0x9

    if-ne p0, v0, :cond_2

    .line 275
    iget-object p0, p1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    iget-object v0, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget-object v0, v0, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 276
    iget-object p0, p1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    iget-object p1, p1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iget-object p1, p1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 278
    :cond_2
    iget p0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/16 v0, 0x8

    if-ne p0, v0, :cond_3

    .line 279
    iget-object p0, p1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    iget-object v0, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget-object v0, v0, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 280
    iget-object p0, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget-boolean p0, p0, Landroid/icu/text/RBBINode;->fNullable:Z

    if-eqz p0, :cond_5

    .line 281
    iget-object p0, p1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    iget-object p1, p1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iget-object p1, p1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 284
    :cond_3
    iget p0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/16 v0, 0xa

    if-eq p0, v0, :cond_4

    iget p0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/16 v0, 0xc

    if-eq p0, v0, :cond_4

    iget p0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/16 v0, 0xb

    if-ne p0, v0, :cond_5

    .line 287
    :cond_4
    iget-object p0, p1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    iget-object p1, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget-object p1, p1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_5
    :goto_0
    return-void

    .line 264
    :cond_6
    :goto_1
    iget-object p0, p1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method calcFollowPos(Landroid/icu/text/RBBINode;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 342
    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 348
    :cond_0
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    invoke-virtual {p0, v0}, Landroid/icu/text/RBBITableBuilder;->calcFollowPos(Landroid/icu/text/RBBINode;)V

    .line 349
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    invoke-virtual {p0, v0}, Landroid/icu/text/RBBITableBuilder;->calcFollowPos(Landroid/icu/text/RBBINode;)V

    .line 352
    iget p0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    .line 353
    iget-object p0, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget-object p0, p0, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/RBBINode;

    .line 354
    iget-object v0, v0, Landroid/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    iget-object v1, p1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iget-object v1, v1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 359
    :cond_1
    iget p0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/16 v0, 0xa

    if-eq p0, v0, :cond_2

    iget p0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/16 v0, 0xb

    if-ne p0, v0, :cond_3

    .line 361
    :cond_2
    iget-object p0, p1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/RBBINode;

    .line 362
    iget-object v0, v0, Landroid/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    iget-object v1, p1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method calcLastPos(Landroid/icu/text/RBBINode;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 302
    :cond_0
    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_6

    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 313
    :cond_1
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    invoke-virtual {p0, v0}, Landroid/icu/text/RBBITableBuilder;->calcLastPos(Landroid/icu/text/RBBINode;)V

    .line 314
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    invoke-virtual {p0, v0}, Landroid/icu/text/RBBITableBuilder;->calcLastPos(Landroid/icu/text/RBBINode;)V

    .line 317
    iget p0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/16 v0, 0x9

    if-ne p0, v0, :cond_2

    .line 318
    iget-object p0, p1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    iget-object v0, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget-object v0, v0, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 319
    iget-object p0, p1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    iget-object p1, p1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iget-object p1, p1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 321
    :cond_2
    iget p0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/16 v0, 0x8

    if-ne p0, v0, :cond_3

    .line 322
    iget-object p0, p1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    iget-object v0, p1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iget-object v0, v0, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 323
    iget-object p0, p1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iget-boolean p0, p0, Landroid/icu/text/RBBINode;->fNullable:Z

    if-eqz p0, :cond_5

    .line 324
    iget-object p0, p1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    iget-object p1, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget-object p1, p1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 327
    :cond_3
    iget p0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/16 v0, 0xa

    if-eq p0, v0, :cond_4

    iget p0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/16 v0, 0xc

    if-eq p0, v0, :cond_4

    iget p0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/16 v0, 0xb

    if-ne p0, v0, :cond_5

    .line 330
    :cond_4
    iget-object p0, p1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    iget-object p1, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget-object p1, p1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_5
    :goto_0
    return-void

    .line 307
    :cond_6
    :goto_1
    iget-object p0, p1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method calcNullable(Landroid/icu/text/RBBINode;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 212
    :cond_0
    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    goto :goto_3

    .line 219
    :cond_1
    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eq v0, v2, :cond_a

    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    goto :goto_2

    .line 229
    :cond_2
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    invoke-virtual {p0, v0}, Landroid/icu/text/RBBITableBuilder;->calcNullable(Landroid/icu/text/RBBINode;)V

    .line 230
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    invoke-virtual {p0, v0}, Landroid/icu/text/RBBITableBuilder;->calcNullable(Landroid/icu/text/RBBINode;)V

    .line 233
    iget p0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/16 v0, 0x9

    if-ne p0, v0, :cond_5

    .line 234
    iget-object p0, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget-boolean p0, p0, Landroid/icu/text/RBBINode;->fNullable:Z

    if-nez p0, :cond_3

    iget-object p0, p1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iget-boolean p0, p0, Landroid/icu/text/RBBINode;->fNullable:Z

    if-eqz p0, :cond_4

    :cond_3
    move v1, v3

    :cond_4
    iput-boolean v1, p1, Landroid/icu/text/RBBINode;->fNullable:Z

    goto :goto_1

    .line 236
    :cond_5
    iget p0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/16 v0, 0x8

    if-ne p0, v0, :cond_7

    .line 237
    iget-object p0, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget-boolean p0, p0, Landroid/icu/text/RBBINode;->fNullable:Z

    if-eqz p0, :cond_6

    iget-object p0, p1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iget-boolean p0, p0, Landroid/icu/text/RBBINode;->fNullable:Z

    if-eqz p0, :cond_6

    move v1, v3

    :cond_6
    iput-boolean v1, p1, Landroid/icu/text/RBBINode;->fNullable:Z

    goto :goto_1

    .line 239
    :cond_7
    iget p0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/16 v0, 0xa

    if-eq p0, v0, :cond_9

    iget p0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/16 v0, 0xc

    if-ne p0, v0, :cond_8

    goto :goto_0

    .line 243
    :cond_8
    iput-boolean v1, p1, Landroid/icu/text/RBBINode;->fNullable:Z

    goto :goto_1

    .line 240
    :cond_9
    :goto_0
    iput-boolean v3, p1, Landroid/icu/text/RBBINode;->fNullable:Z

    :goto_1
    return-void

    .line 222
    :cond_a
    :goto_2
    iput-boolean v3, p1, Landroid/icu/text/RBBINode;->fNullable:Z

    return-void

    .line 215
    :cond_b
    :goto_3
    iput-boolean v1, p1, Landroid/icu/text/RBBINode;->fNullable:Z

    return-void
.end method

.method exportTable()[S
    .locals 13

    .line 894
    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v1, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p0, v1, [S

    return-object p0

    .line 898
    :cond_0
    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    invoke-virtual {v0}, Landroid/icu/text/RBBISetBuilder;->getNumCharCategories()I

    move-result v0

    const/16 v2, 0x7fff

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    .line 899
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v2, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    .line 898
    :goto_0
    invoke-static {v0}, Landroid/icu/impl/Assert;->assrt(Z)V

    .line 901
    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 905
    iget-object v4, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v4, v4, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    invoke-virtual {v4}, Landroid/icu/text/RBBISetBuilder;->getNumCharCategories()I

    move-result v4

    const/4 v5, 0x4

    add-int/2addr v4, v5

    .line 906
    invoke-virtual {p0}, Landroid/icu/text/RBBITableBuilder;->getTableSize()I

    move-result v6

    const/4 v7, 0x2

    div-int/2addr v6, v7

    .line 909
    new-array v6, v6, [S

    ushr-int/lit8 v8, v0, 0x10

    int-to-short v8, v8

    .line 916
    aput-short v8, v6, v1

    const v8, 0xffff

    and-int v9, v0, v8

    int-to-short v9, v9

    .line 917
    aput-short v9, v6, v3

    ushr-int/lit8 v9, v4, 0x10

    int-to-short v9, v9

    .line 920
    aput-short v9, v6, v7

    const/4 v7, 0x3

    and-int v9, v4, v8

    int-to-short v9, v9

    .line 921
    aput-short v9, v6, v7

    .line 925
    iget-object v7, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-boolean v7, v7, Landroid/icu/text/RBBIRuleBuilder;->fLookAheadHardBreak:Z

    if-eqz v7, :cond_2

    move v7, v3

    goto :goto_1

    :cond_2
    move v7, v1

    .line 928
    :goto_1
    iget-object v9, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v9, v9, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    invoke-virtual {v9}, Landroid/icu/text/RBBISetBuilder;->sawBOF()Z

    move-result v9

    if-eqz v9, :cond_3

    or-int/lit8 v7, v7, 0x2

    :cond_3
    ushr-int/lit8 v9, v7, 0x10

    int-to-short v9, v9

    .line 931
    aput-short v9, v6, v5

    const/4 v5, 0x5

    and-int/2addr v7, v8

    int-to-short v7, v7

    .line 932
    aput-short v7, v6, v5

    .line 934
    iget-object v5, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    invoke-virtual {v5}, Landroid/icu/text/RBBISetBuilder;->getNumCharCategories()I

    move-result v5

    move v7, v1

    :goto_2
    if-ge v7, v0, :cond_7

    .line 936
    iget-object v8, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    mul-int v9, v7, v4

    add-int/lit8 v9, v9, 0x8

    .line 938
    iget v10, v8, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    const/16 v11, -0x8000

    if-ge v11, v10, :cond_4

    iget v10, v8, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    if-gt v10, v2, :cond_4

    move v10, v3

    goto :goto_3

    :cond_4
    move v10, v1

    :goto_3
    invoke-static {v10}, Landroid/icu/impl/Assert;->assrt(Z)V

    .line 939
    iget v10, v8, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fLookAhead:I

    if-ge v11, v10, :cond_5

    iget v10, v8, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fLookAhead:I

    if-gt v10, v2, :cond_5

    move v10, v3

    goto :goto_4

    :cond_5
    move v10, v1

    :goto_4
    invoke-static {v10}, Landroid/icu/impl/Assert;->assrt(Z)V

    add-int/lit8 v10, v9, 0x0

    .line 940
    iget v11, v8, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    int-to-short v11, v11

    aput-short v11, v6, v10

    add-int/lit8 v10, v9, 0x1

    .line 941
    iget v11, v8, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fLookAhead:I

    int-to-short v11, v11

    aput-short v11, v6, v10

    add-int/lit8 v10, v9, 0x2

    .line 942
    iget v11, v8, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fTagsIdx:I

    int-to-short v11, v11

    aput-short v11, v6, v10

    move v10, v1

    :goto_5
    if-ge v10, v5, :cond_6

    add-int/lit8 v11, v9, 0x4

    add-int/2addr v11, v10

    .line 944
    iget-object v12, v8, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fDtran:[I

    aget v12, v12, v10

    int-to-short v12, v12

    aput-short v12, v6, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_7
    return-object v6
.end method

.method flagAcceptingStates()V
    .locals 8

    .line 625
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 630
    iget-object v1, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v2, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v1, v1, v2

    const/4 v2, 0x6

    invoke-virtual {v1, v0, v2}, Landroid/icu/text/RBBINode;->findNodes(Ljava/util/List;I)V

    const/4 v1, 0x0

    move v2, v1

    .line 632
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 633
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/RBBINode;

    move v4, v1

    .line 634
    :goto_1
    iget-object v5, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 635
    iget-object v5, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    .line 637
    iget-object v6, v5, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fPositions:Ljava/util/Set;

    invoke-interface {v6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 642
    iget v6, v5, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    const/4 v7, -0x1

    if-nez v6, :cond_0

    .line 644
    iget v6, v3, Landroid/icu/text/RBBINode;->fVal:I

    iput v6, v5, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    .line 645
    iget v6, v5, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    if-nez v6, :cond_0

    .line 646
    iput v7, v5, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    .line 649
    :cond_0
    iget v6, v5, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    if-ne v6, v7, :cond_1

    iget v6, v3, Landroid/icu/text/RBBINode;->fVal:I

    if-eqz v6, :cond_1

    .line 653
    iget v6, v3, Landroid/icu/text/RBBINode;->fVal:I

    iput v6, v5, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    .line 660
    :cond_1
    iget-boolean v6, v3, Landroid/icu/text/RBBINode;->fLookAheadEnd:Z

    if-eqz v6, :cond_2

    .line 664
    iget v6, v5, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    iput v6, v5, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fLookAhead:I

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method flagLookAheadStates()V
    .locals 7

    .line 678
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 683
    iget-object v1, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v2, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v1, v1, v2

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Landroid/icu/text/RBBINode;->findNodes(Ljava/util/List;I)V

    const/4 v1, 0x0

    move v2, v1

    .line 684
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 685
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/RBBINode;

    move v4, v1

    .line 687
    :goto_1
    iget-object v5, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 688
    iget-object v5, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    .line 689
    iget-object v6, v5, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fPositions:Ljava/util/Set;

    invoke-interface {v6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 690
    iget v6, v3, Landroid/icu/text/RBBINode;->fVal:I

    iput v6, v5, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fLookAhead:I

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method flagTaggedStates()V
    .locals 7

    .line 705
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 710
    iget-object v1, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v2, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v1, v1, v2

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Landroid/icu/text/RBBINode;->findNodes(Ljava/util/List;I)V

    const/4 v1, 0x0

    move v2, v1

    .line 711
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 712
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/RBBINode;

    move v4, v1

    .line 714
    :goto_1
    iget-object v5, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 715
    iget-object v5, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    .line 716
    iget-object v6, v5, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fPositions:Ljava/util/Set;

    invoke-interface {v6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 717
    iget-object v5, v5, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fTagVals:Ljava/util/SortedSet;

    iget v6, v3, Landroid/icu/text/RBBINode;->fVal:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method getTableSize()I
    .locals 2

    .line 852
    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v1, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 858
    :cond_0
    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 859
    iget-object p0, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object p0, p0, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    invoke-virtual {p0}, Landroid/icu/text/RBBISetBuilder;->getNumCharCategories()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    add-int/lit8 p0, p0, 0x8

    mul-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x10

    .line 867
    :goto_0
    rem-int/lit8 p0, v0, 0x8

    if-lez p0, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method mergeRuleStatusVals()V
    .locals 6

    .line 764
    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fRuleStatusVals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v0, :cond_0

    .line 765
    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fRuleStatusVals:Ljava/util/List;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 766
    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fRuleStatusVals:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 768
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 770
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fStatusSets:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .line 772
    invoke-interface {v3, v2}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 773
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fStatusSets:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 779
    iget-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    .line 780
    iget-object v2, v0, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fTagVals:Ljava/util/SortedSet;

    .line 781
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fStatusSets:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_1

    .line 787
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fRuleStatusVals:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 788
    iget-object v4, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v4, v4, Landroid/icu/text/RBBIRuleBuilder;->fStatusSets:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    iget-object v4, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v4, v4, Landroid/icu/text/RBBIRuleBuilder;->fRuleStatusVals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 793
    iget-object v4, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v4, v4, Landroid/icu/text/RBBIRuleBuilder;->fRuleStatusVals:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 797
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fTagsIdx:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method printPosSets(Landroid/icu/text/RBBINode;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 818
    :cond_0
    invoke-static {p1}, Landroid/icu/text/RBBINode;->printNode(Landroid/icu/text/RBBINode;)V

    .line 819
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "         Nullable:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Landroid/icu/text/RBBINode;->fNullable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 821
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "         firstpos:  "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 822
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    invoke-virtual {p0, v0}, Landroid/icu/text/RBBITableBuilder;->printSet(Ljava/util/Collection;)V

    .line 824
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "         lastpos:   "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 825
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    invoke-virtual {p0, v0}, Landroid/icu/text/RBBITableBuilder;->printSet(Ljava/util/Collection;)V

    .line 827
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "         followpos: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 828
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    invoke-virtual {p0, v0}, Landroid/icu/text/RBBITableBuilder;->printSet(Ljava/util/Collection;)V

    .line 830
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    invoke-virtual {p0, v0}, Landroid/icu/text/RBBITableBuilder;->printPosSets(Landroid/icu/text/RBBINode;)V

    .line 831
    iget-object p1, p1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    invoke-virtual {p0, p1}, Landroid/icu/text/RBBITableBuilder;->printPosSets(Landroid/icu/text/RBBINode;)V

    return-void
.end method

.method printRuleStatusTable()V
    .locals 4

    .line 1019
    iget-object p0, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object p0, p0, Landroid/icu/text/RBBIRuleBuilder;->fRuleStatusVals:Ljava/util/List;

    .line 1021
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "index |  tags \n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1022
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "-------------------\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1024
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1026
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x7

    .line 1027
    invoke-static {v0, v2}, Landroid/icu/text/RBBINode;->printInt(II)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v1, :cond_0

    .line 1029
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1030
    invoke-static {v3, v2}, Landroid/icu/text/RBBINode;->printInt(II)V

    goto :goto_1

    .line 1032
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    .line 1034
    :cond_1
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "\n\n"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method printSet(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/icu/text/RBBINode;",
            ">;)V"
        }
    .end annotation

    .line 959
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/icu/text/RBBINode;

    .line 960
    iget p1, p1, Landroid/icu/text/RBBINode;->fSerialNum:I

    const/16 v0, 0x8

    invoke-static {p1, v0}, Landroid/icu/text/RBBINode;->printInt(II)V

    goto :goto_0

    .line 962
    :cond_0
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method printStates()V
    .locals 7

    .line 977
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "state |           i n p u t     s y m b o l s \n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 978
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "      | Acc  LA    Tag"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 979
    :goto_0
    iget-object v2, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    invoke-virtual {v2}, Landroid/icu/text/RBBISetBuilder;->getNumCharCategories()I

    move-result v2

    const/4 v3, 0x3

    if-ge v1, v2, :cond_0

    .line 980
    invoke-static {v1, v3}, Landroid/icu/text/RBBINode;->printInt(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 982
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 983
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "      |---------------"

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    move v1, v0

    .line 984
    :goto_1
    iget-object v4, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v4, v4, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    invoke-virtual {v4}, Landroid/icu/text/RBBISetBuilder;->getNumCharCategories()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 985
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "---"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 987
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    move v1, v0

    .line 989
    :goto_2
    iget-object v4, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 990
    iget-object v4, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    const/4 v5, 0x5

    .line 991
    invoke-static {v1, v5}, Landroid/icu/text/RBBINode;->printInt(II)V

    .line 992
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, " | "

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 994
    iget v5, v4, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    invoke-static {v5, v3}, Landroid/icu/text/RBBINode;->printInt(II)V

    .line 995
    iget v5, v4, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fLookAhead:I

    const/4 v6, 0x4

    invoke-static {v5, v6}, Landroid/icu/text/RBBINode;->printInt(II)V

    .line 996
    iget v5, v4, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fTagsIdx:I

    const/4 v6, 0x6

    invoke-static {v5, v6}, Landroid/icu/text/RBBINode;->printInt(II)V

    .line 997
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    move v5, v0

    .line 998
    :goto_3
    iget-object v6, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v6, v6, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    invoke-virtual {v6}, Landroid/icu/text/RBBISetBuilder;->getNumCharCategories()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 999
    iget-object v6, v4, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fDtran:[I

    aget v6, v6, v5

    invoke-static {v6, v3}, Landroid/icu/text/RBBINode;->printInt(II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1001
    :cond_2
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1003
    :cond_3
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "\n\n"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method
