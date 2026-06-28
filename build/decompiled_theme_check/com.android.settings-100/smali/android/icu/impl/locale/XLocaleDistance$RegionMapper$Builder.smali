.class Landroid/icu/impl/locale/XLocaleDistance$RegionMapper$Builder;
.super Ljava/lang/Object;
.source "XLocaleDistance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/XLocaleDistance$RegionMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private final paradigms:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation
.end field

.field private final regionSet:Landroid/icu/impl/locale/XLocaleDistance$RegionSet;

.field private final regionToRawPartition:Landroid/icu/impl/locale/XCldrStub$Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/locale/XCldrStub$Multimap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1137
    invoke-static {}, Landroid/icu/impl/locale/XCldrStub$TreeMultimap;->create()Landroid/icu/impl/locale/XCldrStub$TreeMultimap;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/locale/XLocaleDistance$RegionMapper$Builder;->regionToRawPartition:Landroid/icu/impl/locale/XCldrStub$Multimap;

    .line 1138
    new-instance v0, Landroid/icu/impl/locale/XLocaleDistance$RegionSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/locale/XLocaleDistance$RegionSet;-><init>(Landroid/icu/impl/locale/XLocaleDistance$1;)V

    iput-object v0, p0, Landroid/icu/impl/locale/XLocaleDistance$RegionMapper$Builder;->regionSet:Landroid/icu/impl/locale/XLocaleDistance$RegionSet;

    .line 1139
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/locale/XLocaleDistance$RegionMapper$Builder;->paradigms:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1142
    iget-object v0, p0, Landroid/icu/impl/locale/XLocaleDistance$RegionMapper$Builder;->regionSet:Landroid/icu/impl/locale/XLocaleDistance$RegionSet;

    invoke-static {v0, p2}, Landroid/icu/impl/locale/XLocaleDistance$RegionSet;->access$200(Landroid/icu/impl/locale/XLocaleDistance$RegionSet;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p2

    .line 1144
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1145
    iget-object v1, p0, Landroid/icu/impl/locale/XLocaleDistance$RegionMapper$Builder;->regionToRawPartition:Landroid/icu/impl/locale/XCldrStub$Multimap;

    invoke-virtual {v1, v0, p1}, Landroid/icu/impl/locale/XCldrStub$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1150
    :cond_0
    iget-object p2, p0, Landroid/icu/impl/locale/XLocaleDistance$RegionMapper$Builder;->regionSet:Landroid/icu/impl/locale/XLocaleDistance$RegionSet;

    invoke-static {p2}, Landroid/icu/impl/locale/XLocaleDistance$RegionSet;->access$300(Landroid/icu/impl/locale/XLocaleDistance$RegionSet;)Ljava/util/Set;

    move-result-object p2

    .line 1151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1152
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1153
    iget-object v1, p0, Landroid/icu/impl/locale/XLocaleDistance$RegionMapper$Builder;->regionToRawPartition:Landroid/icu/impl/locale/XCldrStub$Multimap;

    invoke-virtual {v1, v0, p1}, Landroid/icu/impl/locale/XCldrStub$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public varargs addParadigms([Ljava/lang/String;)Landroid/icu/impl/locale/XLocaleDistance$RegionMapper$Builder;
    .locals 5

    .line 1158
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 1159
    iget-object v3, p0, Landroid/icu/impl/locale/XLocaleDistance$RegionMapper$Builder;->paradigms:Ljava/util/Set;

    new-instance v4, Landroid/icu/util/ULocale;

    invoke-direct {v4, v2}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method build()Landroid/icu/impl/locale/XLocaleDistance$RegionMapper;
    .locals 11

    .line 1165
    new-instance v0, Landroid/icu/impl/locale/XLocaleDistance$IdMakerFull;

    const-string/jumbo v1, "partition"

    invoke-direct {v0, v1}, Landroid/icu/impl/locale/XLocaleDistance$IdMakerFull;-><init>(Ljava/lang/String;)V

    .line 1166
    invoke-static {}, Landroid/icu/impl/locale/XCldrStub$TreeMultimap;->create()Landroid/icu/impl/locale/XCldrStub$TreeMultimap;

    move-result-object v3

    .line 1167
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 1168
    invoke-static {}, Landroid/icu/impl/locale/XCldrStub$TreeMultimap;->create()Landroid/icu/impl/locale/XCldrStub$TreeMultimap;

    move-result-object v1

    .line 1170
    iget-object v2, p0, Landroid/icu/impl/locale/XLocaleDistance$RegionMapper$Builder;->regionToRawPartition:Landroid/icu/impl/locale/XCldrStub$Multimap;

    invoke-virtual {v2}, Landroid/icu/impl/locale/XCldrStub$Multimap;->asMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1171
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1172
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    .line 1173
    invoke-virtual {v0, v5}, Landroid/icu/impl/locale/XLocaleDistance$IdMakerFull;->add(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit16 v7, v7, 0x3b1

    int-to-char v7, v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    .line 1175
    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1176
    invoke-virtual {v1, v7, v6}, Landroid/icu/impl/locale/XCldrStub$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1178
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1179
    invoke-virtual {v3, v6, v7}, Landroid/icu/impl/locale/XCldrStub$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1184
    :cond_1
    invoke-static {}, Landroid/icu/impl/locale/XCldrStub$TreeMultimap;->create()Landroid/icu/impl/locale/XCldrStub$TreeMultimap;

    move-result-object v5

    .line 1185
    sget-object v0, Landroid/icu/impl/locale/XLocaleDistance;->CONTAINER_TO_CONTAINED:Landroid/icu/impl/locale/XCldrStub$Multimap;

    invoke-virtual {v0}, Landroid/icu/impl/locale/XCldrStub$Multimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1186
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1187
    invoke-virtual {v1}, Landroid/icu/impl/locale/XCldrStub$Multimap;->asMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 1188
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1189
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    invoke-static {v10, v8}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1190
    invoke-virtual {v5, v6, v9}, Landroid/icu/impl/locale/XCldrStub$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 1195
    :cond_4
    new-instance v0, Landroid/icu/impl/locale/XLocaleDistance$RegionMapper;

    iget-object v6, p0, Landroid/icu/impl/locale/XLocaleDistance$RegionMapper$Builder;->paradigms:Ljava/util/Set;

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/icu/impl/locale/XLocaleDistance$RegionMapper;-><init>(Landroid/icu/impl/locale/XCldrStub$Multimap;Ljava/util/Map;Landroid/icu/impl/locale/XCldrStub$Multimap;Ljava/util/Set;Landroid/icu/impl/locale/XLocaleDistance$1;)V

    return-object v0
.end method
