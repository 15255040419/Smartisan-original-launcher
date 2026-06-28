.class Landroid/icu/impl/locale/XLocaleDistance$RegionMapper;
.super Ljava/lang/Object;
.source "XLocaleDistance.java"

# interfaces
.implements Landroid/icu/impl/locale/XLocaleDistance$IdMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/XLocaleDistance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RegionMapper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/locale/XLocaleDistance$RegionMapper$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/icu/impl/locale/XLocaleDistance$IdMapper<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final macroToPartitions:Landroid/icu/impl/locale/XCldrStub$Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/locale/XCldrStub$Multimap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final paradigms:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation
.end field

.field final regionToPartition:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final variableToPartition:Landroid/icu/impl/locale/XCldrStub$Multimap;
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
.method private constructor <init>(Landroid/icu/impl/locale/XCldrStub$Multimap;Ljava/util/Map;Landroid/icu/impl/locale/XCldrStub$Multimap;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/locale/XCldrStub$Multimap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/icu/impl/locale/XCldrStub$Multimap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/icu/util/ULocale;",
            ">;)V"
        }
    .end annotation

    .line 1081
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1082
    invoke-static {p1}, Landroid/icu/impl/locale/XCldrStub$ImmutableMultimap;->copyOf(Landroid/icu/impl/locale/XCldrStub$Multimap;)Landroid/icu/impl/locale/XCldrStub$Multimap;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/locale/XLocaleDistance$RegionMapper;->variableToPartition:Landroid/icu/impl/locale/XCldrStub$Multimap;

    .line 1083
    invoke-static {p2}, Landroid/icu/impl/locale/XCldrStub$ImmutableMap;->copyOf(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/locale/XLocaleDistance$RegionMapper;->regionToPartition:Ljava/util/Map;

    .line 1084
    invoke-static {p3}, Landroid/icu/impl/locale/XCldrStub$ImmutableMultimap;->copyOf(Landroid/icu/impl/locale/XCldrStub$Multimap;)Landroid/icu/impl/locale/XCldrStub$Multimap;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/locale/XLocaleDistance$RegionMapper;->macroToPartitions:Landroid/icu/impl/locale/XCldrStub$Multimap;

    .line 1085
    invoke-static {p4}, Landroid/icu/impl/locale/XCldrStub$ImmutableSet;->copyOf(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/locale/XLocaleDistance$RegionMapper;->paradigms:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/locale/XCldrStub$Multimap;Ljava/util/Map;Landroid/icu/impl/locale/XCldrStub$Multimap;Ljava/util/Set;Landroid/icu/impl/locale/XLocaleDistance$1;)V
    .locals 0

    .line 1058
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/impl/locale/XLocaleDistance$RegionMapper;-><init>(Landroid/icu/impl/locale/XCldrStub$Multimap;Ljava/util/Map;Landroid/icu/impl/locale/XCldrStub$Multimap;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public getIdsFromVariable(Ljava/lang/String;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "*"

    .line 1095
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1096
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 1098
    :cond_0
    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleDistance$RegionMapper;->variableToPartition:Landroid/icu/impl/locale/XCldrStub$Multimap;

    invoke-virtual {p0, p1}, Landroid/icu/impl/locale/XCldrStub$Multimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1099
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    .line 1100
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Variable not defined: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public regions()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1106
    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleDistance$RegionMapper;->regionToPartition:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toId(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1058
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/icu/impl/locale/XLocaleDistance$RegionMapper;->toId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1090
    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleDistance$RegionMapper;->regionToPartition:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1115
    iget-object v0, p0, Landroid/icu/impl/locale/XLocaleDistance$RegionMapper;->variableToPartition:Landroid/icu/impl/locale/XCldrStub$Multimap;

    .line 1116
    invoke-static {}, Landroid/icu/impl/locale/XCldrStub$TreeMultimap;->create()Landroid/icu/impl/locale/XCldrStub$TreeMultimap;

    move-result-object v1

    .line 1115
    invoke-static {v0, v1}, Landroid/icu/impl/locale/XCldrStub$Multimaps;->invertFrom(Landroid/icu/impl/locale/XCldrStub$Multimap;Landroid/icu/impl/locale/XCldrStub$Multimap;)Landroid/icu/impl/locale/XCldrStub$Multimap;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/locale/XCldrStub$TreeMultimap;

    .line 1117
    invoke-static {}, Landroid/icu/impl/locale/XCldrStub$TreeMultimap;->create()Landroid/icu/impl/locale/XCldrStub$TreeMultimap;

    move-result-object v1

    .line 1118
    iget-object v2, p0, Landroid/icu/impl/locale/XLocaleDistance$RegionMapper;->regionToPartition:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1119
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Landroid/icu/impl/locale/XCldrStub$TreeMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1121
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Partition \u27a0 Variables \u27a0 Regions (final)"

    .line 1122
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1123
    invoke-virtual {v0}, Landroid/icu/impl/locale/XCldrStub$TreeMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v4, 0xa

    const-string v5, "\t"

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1124
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1125
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/icu/impl/locale/XCldrStub$TreeMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v0, "\nMacro \u27a0 Partitions"

    .line 1127
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1128
    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleDistance$RegionMapper;->macroToPartitions:Landroid/icu/impl/locale/XCldrStub$Multimap;

    invoke-virtual {p0}, Landroid/icu/impl/locale/XCldrStub$Multimap;->asMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1129
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1133
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public variables()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1110
    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleDistance$RegionMapper;->variableToPartition:Landroid/icu/impl/locale/XCldrStub$Multimap;

    invoke-virtual {p0}, Landroid/icu/impl/locale/XCldrStub$Multimap;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
