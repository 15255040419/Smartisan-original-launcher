.class Landroid/icu/impl/locale/XLocaleDistance$CompactAndImmutablizer;
.super Landroid/icu/impl/locale/XLocaleDistance$IdMakerFull;
.source "XLocaleDistance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/XLocaleDistance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompactAndImmutablizer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/impl/locale/XLocaleDistance$IdMakerFull<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1290
    invoke-direct {p0}, Landroid/icu/impl/locale/XLocaleDistance$IdMakerFull;-><init>()V

    return-void
.end method


# virtual methods
.method compact(Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;)Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;
    .locals 2

    .line 1314
    invoke-virtual {p0, p1}, Landroid/icu/impl/locale/XLocaleDistance$CompactAndImmutablizer;->toId(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1315
    invoke-virtual {p0, p1}, Landroid/icu/impl/locale/XLocaleDistance$CompactAndImmutablizer;->intern(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;

    return-object p0

    .line 1317
    :cond_0
    invoke-virtual {p1}, Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;->getDistanceTable()Landroid/icu/impl/locale/XLocaleDistance$DistanceTable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1318
    invoke-virtual {v0}, Landroid/icu/impl/locale/XLocaleDistance$DistanceTable;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1321
    :cond_1
    new-instance v0, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceNode;

    iget v1, p1, Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;->distance:I

    check-cast p1, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceNode;

    iget-object p1, p1, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceNode;->distanceTable:Landroid/icu/impl/locale/XLocaleDistance$DistanceTable;

    check-cast p1, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;

    invoke-virtual {p0, p1}, Landroid/icu/impl/locale/XLocaleDistance$CompactAndImmutablizer;->compact(Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;)Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceNode;-><init>(ILandroid/icu/impl/locale/XLocaleDistance$DistanceTable;)V

    return-object v0

    .line 1319
    :cond_2
    :goto_0
    new-instance p0, Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;

    iget p1, p1, Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;->distance:I

    invoke-direct {p0, p1}, Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;-><init>(I)V

    return-object p0
.end method

.method compact(Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;)Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;
    .locals 2

    .line 1292
    invoke-virtual {p0, p1}, Landroid/icu/impl/locale/XLocaleDistance$CompactAndImmutablizer;->toId(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1293
    invoke-virtual {p0, p1}, Landroid/icu/impl/locale/XLocaleDistance$CompactAndImmutablizer;->intern(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;

    return-object p0

    .line 1295
    :cond_0
    new-instance v0, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;

    iget-object p1, p1, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;->subtables:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/icu/impl/locale/XLocaleDistance$CompactAndImmutablizer;->compact(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method compact(Ljava/util/Map;I)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TT;>;I)",
            "Ljava/util/Map<",
            "TK;TT;>;"
        }
    .end annotation

    .line 1299
    invoke-virtual {p0, p1}, Landroid/icu/impl/locale/XLocaleDistance$CompactAndImmutablizer;->toId(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1300
    invoke-virtual {p0, p1}, Landroid/icu/impl/locale/XLocaleDistance$CompactAndImmutablizer;->intern(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0

    .line 1302
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1303
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1304
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 1305
    instance-of v3, v2, Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 1306
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v2, Ljava/util/Map;

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/icu/impl/locale/XLocaleDistance$CompactAndImmutablizer;->compact(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1308
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v2, Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;

    invoke-virtual {p0, v2}, Landroid/icu/impl/locale/XLocaleDistance$CompactAndImmutablizer;->compact(Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;)Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1311
    :cond_2
    invoke-static {v0}, Landroid/icu/impl/locale/XCldrStub$ImmutableMap;->copyOf(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
