.class final Landroid/icu/text/MeasureFormat$UnitDataSink;
.super Landroid/icu/impl/UResource$Sink;
.source "MeasureFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MeasureFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnitDataSink"
.end annotation


# instance fields
.field cacheData:Landroid/icu/text/MeasureFormat$MeasureFormatData;

.field patterns:[Ljava/lang/String;

.field sb:Ljava/lang/StringBuilder;

.field type:Ljava/lang/String;

.field unit:Landroid/icu/util/MeasureUnit;

.field width:Landroid/icu/text/MeasureFormat$FormatWidth;


# direct methods
.method constructor <init>(Landroid/icu/text/MeasureFormat$MeasureFormatData;)V
    .locals 1

    .line 857
    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    .line 943
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->sb:Ljava/lang/StringBuilder;

    .line 858
    iput-object p1, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->cacheData:Landroid/icu/text/MeasureFormat$MeasureFormatData;

    return-void
.end method

.method static widthFromAlias(Landroid/icu/impl/UResource$Value;)Landroid/icu/text/MeasureFormat$FormatWidth;
    .locals 2

    .line 907
    invoke-virtual {p0}, Landroid/icu/impl/UResource$Value;->getAliasString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "/LOCALE/units"

    .line 909
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 910
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 911
    sget-object p0, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    return-object p0

    .line 912
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    const-string v0, "Short"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 913
    sget-object p0, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    return-object p0

    .line 914
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_2

    const-string v0, "Narrow"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 915
    sget-object p0, Landroid/icu/text/MeasureFormat$FormatWidth;->NARROW:Landroid/icu/text/MeasureFormat$FormatWidth;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method static widthFromKey(Landroid/icu/impl/UResource$Key;)Landroid/icu/text/MeasureFormat$FormatWidth;
    .locals 2

    const-string/jumbo v0, "units"

    .line 894
    invoke-virtual {p0, v0}, Landroid/icu/impl/UResource$Key;->startsWith(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 895
    invoke-virtual {p0}, Landroid/icu/impl/UResource$Key;->length()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 896
    sget-object p0, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    return-object p0

    :cond_0
    const-string v0, "Short"

    .line 897
    invoke-virtual {p0, v1, v0}, Landroid/icu/impl/UResource$Key;->regionMatches(ILjava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 898
    sget-object p0, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    return-object p0

    :cond_1
    const-string v0, "Narrow"

    .line 899
    invoke-virtual {p0, v1, v0}, Landroid/icu/impl/UResource$Key;->regionMatches(ILjava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 900
    sget-object p0, Landroid/icu/text/MeasureFormat$FormatWidth;->NARROW:Landroid/icu/text/MeasureFormat$FormatWidth;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method consumeAlias(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .locals 5

    .line 865
    invoke-static {p1}, Landroid/icu/text/MeasureFormat$UnitDataSink;->widthFromKey(Landroid/icu/impl/UResource$Key;)Landroid/icu/text/MeasureFormat$FormatWidth;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 870
    :cond_0
    invoke-static {p2}, Landroid/icu/text/MeasureFormat$UnitDataSink;->widthFromAlias(Landroid/icu/impl/UResource$Value;)Landroid/icu/text/MeasureFormat$FormatWidth;

    move-result-object v1

    const-string v2, "Units data fallback from "

    if-eqz v1, :cond_2

    .line 877
    iget-object v3, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->cacheData:Landroid/icu/text/MeasureFormat$MeasureFormatData;

    iget-object v3, v3, Landroid/icu/text/MeasureFormat$MeasureFormatData;->widthFallback:[Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-virtual {v1}, Landroid/icu/text/MeasureFormat$FormatWidth;->ordinal()I

    move-result v4

    aget-object v3, v3, v4

    if-nez v3, :cond_1

    .line 881
    iget-object p0, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->cacheData:Landroid/icu/text/MeasureFormat$MeasureFormatData;

    iget-object p0, p0, Landroid/icu/text/MeasureFormat$MeasureFormatData;->widthFallback:[Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-virtual {v0}, Landroid/icu/text/MeasureFormat$FormatWidth;->ordinal()I

    move-result p1

    aput-object v1, p0, p1

    return-void

    .line 878
    :cond_1
    new-instance p0, Landroid/icu/util/ICUException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getAliasString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " which falls back to something else"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 873
    :cond_2
    new-instance p0, Landroid/icu/util/ICUException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to unknown "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getAliasString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method consumeCompoundPattern(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .locals 2

    const-string/jumbo v0, "per"

    .line 824
    invoke-virtual {p1, v0}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 825
    iget-object p1, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->cacheData:Landroid/icu/text/MeasureFormat$MeasureFormatData;

    iget-object p1, p1, Landroid/icu/text/MeasureFormat$MeasureFormatData;->styleToPerPattern:Ljava/util/EnumMap;

    iget-object v0, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->width:Landroid/icu/text/MeasureFormat$FormatWidth;

    .line 827
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->sb:Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    .line 826
    invoke-static {p2, p0, v1, v1}, Landroid/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object p0

    .line 825
    invoke-virtual {p1, v0, p0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method consumePattern(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .locals 1

    const-string v0, "dnam"

    .line 784
    invoke-virtual {p1, v0}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 786
    invoke-virtual {p0, p2}, Landroid/icu/text/MeasureFormat$UnitDataSink;->setDnamIfAbsent(Landroid/icu/impl/UResource$Value;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "per"

    .line 787
    invoke-virtual {p1, v0}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 789
    sget p1, Landroid/icu/text/MeasureFormat$MeasureFormatData;->PER_UNIT_INDEX:I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/text/MeasureFormat$UnitDataSink;->setFormatterIfAbsent(ILandroid/icu/impl/UResource$Value;I)V

    goto :goto_0

    .line 794
    :cond_1
    invoke-static {p1}, Landroid/icu/impl/StandardPlural;->indexFromString(Ljava/lang/CharSequence;)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/text/MeasureFormat$UnitDataSink;->setFormatterIfAbsent(ILandroid/icu/impl/UResource$Value;I)V

    :goto_0
    return-void
.end method

.method consumeSubtypeTable(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .locals 3

    .line 803
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->type:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/MeasureUnit;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->unit:Landroid/icu/util/MeasureUnit;

    const/4 v0, 0x0

    .line 805
    iput-object v0, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->patterns:[Ljava/lang/String;

    .line 808
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 810
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    const/4 v1, 0x0

    .line 811
    :goto_0
    invoke-interface {v0, v1, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 812
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/MeasureFormat$UnitDataSink;->consumePattern(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 815
    :cond_1
    new-instance p1, Landroid/icu/util/ICUException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Data for unit \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->unit:Landroid/icu/util/MeasureUnit;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' is in an unknown format"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public consumeTable(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .locals 3

    .line 885
    invoke-static {p1}, Landroid/icu/text/MeasureFormat$UnitDataSink;->widthFromKey(Landroid/icu/impl/UResource$Key;)Landroid/icu/text/MeasureFormat$FormatWidth;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->width:Landroid/icu/text/MeasureFormat$FormatWidth;

    if-eqz v0, :cond_0

    .line 886
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    const/4 v1, 0x0

    .line 887
    :goto_0
    invoke-interface {v0, v1, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 888
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/MeasureFormat$UnitDataSink;->consumeUnitTypesTable(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method consumeUnitTypesTable(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .locals 3

    const-string v0, "currency"

    .line 837
    invoke-virtual {p1, v0}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "compound"

    .line 839
    invoke-virtual {p1, v0}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 840
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->cacheData:Landroid/icu/text/MeasureFormat$MeasureFormatData;

    iget-object v2, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->width:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-virtual {v0, v2}, Landroid/icu/text/MeasureFormat$MeasureFormatData;->hasPerFormatter(Landroid/icu/text/MeasureFormat$FormatWidth;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 841
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    .line 842
    :goto_0
    invoke-interface {v0, v1, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 843
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/MeasureFormat$UnitDataSink;->consumeCompoundPattern(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "coordinate"

    .line 846
    invoke-virtual {p1, v0}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 849
    :cond_2
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->type:Ljava/lang/String;

    .line 850
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    .line 851
    :goto_1
    invoke-interface {v0, v1, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 852
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/MeasureFormat$UnitDataSink;->consumeSubtypeTable(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .locals 3

    .line 924
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object p3

    const/4 v0, 0x0

    .line 925
    :goto_0
    invoke-interface {p3, v0, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 926
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 927
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/MeasureFormat$UnitDataSink;->consumeAlias(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V

    goto :goto_1

    .line 929
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/MeasureFormat$UnitDataSink;->consumeTable(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method setDnamIfAbsent(Landroid/icu/impl/UResource$Value;)V
    .locals 3

    .line 769
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->cacheData:Landroid/icu/text/MeasureFormat$MeasureFormatData;

    iget-object v0, v0, Landroid/icu/text/MeasureFormat$MeasureFormatData;->unitToStyleToDnam:Ljava/util/Map;

    iget-object v1, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->unit:Landroid/icu/util/MeasureUnit;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EnumMap;

    if-nez v0, :cond_0

    .line 771
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 772
    iget-object v1, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->cacheData:Landroid/icu/text/MeasureFormat$MeasureFormatData;

    iget-object v1, v1, Landroid/icu/text/MeasureFormat$MeasureFormatData;->unitToStyleToDnam:Ljava/util/Map;

    iget-object v2, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->unit:Landroid/icu/util/MeasureUnit;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    :cond_0
    iget-object v1, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->width:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 775
    iget-object p0, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->width:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-virtual {p1}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method setFormatterIfAbsent(ILandroid/icu/impl/UResource$Value;I)V
    .locals 3

    .line 747
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->patterns:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 748
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->cacheData:Landroid/icu/text/MeasureFormat$MeasureFormatData;

    iget-object v0, v0, Landroid/icu/text/MeasureFormat$MeasureFormatData;->unitToStyleToPatterns:Ljava/util/Map;

    iget-object v1, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->unit:Landroid/icu/util/MeasureUnit;

    .line 749
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EnumMap;

    if-nez v0, :cond_0

    .line 751
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 753
    iget-object v1, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->cacheData:Landroid/icu/text/MeasureFormat$MeasureFormatData;

    iget-object v1, v1, Landroid/icu/text/MeasureFormat$MeasureFormatData;->unitToStyleToPatterns:Ljava/util/Map;

    iget-object v2, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->unit:Landroid/icu/util/MeasureUnit;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 755
    :cond_0
    iget-object v1, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->width:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->patterns:[Ljava/lang/String;

    .line 757
    :goto_0
    iget-object v1, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->patterns:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 758
    sget v1, Landroid/icu/text/MeasureFormat$MeasureFormatData;->PATTERN_COUNT:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->patterns:[Ljava/lang/String;

    .line 759
    iget-object v1, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->width:Landroid/icu/text/MeasureFormat$FormatWidth;

    iget-object v2, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->patterns:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    :cond_1
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->patterns:[Ljava/lang/String;

    aget-object v1, v0, p1

    if-nez v1, :cond_2

    .line 764
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Landroid/icu/text/MeasureFormat$UnitDataSink;->sb:Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 763
    invoke-static {p2, p0, p3, v1}, Landroid/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, p1

    :cond_2
    return-void
.end method
