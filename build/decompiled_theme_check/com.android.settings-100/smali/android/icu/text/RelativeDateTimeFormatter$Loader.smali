.class Landroid/icu/text/RelativeDateTimeFormatter$Loader;
.super Ljava/lang/Object;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RelativeDateTimeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Loader"
.end annotation


# instance fields
.field private final ulocale:Landroid/icu/util/ULocale;


# direct methods
.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 0

    .line 1144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1145
    iput-object p1, p0, Landroid/icu/text/RelativeDateTimeFormatter$Loader;->ulocale:Landroid/icu/util/ULocale;

    return-void
.end method

.method private getDateTimePattern(Landroid/icu/impl/ICUResourceBundle;)Ljava/lang/String;
    .locals 3

    const-string p0, "calendar/default"

    .line 1149
    invoke-virtual {p1, p0}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "gregorian"

    if-eqz p0, :cond_0

    const-string v1, ""

    .line 1150
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object p0, v0

    .line 1153
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calendar/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/DateTimePatterns"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1154
    invoke-virtual {p1, v1}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1155
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "calendar/gregorian/DateTimePatterns"

    .line 1157
    invoke-virtual {p1, p0}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_5

    .line 1159
    invoke-virtual {v1}, Landroid/icu/impl/ICUResourceBundle;->getSize()I

    move-result p0

    const/16 p1, 0x9

    if-ge p0, p1, :cond_3

    goto :goto_0

    :cond_3
    const/16 p0, 0x8

    .line 1163
    invoke-virtual {v1, p0}, Landroid/icu/impl/ICUResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/icu/util/UResourceBundle;->getType()I

    move-result p1

    if-ne p1, p0, :cond_4

    .line 1165
    invoke-virtual {v1, p0}, Landroid/icu/impl/ICUResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1167
    :cond_4
    invoke-virtual {v1, p0}, Landroid/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_0
    const-string/jumbo p0, "{1} {0}"

    return-object p0
.end method


# virtual methods
.method public load()Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;
    .locals 7

    .line 1174
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;

    invoke-direct {v0}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;-><init>()V

    .line 1176
    iget-object v1, p0, Landroid/icu/text/RelativeDateTimeFormatter$Loader;->ulocale:Landroid/icu/util/ULocale;

    const-string v2, "android/icu/impl/data/icudt60b"

    .line 1177
    invoke-static {v2, v1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    const-string v2, "fields"

    .line 1178
    invoke-virtual {v1, v2, v0}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V

    .line 1181
    invoke-static {}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->values()[Landroid/icu/text/RelativeDateTimeFormatter$Style;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 1182
    invoke-static {}, Landroid/icu/text/RelativeDateTimeFormatter;->access$200()[Landroid/icu/text/RelativeDateTimeFormatter$Style;

    move-result-object v6

    invoke-virtual {v5}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    move-result v5

    aget-object v5, v6, v5

    if-eqz v5, :cond_1

    .line 1185
    invoke-static {}, Landroid/icu/text/RelativeDateTimeFormatter;->access$200()[Landroid/icu/text/RelativeDateTimeFormatter$Style;

    move-result-object v6

    invoke-virtual {v5}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    move-result v5

    aget-object v5, v6, v5

    if-eqz v5, :cond_1

    .line 1188
    invoke-static {}, Landroid/icu/text/RelativeDateTimeFormatter;->access$200()[Landroid/icu/text/RelativeDateTimeFormatter$Style;

    move-result-object v6

    invoke-virtual {v5}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    move-result v5

    aget-object v5, v6, v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 1189
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Style fallback too deep"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1195
    :cond_2
    new-instance v2, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;

    iget-object v3, v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->qualitativeUnitMap:Ljava/util/EnumMap;

    iget-object v0, v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;->styleRelUnitPatterns:Ljava/util/EnumMap;

    .line 1197
    invoke-direct {p0, v1}, Landroid/icu/text/RelativeDateTimeFormatter$Loader;->getDateTimePattern(Landroid/icu/impl/ICUResourceBundle;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, v0, p0}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;-><init>(Ljava/util/EnumMap;Ljava/util/EnumMap;Ljava/lang/String;)V

    return-object v2
.end method
