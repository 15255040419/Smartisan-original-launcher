.class public abstract Landroid/icu/text/TimeZoneNames;
.super Ljava/lang/Object;
.source "TimeZoneNames.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/TimeZoneNames$DefaultTimeZoneNames;,
        Landroid/icu/text/TimeZoneNames$Cache;,
        Landroid/icu/text/TimeZoneNames$Factory;,
        Landroid/icu/text/TimeZoneNames$MatchInfo;,
        Landroid/icu/text/TimeZoneNames$NameType;
    }
.end annotation


# static fields
.field private static final DEFAULT_FACTORY_CLASS:Ljava/lang/String; = "android.icu.impl.TimeZoneNamesFactoryImpl"

.field private static final FACTORY_NAME_PROP:Ljava/lang/String; = "android.icu.text.TimeZoneNames.Factory.impl"

.field private static TZNAMES_CACHE:Landroid/icu/text/TimeZoneNames$Cache; = null

.field private static final TZNAMES_FACTORY:Landroid/icu/text/TimeZoneNames$Factory;

.field private static final serialVersionUID:J = -0x7f66b7d81bd309c1L


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 116
    new-instance v0, Landroid/icu/text/TimeZoneNames$Cache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/text/TimeZoneNames$Cache;-><init>(Landroid/icu/text/TimeZoneNames$1;)V

    sput-object v0, Landroid/icu/text/TimeZoneNames;->TZNAMES_CACHE:Landroid/icu/text/TimeZoneNames$Cache;

    const-string v0, "android.icu.impl.TimeZoneNamesFactoryImpl"

    const-string v2, "android.icu.text.TimeZoneNames.Factory.impl"

    .line 124
    invoke-static {v2, v0}, Landroid/icu/impl/ICUConfig;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    :goto_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/TimeZoneNames$Factory;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    goto :goto_1

    .line 136
    :catch_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    if-nez v1, :cond_0

    .line 143
    new-instance v1, Landroid/icu/text/TimeZoneNames$DefaultTimeZoneNames$FactoryImpl;

    invoke-direct {v1}, Landroid/icu/text/TimeZoneNames$DefaultTimeZoneNames$FactoryImpl;-><init>()V

    .line 145
    :cond_0
    sput-object v1, Landroid/icu/text/TimeZoneNames;->TZNAMES_FACTORY:Landroid/icu/text/TimeZoneNames$Factory;

    return-void

    :cond_1
    move-object v2, v0

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 0

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Landroid/icu/text/TimeZoneNames$Factory;
    .locals 1

    .line 78
    sget-object v0, Landroid/icu/text/TimeZoneNames;->TZNAMES_FACTORY:Landroid/icu/text/TimeZoneNames$Factory;

    return-object v0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneNames;
    .locals 2

    .line 156
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v0

    .line 157
    sget-object v1, Landroid/icu/text/TimeZoneNames;->TZNAMES_CACHE:Landroid/icu/text/TimeZoneNames$Cache;

    invoke-virtual {v1, v0, p0}, Landroid/icu/text/TimeZoneNames$Cache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/text/TimeZoneNames;

    return-object p0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneNames;
    .locals 0

    .line 169
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p0

    invoke-static {p0}, Landroid/icu/text/TimeZoneNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneNames;

    move-result-object p0

    return-object p0
.end method

.method public static getTZDBInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneNames;
    .locals 1

    .line 182
    new-instance v0, Landroid/icu/impl/TZDBTimeZoneNames;

    invoke-direct {v0, p0}, Landroid/icu/impl/TZDBTimeZoneNames;-><init>(Landroid/icu/util/ULocale;)V

    return-object v0
.end method


# virtual methods
.method public find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I",
            "Ljava/util/EnumSet<",
            "Landroid/icu/text/TimeZoneNames$NameType;",
            ">;)",
            "Ljava/util/Collection<",
            "Landroid/icu/text/TimeZoneNames$MatchInfo;",
            ">;"
        }
    .end annotation

    .line 317
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "The method is not implemented in TimeZoneNames base class."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract getAvailableMetaZoneIDs()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAvailableMetaZoneIDs(Ljava/lang/String;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public final getDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;
    .locals 1

    .line 261
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/TimeZoneNames;->getTimeZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 263
    invoke-virtual {p0, p1, p3, p4}, Landroid/icu/text/TimeZoneNames;->getMetaZoneID(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 264
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/TimeZoneNames;->getMetaZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDisplayNames(Ljava/lang/String;[Landroid/icu/text/TimeZoneNames$NameType;J[Ljava/lang/String;I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_3

    .line 424
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 428
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_3

    .line 429
    aget-object v2, p2, v1

    .line 430
    invoke-virtual {p0, p1, v2}, Landroid/icu/text/TimeZoneNames;->getTimeZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    if-nez v0, :cond_1

    .line 433
    invoke-virtual {p0, p1, p3, p4}, Landroid/icu/text/TimeZoneNames;->getMetaZoneID(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 435
    :cond_1
    invoke-virtual {p0, v0, v2}, Landroid/icu/text/TimeZoneNames;->getMetaZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    add-int v2, p6, v1

    .line 437
    aput-object v3, p5, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 301
    invoke-static {p1}, Landroid/icu/impl/TimeZoneNamesImpl;->getDefaultExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract getMetaZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;
.end method

.method public abstract getMetaZoneID(Ljava/lang/String;J)Ljava/lang/String;
.end method

.method public abstract getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getTimeZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;
.end method

.method public loadAllDisplayNames()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
