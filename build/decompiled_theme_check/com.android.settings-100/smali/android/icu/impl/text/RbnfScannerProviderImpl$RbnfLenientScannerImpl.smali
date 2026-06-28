.class Landroid/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;
.super Ljava/lang/Object;
.source "RbnfScannerProviderImpl.java"

# interfaces
.implements Landroid/icu/text/RbnfLenientScanner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/text/RbnfScannerProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RbnfLenientScannerImpl"
.end annotation


# instance fields
.field private final collator:Landroid/icu/text/RuleBasedCollator;


# direct methods
.method private constructor <init>(Landroid/icu/text/RuleBasedCollator;)V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Landroid/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;->collator:Landroid/icu/text/RuleBasedCollator;

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/RuleBasedCollator;Landroid/icu/impl/text/RbnfScannerProviderImpl$1;)V
    .locals 0

    .line 126
    invoke-direct {p0, p1}, Landroid/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;-><init>(Landroid/icu/text/RuleBasedCollator;)V

    return-void
.end method


# virtual methods
.method public allIgnorable(Ljava/lang/String;)Z
    .locals 2

    .line 134
    iget-object p0, p0, Landroid/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;->collator:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {p0, p1}, Landroid/icu/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Landroid/icu/text/CollationElementIterator;

    move-result-object p0

    .line 136
    invoke-virtual {p0}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result p1

    :goto_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 138
    invoke-static {p1}, Landroid/icu/text/CollationElementIterator;->primaryOrder(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 139
    invoke-virtual {p0}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result p1

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public findText(Ljava/lang/String;Ljava/lang/String;I)[I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 155
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ge p3, v2, :cond_1

    if-nez v1, :cond_1

    .line 156
    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Landroid/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;->prefixLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    new-array p0, v3, [I

    aput p3, p0, v0

    const/4 p1, 0x1

    aput v1, p0, p1

    return-object p0

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    new-array p0, v3, [I

    .line 165
    fill-array-data p0, :array_0

    return-object p0

    :array_0
    .array-data 4
        -0x1
        0x0
    .end array-data
.end method

.method public findText2(Ljava/lang/String;Ljava/lang/String;I)[I
    .locals 4

    .line 174
    iget-object v0, p0, Landroid/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;->collator:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v0, p1}, Landroid/icu/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Landroid/icu/text/CollationElementIterator;

    move-result-object p1

    .line 175
    iget-object p0, p0, Landroid/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;->collator:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {p0, p2}, Landroid/icu/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Landroid/icu/text/CollationElementIterator;

    move-result-object p0

    .line 179
    invoke-virtual {p1, p3}, Landroid/icu/text/CollationElementIterator;->setOffset(I)V

    .line 181
    invoke-virtual {p1}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result p2

    .line 182
    invoke-virtual {p0}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result p3

    const/4 v0, -0x1

    :goto_0
    move v1, v0

    :goto_1
    const/4 v2, 0x2

    if-eq p3, v0, :cond_6

    :goto_2
    if-eq p2, v0, :cond_0

    .line 185
    invoke-static {p2}, Landroid/icu/text/CollationElementIterator;->primaryOrder(I)I

    move-result v3

    if-nez v3, :cond_0

    .line 186
    invoke-virtual {p1}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result p2

    goto :goto_2

    :cond_0
    :goto_3
    if-eq p3, v0, :cond_1

    .line 190
    invoke-static {p3}, Landroid/icu/text/CollationElementIterator;->primaryOrder(I)I

    move-result v3

    if-nez v3, :cond_1

    .line 191
    invoke-virtual {p0}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result p3

    goto :goto_3

    :cond_1
    if-ne p2, v0, :cond_2

    new-array p0, v2, [I

    .line 195
    fill-array-data p0, :array_0

    return-object p0

    :cond_2
    if-ne p3, v0, :cond_3

    goto :goto_4

    .line 202
    :cond_3
    invoke-static {p2}, Landroid/icu/text/CollationElementIterator;->primaryOrder(I)I

    move-result v2

    .line 203
    invoke-static {p3}, Landroid/icu/text/CollationElementIterator;->primaryOrder(I)I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 204
    invoke-virtual {p1}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    move-result v1

    .line 205
    invoke-virtual {p1}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result p2

    .line 206
    invoke-virtual {p0}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result p3

    goto :goto_1

    :cond_4
    if-eq v1, v0, :cond_5

    .line 210
    invoke-virtual {p0}, Landroid/icu/text/CollationElementIterator;->reset()V

    goto :goto_0

    .line 212
    :cond_5
    invoke-virtual {p1}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result p2

    goto :goto_1

    :cond_6
    :goto_4
    new-array p0, v2, [I

    const/4 p2, 0x0

    aput v1, p0, p2

    const/4 p2, 0x1

    .line 217
    invoke-virtual {p1}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    move-result p1

    sub-int/2addr p1, v1

    aput p1, p0, p2

    return-object p0

    nop

    :array_0
    .array-data 4
        -0x1
        0x0
    .end array-data
.end method

.method public prefixLength(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 231
    iget-object v0, p0, Landroid/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;->collator:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {v0, p1}, Landroid/icu/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Landroid/icu/text/CollationElementIterator;

    move-result-object p1

    .line 232
    iget-object p0, p0, Landroid/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;->collator:Landroid/icu/text/RuleBasedCollator;

    invoke-virtual {p0, p2}, Landroid/icu/text/RuleBasedCollator;->getCollationElementIterator(Ljava/lang/String;)Landroid/icu/text/CollationElementIterator;

    move-result-object p0

    .line 235
    invoke-virtual {p1}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result p2

    .line 236
    invoke-virtual {p0}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 240
    :goto_1
    invoke-static {p2}, Landroid/icu/text/CollationElementIterator;->primaryOrder(I)I

    move-result v2

    if-nez v2, :cond_0

    if-eq p2, v1, :cond_0

    .line 242
    invoke-virtual {p1}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result p2

    goto :goto_1

    .line 246
    :cond_0
    :goto_2
    invoke-static {v0}, Landroid/icu/text/CollationElementIterator;->primaryOrder(I)I

    move-result v2

    if-nez v2, :cond_1

    if-eq v0, v1, :cond_1

    .line 248
    invoke-virtual {p0}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result v0

    goto :goto_2

    :cond_1
    if-ne v0, v1, :cond_2

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    if-ne p2, v1, :cond_3

    return v2

    .line 266
    :cond_3
    invoke-static {p2}, Landroid/icu/text/CollationElementIterator;->primaryOrder(I)I

    move-result p2

    .line 267
    invoke-static {v0}, Landroid/icu/text/CollationElementIterator;->primaryOrder(I)I

    move-result v0

    if-eq p2, v0, :cond_4

    return v2

    .line 275
    :cond_4
    invoke-virtual {p1}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result p2

    .line 276
    invoke-virtual {p0}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result v0

    goto :goto_0

    .line 279
    :cond_5
    :goto_3
    invoke-virtual {p1}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    move-result p0

    if-eq p2, v1, :cond_6

    add-int/lit8 p0, p0, -0x1

    :cond_6
    return p0
.end method
