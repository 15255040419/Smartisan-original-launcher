.class final Landroid/icu/impl/CalendarUtil$CalendarPreferences;
.super Landroid/icu/impl/UResource$Sink;
.source "CalendarUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/CalendarUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CalendarPreferences"
.end annotation


# static fields
.field private static final INSTANCE:Landroid/icu/impl/CalendarUtil$CalendarPreferences;


# instance fields
.field prefs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Landroid/icu/impl/CalendarUtil$CalendarPreferences;

    invoke-direct {v0}, Landroid/icu/impl/CalendarUtil$CalendarPreferences;-><init>()V

    sput-object v0, Landroid/icu/impl/CalendarUtil$CalendarPreferences;->INSTANCE:Landroid/icu/impl/CalendarUtil$CalendarPreferences;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 69
    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    .line 67
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/CalendarUtil$CalendarPreferences;->prefs:Ljava/util/Map;

    :try_start_0
    const-string v0, "android/icu/impl/data/icudt60b"

    const-string/jumbo v1, "supplementalData"

    .line 71
    invoke-static {v0, v1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    const-string v1, "calendarPreferenceData"

    .line 73
    invoke-virtual {v0, v1, p0}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic access$000()Landroid/icu/impl/CalendarUtil$CalendarPreferences;
    .locals 1

    .line 64
    sget-object v0, Landroid/icu/impl/CalendarUtil$CalendarPreferences;->INSTANCE:Landroid/icu/impl/CalendarUtil$CalendarPreferences;

    return-object v0
.end method


# virtual methods
.method getCalendarTypeForRegion(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 80
    iget-object p0, p0, Landroid/icu/impl/CalendarUtil$CalendarPreferences;->prefs:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, "gregorian"

    :cond_0
    return-object p0
.end method

.method public put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .locals 5

    .line 86
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object p3

    const/4 v0, 0x0

    move v1, v0

    .line 87
    :goto_0
    invoke-interface {p3, v1, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getArray()Landroid/icu/impl/UResource$Array;

    move-result-object v2

    .line 90
    invoke-interface {v2, v0, p2}, Landroid/icu/impl/UResource$Array;->getValue(ILandroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gregorian"

    .line 92
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 93
    iget-object v3, p0, Landroid/icu/impl/CalendarUtil$CalendarPreferences;->prefs:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
