.class public abstract Landroid/icu/text/LocaleDisplayNames;
.super Ljava/lang/Object;
.source "LocaleDisplayNames.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;,
        Landroid/icu/text/LocaleDisplayNames$UiListItem;,
        Landroid/icu/text/LocaleDisplayNames$DialectHandling;
    }
.end annotation


# static fields
.field private static final FACTORY_DIALECTHANDLING:Ljava/lang/reflect/Method;

.field private static final FACTORY_DISPLAYCONTEXT:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "getInstance"

    const-string v1, "android.icu.text.LocaleDisplayNames.impl"

    const-string v2, "android.icu.impl.LocaleDisplayNamesImpl"

    .line 388
    invoke-static {v1, v2}, Landroid/icu/impl/ICUConfig;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 394
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    :try_start_1
    new-array v6, v5, [Ljava/lang/Class;

    .line 396
    const-class v7, Landroid/icu/util/ULocale;

    aput-object v7, v6, v4

    const-class v7, Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    aput-object v7, v6, v3

    invoke-virtual {v1, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v6, v2

    :goto_0
    :try_start_2
    new-array v5, v5, [Ljava/lang/Class;

    .line 401
    const-class v7, Landroid/icu/util/ULocale;

    aput-object v7, v5, v4

    const-class v4, [Landroid/icu/text/DisplayContext;

    aput-object v4, v5, v3

    invoke-virtual {v1, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v0

    goto :goto_1

    :catch_1
    move-object v6, v2

    .line 410
    :catch_2
    :goto_1
    sput-object v6, Landroid/icu/text/LocaleDisplayNames;->FACTORY_DIALECTHANDLING:Ljava/lang/reflect/Method;

    .line 411
    sput-object v2, Landroid/icu/text/LocaleDisplayNames;->FACTORY_DISPLAYCONTEXT:Ljava/lang/reflect/Method;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/LocaleDisplayNames;
    .locals 1

    .line 56
    sget-object v0, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->STANDARD_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    invoke-static {p0, v0}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/LocaleDisplayNames$DialectHandling;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/LocaleDisplayNames$DialectHandling;)Landroid/icu/text/LocaleDisplayNames;
    .locals 4

    .line 78
    sget-object v0, Landroid/icu/text/LocaleDisplayNames;->FACTORY_DIALECTHANDLING:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 80
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/LocaleDisplayNames;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 89
    new-instance v0, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;

    invoke-direct {v0, p0, p1, v1}, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/LocaleDisplayNames$DialectHandling;Landroid/icu/text/LocaleDisplayNames$1;)V

    :cond_1
    return-object v0
.end method

.method public static varargs getInstance(Landroid/icu/util/ULocale;[Landroid/icu/text/DisplayContext;)Landroid/icu/text/LocaleDisplayNames;
    .locals 4

    .line 104
    sget-object v0, Landroid/icu/text/LocaleDisplayNames;->FACTORY_DISPLAYCONTEXT:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 106
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/LocaleDisplayNames;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 115
    new-instance v0, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;

    invoke-direct {v0, p0, p1, v1}, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;-><init>(Landroid/icu/util/ULocale;[Landroid/icu/text/DisplayContext;Landroid/icu/text/LocaleDisplayNames$1;)V

    :cond_1
    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/icu/text/LocaleDisplayNames;
    .locals 0

    .line 66
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p0

    invoke-static {p0}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object p0

    return-object p0
.end method

.method public static varargs getInstance(Ljava/util/Locale;[Landroid/icu/text/DisplayContext;)Landroid/icu/text/LocaleDisplayNames;
    .locals 0

    .line 129
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;[Landroid/icu/text/DisplayContext;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getContext(Landroid/icu/text/DisplayContext$Type;)Landroid/icu/text/DisplayContext;
.end method

.method public abstract getDialectHandling()Landroid/icu/text/LocaleDisplayNames$DialectHandling;
.end method

.method public abstract getLocale()Landroid/icu/util/ULocale;
.end method

.method public getUiList(Ljava/util/Set;ZLjava/util/Comparator;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/icu/util/ULocale;",
            ">;Z",
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/icu/text/LocaleDisplayNames$UiListItem;",
            ">;"
        }
    .end annotation

    .line 265
    invoke-static {p3, p2}, Landroid/icu/text/LocaleDisplayNames$UiListItem;->getComparator(Ljava/util/Comparator;Z)Ljava/util/Comparator;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/LocaleDisplayNames;->getUiListCompareWholeItems(Ljava/util/Set;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public abstract getUiListCompareWholeItems(Ljava/util/Set;Ljava/util/Comparator;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/icu/util/ULocale;",
            ">;",
            "Ljava/util/Comparator<",
            "Landroid/icu/text/LocaleDisplayNames$UiListItem;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/icu/text/LocaleDisplayNames$UiListItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract keyDisplayName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract keyValueDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract languageDisplayName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract localeDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;
.end method

.method public abstract localeDisplayName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract localeDisplayName(Ljava/util/Locale;)Ljava/lang/String;
.end method

.method public abstract regionDisplayName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract scriptDisplayName(I)Ljava/lang/String;
.end method

.method public abstract scriptDisplayName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public scriptDisplayNameInContext(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 213
    invoke-virtual {p0, p1}, Landroid/icu/text/LocaleDisplayNames;->scriptDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract variantDisplayName(Ljava/lang/String;)Ljava/lang/String;
.end method
