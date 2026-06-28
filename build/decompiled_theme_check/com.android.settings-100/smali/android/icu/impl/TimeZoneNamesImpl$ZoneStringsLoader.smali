.class final Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;
.super Landroid/icu/impl/UResource$Sink;
.source "TimeZoneNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TimeZoneNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ZoneStringsLoader"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final INITIAL_NUM_ZONES:I = 0x12c


# instance fields
.field private keyToLoader:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/icu/impl/UResource$Key;",
            "Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;",
            ">;"
        }
    .end annotation
.end field

.field private sb:Ljava/lang/StringBuilder;

.field final synthetic this$0:Landroid/icu/impl/TimeZoneNamesImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 308
    const-class v0, Landroid/icu/impl/TimeZoneNamesImpl;

    return-void
.end method

.method private constructor <init>(Landroid/icu/impl/TimeZoneNamesImpl;)V
    .locals 1

    .line 308
    iput-object p1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->this$0:Landroid/icu/impl/TimeZoneNamesImpl;

    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    .line 314
    new-instance p1, Ljava/util/HashMap;

    const/16 v0, 0x12c

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->keyToLoader:Ljava/util/HashMap;

    .line 316
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object p1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->sb:Ljava/lang/StringBuilder;

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/TimeZoneNamesImpl;Landroid/icu/impl/TimeZoneNamesImpl$1;)V
    .locals 0

    .line 308
    invoke-direct {p0, p1}, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;-><init>(Landroid/icu/impl/TimeZoneNamesImpl;)V

    return-void
.end method

.method private consumeNamesTable(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .locals 3

    .line 351
    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->keyToLoader:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    if-nez v0, :cond_3

    .line 353
    invoke-virtual {p0, p1}, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->isMetaZone(Landroid/icu/impl/UResource$Key;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 354
    invoke-direct {p0, p1}, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->mzIDFromKey(Landroid/icu/impl/UResource$Key;)Ljava/lang/String;

    move-result-object v0

    .line 355
    iget-object v2, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->this$0:Landroid/icu/impl/TimeZoneNamesImpl;

    invoke-static {v2}, Landroid/icu/impl/TimeZoneNamesImpl;->access$500(Landroid/icu/impl/TimeZoneNamesImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    invoke-static {}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->access$400()Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    move-result-object v0

    goto :goto_0

    .line 359
    :cond_0
    new-instance v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    invoke-direct {v0, v1}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;-><init>(Landroid/icu/impl/TimeZoneNamesImpl$1;)V

    goto :goto_0

    .line 362
    :cond_1
    invoke-direct {p0, p1}, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->tzIDFromKey(Landroid/icu/impl/UResource$Key;)Ljava/lang/String;

    move-result-object v0

    .line 363
    iget-object v2, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->this$0:Landroid/icu/impl/TimeZoneNamesImpl;

    invoke-static {v2}, Landroid/icu/impl/TimeZoneNamesImpl;->access$700(Landroid/icu/impl/TimeZoneNamesImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 365
    invoke-static {}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->access$400()Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    move-result-object v0

    goto :goto_0

    .line 367
    :cond_2
    new-instance v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    invoke-direct {v0, v1}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;-><init>(Landroid/icu/impl/TimeZoneNamesImpl$1;)V

    .line 371
    :goto_0
    invoke-virtual {p0, p1}, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->createKey(Landroid/icu/impl/UResource$Key;)Landroid/icu/impl/UResource$Key;

    move-result-object v1

    .line 372
    iget-object p0, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->keyToLoader:Ljava/util/HashMap;

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    :cond_3
    invoke-static {}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->access$400()Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    move-result-object p0

    if-eq v0, p0, :cond_4

    .line 377
    invoke-virtual {v0, p1, p2, p3}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V

    :cond_4
    return-void
.end method

.method private mzIDFromKey(Landroid/icu/impl/UResource$Key;)Ljava/lang/String;
    .locals 3

    .line 394
    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->sb:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v0, 0x5

    .line 395
    :goto_0
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 396
    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Landroid/icu/impl/UResource$Key;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 398
    :cond_0
    iget-object p0, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private tzIDFromKey(Landroid/icu/impl/UResource$Key;)Ljava/lang/String;
    .locals 3

    .line 402
    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->sb:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 403
    :goto_0
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->length()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 404
    invoke-virtual {p1, v1}, Landroid/icu/impl/UResource$Key;->charAt(I)C

    move-result v0

    const/16 v2, 0x3a

    if-ne v0, v2, :cond_0

    const/16 v0, 0x2f

    .line 408
    :cond_0
    iget-object v2, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 410
    :cond_1
    iget-object p0, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method createKey(Landroid/icu/impl/UResource$Key;)Landroid/icu/impl/UResource$Key;
    .locals 0

    .line 382
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->clone()Landroid/icu/impl/UResource$Key;

    move-result-object p0

    return-object p0
.end method

.method isMetaZone(Landroid/icu/impl/UResource$Key;)Z
    .locals 0

    const-string p0, "meta:"

    .line 386
    invoke-virtual {p1, p0}, Landroid/icu/impl/UResource$Key;->startsWith(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method load()V
    .locals 4

    .line 320
    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->this$0:Landroid/icu/impl/TimeZoneNamesImpl;

    invoke-static {v0}, Landroid/icu/impl/TimeZoneNamesImpl;->access$300(Landroid/icu/impl/TimeZoneNamesImpl;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1, p0}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V

    .line 321
    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->keyToLoader:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 322
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    .line 323
    invoke-static {}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->access$400()Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    move-result-object v3

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 324
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/UResource$Key;

    .line 326
    invoke-virtual {p0, v1}, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->isMetaZone(Landroid/icu/impl/UResource$Key;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 327
    invoke-direct {p0, v1}, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->mzIDFromKey(Landroid/icu/impl/UResource$Key;)Ljava/lang/String;

    move-result-object v1

    .line 328
    iget-object v3, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->this$0:Landroid/icu/impl/TimeZoneNamesImpl;

    invoke-static {v3}, Landroid/icu/impl/TimeZoneNamesImpl;->access$500(Landroid/icu/impl/TimeZoneNamesImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-static {v2}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->access$600(Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->createMetaZoneAndPutInCache(Ljava/util/Map;[Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    goto :goto_0

    .line 330
    :cond_1
    invoke-direct {p0, v1}, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->tzIDFromKey(Landroid/icu/impl/UResource$Key;)Ljava/lang/String;

    move-result-object v1

    .line 331
    iget-object v3, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->this$0:Landroid/icu/impl/TimeZoneNamesImpl;

    invoke-static {v3}, Landroid/icu/impl/TimeZoneNamesImpl;->access$700(Landroid/icu/impl/TimeZoneNamesImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-static {v2}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->access$600(Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->createTimeZoneAndPutInCache(Ljava/util/Map;[Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .locals 4

    .line 338
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    const/4 v1, 0x0

    .line 339
    :goto_0
    invoke-interface {v0, v1, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 341
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 342
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->consumeNamesTable(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
