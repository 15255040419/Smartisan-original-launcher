.class Landroid/icu/text/TimeZoneNames$Cache;
.super Landroid/icu/impl/SoftCache;
.source "TimeZoneNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TimeZoneNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/impl/SoftCache<",
        "Ljava/lang/String;",
        "Landroid/icu/text/TimeZoneNames;",
        "Landroid/icu/util/ULocale;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 485
    invoke-direct {p0}, Landroid/icu/impl/SoftCache;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/TimeZoneNames$1;)V
    .locals 0

    .line 485
    invoke-direct {p0}, Landroid/icu/text/TimeZoneNames$Cache;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneNames;
    .locals 0

    .line 494
    invoke-static {}, Landroid/icu/text/TimeZoneNames;->access$100()Landroid/icu/text/TimeZoneNames$Factory;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/icu/text/TimeZoneNames$Factory;->getTimeZoneNames(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneNames;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 485
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/icu/util/ULocale;

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/TimeZoneNames$Cache;->createInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneNames;

    move-result-object p0

    return-object p0
.end method
