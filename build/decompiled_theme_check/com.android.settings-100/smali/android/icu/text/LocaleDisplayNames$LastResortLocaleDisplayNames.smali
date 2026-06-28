.class Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;
.super Landroid/icu/text/LocaleDisplayNames;
.source "LocaleDisplayNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/LocaleDisplayNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LastResortLocaleDisplayNames"
.end annotation


# instance fields
.field private contexts:[Landroid/icu/text/DisplayContext;

.field private locale:Landroid/icu/util/ULocale;


# direct methods
.method private constructor <init>(Landroid/icu/util/ULocale;Landroid/icu/text/LocaleDisplayNames$DialectHandling;)V
    .locals 1

    .line 422
    invoke-direct {p0}, Landroid/icu/text/LocaleDisplayNames;-><init>()V

    .line 423
    iput-object p1, p0, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;->locale:Landroid/icu/util/ULocale;

    .line 424
    sget-object p1, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->DIALECT_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    if-ne p2, p1, :cond_0

    .line 425
    sget-object p1, Landroid/icu/text/DisplayContext;->DIALECT_NAMES:Landroid/icu/text/DisplayContext;

    goto :goto_0

    :cond_0
    sget-object p1, Landroid/icu/text/DisplayContext;->STANDARD_NAMES:Landroid/icu/text/DisplayContext;

    :goto_0
    const/4 p2, 0x1

    new-array p2, p2, [Landroid/icu/text/DisplayContext;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    .line 426
    iput-object p2, p0, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;->contexts:[Landroid/icu/text/DisplayContext;

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/util/ULocale;Landroid/icu/text/LocaleDisplayNames$DialectHandling;Landroid/icu/text/LocaleDisplayNames$1;)V
    .locals 0

    .line 417
    invoke-direct {p0, p1, p2}, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/LocaleDisplayNames$DialectHandling;)V

    return-void
.end method

.method private varargs constructor <init>(Landroid/icu/util/ULocale;[Landroid/icu/text/DisplayContext;)V
    .locals 1

    .line 429
    invoke-direct {p0}, Landroid/icu/text/LocaleDisplayNames;-><init>()V

    .line 430
    iput-object p1, p0, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;->locale:Landroid/icu/util/ULocale;

    .line 431
    array-length p1, p2

    new-array p1, p1, [Landroid/icu/text/DisplayContext;

    iput-object p1, p0, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;->contexts:[Landroid/icu/text/DisplayContext;

    .line 432
    iget-object p0, p0, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;->contexts:[Landroid/icu/text/DisplayContext;

    array-length p1, p2

    const/4 v0, 0x0

    invoke-static {p2, v0, p0, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/util/ULocale;[Landroid/icu/text/DisplayContext;Landroid/icu/text/LocaleDisplayNames$1;)V
    .locals 0

    .line 417
    invoke-direct {p0, p1, p2}, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;-><init>(Landroid/icu/util/ULocale;[Landroid/icu/text/DisplayContext;)V

    return-void
.end method


# virtual methods
.method public getContext(Landroid/icu/text/DisplayContext$Type;)Landroid/icu/text/DisplayContext;
    .locals 5

    .line 456
    sget-object v0, Landroid/icu/text/DisplayContext;->STANDARD_NAMES:Landroid/icu/text/DisplayContext;

    .line 457
    iget-object p0, p0, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;->contexts:[Landroid/icu/text/DisplayContext;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 458
    invoke-virtual {v3}, Landroid/icu/text/DisplayContext;->type()Landroid/icu/text/DisplayContext$Type;

    move-result-object v4

    if-ne v4, p1, :cond_0

    move-object v0, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public getDialectHandling()Landroid/icu/text/LocaleDisplayNames$DialectHandling;
    .locals 6

    .line 442
    sget-object v0, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->STANDARD_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    .line 443
    iget-object p0, p0, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;->contexts:[Landroid/icu/text/DisplayContext;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 444
    invoke-virtual {v3}, Landroid/icu/text/DisplayContext;->type()Landroid/icu/text/DisplayContext$Type;

    move-result-object v4

    sget-object v5, Landroid/icu/text/DisplayContext$Type;->DIALECT_HANDLING:Landroid/icu/text/DisplayContext$Type;

    if-ne v4, v5, :cond_0

    .line 445
    invoke-virtual {v3}, Landroid/icu/text/DisplayContext;->value()I

    move-result v3

    sget-object v4, Landroid/icu/text/DisplayContext;->DIALECT_NAMES:Landroid/icu/text/DisplayContext;

    invoke-virtual {v4}, Landroid/icu/text/DisplayContext;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 446
    sget-object v0, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->DIALECT_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public getLocale()Landroid/icu/util/ULocale;
    .locals 0

    .line 437
    iget-object p0, p0, Landroid/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;->locale:Landroid/icu/util/ULocale;

    return-object p0
.end method

.method public getUiListCompareWholeItems(Ljava/util/Set;Ljava/util/Comparator;)Ljava/util/List;
    .locals 0
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

    .line 518
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public keyDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public keyValueDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p2
.end method

.method public languageDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public localeDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 0

    .line 468
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public localeDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 478
    new-instance p0, Landroid/icu/util/ULocale;

    invoke-direct {p0, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public localeDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 473
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public regionDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public scriptDisplayName(I)Ljava/lang/String;
    .locals 0

    .line 493
    invoke-static {p1}, Landroid/icu/lang/UScript;->getShortName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public scriptDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public variantDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method
