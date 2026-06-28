.class public Landroid/icu/util/LocalePriorityList$Builder;
.super Ljava/lang/Object;
.source "LocalePriorityList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/LocalePriorityList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final languageToWeight:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/icu/util/ULocale;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/util/LocalePriorityList$Builder;->languageToWeight:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/util/LocalePriorityList$1;)V
    .locals 0

    .line 196
    invoke-direct {p0}, Landroid/icu/util/LocalePriorityList$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Landroid/icu/util/LocalePriorityList;)Landroid/icu/util/LocalePriorityList$Builder;
    .locals 4

    .line 259
    invoke-static {p1}, Landroid/icu/util/LocalePriorityList;->access$400(Landroid/icu/util/LocalePriorityList;)Ljava/util/Map;

    move-result-object v0

    .line 260
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 259
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/ULocale;

    .line 261
    invoke-static {p1}, Landroid/icu/util/LocalePriorityList;->access$400(Landroid/icu/util/LocalePriorityList;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Landroid/icu/util/LocalePriorityList$Builder;->add(Landroid/icu/util/ULocale;D)Landroid/icu/util/LocalePriorityList$Builder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public add(Landroid/icu/util/ULocale;)Landroid/icu/util/LocalePriorityList$Builder;
    .locals 2

    .line 273
    invoke-static {}, Landroid/icu/util/LocalePriorityList;->access$200()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/util/LocalePriorityList$Builder;->add(Landroid/icu/util/ULocale;D)Landroid/icu/util/LocalePriorityList$Builder;

    move-result-object p0

    return-object p0
.end method

.method public add(Landroid/icu/util/ULocale;D)Landroid/icu/util/LocalePriorityList$Builder;
    .locals 2

    .line 299
    iget-object v0, p0, Landroid/icu/util/LocalePriorityList$Builder;->languageToWeight:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Landroid/icu/util/LocalePriorityList$Builder;->languageToWeight:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-gtz v0, :cond_1

    return-object p0

    .line 304
    :cond_1
    invoke-static {}, Landroid/icu/util/LocalePriorityList;->access$200()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpl-double v0, p2, v0

    if-lez v0, :cond_2

    .line 305
    invoke-static {}, Landroid/icu/util/LocalePriorityList;->access$200()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    .line 307
    :cond_2
    iget-object v0, p0, Landroid/icu/util/LocalePriorityList$Builder;->languageToWeight:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public add(Ljava/lang/String;)Landroid/icu/util/LocalePriorityList$Builder;
    .locals 8

    .line 318
    invoke-static {}, Landroid/icu/util/LocalePriorityList;->access$500()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p1

    .line 319
    invoke-static {}, Landroid/icu/util/LocalePriorityList;->access$600()Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 320
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    .line 321
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 322
    new-instance v3, Landroid/icu/util/ULocale;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x2

    .line 323
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    if-ltz v6, :cond_0

    .line 324
    invoke-static {}, Landroid/icu/util/LocalePriorityList;->access$200()Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpg-double v6, v4, v6

    if-gtz v6, :cond_0

    .line 328
    invoke-virtual {p0, v3, v4, v5}, Landroid/icu/util/LocalePriorityList$Builder;->add(Landroid/icu/util/ULocale;D)Landroid/icu/util/LocalePriorityList$Builder;

    goto :goto_1

    .line 325
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal weight, must be 0..1: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 329
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    .line 330
    new-instance v4, Landroid/icu/util/ULocale;

    invoke-direct {v4, v3}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Landroid/icu/util/LocalePriorityList$Builder;->add(Landroid/icu/util/ULocale;)Landroid/icu/util/LocalePriorityList$Builder;

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public varargs add([Landroid/icu/util/ULocale;)Landroid/icu/util/LocalePriorityList$Builder;
    .locals 5

    .line 283
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 284
    invoke-static {}, Landroid/icu/util/LocalePriorityList;->access$200()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Landroid/icu/util/LocalePriorityList$Builder;->add(Landroid/icu/util/ULocale;D)Landroid/icu/util/LocalePriorityList$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public build()Landroid/icu/util/LocalePriorityList;
    .locals 1

    const/4 v0, 0x0

    .line 217
    invoke-virtual {p0, v0}, Landroid/icu/util/LocalePriorityList$Builder;->build(Z)Landroid/icu/util/LocalePriorityList;

    move-result-object p0

    return-object p0
.end method

.method public build(Z)Landroid/icu/util/LocalePriorityList;
    .locals 5

    .line 229
    new-instance v0, Ljava/util/TreeMap;

    .line 230
    invoke-static {}, Landroid/icu/util/LocalePriorityList;->access$100()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 231
    iget-object v1, p0, Landroid/icu/util/LocalePriorityList$Builder;->languageToWeight:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/util/ULocale;

    .line 232
    iget-object v3, p0, Landroid/icu/util/LocalePriorityList$Builder;->languageToWeight:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    .line 233
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    if-nez v4, :cond_0

    .line 235
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :cond_0
    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 241
    :cond_1
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 242
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 243
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    .line 244
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/util/ULocale;

    if-eqz p1, :cond_3

    move-object v4, v2

    goto :goto_2

    .line 245
    :cond_3
    invoke-static {}, Landroid/icu/util/LocalePriorityList;->access$200()Ljava/lang/Double;

    move-result-object v4

    :goto_2
    invoke-interface {p0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 248
    :cond_4
    new-instance p1, Landroid/icu/util/LocalePriorityList;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroid/icu/util/LocalePriorityList;-><init>(Ljava/util/Map;Landroid/icu/util/LocalePriorityList$1;)V

    return-object p1
.end method
