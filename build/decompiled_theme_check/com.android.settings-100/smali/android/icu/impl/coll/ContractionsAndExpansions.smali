.class public final Landroid/icu/impl/coll/ContractionsAndExpansions;
.super Ljava/lang/Object;
.source "ContractionsAndExpansions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private addPrefixes:Z

.field private ces:[J

.field private checkTailored:I

.field private contractions:Landroid/icu/text/UnicodeSet;

.field private data:Landroid/icu/impl/coll/CollationData;

.field private expansions:Landroid/icu/text/UnicodeSet;

.field private ranges:Landroid/icu/text/UnicodeSet;

.field private sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

.field private suffix:Ljava/lang/String;

.field private tailored:Landroid/icu/text/UnicodeSet;

.field private unreversedPrefix:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;Z)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->checkTailored:I

    .line 35
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->tailored:Landroid/icu/text/UnicodeSet;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    const/16 v0, 0x1f

    new-array v0, v0, [J

    .line 39
    iput-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->ces:[J

    .line 47
    iput-object p1, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->contractions:Landroid/icu/text/UnicodeSet;

    .line 48
    iput-object p2, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->expansions:Landroid/icu/text/UnicodeSet;

    .line 49
    iput-object p3, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    .line 50
    iput-boolean p4, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->addPrefixes:Z

    return-void
.end method

.method private enumCnERange(IIILandroid/icu/impl/coll/ContractionsAndExpansions;)V
    .locals 3

    .line 78
    iget p0, p4, Landroid/icu/impl/coll/ContractionsAndExpansions;->checkTailored:I

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    if-gez p0, :cond_2

    const/16 p0, 0xc0

    if-ne p3, p0, :cond_1

    return-void

    .line 86
    :cond_1
    iget-object p0, p4, Landroid/icu/impl/coll/ContractionsAndExpansions;->tailored:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    goto :goto_1

    :cond_2
    if-ne p1, p2, :cond_3

    .line 90
    iget-object p0, p4, Landroid/icu/impl/coll/ContractionsAndExpansions;->tailored:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result p0

    if-eqz p0, :cond_5

    return-void

    .line 93
    :cond_3
    iget-object p0, p4, Landroid/icu/impl/coll/ContractionsAndExpansions;->tailored:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/UnicodeSet;->containsSome(II)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 94
    iget-object p0, p4, Landroid/icu/impl/coll/ContractionsAndExpansions;->ranges:Landroid/icu/text/UnicodeSet;

    if-nez p0, :cond_4

    .line 95
    new-instance p0, Landroid/icu/text/UnicodeSet;

    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;-><init>()V

    iput-object p0, p4, Landroid/icu/impl/coll/ContractionsAndExpansions;->ranges:Landroid/icu/text/UnicodeSet;

    .line 97
    :cond_4
    iget-object p0, p4, Landroid/icu/impl/coll/ContractionsAndExpansions;->ranges:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/UnicodeSet;->set(II)Landroid/icu/text/UnicodeSet;

    move-result-object p0

    iget-object v0, p4, Landroid/icu/impl/coll/ContractionsAndExpansions;->tailored:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->removeAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 98
    iget-object p0, p4, Landroid/icu/impl/coll/ContractionsAndExpansions;->ranges:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->getRangeCount()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_5

    .line 100
    iget-object v1, p4, Landroid/icu/impl/coll/ContractionsAndExpansions;->ranges:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1, v0}, Landroid/icu/text/UnicodeSet;->getRangeStart(I)I

    move-result v1

    iget-object v2, p4, Landroid/icu/impl/coll/ContractionsAndExpansions;->ranges:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v2, v0}, Landroid/icu/text/UnicodeSet;->getRangeEnd(I)I

    move-result v2

    invoke-direct {p4, v1, v2, p3}, Landroid/icu/impl/coll/ContractionsAndExpansions;->handleCE32(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_5
    :goto_1
    invoke-direct {p4, p1, p2, p3}, Landroid/icu/impl/coll/ContractionsAndExpansions;->handleCE32(III)V

    return-void
.end method

.method private handleCE32(III)V
    .locals 7

    :goto_0
    and-int/lit16 v0, p3, 0xff

    const/16 v1, 0xc0

    if-ge v0, v1, :cond_1

    .line 120
    iget-object p0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    if-eqz p0, :cond_0

    .line 121
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->ceFromSimpleCE32(I)J

    move-result-wide p1

    invoke-interface {p0, p1, p2}, Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;->handleCE(J)V

    :cond_0
    return-void

    .line 125
    :cond_1
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-void

    .line 200
    :pswitch_1
    iget-object p3, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    if-eqz p3, :cond_2

    .line 203
    new-instance p3, Landroid/icu/impl/coll/UTF16CollationIterator;

    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    invoke-direct {p3, v0}, Landroid/icu/impl/coll/UTF16CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;)V

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move v1, p1

    :goto_1
    if-gt v1, p2, :cond_2

    .line 206
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {p3, v3, v0, v3}, Landroid/icu/impl/coll/UTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    .line 209
    invoke-virtual {p3}, Landroid/icu/impl/coll/UTF16CollationIterator;->fetchCEs()I

    move-result v4

    .line 212
    iget-object v5, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    invoke-virtual {p3}, Landroid/icu/impl/coll/UTF16CollationIterator;->getCEs()[J

    move-result-object v6

    sub-int/2addr v4, v2

    invoke-interface {v5, v6, v3, v4}, Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;->handleExpansion([JII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 217
    :cond_2
    iget-object p3, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    if-nez p3, :cond_3

    .line 218
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/coll/ContractionsAndExpansions;->addExpansions(II)V

    :cond_3
    return-void

    .line 197
    :pswitch_2
    iget-object p3, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    iget-object p3, p3, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    aget p3, p3, v3

    goto :goto_0

    .line 192
    :pswitch_3
    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result p3

    aget p3, v0, p3

    goto :goto_0

    .line 188
    :pswitch_4
    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/impl/coll/ContractionsAndExpansions;->handleContractions(III)V

    return-void

    .line 185
    :pswitch_5
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/coll/ContractionsAndExpansions;->handlePrefixes(III)V

    return-void

    .line 173
    :pswitch_6
    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    if-eqz v0, :cond_4

    .line 174
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v0

    .line 175
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result p3

    .line 176
    iget-object v1, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    iget-object v2, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v2, v2, Landroid/icu/impl/coll/CollationData;->ces:[J

    invoke-interface {v1, v2, v0, p3}, Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;->handleExpansion([JII)V

    .line 180
    :cond_4
    iget-object p3, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    if-nez p3, :cond_5

    .line 181
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/coll/ContractionsAndExpansions;->addExpansions(II)V

    :cond_5
    return-void

    .line 158
    :pswitch_7
    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    if-eqz v0, :cond_7

    .line 159
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v0

    .line 160
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result p3

    move v1, v3

    :goto_2
    if-ge v1, p3, :cond_6

    .line 162
    iget-object v2, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->ces:[J

    iget-object v4, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v4, v4, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    add-int v5, v0, v1

    aget v4, v4, v5

    invoke-static {v4}, Landroid/icu/impl/coll/Collation;->ceFromCE32(I)J

    move-result-wide v4

    aput-wide v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 164
    :cond_6
    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    iget-object v1, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->ces:[J

    invoke-interface {v0, v1, v3, p3}, Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;->handleExpansion([JII)V

    .line 168
    :cond_7
    iget-object p3, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    if-nez p3, :cond_8

    .line 169
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/coll/ContractionsAndExpansions;->addExpansions(II)V

    :cond_8
    return-void

    .line 146
    :pswitch_8
    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    if-eqz v0, :cond_9

    .line 147
    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->ces:[J

    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->latinCE0FromCE32(I)J

    move-result-wide v4

    aput-wide v4, v0, v3

    .line 148
    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->ces:[J

    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->latinCE1FromCE32(I)J

    move-result-wide v4

    aput-wide v4, v0, v2

    .line 149
    iget-object p3, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->ces:[J

    invoke-interface {p3, v0, v3, v1}, Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;->handleExpansion([JII)V

    .line 153
    :cond_9
    iget-object p3, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    if-nez p3, :cond_a

    .line 154
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/coll/ContractionsAndExpansions;->addExpansions(II)V

    :cond_a
    return-void

    .line 132
    :pswitch_9
    new-instance p0, Ljava/lang/AssertionError;

    new-array p1, v1, [Ljava/lang/Object;

    .line 134
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    const-string p2, "Unexpected CE32 tag type %d for ce32=0x%08x"

    .line 133
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 141
    :pswitch_a
    iget-object p0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    if-eqz p0, :cond_b

    .line 142
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->ceFromLongSecondaryCE32(I)J

    move-result-wide p1

    invoke-interface {p0, p1, p2}, Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;->handleCE(J)V

    :cond_b
    return-void

    .line 136
    :pswitch_b
    iget-object p0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->sink:Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;

    if-eqz p0, :cond_c

    .line 137
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->ceFromLongPrimaryCE32(I)J

    move-result-wide p1

    invoke-interface {p0, p1, p2}, Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;->handleCE(J)V

    :cond_c
    :pswitch_c
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_9
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handlePrefixes(III)V
    .locals 2

    .line 232
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result p3

    .line 233
    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v0, p3}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    move-result v0

    .line 234
    invoke-direct {p0, p1, p2, v0}, Landroid/icu/impl/coll/ContractionsAndExpansions;->handleCE32(III)V

    .line 235
    iget-boolean v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->addPrefixes:Z

    if-nez v0, :cond_0

    return-void

    .line 238
    :cond_0
    new-instance v0, Landroid/icu/util/CharsTrie;

    iget-object v1, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v1, v1, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/lit8 p3, p3, 0x2

    invoke-direct {v0, v1, p3}, Landroid/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v0}, Landroid/icu/util/CharsTrie;->iterator()Landroid/icu/util/CharsTrie$Iterator;

    move-result-object p3

    .line 239
    :goto_0
    invoke-virtual {p3}, Landroid/icu/util/CharsTrie$Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    invoke-virtual {p3}, Landroid/icu/util/CharsTrie$Iterator;->next()Landroid/icu/util/CharsTrie$Entry;

    move-result-object v0

    .line 241
    iget-object v1, v0, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Landroid/icu/impl/coll/ContractionsAndExpansions;->setPrefix(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v1, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->contractions:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, p1, p2, v1}, Landroid/icu/impl/coll/ContractionsAndExpansions;->addStrings(IILandroid/icu/text/UnicodeSet;)V

    .line 245
    iget-object v1, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->expansions:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, p1, p2, v1}, Landroid/icu/impl/coll/ContractionsAndExpansions;->addStrings(IILandroid/icu/text/UnicodeSet;)V

    .line 246
    iget v0, v0, Landroid/icu/util/CharsTrie$Entry;->value:I

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/impl/coll/ContractionsAndExpansions;->handleCE32(III)V

    goto :goto_0

    .line 248
    :cond_1
    invoke-direct {p0}, Landroid/icu/impl/coll/ContractionsAndExpansions;->resetPrefix()V

    return-void
.end method

.method private resetPrefix()V
    .locals 1

    .line 308
    iget-object p0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method

.method private setPrefix(Ljava/lang/CharSequence;)V
    .locals 2

    .line 303
    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 304
    iget-object p0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method addExpansions(II)V
    .locals 1

    .line 277
    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->suffix:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 278
    iget-object p0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->expansions:Landroid/icu/text/UnicodeSet;

    if-eqz p0, :cond_1

    .line 279
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    goto :goto_0

    .line 282
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->expansions:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/impl/coll/ContractionsAndExpansions;->addStrings(IILandroid/icu/text/UnicodeSet;)V

    :cond_1
    :goto_0
    return-void
.end method

.method addStrings(IILandroid/icu/text/UnicodeSet;)V
    .locals 2

    if-nez p3, :cond_0

    return-void

    .line 290
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 292
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 293
    iget-object v1, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->suffix:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    :cond_2
    invoke-virtual {p3, v0}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    .line 297
    iget-object v1, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/lit8 p1, p1, 0x1

    if-le p1, p2, :cond_1

    return-void
.end method

.method public forCodePoint(Landroid/icu/impl/coll/CollationData;I)V
    .locals 2

    .line 107
    invoke-virtual {p1, p2}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v0

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_0

    .line 109
    iget-object p1, p1, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    .line 110
    invoke-virtual {p1, p2}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v0

    .line 112
    :cond_0
    iput-object p1, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    .line 113
    invoke-direct {p0, p2, p2, v0}, Landroid/icu/impl/coll/ContractionsAndExpansions;->handleCE32(III)V

    return-void
.end method

.method public forData(Landroid/icu/impl/coll/CollationData;)V
    .locals 4

    .line 55
    iget-object v0, p1, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 56
    iput v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->checkTailored:I

    .line 58
    :cond_0
    iput-object p1, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    .line 59
    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->trie:Landroid/icu/impl/Trie2_32;

    invoke-virtual {v0}, Landroid/icu/impl/Trie2_32;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 61
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/Trie2$Range;

    iget-boolean v2, v1, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-nez v2, :cond_1

    .line 62
    iget v2, v1, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    iget v3, v1, Landroid/icu/impl/Trie2$Range;->endCodePoint:I

    iget v1, v1, Landroid/icu/impl/Trie2$Range;->value:I

    invoke-direct {p0, v2, v3, v1, p0}, Landroid/icu/impl/coll/ContractionsAndExpansions;->enumCnERange(IIILandroid/icu/impl/coll/ContractionsAndExpansions;)V

    goto :goto_0

    .line 64
    :cond_1
    iget-object v0, p1, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    if-nez v0, :cond_2

    return-void

    .line 68
    :cond_2
    iget-object v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->tailored:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    const/4 v0, 0x1

    .line 69
    iput v0, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->checkTailored:I

    .line 70
    iget-object p1, p1, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    iput-object p1, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    .line 71
    iget-object p1, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    iget-object p1, p1, Landroid/icu/impl/coll/CollationData;->trie:Landroid/icu/impl/Trie2_32;

    invoke-virtual {p1}, Landroid/icu/impl/Trie2_32;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 72
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/Trie2$Range;

    iget-boolean v1, v0, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-nez v1, :cond_3

    .line 73
    iget v1, v0, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    iget v2, v0, Landroid/icu/impl/Trie2$Range;->endCodePoint:I

    iget v0, v0, Landroid/icu/impl/Trie2$Range;->value:I

    invoke-direct {p0, v1, v2, v0, p0}, Landroid/icu/impl/coll/ContractionsAndExpansions;->enumCnERange(IIILandroid/icu/impl/coll/ContractionsAndExpansions;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method handleContractions(III)V
    .locals 2

    .line 252
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v0

    and-int/lit16 p3, p3, 0x100

    if-eqz p3, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    iget-object p3, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {p3, v0}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    move-result p3

    .line 261
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/coll/ContractionsAndExpansions;->handleCE32(III)V

    .line 263
    :goto_0
    new-instance p3, Landroid/icu/util/CharsTrie;

    iget-object v1, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v1, v1, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x2

    invoke-direct {p3, v1, v0}, Landroid/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {p3}, Landroid/icu/util/CharsTrie;->iterator()Landroid/icu/util/CharsTrie$Iterator;

    move-result-object p3

    .line 264
    :goto_1
    invoke-virtual {p3}, Landroid/icu/util/CharsTrie$Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    invoke-virtual {p3}, Landroid/icu/util/CharsTrie$Iterator;->next()Landroid/icu/util/CharsTrie$Entry;

    move-result-object v0

    .line 266
    iget-object v1, v0, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->suffix:Ljava/lang/String;

    .line 267
    iget-object v1, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->contractions:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, p1, p2, v1}, Landroid/icu/impl/coll/ContractionsAndExpansions;->addStrings(IILandroid/icu/text/UnicodeSet;)V

    .line 268
    iget-object v1, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->unreversedPrefix:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    iget-object v1, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->expansions:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, p1, p2, v1}, Landroid/icu/impl/coll/ContractionsAndExpansions;->addStrings(IILandroid/icu/text/UnicodeSet;)V

    .line 271
    :cond_1
    iget v0, v0, Landroid/icu/util/CharsTrie$Entry;->value:I

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/impl/coll/ContractionsAndExpansions;->handleCE32(III)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 273
    iput-object p1, p0, Landroid/icu/impl/coll/ContractionsAndExpansions;->suffix:Ljava/lang/String;

    return-void
.end method
