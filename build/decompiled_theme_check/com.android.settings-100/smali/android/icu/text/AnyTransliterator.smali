.class Landroid/icu/text/AnyTransliterator;
.super Landroid/icu/text/Transliterator;
.source "AnyTransliterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/AnyTransliterator$ScriptRunIterator;
    }
.end annotation


# static fields
.field static final ANY:Ljava/lang/String; = "Any"

.field static final LATIN_PIVOT:Ljava/lang/String; = "-Latin;Latin-"

.field static final NULL_ID:Ljava/lang/String; = "Null"

.field static final TARGET_SEP:C = '-'

.field static final VARIANT_SEP:C = '/'


# instance fields
.field private cache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/icu/text/Transliterator;",
            ">;"
        }
    .end annotation
.end field

.field private target:Ljava/lang/String;

.field private targetScript:I

.field private widthFix:Landroid/icu/text/Transliterator;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;Ljava/lang/String;ILandroid/icu/text/Transliterator;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/icu/text/UnicodeFilter;",
            "Ljava/lang/String;",
            "I",
            "Landroid/icu/text/Transliterator;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/icu/text/Transliterator;",
            ">;)V"
        }
    .end annotation

    .line 160
    invoke-direct {p0, p1, p2}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    const-string p1, "[[:dt=Nar:][:dt=Wide:]] nfkd"

    .line 73
    invoke-static {p1}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/AnyTransliterator;->widthFix:Landroid/icu/text/Transliterator;

    .line 161
    iput p4, p0, Landroid/icu/text/AnyTransliterator;->targetScript:I

    .line 162
    iput-object p6, p0, Landroid/icu/text/AnyTransliterator;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 163
    iput-object p3, p0, Landroid/icu/text/AnyTransliterator;->target:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 139
    invoke-direct {p0, p1, v0}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    const-string p1, "[[:dt=Nar:][:dt=Wide:]] nfkd"

    .line 73
    invoke-static {p1}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/AnyTransliterator;->widthFix:Landroid/icu/text/Transliterator;

    .line 140
    iput p4, p0, Landroid/icu/text/AnyTransliterator;->targetScript:I

    .line 141
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Landroid/icu/text/AnyTransliterator;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 143
    iput-object p2, p0, Landroid/icu/text/AnyTransliterator;->target:Ljava/lang/String;

    .line 144
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 145
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x2f

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/AnyTransliterator;->target:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private getTransliterator(I)Landroid/icu/text/Transliterator;
    .locals 4

    .line 175
    iget v0, p0, Landroid/icu/text/AnyTransliterator;->targetScript:I

    if-eq p1, v0, :cond_5

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto/16 :goto_1

    .line 183
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 184
    iget-object v1, p0, Landroid/icu/text/AnyTransliterator;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/Transliterator;

    if-nez v1, :cond_4

    .line 186
    invoke-static {p1}, Landroid/icu/lang/UScript;->getName(I)Ljava/lang/String;

    move-result-object p1

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/icu/text/AnyTransliterator;->target:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 190
    :try_start_0
    invoke-static {v2, v3}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;I)Landroid/icu/text/Transliterator;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-nez v1, :cond_1

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-Latin;Latin-"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/icu/text/AnyTransliterator;->target:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 197
    :try_start_1
    invoke-static {p1, v3}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;I)Landroid/icu/text/Transliterator;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, p1

    :catch_1
    :cond_1
    if-eqz v1, :cond_3

    .line 202
    iget p1, p0, Landroid/icu/text/AnyTransliterator;->targetScript:I

    invoke-direct {p0, p1}, Landroid/icu/text/AnyTransliterator;->isWide(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 203
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 204
    iget-object v2, p0, Landroid/icu/text/AnyTransliterator;->widthFix:Landroid/icu/text/Transliterator;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    new-instance v1, Landroid/icu/text/CompoundTransliterator;

    invoke-direct {v1, p1}, Landroid/icu/text/CompoundTransliterator;-><init>(Ljava/util/List;)V

    .line 208
    :cond_2
    iget-object p0, p0, Landroid/icu/text/AnyTransliterator;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/text/Transliterator;

    if-eqz p0, :cond_4

    move-object v1, p0

    goto :goto_0

    .line 212
    :cond_3
    iget p1, p0, Landroid/icu/text/AnyTransliterator;->targetScript:I

    invoke-direct {p0, p1}, Landroid/icu/text/AnyTransliterator;->isWide(I)Z

    move-result p1

    if-nez p1, :cond_4

    .line 213
    iget-object p0, p0, Landroid/icu/text/AnyTransliterator;->widthFix:Landroid/icu/text/Transliterator;

    return-object p0

    :cond_4
    :goto_0
    return-object v1

    .line 176
    :cond_5
    :goto_1
    iget p1, p0, Landroid/icu/text/AnyTransliterator;->targetScript:I

    invoke-direct {p0, p1}, Landroid/icu/text/AnyTransliterator;->isWide(I)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 179
    :cond_6
    iget-object p0, p0, Landroid/icu/text/AnyTransliterator;->widthFix:Landroid/icu/text/Transliterator;

    return-object p0
.end method

.method private isWide(I)Z
    .locals 0

    const/4 p0, 0x5

    if-eq p1, p0, :cond_1

    const/16 p0, 0x11

    if-eq p1, p0, :cond_1

    const/16 p0, 0x12

    if-eq p1, p0, :cond_1

    const/16 p0, 0x14

    if-eq p1, p0, :cond_1

    const/16 p0, 0x16

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static register()V
    .locals 12

    .line 235
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 237
    invoke-static {}, Landroid/icu/text/Transliterator;->getAvailableSources()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 238
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "Any"

    .line 241
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 243
    :cond_1
    invoke-static {v2}, Landroid/icu/text/Transliterator;->getAvailableTargets(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v4

    .line 244
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 245
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 248
    invoke-static {v5}, Landroid/icu/text/AnyTransliterator;->scriptNameToCode(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    goto :goto_1

    .line 253
    :cond_3
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    if-nez v7, :cond_4

    .line 255
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    :cond_4
    invoke-static {v2, v5}, Landroid/icu/text/Transliterator;->getAvailableVariants(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v8

    .line 259
    :goto_2
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 260
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 263
    invoke-interface {v7, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_2

    .line 266
    :cond_5
    invoke-interface {v7, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-static {v3, v5, v9}, Landroid/icu/text/TransliteratorIDParser;->STVtoID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 270
    new-instance v11, Landroid/icu/text/AnyTransliterator;

    invoke-direct {v11, v10, v5, v9, v6}, Landroid/icu/text/AnyTransliterator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 272
    invoke-static {v11}, Landroid/icu/text/Transliterator;->registerInstance(Landroid/icu/text/Transliterator;)V

    const/4 v9, 0x0

    const-string v10, "Null"

    .line 273
    invoke-static {v5, v10, v9}, Landroid/icu/text/Transliterator;->registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_6
    return-void
.end method

.method private static scriptNameToCode(Ljava/lang/String;)I
    .locals 2

    const/4 v0, -0x1

    .line 285
    :try_start_0
    invoke-static {p0}, Landroid/icu/lang/UScript;->getCode(Ljava/lang/String;)[I

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    .line 286
    aget v0, p0, v1
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return v0
.end method


# virtual methods
.method public addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .locals 0

    .line 419
    invoke-virtual {p0, p1}, Landroid/icu/text/AnyTransliterator;->getFilterAsUnicodeSet(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object p0

    .line 421
    invoke-virtual {p2, p0}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 422
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->size()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    const p1, 0x10ffff

    .line 423
    invoke-virtual {p3, p0, p1}, Landroid/icu/text/UnicodeSet;->addAll(II)Landroid/icu/text/UnicodeSet;

    :cond_0
    return-void
.end method

.method protected handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .locals 6

    .line 81
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->start:I

    .line 82
    iget v1, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    .line 84
    new-instance v2, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;

    iget v3, p2, Landroid/icu/text/Transliterator$Position;->contextStart:I

    iget v4, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    invoke-direct {v2, p1, v3, v4}, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;-><init>(Landroid/icu/text/Replaceable;II)V

    .line 87
    :cond_0
    :goto_0
    invoke-virtual {v2}, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->next()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 89
    iget v3, v2, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->limit:I

    if-gt v3, v0, :cond_1

    goto :goto_0

    .line 93
    :cond_1
    iget v3, v2, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->scriptCode:I

    invoke-direct {p0, v3}, Landroid/icu/text/AnyTransliterator;->getTransliterator(I)Landroid/icu/text/Transliterator;

    move-result-object v3

    if-nez v3, :cond_2

    .line 98
    iget v3, v2, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->limit:I

    iput v3, p2, Landroid/icu/text/Transliterator$Position;->start:I

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    .line 105
    iget v4, v2, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->limit:I

    if-lt v4, v1, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    .line 107
    :goto_1
    iget v5, v2, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->start:I

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p2, Landroid/icu/text/Transliterator$Position;->start:I

    .line 108
    iget v5, v2, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->limit:I

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    .line 109
    iget v5, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    .line 110
    invoke-virtual {v3, p1, p2, v4}, Landroid/icu/text/Transliterator;->filteredTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V

    .line 111
    iget v3, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    sub-int/2addr v3, v5

    add-int/2addr v1, v3

    .line 113
    invoke-virtual {v2, v3}, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->adjustLimit(I)V

    .line 116
    iget v3, v2, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->limit:I

    if-lt v3, v1, :cond_0

    .line 121
    :cond_4
    iput v1, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    return-void
.end method

.method public safeClone()Landroid/icu/text/Transliterator;
    .locals 9

    .line 407
    invoke-virtual {p0}, Landroid/icu/text/AnyTransliterator;->getFilter()Landroid/icu/text/UnicodeFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 408
    instance-of v1, v0, Landroid/icu/text/UnicodeSet;

    if-eqz v1, :cond_0

    .line 409
    new-instance v1, Landroid/icu/text/UnicodeSet;

    check-cast v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v1, v0}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, v0

    .line 411
    :goto_0
    new-instance v0, Landroid/icu/text/AnyTransliterator;

    invoke-virtual {p0}, Landroid/icu/text/AnyTransliterator;->getID()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Landroid/icu/text/AnyTransliterator;->target:Ljava/lang/String;

    iget v6, p0, Landroid/icu/text/AnyTransliterator;->targetScript:I

    iget-object v7, p0, Landroid/icu/text/AnyTransliterator;->widthFix:Landroid/icu/text/Transliterator;

    iget-object v8, p0, Landroid/icu/text/AnyTransliterator;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroid/icu/text/AnyTransliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;Ljava/lang/String;ILandroid/icu/text/Transliterator;Ljava/util/concurrent/ConcurrentHashMap;)V

    return-object v0
.end method
