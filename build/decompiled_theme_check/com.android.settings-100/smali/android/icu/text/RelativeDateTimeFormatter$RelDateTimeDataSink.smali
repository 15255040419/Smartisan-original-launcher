.class final Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;
.super Landroid/icu/impl/UResource$Sink;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RelativeDateTimeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RelDateTimeDataSink"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;
    }
.end annotation


# instance fields
.field pastFutureIndex:I

.field qualitativeUnitMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Style;",
            "Ljava/util/EnumMap<",
            "Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;",
            "Ljava/util/EnumMap<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Direction;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field sb:Ljava/lang/StringBuilder;

.field style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

.field styleRelUnitPatterns:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Style;",
            "Ljava/util/EnumMap<",
            "Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;",
            "[[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field unit:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1137
    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    .line 916
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Landroid/icu/text/RelativeDateTimeFormatter$Style;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->qualitativeUnitMap:Ljava/util/EnumMap;

    .line 918
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Landroid/icu/text/RelativeDateTimeFormatter$Style;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->styleRelUnitPatterns:Ljava/util/EnumMap;

    .line 921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->sb:Ljava/lang/StringBuilder;

    return-void
.end method

.method private handleAlias(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .locals 2

    .line 1090
    invoke-direct {p0, p1}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->styleFromKey(Landroid/icu/impl/UResource$Key;)Landroid/icu/text/RelativeDateTimeFormatter$Style;

    move-result-object p3

    .line 1091
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->length()I

    move-result v0

    invoke-static {p3}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->styleSuffixLength(Landroid/icu/text/RelativeDateTimeFormatter$Style;)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 1092
    invoke-virtual {p1, v1, v0}, Landroid/icu/impl/UResource$Key;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->access$100(Ljava/lang/CharSequence;)Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1096
    invoke-direct {p0, p2}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->styleFromAlias(Landroid/icu/impl/UResource$Value;)Landroid/icu/text/RelativeDateTimeFormatter$Style;

    move-result-object p0

    if-eq p3, p0, :cond_2

    .line 1102
    invoke-static {}, Landroid/icu/text/RelativeDateTimeFormatter;->access$200()[Landroid/icu/text/RelativeDateTimeFormatter$Style;

    move-result-object p1

    invoke-virtual {p3}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    move-result p2

    aget-object p1, p1, p2

    if-nez p1, :cond_0

    .line 1103
    invoke-static {}, Landroid/icu/text/RelativeDateTimeFormatter;->access$200()[Landroid/icu/text/RelativeDateTimeFormatter$Style;

    move-result-object p1

    invoke-virtual {p3}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    move-result p2

    aput-object p0, p1, p2

    goto :goto_0

    .line 1104
    :cond_0
    invoke-static {}, Landroid/icu/text/RelativeDateTimeFormatter;->access$200()[Landroid/icu/text/RelativeDateTimeFormatter$Style;

    move-result-object p1

    invoke-virtual {p3}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    move-result p2

    aget-object p1, p1, p2

    if-ne p1, p0, :cond_1

    :goto_0
    return-void

    .line 1105
    :cond_1
    new-instance p1, Landroid/icu/util/ICUException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Inconsistent style fallback for style "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1098
    :cond_2
    new-instance p0, Landroid/icu/util/ICUException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid style fallback from "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to itself"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-void
.end method

.method private handlePlainDirection(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .locals 2

    .line 1052
    iget-object p1, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->unit:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    iget-object p1, p1, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->absUnit:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    if-nez p1, :cond_0

    return-void

    .line 1056
    :cond_0
    iget-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->qualitativeUnitMap:Ljava/util/EnumMap;

    iget-object v1, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    .line 1057
    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EnumMap;

    if-nez v0, :cond_1

    .line 1059
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 1060
    iget-object v1, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->qualitativeUnitMap:Ljava/util/EnumMap;

    iget-object p0, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    invoke-virtual {v1, p0, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/EnumMap;

    if-nez p0, :cond_2

    .line 1064
    new-instance p0, Ljava/util/EnumMap;

    const-class v1, Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    invoke-direct {p0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 1065
    invoke-virtual {v0, p1, p0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    :cond_2
    sget-object p1, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->PLAIN:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    .line 1068
    sget-object p1, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->PLAIN:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method private styleFromAlias(Landroid/icu/impl/UResource$Value;)Landroid/icu/text/RelativeDateTimeFormatter$Style;
    .locals 0

    .line 939
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Value;->getAliasString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "-short"

    .line 940
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 941
    sget-object p0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->SHORT:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    return-object p0

    :cond_0
    const-string p1, "-narrow"

    .line 942
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 943
    sget-object p0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->NARROW:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    return-object p0

    .line 945
    :cond_1
    sget-object p0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    return-object p0
.end method

.method private styleFromKey(Landroid/icu/impl/UResource$Key;)Landroid/icu/text/RelativeDateTimeFormatter$Style;
    .locals 0

    const-string p0, "-short"

    .line 929
    invoke-virtual {p1, p0}, Landroid/icu/impl/UResource$Key;->endsWith(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 930
    sget-object p0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->SHORT:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    return-object p0

    :cond_0
    const-string p0, "-narrow"

    .line 931
    invoke-virtual {p1, p0}, Landroid/icu/impl/UResource$Key;->endsWith(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 932
    sget-object p0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->NARROW:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    return-object p0

    .line 934
    :cond_1
    sget-object p0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    return-object p0
.end method

.method private static styleSuffixLength(Landroid/icu/text/RelativeDateTimeFormatter$Style;)I
    .locals 1

    .line 950
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$1;->$SwitchMap$android$icu$text$RelativeDateTimeFormatter$Style:[I

    invoke-virtual {p0}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x7

    return p0

    :cond_1
    const/4 p0, 0x6

    return p0
.end method


# virtual methods
.method public consumeTableRelative(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .locals 7

    .line 958
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    const/4 v1, 0x0

    .line 959
    :goto_0
    invoke-interface {v0, v1, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 960
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getType()I

    move-result v2

    if-nez v2, :cond_6

    .line 961
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v2

    .line 963
    iget-object v3, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->qualitativeUnitMap:Ljava/util/EnumMap;

    iget-object v4, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    invoke-virtual {v3, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/EnumMap;

    .line 965
    iget-object v4, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->unit:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    iget-object v4, v4, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->relUnit:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    sget-object v5, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->SECONDS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    if-ne v4, v5, :cond_1

    const-string v4, "0"

    .line 966
    invoke-virtual {p1, v4}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 968
    sget-object v4, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->NOW:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    invoke-virtual {v3, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/EnumMap;

    if-nez v4, :cond_0

    .line 970
    new-instance v4, Ljava/util/EnumMap;

    const-class v5, Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    invoke-direct {v4, v5}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 971
    sget-object v5, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->NOW:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    invoke-virtual {v3, v5, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    :cond_0
    sget-object v3, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->PLAIN:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    invoke-virtual {v4, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_6

    .line 974
    sget-object v3, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->PLAIN:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    invoke-virtual {v4, v3, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 979
    :cond_1
    invoke-static {p1}, Landroid/icu/text/RelativeDateTimeFormatter;->access$000(Landroid/icu/impl/UResource$Key;)Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 983
    :cond_2
    iget-object v4, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->unit:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    iget-object v4, v4, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->absUnit:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    if-nez v3, :cond_4

    .line 989
    new-instance v3, Ljava/util/EnumMap;

    const-class v5, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    invoke-direct {v3, v5}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 990
    iget-object v5, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->qualitativeUnitMap:Ljava/util/EnumMap;

    iget-object v6, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    invoke-virtual {v5, v6, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    :cond_4
    invoke-virtual {v3, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/EnumMap;

    if-nez v5, :cond_5

    .line 994
    new-instance v5, Ljava/util/EnumMap;

    const-class v6, Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    invoke-direct {v5, v6}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 995
    invoke-virtual {v3, v4, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    :cond_5
    invoke-virtual {v5, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_6

    .line 999
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public consumeTableRelativeTime(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .locals 4

    .line 1007
    iget-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->unit:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    iget-object v0, v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->relUnit:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    if-nez v0, :cond_0

    return-void

    .line 1010
    :cond_0
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 1011
    :goto_0
    invoke-interface {v0, v2, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "past"

    .line 1012
    invoke-virtual {p1, v3}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1013
    iput v1, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->pastFutureIndex:I

    goto :goto_1

    :cond_1
    const-string v3, "future"

    .line 1014
    invoke-virtual {p1, v3}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    .line 1015
    iput v3, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->pastFutureIndex:I

    .line 1020
    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->consumeTimeDetail(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public consumeTimeDetail(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .locals 9

    .line 1025
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    .line 1027
    iget-object v1, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->styleRelUnitPatterns:Ljava/util/EnumMap;

    iget-object v2, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    invoke-virtual {v1, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/EnumMap;

    if-nez v1, :cond_0

    .line 1029
    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 1030
    iget-object v2, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->styleRelUnitPatterns:Ljava/util/EnumMap;

    iget-object v3, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    invoke-virtual {v2, v3, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    :cond_0
    iget-object v2, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->unit:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    iget-object v2, v2, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->relUnit:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    invoke-virtual {v1, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v2, 0x2

    .line 1034
    sget v3, Landroid/icu/impl/StandardPlural;->COUNT:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/lang/String;

    .line 1035
    iget-object v3, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->unit:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    iget-object v3, v3, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->relUnit:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    invoke-virtual {v1, v3, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v1, 0x0

    move v3, v1

    .line 1039
    :goto_0
    invoke-interface {v0, v3, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1040
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getType()I

    move-result v4

    if-nez v4, :cond_2

    .line 1041
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/icu/impl/StandardPlural;->indexFromString(Ljava/lang/CharSequence;)I

    move-result v4

    .line 1042
    iget v5, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->pastFutureIndex:I

    aget-object v6, v2, v5

    aget-object v6, v6, v4

    if-nez v6, :cond_2

    .line 1043
    aget-object v5, v2, v5

    .line 1045
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->sb:Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    .line 1044
    invoke-static {v6, v7, v1, v8}, Landroid/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public consumeTimeUnit(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .locals 4

    .line 1074
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    const/4 v1, 0x0

    .line 1075
    :goto_0
    invoke-interface {v0, v1, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "dn"

    .line 1076
    invoke-virtual {p1, v2}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getType()I

    move-result v2

    if-nez v2, :cond_0

    .line 1077
    invoke-direct {p0, p1, p2}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->handlePlainDirection(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V

    .line 1079
    :cond_0
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const-string/jumbo v2, "relative"

    .line 1080
    invoke-virtual {p1, v2}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1081
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->consumeTableRelative(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V

    goto :goto_1

    :cond_1
    const-string/jumbo v2, "relativeTime"

    .line 1082
    invoke-virtual {p1, v2}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1083
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->consumeTableRelativeTime(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .locals 6

    .line 1115
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    .line 1119
    :cond_0
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    .line 1121
    :goto_0
    invoke-interface {v0, v3, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1122
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getType()I

    move-result v4

    if-ne v4, v1, :cond_1

    .line 1123
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->handleAlias(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V

    goto :goto_1

    .line 1126
    :cond_1
    invoke-direct {p0, p1}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->styleFromKey(Landroid/icu/impl/UResource$Key;)Landroid/icu/text/RelativeDateTimeFormatter$Style;

    move-result-object v4

    iput-object v4, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    .line 1127
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->length()I

    move-result v4

    iget-object v5, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    invoke-static {v5}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->styleSuffixLength(Landroid/icu/text/RelativeDateTimeFormatter$Style;)I

    move-result v5

    sub-int/2addr v4, v5

    .line 1128
    invoke-virtual {p1, v2, v4}, Landroid/icu/impl/UResource$Key;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->access$100(Ljava/lang/CharSequence;)Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    move-result-object v4

    iput-object v4, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->unit:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    .line 1129
    iget-object v4, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->unit:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    if-eqz v4, :cond_2

    .line 1131
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->consumeTimeUnit(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
