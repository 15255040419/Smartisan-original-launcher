.class Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;
.super Landroid/icu/impl/SoftCache;
.source "TimeZoneNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TimeZoneNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TZ2MZsCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/impl/SoftCache<",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;",
        ">;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 853
    invoke-direct {p0}, Landroid/icu/impl/SoftCache;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/TimeZoneNamesImpl$1;)V
    .locals 0

    .line 853
    invoke-direct {p0}, Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;-><init>()V

    return-void
.end method

.method private static parseDate(Ljava/lang/String;)J
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const/4 v3, 0x3

    const/16 v4, 0xa

    if-gt v1, v3, :cond_1

    .line 905
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    if-ltz v3, :cond_0

    if-ge v3, v4, :cond_0

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 909
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad year"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 v1, 0x5

    move v3, v0

    :goto_1
    const/4 v5, 0x6

    if-gt v1, v5, :cond_3

    .line 914
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x30

    if-ltz v5, :cond_2

    if-ge v5, v4, :cond_2

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 918
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad month"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const/16 v1, 0x8

    move v5, v0

    :goto_2
    const/16 v6, 0x9

    if-gt v1, v6, :cond_5

    .line 923
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v6, v6, -0x30

    if-ltz v6, :cond_4

    if-ge v6, v4, :cond_4

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 927
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad day"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    const/16 v1, 0xb

    move v6, v0

    :goto_3
    const/16 v7, 0xc

    if-gt v1, v7, :cond_7

    .line 932
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v7, v7, -0x30

    if-ltz v7, :cond_6

    if-ge v7, v4, :cond_6

    mul-int/lit8 v6, v6, 0xa

    add-int/2addr v6, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 936
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad hour"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    const/16 v1, 0xe

    :goto_4
    const/16 v7, 0xf

    if-gt v1, v7, :cond_9

    .line 941
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v7, v7, -0x30

    if-ltz v7, :cond_8

    if-ge v7, v4, :cond_8

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 945
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad minute"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    add-int/lit8 v3, v3, -0x1

    .line 949
    invoke-static {v2, v3, v5}, Landroid/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    mul-long/2addr v1, v3

    int-to-long v3, v6

    const-wide/32 v5, 0x36ee80

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    int-to-long v3, v0

    const-wide/32 v5, 0xea60

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    return-wide v1
.end method


# virtual methods
.method protected bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 853
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;->createInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected createInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;",
            ">;"
        }
    .end annotation

    const-string p0, "android/icu/impl/data/icudt60b"

    const-string p1, "metaZones"

    .line 861
    invoke-static {p0, p1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    const-string p1, "metazoneInfo"

    .line 862
    invoke-virtual {p0, p1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    const/16 p1, 0x2f

    const/16 v0, 0x3a

    .line 864
    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 866
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    .line 868
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 p2, 0x0

    move v0, p2

    .line 869
    :goto_0
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 870
    invoke-virtual {p0, v0}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    .line 871
    invoke-virtual {v1, p2}, Landroid/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v2, "1970-01-01 00:00"

    const-string v4, "9999-12-31 23:59"

    .line 874
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    const/4 v2, 0x1

    .line 875
    invoke-virtual {v1, v2}, Landroid/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    .line 876
    invoke-virtual {v1, v4}, Landroid/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 879
    :cond_0
    invoke-static {v2}, Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;->parseDate(Ljava/lang/String;)J

    move-result-wide v5

    .line 880
    invoke-static {v4}, Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;->parseDate(Ljava/lang/String;)J

    move-result-wide v7

    .line 881
    new-instance v1, Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;

    move-object v2, v1

    move-wide v4, v5

    move-wide v6, v7

    invoke-direct/range {v2 .. v7}, Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 885
    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_1
    return-object p1
.end method
