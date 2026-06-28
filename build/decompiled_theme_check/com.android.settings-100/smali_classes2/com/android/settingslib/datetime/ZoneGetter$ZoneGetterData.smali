.class public final Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;
.super Ljava/lang/Object;
.source "ZoneGetter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/datetime/ZoneGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ZoneGetterData"
.end annotation


# instance fields
.field public final gmtOffsetTexts:[Ljava/lang/CharSequence;

.field public final localZoneIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final olsonIdsToDisplay:[Ljava/lang/String;

.field public final timeZones:[Ljava/util/TimeZone;

.field public final zoneCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 365
    invoke-static {v0}, Landroid/icu/text/TimeZoneFormat;->getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneFormat;

    move-result-object v1

    .line 366
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 367
    invoke-static {p1}, Lcom/android/settingslib/datetime/ZoneGetter;->access$000(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    .line 370
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->zoneCount:I

    .line 371
    iget v3, p0, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->zoneCount:I

    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->olsonIdsToDisplay:[Ljava/lang/String;

    .line 372
    new-array v4, v3, [Ljava/util/TimeZone;

    iput-object v4, p0, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->timeZones:[Ljava/util/TimeZone;

    .line 373
    new-array v3, v3, [Ljava/lang/CharSequence;

    iput-object v3, p0, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->gmtOffsetTexts:[Ljava/lang/CharSequence;

    const/4 v3, 0x0

    .line 374
    :goto_0
    iget v4, p0, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->zoneCount:I

    if-ge v3, v4, :cond_0

    .line 375
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 376
    iget-object v5, p0, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->olsonIdsToDisplay:[Ljava/lang/String;

    aput-object v4, v5, v3

    .line 377
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .line 378
    iget-object v5, p0, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->timeZones:[Ljava/util/TimeZone;

    aput-object v4, v5, v3

    .line 379
    iget-object v5, p0, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->gmtOffsetTexts:[Ljava/lang/CharSequence;

    invoke-static {v1, v0, v4, v2}, Lcom/android/settingslib/datetime/ZoneGetter;->getGmtOffsetText(Landroid/icu/text/TimeZoneFormat;Ljava/util/Locale;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 383
    :cond_0
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->lookupTimeZoneIdsByCountry(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    .line 384
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    :goto_1
    iput-object p1, p0, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->localZoneIds:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public lookupTimeZoneIdsByCountry(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 389
    invoke-static {}, Llibcore/util/TimeZoneFinder;->getInstance()Llibcore/util/TimeZoneFinder;

    move-result-object p0

    invoke-virtual {p0, p1}, Llibcore/util/TimeZoneFinder;->lookupTimeZoneIdsByCountry(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
