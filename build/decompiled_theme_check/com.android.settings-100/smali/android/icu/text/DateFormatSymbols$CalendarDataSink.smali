.class final Landroid/icu/text/DateFormatSymbols$CalendarDataSink;
.super Landroid/icu/impl/UResource$Sink;
.source "DateFormatSymbols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateFormatSymbols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CalendarDataSink"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CALENDAR_ALIAS_PREFIX:Ljava/lang/String; = "/LOCALE/calendar/"


# instance fields
.field aliasPathPairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aliasRelativePath:Ljava/lang/String;

.field arrays:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field currentCalendarType:Ljava/lang/String;

.field maps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field nextCalendarType:Ljava/lang/String;

.field private resourcesToVisit:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1564
    const-class v0, Landroid/icu/text/DateFormatSymbols;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1584
    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    .line 1567
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->arrays:Ljava/util/Map;

    .line 1568
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->maps:Ljava/util/Map;

    .line 1569
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->aliasPathPairs:Ljava/util/List;

    const/4 v0, 0x0

    .line 1572
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->currentCalendarType:Ljava/lang/String;

    .line 1573
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->nextCalendarType:Ljava/lang/String;

    return-void
.end method

.method private processAliasFromValue(Ljava/lang/String;Landroid/icu/impl/UResource$Value;)Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;
    .locals 2

    .line 1765
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 1766
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getAliasString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "/LOCALE/calendar/"

    .line 1767
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1768
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x11

    if-le v0, v1, :cond_3

    const/16 v0, 0x2f

    .line 1769
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-le v0, v1, :cond_3

    .line 1771
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    .line 1772
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->aliasRelativePath:Ljava/lang/String;

    .line 1774
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->currentCalendarType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->aliasRelativePath:Ljava/lang/String;

    .line 1775
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1777
    sget-object p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->SAME_CALENDAR:Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    return-object p0

    .line 1779
    :cond_0
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->currentCalendarType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->aliasRelativePath:Ljava/lang/String;

    .line 1780
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "gregorian"

    .line 1782
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1783
    sget-object p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->GREGORIAN:Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    return-object p0

    .line 1784
    :cond_1
    iget-object p1, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->nextCalendarType:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1785
    :cond_2
    iput-object v1, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->nextCalendarType:Ljava/lang/String;

    .line 1786
    sget-object p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->DIFFERENT_CALENDAR:Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    return-object p0

    .line 1791
    :cond_3
    new-instance p0, Landroid/icu/util/ICUException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Malformed \'calendar\' alias. Path: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1793
    :cond_4
    sget-object p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->NONE:Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    return-object p0
.end method


# virtual methods
.method preEnumerate(Ljava/lang/String;)V
    .locals 0

    .line 1597
    iput-object p1, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->currentCalendarType:Ljava/lang/String;

    const/4 p1, 0x0

    .line 1598
    iput-object p1, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->nextCalendarType:Ljava/lang/String;

    .line 1599
    iget-object p0, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->aliasPathPairs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected processResource(Ljava/lang/String;Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .locals 6

    .line 1698
    invoke-virtual {p3}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1702
    :goto_0
    invoke-interface {v0, v2, p2, p3}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "%variant"

    .line 1704
    invoke-virtual {p2, v3}, Landroid/icu/impl/UResource$Key;->endsWith(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_1

    .line 1706
    :cond_0
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1709
    invoke-virtual {p3}, Landroid/icu/impl/UResource$Value;->getType()I

    move-result v4

    if-nez v4, :cond_2

    if-nez v2, :cond_1

    .line 1712
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1713
    iget-object v4, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->maps:Ljava/util/Map;

    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1716
    :cond_1
    invoke-virtual {p3}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1721
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "cyclicNameSets"

    .line 1724
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "cyclicNameSets/years/format/abbreviated"

    .line 1725
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "cyclicNameSets/zodiacs/format/abbreviated"

    .line 1726
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "cyclicNameSets/dayParts/format/abbreviated"

    .line 1727
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 1732
    :cond_3
    iget-object v4, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->arrays:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->maps:Ljava/util/Map;

    .line 1733
    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    .line 1735
    :cond_4
    invoke-direct {p0, v3, p3}, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->processAliasFromValue(Ljava/lang/String;Landroid/icu/impl/UResource$Value;)Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    move-result-object v4

    .line 1736
    sget-object v5, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->SAME_CALENDAR:Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    if-ne v4, v5, :cond_5

    .line 1737
    iget-object v4, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->aliasPathPairs:Ljava/util/List;

    iget-object v5, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->aliasRelativePath:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1738
    iget-object v4, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->aliasPathPairs:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1744
    :cond_5
    invoke-virtual {p3}, Landroid/icu/impl/UResource$Value;->getType()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_6

    .line 1746
    invoke-virtual {p3}, Landroid/icu/impl/UResource$Value;->getStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 1747
    iget-object v5, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->arrays:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1748
    :cond_6
    invoke-virtual {p3}, Landroid/icu/impl/UResource$Value;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 1750
    invoke-virtual {p0, v3, p2, p3}, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->processResource(Ljava/lang/String;Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V

    :cond_7
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .locals 6

    const/4 p3, 0x0

    .line 1608
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, p3

    move p3, v1

    .line 1611
    :goto_0
    invoke-interface {v0, p3, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1612
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1615
    invoke-direct {p0, v3, p2}, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->processAliasFromValue(Ljava/lang/String;Landroid/icu/impl/UResource$Value;)Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    move-result-object v4

    .line 1616
    sget-object v5, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->GREGORIAN:Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    if-ne v4, v5, :cond_0

    goto/16 :goto_1

    .line 1620
    :cond_0
    sget-object v5, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->DIFFERENT_CALENDAR:Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    if-ne v4, v5, :cond_2

    if-nez v2, :cond_1

    .line 1624
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1626
    :cond_1
    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->aliasRelativePath:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1629
    :cond_2
    sget-object v5, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->SAME_CALENDAR:Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    if-ne v4, v5, :cond_3

    .line 1631
    iget-object v4, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->arrays:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->maps:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1632
    iget-object v4, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->aliasPathPairs:Ljava/util/List;

    iget-object v5, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->aliasRelativePath:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1633
    iget-object v4, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->aliasPathPairs:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1640
    :cond_3
    iget-object v4, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->resourcesToVisit:Ljava/util/Set;

    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->resourcesToVisit:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "AmPmMarkersAbbr"

    .line 1641
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    const-string v4, "AmPmMarkers"

    .line 1644
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "%variant"

    .line 1645
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->arrays:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1646
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 1647
    iget-object v5, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->arrays:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    const-string v4, "eras"

    .line 1649
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "dayNames"

    .line 1650
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "monthNames"

    .line 1651
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string/jumbo v4, "quarters"

    .line 1652
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "dayPeriod"

    .line 1653
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "monthPatterns"

    .line 1654
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "cyclicNameSets"

    .line 1655
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1656
    :cond_6
    invoke-virtual {p0, v3, p1, p2}, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->processResource(Ljava/lang/String;Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V

    :cond_7
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    :cond_8
    move p1, v1

    move p2, p1

    .line 1664
    :goto_2
    iget-object p3, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->aliasPathPairs:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_c

    .line 1666
    iget-object p3, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->aliasPathPairs:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 1667
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->arrays:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_9

    .line 1668
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->arrays:Ljava/util/Map;

    iget-object v4, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->aliasPathPairs:Ljava/util/List;

    add-int/lit8 v5, p1, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->arrays:Ljava/util/Map;

    invoke-interface {v5, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    invoke-interface {v0, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    move p3, v3

    goto :goto_4

    .line 1670
    :cond_9
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->maps:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1671
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->maps:Ljava/util/Map;

    iget-object v4, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->aliasPathPairs:Ljava/util/List;

    add-int/lit8 v5, p1, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->maps:Ljava/util/Map;

    invoke-interface {v5, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    invoke-interface {v0, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_a
    move p3, v1

    :goto_4
    if-eqz p3, :cond_b

    .line 1675
    iget-object p2, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->aliasPathPairs:Ljava/util/List;

    add-int/lit8 p3, p1, 0x1

    invoke-interface {p2, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1676
    iget-object p2, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->aliasPathPairs:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move p2, v3

    goto :goto_2

    :cond_b
    add-int/lit8 p1, p1, 0x2

    goto :goto_2

    :cond_c
    if-eqz p2, :cond_d

    .line 1682
    iget-object p1, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->aliasPathPairs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_d
    if-eqz v2, :cond_e

    .line 1686
    iput-object v2, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->resourcesToVisit:Ljava/util/Set;

    :cond_e
    return-void
.end method

.method visitAllResources()V
    .locals 1

    const/4 v0, 0x0

    .line 1590
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->resourcesToVisit:Ljava/util/Set;

    return-void
.end method
