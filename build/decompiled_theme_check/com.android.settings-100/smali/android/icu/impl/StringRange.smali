.class public Landroid/icu/impl/StringRange;
.super Ljava/lang/Object;
.source "StringRange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/StringRange$Ranges;,
        Landroid/icu/impl/StringRange$Range;,
        Landroid/icu/impl/StringRange$Adder;
    }
.end annotation


# static fields
.field public static final COMPARE_INT_ARRAYS:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "[I>;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Landroid/icu/impl/StringRange$1;

    invoke-direct {v0}, Landroid/icu/impl/StringRange$1;-><init>()V

    sput-object v0, Landroid/icu/impl/StringRange;->COMPARE_INT_ARRAYS:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add(II[I[ILjava/lang/StringBuilder;Ljava/util/Collection;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[I[I",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move v0, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    add-int v1, v0, p1

    .line 271
    aget v1, p2, v1

    .line 272
    aget v9, v7, v0

    if-gt v1, v9, :cond_3

    .line 276
    array-length v2, v7

    const/4 v10, 0x1

    sub-int/2addr v2, v10

    if-ne v0, v2, :cond_0

    move v11, v10

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    move v11, v2

    .line 277
    :goto_0
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    move v13, v1

    :goto_1
    if-gt v13, v9, :cond_2

    .line 279
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    if-eqz v11, :cond_1

    .line 281
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v14, p5

    invoke-interface {v14, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    move-object/from16 v14, p5

    add-int/lit8 v1, v0, 0x1

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    .line 283
    invoke-static/range {v1 .. v6}, Landroid/icu/impl/StringRange;->add(II[I[ILjava/lang/StringBuilder;Ljava/util/Collection;)V

    .line 285
    :goto_2
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    return-void

    .line 274
    :cond_3
    new-instance v0, Landroid/icu/util/ICUException;

    const-string v1, "Range must have x\u1d62 \u2264 y\u1d62 for each index i"

    invoke-direct {v0, v1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static compact(ILjava/util/Set;)Ljava/util/LinkedList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Landroid/icu/impl/StringRange$Ranges;",
            ">;)",
            "Ljava/util/LinkedList<",
            "Landroid/icu/impl/StringRange$Ranges;",
            ">;"
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-ltz p0, :cond_3

    const/4 p1, 0x0

    .line 123
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 124
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/StringRange$Ranges;

    if-nez p1, :cond_0

    goto :goto_2

    .line 127
    :cond_0
    invoke-virtual {p1, p0, v2}, Landroid/icu/impl/StringRange$Ranges;->merge(ILandroid/icu/impl/StringRange$Ranges;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 128
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_1
    :goto_2
    move-object p1, v2

    goto :goto_1

    :cond_2
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static compact(Ljava/util/Set;Landroid/icu/impl/StringRange$Adder;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/icu/impl/StringRange$Adder;",
            "Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 116
    invoke-static {p0, p1, p2, v0}, Landroid/icu/impl/StringRange;->compact(Ljava/util/Set;Landroid/icu/impl/StringRange$Adder;ZZ)V

    return-void
.end method

.method public static compact(Ljava/util/Set;Landroid/icu/impl/StringRange$Adder;ZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/icu/impl/StringRange$Adder;",
            "ZZ)V"
        }
    .end annotation

    if-nez p3, :cond_7

    .line 66
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p3, 0x0

    const/4 v0, 0x0

    move v3, p3

    move v4, v3

    move-object v1, v0

    move-object v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 68
    invoke-virtual {v5, p3, v1, p3, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 69
    invoke-virtual {v5, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    add-int/lit8 v4, v4, 0x1

    if-ne v6, v4, :cond_0

    .line 70
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v7, v3

    if-ne v4, v7, :cond_0

    move-object v2, v5

    move v4, v6

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    move-object v2, v0

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    goto :goto_1

    .line 79
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 77
    :goto_1
    invoke-interface {p1, v1, v2}, Landroid/icu/impl/StringRange$Adder;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->codePointBefore(I)I

    move-result v4

    .line 85
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int v3, v1, v2

    move-object v2, v0

    move-object v1, v5

    goto :goto_0

    :cond_4
    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    if-nez p2, :cond_6

    move-object v0, v2

    goto :goto_2

    .line 89
    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v2, v3, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 87
    :goto_2
    invoke-interface {p1, v1, v0}, Landroid/icu/impl/StringRange$Adder;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 94
    :cond_7
    new-instance p3, Ljava/util/TreeMap;

    invoke-direct {p3}, Ljava/util/TreeMap;-><init>()V

    const-class v0, Ljava/util/TreeSet;

    invoke-static {p3, v0}, Landroid/icu/impl/Relation;->of(Ljava/util/Map;Ljava/lang/Class;)Landroid/icu/impl/Relation;

    move-result-object p3

    .line 95
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 96
    new-instance v1, Landroid/icu/impl/StringRange$Ranges;

    invoke-direct {v1, v0}, Landroid/icu/impl/StringRange$Ranges;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v1}, Landroid/icu/impl/StringRange$Ranges;->size()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0, v1}, Landroid/icu/impl/Relation;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 100
    :cond_8
    invoke-virtual {p3}, Landroid/icu/impl/Relation;->keyValuesSet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 101
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Set;

    invoke-static {v0, p3}, Landroid/icu/impl/StringRange;->compact(ILjava/util/Set;)Ljava/util/LinkedList;

    move-result-object p3

    .line 102
    invoke-virtual {p3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/StringRange$Ranges;

    .line 103
    invoke-virtual {v0}, Landroid/icu/impl/StringRange$Ranges;->start()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2}, Landroid/icu/impl/StringRange$Ranges;->end(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroid/icu/impl/StringRange$Adder;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    :goto_5
    return-void
.end method

.method public static expand(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Collection;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    .line 250
    invoke-static {p0}, Landroid/icu/lang/CharSequences;->codePoints(Ljava/lang/CharSequence;)[I

    move-result-object v2

    .line 251
    invoke-static {p1}, Landroid/icu/lang/CharSequences;->codePoints(Ljava/lang/CharSequence;)[I

    move-result-object v3

    .line 252
    array-length p0, v2

    array-length p1, v3

    sub-int v1, p0, p1

    if-eqz p2, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    new-instance p0, Landroid/icu/util/ICUException;

    const-string p1, "Range must have equal-length strings"

    invoke-direct {p0, p1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-ltz v1, :cond_4

    .line 258
    array-length p0, v3

    if-eqz p0, :cond_3

    .line 262
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 p0, 0x0

    :goto_1
    if-ge p0, v1, :cond_2

    .line 264
    aget p1, v2, p0

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    move-object v5, p3

    .line 266
    invoke-static/range {v0 .. v5}, Landroid/icu/impl/StringRange;->add(II[I[ILjava/lang/StringBuilder;Ljava/util/Collection;)V

    return-object p3

    .line 259
    :cond_3
    new-instance p0, Landroid/icu/util/ICUException;

    const-string p1, "Range must have end-length > 0"

    invoke-direct {p0, p1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 257
    :cond_4
    new-instance p0, Landroid/icu/util/ICUException;

    const-string p1, "Range must have start-length \u2265 end-length"

    invoke-direct {p0, p1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 248
    :cond_5
    new-instance p0, Landroid/icu/util/ICUException;

    const-string p1, "Range must have 2 valid strings"

    invoke-direct {p0, p1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
