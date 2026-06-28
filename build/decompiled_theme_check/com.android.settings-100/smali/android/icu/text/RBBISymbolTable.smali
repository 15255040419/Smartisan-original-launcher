.class Landroid/icu/text/RBBISymbolTable;
.super Ljava/lang/Object;
.source "RBBISymbolTable.java"

# interfaces
.implements Landroid/icu/text/SymbolTable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;
    }
.end annotation


# instance fields
.field fCachedSetLookup:Landroid/icu/text/UnicodeSet;

.field fHashTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;",
            ">;"
        }
    .end annotation
.end field

.field fRuleScanner:Landroid/icu/text/RBBIRuleScanner;

.field ffffString:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/icu/text/RBBIRuleScanner;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Landroid/icu/text/RBBISymbolTable;->fRuleScanner:Landroid/icu/text/RBBIRuleScanner;

    .line 38
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/icu/text/RBBISymbolTable;->fHashTable:Ljava/util/HashMap;

    const-string/jumbo p1, "\uffff"

    .line 39
    iput-object p1, p0, Landroid/icu/text/RBBISymbolTable;->ffffString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method addEntry(Ljava/lang/String;Landroid/icu/text/RBBINode;)V
    .locals 1

    .line 159
    iget-object v0, p0, Landroid/icu/text/RBBISymbolTable;->fHashTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;

    if-eqz v0, :cond_0

    .line 161
    iget-object p0, p0, Landroid/icu/text/RBBISymbolTable;->fRuleScanner:Landroid/icu/text/RBBIRuleScanner;

    const p1, 0x10207

    invoke-virtual {p0, p1}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    return-void

    .line 165
    :cond_0
    new-instance v0, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;

    invoke-direct {v0}, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;-><init>()V

    .line 166
    iput-object p1, v0, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;->key:Ljava/lang/String;

    .line 167
    iput-object p2, v0, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;->val:Landroid/icu/text/RBBINode;

    .line 168
    iget-object p0, p0, Landroid/icu/text/RBBISymbolTable;->fHashTable:Ljava/util/HashMap;

    iget-object p1, v0, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;->key:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public lookup(Ljava/lang/String;)[C
    .locals 3

    .line 57
    iget-object v0, p0, Landroid/icu/text/RBBISymbolTable;->fHashTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 63
    :cond_0
    iget-object p1, p1, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;->val:Landroid/icu/text/RBBINode;

    .line 64
    :goto_0
    iget-object v1, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget v1, v1, Landroid/icu/text/RBBINode;->fType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 65
    iget-object p1, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    goto :goto_0

    .line 68
    :cond_1
    iget-object p1, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    .line 69
    iget v1, p1, Landroid/icu/text/RBBINode;->fType:I

    if-nez v1, :cond_2

    .line 73
    iget-object p1, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    .line 74
    iget-object p1, p1, Landroid/icu/text/RBBINode;->fInputSet:Landroid/icu/text/UnicodeSet;

    iput-object p1, p0, Landroid/icu/text/RBBISymbolTable;->fCachedSetLookup:Landroid/icu/text/UnicodeSet;

    .line 75
    iget-object p0, p0, Landroid/icu/text/RBBISymbolTable;->ffffString:Ljava/lang/String;

    goto :goto_1

    .line 81
    :cond_2
    iget-object v1, p0, Landroid/icu/text/RBBISymbolTable;->fRuleScanner:Landroid/icu/text/RBBIRuleScanner;

    const v2, 0x1020f

    invoke-virtual {v1, v2}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    .line 82
    iget-object p1, p1, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Landroid/icu/text/RBBISymbolTable;->fCachedSetLookup:Landroid/icu/text/UnicodeSet;

    move-object p0, p1

    .line 85
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    return-object p0
.end method

.method public lookupMatcher(I)Landroid/icu/text/UnicodeMatcher;
    .locals 2

    const/4 v0, 0x0

    const v1, 0xffff

    if-ne p1, v1, :cond_0

    .line 102
    iget-object p1, p0, Landroid/icu/text/RBBISymbolTable;->fCachedSetLookup:Landroid/icu/text/UnicodeSet;

    .line 103
    iput-object v0, p0, Landroid/icu/text/RBBISymbolTable;->fCachedSetLookup:Landroid/icu/text/UnicodeSet;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method lookupNode(Ljava/lang/String;)Landroid/icu/text/RBBINode;
    .locals 0

    .line 144
    iget-object p0, p0, Landroid/icu/text/RBBISymbolTable;->fHashTable:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;

    if-eqz p0, :cond_0

    .line 146
    iget-object p0, p0, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;->val:Landroid/icu/text/RBBINode;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public parseReference(Ljava/lang/String;Ljava/text/ParsePosition;I)Ljava/lang/String;
    .locals 3

    .line 115
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result p0

    move v0, p0

    :goto_0
    if-ge v0, p3, :cond_2

    .line 119
    invoke-static {p1, v0}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v1

    if-ne v0, p0, :cond_0

    .line 120
    invoke-static {v1}, Landroid/icu/lang/UCharacter;->isUnicodeIdentifierStart(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 121
    :cond_0
    invoke-static {v1}, Landroid/icu/lang/UCharacter;->isUnicodeIdentifierPart(I)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 124
    :cond_1
    invoke-static {v1}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    :goto_1
    if-ne v0, p0, :cond_3

    const-string p0, ""

    return-object p0

    .line 129
    :cond_3
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 130
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method rbbiSymtablePrint()V
    .locals 8

    .line 176
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Variable Definitions\nName               Node Val     String Val\n----------------------------------------------------------------------\n"

    .line 177
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 181
    iget-object p0, p0, Landroid/icu/text/RBBISymbolTable;->fHashTable:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;

    invoke-interface {p0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;

    move v1, v0

    .line 183
    :goto_0
    array-length v2, p0

    const-string v3, "\n"

    if-ge v1, v2, :cond_0

    .line 184
    aget-object v2, p0, v1

    .line 186
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;->key:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 187
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;->val:Landroid/icu/text/RBBINode;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 188
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v2, v2, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;->val:Landroid/icu/text/RBBINode;

    iget-object v2, v2, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget-object v2, v2, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 189
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 192
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "\nParsed Variable Definitions\n"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 193
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 194
    aget-object v1, p0, v0

    .line 195
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v4, v1, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;->key:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 196
    iget-object v1, v1, Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;->val:Landroid/icu/text/RBBINode;

    iget-object v1, v1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/icu/text/RBBINode;->printTree(Z)V

    .line 197
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
