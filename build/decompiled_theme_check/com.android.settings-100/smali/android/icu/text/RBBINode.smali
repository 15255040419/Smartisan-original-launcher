.class Landroid/icu/text/RBBINode;
.super Ljava/lang/Object;
.source "RBBINode.java"


# static fields
.field static final endMark:I = 0x6

.field static gLastSerial:I = 0x0

.field static final leafChar:I = 0x3

.field static final lookAhead:I = 0x4

.field static final nodeTypeLimit:I = 0x10

.field static final nodeTypeNames:[Ljava/lang/String;

.field static final opBreak:I = 0xd

.field static final opCat:I = 0x8

.field static final opLParen:I = 0xf

.field static final opOr:I = 0x9

.field static final opPlus:I = 0xb

.field static final opQuestion:I = 0xc

.field static final opReverse:I = 0xe

.field static final opStar:I = 0xa

.field static final opStart:I = 0x7

.field static final precLParen:I = 0x2

.field static final precOpCat:I = 0x4

.field static final precOpOr:I = 0x3

.field static final precStart:I = 0x1

.field static final precZero:I = 0x0

.field static final setRef:I = 0x0

.field static final tag:I = 0x5

.field static final uset:I = 0x1

.field static final varRef:I = 0x2


# instance fields
.field fChainIn:Z

.field fFirstPos:I

.field fFirstPosSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/icu/text/RBBINode;",
            ">;"
        }
    .end annotation
.end field

.field fFollowPos:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/icu/text/RBBINode;",
            ">;"
        }
    .end annotation
.end field

.field fInputSet:Landroid/icu/text/UnicodeSet;

.field fLastPos:I

.field fLastPosSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/icu/text/RBBINode;",
            ">;"
        }
    .end annotation
.end field

.field fLeftChild:Landroid/icu/text/RBBINode;

.field fLookAheadEnd:Z

.field fNullable:Z

.field fParent:Landroid/icu/text/RBBINode;

.field fPrecedence:I

.field fRightChild:Landroid/icu/text/RBBINode;

.field fRuleRoot:Z

.field fSerialNum:I

.field fText:Ljava/lang/String;

.field fType:I

.field fVal:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const-string/jumbo v0, "setRef"

    const-string/jumbo v1, "uset"

    const-string/jumbo v2, "varRef"

    const-string v3, "leafChar"

    const-string v4, "lookAhead"

    const-string/jumbo v5, "tag"

    const-string v6, "endMark"

    const-string/jumbo v7, "opStart"

    const-string/jumbo v8, "opCat"

    const-string/jumbo v9, "opOr"

    const-string/jumbo v10, "opStar"

    const-string/jumbo v11, "opPlus"

    const-string/jumbo v12, "opQuestion"

    const-string/jumbo v13, "opBreak"

    const-string/jumbo v14, "opReverse"

    const-string/jumbo v15, "opLParen"

    .line 43
    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/RBBINode;->nodeTypeNames:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(I)V
    .locals 3

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Landroid/icu/text/RBBINode;->fPrecedence:I

    const/4 v1, 0x1

    const/16 v2, 0x10

    if-ge p1, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 110
    :goto_0
    invoke-static {v2}, Landroid/icu/impl/Assert;->assrt(Z)V

    .line 111
    sget v2, Landroid/icu/text/RBBINode;->gLastSerial:I

    add-int/2addr v2, v1

    sput v2, Landroid/icu/text/RBBINode;->gLastSerial:I

    iput v2, p0, Landroid/icu/text/RBBINode;->fSerialNum:I

    .line 112
    iput p1, p0, Landroid/icu/text/RBBINode;->fType:I

    .line 114
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    .line 115
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    .line 116
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Landroid/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    const/16 v2, 0x8

    if-ne p1, v2, :cond_1

    const/4 p1, 0x4

    .line 118
    iput p1, p0, Landroid/icu/text/RBBINode;->fPrecedence:I

    goto :goto_1

    :cond_1
    const/16 v2, 0x9

    if-ne p1, v2, :cond_2

    const/4 p1, 0x3

    .line 120
    iput p1, p0, Landroid/icu/text/RBBINode;->fPrecedence:I

    goto :goto_1

    :cond_2
    const/4 v2, 0x7

    if-ne p1, v2, :cond_3

    .line 122
    iput v1, p0, Landroid/icu/text/RBBINode;->fPrecedence:I

    goto :goto_1

    :cond_3
    const/16 v1, 0xf

    if-ne p1, v1, :cond_4

    const/4 p1, 0x2

    .line 124
    iput p1, p0, Landroid/icu/text/RBBINode;->fPrecedence:I

    goto :goto_1

    .line 126
    :cond_4
    iput v0, p0, Landroid/icu/text/RBBINode;->fPrecedence:I

    :goto_1
    return-void
.end method

.method constructor <init>(Landroid/icu/text/RBBINode;)V
    .locals 2

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Landroid/icu/text/RBBINode;->fPrecedence:I

    .line 131
    sget v1, Landroid/icu/text/RBBINode;->gLastSerial:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/icu/text/RBBINode;->gLastSerial:I

    iput v1, p0, Landroid/icu/text/RBBINode;->fSerialNum:I

    .line 132
    iget v1, p1, Landroid/icu/text/RBBINode;->fType:I

    iput v1, p0, Landroid/icu/text/RBBINode;->fType:I

    .line 133
    iget-object v1, p1, Landroid/icu/text/RBBINode;->fInputSet:Landroid/icu/text/UnicodeSet;

    iput-object v1, p0, Landroid/icu/text/RBBINode;->fInputSet:Landroid/icu/text/UnicodeSet;

    .line 134
    iget v1, p1, Landroid/icu/text/RBBINode;->fPrecedence:I

    iput v1, p0, Landroid/icu/text/RBBINode;->fPrecedence:I

    .line 135
    iget-object v1, p1, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    iput-object v1, p0, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    .line 136
    iget v1, p1, Landroid/icu/text/RBBINode;->fFirstPos:I

    iput v1, p0, Landroid/icu/text/RBBINode;->fFirstPos:I

    .line 137
    iget v1, p1, Landroid/icu/text/RBBINode;->fLastPos:I

    iput v1, p0, Landroid/icu/text/RBBINode;->fLastPos:I

    .line 138
    iget-boolean v1, p1, Landroid/icu/text/RBBINode;->fNullable:Z

    iput-boolean v1, p0, Landroid/icu/text/RBBINode;->fNullable:Z

    .line 139
    iget v1, p1, Landroid/icu/text/RBBINode;->fVal:I

    iput v1, p0, Landroid/icu/text/RBBINode;->fVal:I

    .line 140
    iput-boolean v0, p0, Landroid/icu/text/RBBINode;->fRuleRoot:Z

    .line 141
    iget-boolean v0, p1, Landroid/icu/text/RBBINode;->fChainIn:Z

    iput-boolean v0, p0, Landroid/icu/text/RBBINode;->fChainIn:Z

    .line 142
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    .line 143
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    .line 144
    new-instance v0, Ljava/util/HashSet;

    iget-object p1, p1, Landroid/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    return-void
.end method

.method static printHex(II)V
    .locals 3

    const/16 v0, 0x10

    .line 331
    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    .line 333
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x5

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const-string v2, "00000"

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 335
    invoke-static {p0, p1}, Landroid/icu/text/RBBINode;->printString(Ljava/lang/String;I)V

    return-void
.end method

.method static printInt(II)V
    .locals 1

    .line 324
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    .line 325
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p0, p1}, Landroid/icu/text/RBBINode;->printString(Ljava/lang/String;I)V

    return-void
.end method

.method static printNode(Landroid/icu/text/RBBINode;)V
    .locals 3

    if-nez p0, :cond_0

    .line 284
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, " -- null --\n"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 286
    :cond_0
    iget v0, p0, Landroid/icu/text/RBBINode;->fSerialNum:I

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/icu/text/RBBINode;->printInt(II)V

    .line 287
    sget-object v0, Landroid/icu/text/RBBINode;->nodeTypeNames:[Ljava/lang/String;

    iget v1, p0, Landroid/icu/text/RBBINode;->fType:I

    aget-object v0, v0, v1

    const/16 v1, 0xb

    invoke-static {v0, v1}, Landroid/icu/text/RBBINode;->printString(Ljava/lang/String;I)V

    .line 288
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    iget v0, v0, Landroid/icu/text/RBBINode;->fSerialNum:I

    :goto_0
    invoke-static {v0, v1}, Landroid/icu/text/RBBINode;->printInt(II)V

    .line 289
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    iget v0, v0, Landroid/icu/text/RBBINode;->fSerialNum:I

    :goto_1
    invoke-static {v0, v1}, Landroid/icu/text/RBBINode;->printInt(II)V

    .line 290
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    iget v2, v0, Landroid/icu/text/RBBINode;->fSerialNum:I

    :goto_2
    const/16 v0, 0xc

    invoke-static {v2, v0}, Landroid/icu/text/RBBINode;->printInt(II)V

    .line 291
    iget v1, p0, Landroid/icu/text/RBBINode;->fFirstPos:I

    invoke-static {v1, v0}, Landroid/icu/text/RBBINode;->printInt(II)V

    .line 292
    iget v0, p0, Landroid/icu/text/RBBINode;->fVal:I

    const/4 v1, 0x7

    invoke-static {v0, v1}, Landroid/icu/text/RBBINode;->printInt(II)V

    .line 294
    iget v0, p0, Landroid/icu/text/RBBINode;->fType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 295
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 298
    :cond_4
    :goto_3
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method static printString(Ljava/lang/String;I)V
    .locals 3

    move v0, p1

    :goto_0
    const/16 v1, 0x20

    if-gez v0, :cond_0

    .line 309
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 311
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_1
    if-ge v0, p1, :cond_1

    .line 312
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 314
    :cond_1
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method cloneTree()Landroid/icu/text/RBBINode;
    .locals 2

    .line 159
    iget v0, p0, Landroid/icu/text/RBBINode;->fType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 162
    iget-object p0, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    invoke-virtual {p0}, Landroid/icu/text/RBBINode;->cloneTree()Landroid/icu/text/RBBINode;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 166
    :cond_1
    new-instance v0, Landroid/icu/text/RBBINode;

    invoke-direct {v0, p0}, Landroid/icu/text/RBBINode;-><init>(Landroid/icu/text/RBBINode;)V

    .line 167
    iget-object v1, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    if-eqz v1, :cond_2

    .line 168
    invoke-virtual {v1}, Landroid/icu/text/RBBINode;->cloneTree()Landroid/icu/text/RBBINode;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    .line 169
    iget-object v1, v0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iput-object v0, v1, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    .line 171
    :cond_2
    iget-object p0, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    if-eqz p0, :cond_3

    .line 172
    invoke-virtual {p0}, Landroid/icu/text/RBBINode;->cloneTree()Landroid/icu/text/RBBINode;

    move-result-object p0

    iput-object p0, v0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    .line 173
    iget-object p0, v0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iput-object v0, p0, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    :cond_3
    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method findNodes(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/icu/text/RBBINode;",
            ">;I)V"
        }
    .end annotation

    .line 262
    iget v0, p0, Landroid/icu/text/RBBINode;->fType:I

    if-ne v0, p2, :cond_0

    .line 263
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    :cond_0
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    if-eqz v0, :cond_1

    .line 266
    invoke-virtual {v0, p1, p2}, Landroid/icu/text/RBBINode;->findNodes(Ljava/util/List;I)V

    .line 268
    :cond_1
    iget-object p0, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    if-eqz p0, :cond_2

    .line 269
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/RBBINode;->findNodes(Ljava/util/List;I)V

    :cond_2
    return-void
.end method

.method flattenSets()V
    .locals 2

    .line 227
    iget v0, p0, Landroid/icu/text/RBBINode;->fType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/icu/impl/Assert;->assrt(Z)V

    .line 229
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    if-eqz v0, :cond_2

    .line 230
    iget v1, v0, Landroid/icu/text/RBBINode;->fType:I

    if-nez v1, :cond_1

    .line 232
    iget-object v0, v0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    .line 233
    iget-object v0, v0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    .line 234
    invoke-virtual {v0}, Landroid/icu/text/RBBINode;->cloneTree()Landroid/icu/text/RBBINode;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    .line 235
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iput-object p0, v0, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    goto :goto_1

    .line 237
    :cond_1
    invoke-virtual {v0}, Landroid/icu/text/RBBINode;->flattenSets()V

    .line 241
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    if-eqz v0, :cond_4

    .line 242
    iget v1, v0, Landroid/icu/text/RBBINode;->fType:I

    if-nez v1, :cond_3

    .line 244
    iget-object v0, v0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    .line 245
    iget-object v0, v0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    .line 246
    invoke-virtual {v0}, Landroid/icu/text/RBBINode;->cloneTree()Landroid/icu/text/RBBINode;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    .line 247
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iput-object p0, v0, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    goto :goto_2

    .line 250
    :cond_3
    invoke-virtual {v0}, Landroid/icu/text/RBBINode;->flattenSets()V

    :cond_4
    :goto_2
    return-void
.end method

.method flattenVariables()Landroid/icu/text/RBBINode;
    .locals 2

    .line 200
    iget v0, p0, Landroid/icu/text/RBBINode;->fType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 201
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    invoke-virtual {v0}, Landroid/icu/text/RBBINode;->cloneTree()Landroid/icu/text/RBBINode;

    move-result-object v0

    .line 202
    iget-boolean v1, p0, Landroid/icu/text/RBBINode;->fRuleRoot:Z

    iput-boolean v1, v0, Landroid/icu/text/RBBINode;->fRuleRoot:Z

    .line 203
    iget-boolean p0, p0, Landroid/icu/text/RBBINode;->fChainIn:Z

    iput-boolean p0, v0, Landroid/icu/text/RBBINode;->fChainIn:Z

    return-object v0

    .line 207
    :cond_0
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    if-eqz v0, :cond_1

    .line 208
    invoke-virtual {v0}, Landroid/icu/text/RBBINode;->flattenVariables()Landroid/icu/text/RBBINode;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    .line 209
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iput-object p0, v0, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    .line 211
    :cond_1
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    if-eqz v0, :cond_2

    .line 212
    invoke-virtual {v0}, Landroid/icu/text/RBBINode;->flattenVariables()Landroid/icu/text/RBBINode;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    .line 213
    iget-object v0, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iput-object p0, v0, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    :cond_2
    return-object p0
.end method

.method printTree(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 348
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "-------------------------------------------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 349
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "    Serial       type     Parent  LeftChild  RightChild    position  value"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 351
    :cond_0
    invoke-static {p0}, Landroid/icu/text/RBBINode;->printNode(Landroid/icu/text/RBBINode;)V

    .line 354
    iget p1, p0, Landroid/icu/text/RBBINode;->fType:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    .line 355
    iget-object p1, p0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 356
    invoke-virtual {p1, v0}, Landroid/icu/text/RBBINode;->printTree(Z)V

    .line 359
    :cond_1
    iget-object p0, p0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    if-eqz p0, :cond_2

    .line 360
    invoke-virtual {p0, v0}, Landroid/icu/text/RBBINode;->printTree(Z)V

    :cond_2
    return-void
.end method
