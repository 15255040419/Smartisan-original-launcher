.class Landroid/icu/impl/TimeZoneGenericNames$Cache;
.super Landroid/icu/impl/SoftCache;
.source "TimeZoneGenericNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TimeZoneGenericNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/impl/SoftCache<",
        "Ljava/lang/String;",
        "Landroid/icu/impl/TimeZoneGenericNames;",
        "Landroid/icu/util/ULocale;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 897
    invoke-direct {p0}, Landroid/icu/impl/SoftCache;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/TimeZoneGenericNames$1;)V
    .locals 0

    .line 897
    invoke-direct {p0}, Landroid/icu/impl/TimeZoneGenericNames$Cache;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/impl/TimeZoneGenericNames;
    .locals 0

    .line 904
    new-instance p0, Landroid/icu/impl/TimeZoneGenericNames;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Landroid/icu/impl/TimeZoneGenericNames;-><init>(Landroid/icu/util/ULocale;Landroid/icu/impl/TimeZoneGenericNames$1;)V

    invoke-virtual {p0}, Landroid/icu/impl/TimeZoneGenericNames;->freeze()Landroid/icu/impl/TimeZoneGenericNames;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 897
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/icu/util/ULocale;

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/TimeZoneGenericNames$Cache;->createInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/impl/TimeZoneGenericNames;

    move-result-object p0

    return-object p0
.end method
