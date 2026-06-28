.class Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;
.super Ljava/lang/Object;
.source "LocaleDisplayNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/LocaleDisplayNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation


# instance fields
.field private cache:Landroid/icu/text/LocaleDisplayNames;

.field private capitalization:Landroid/icu/text/DisplayContext;

.field private dialectHandling:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

.field private locale:Landroid/icu/util/ULocale;

.field private nameLength:Landroid/icu/text/DisplayContext;

.field private substituteHandling:Landroid/icu/text/DisplayContext;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 726
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/LocaleDisplayNamesImpl$1;)V
    .locals 0

    .line 726
    invoke-direct {p0}, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Landroid/icu/util/ULocale;Landroid/icu/text/LocaleDisplayNames$DialectHandling;)Landroid/icu/text/LocaleDisplayNames;
    .locals 2

    .line 734
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->dialectHandling:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    if-ne p2, v0, :cond_0

    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->capitalization:Landroid/icu/text/DisplayContext;

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/icu/text/DisplayContext;->LENGTH_FULL:Landroid/icu/text/DisplayContext;

    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->nameLength:Landroid/icu/text/DisplayContext;

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/icu/text/DisplayContext;->SUBSTITUTE:Landroid/icu/text/DisplayContext;

    iget-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->substituteHandling:Landroid/icu/text/DisplayContext;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->locale:Landroid/icu/util/ULocale;

    .line 736
    invoke-virtual {p1, v0}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 737
    :cond_0
    iput-object p1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->locale:Landroid/icu/util/ULocale;

    .line 738
    iput-object p2, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->dialectHandling:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    .line 739
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    iput-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->capitalization:Landroid/icu/text/DisplayContext;

    .line 740
    sget-object v0, Landroid/icu/text/DisplayContext;->LENGTH_FULL:Landroid/icu/text/DisplayContext;

    iput-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->nameLength:Landroid/icu/text/DisplayContext;

    .line 741
    sget-object v0, Landroid/icu/text/DisplayContext;->SUBSTITUTE:Landroid/icu/text/DisplayContext;

    iput-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->substituteHandling:Landroid/icu/text/DisplayContext;

    .line 742
    new-instance v0, Landroid/icu/impl/LocaleDisplayNamesImpl;

    invoke-direct {v0, p1, p2}, Landroid/icu/impl/LocaleDisplayNamesImpl;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/LocaleDisplayNames$DialectHandling;)V

    iput-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->cache:Landroid/icu/text/LocaleDisplayNames;

    .line 744
    :cond_1
    iget-object p0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->cache:Landroid/icu/text/LocaleDisplayNames;

    return-object p0
.end method

.method public varargs get(Landroid/icu/util/ULocale;[Landroid/icu/text/DisplayContext;)Landroid/icu/text/LocaleDisplayNames;
    .locals 9

    .line 747
    sget-object v0, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->STANDARD_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    .line 748
    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    .line 749
    sget-object v2, Landroid/icu/text/DisplayContext;->LENGTH_FULL:Landroid/icu/text/DisplayContext;

    .line 750
    sget-object v3, Landroid/icu/text/DisplayContext;->SUBSTITUTE:Landroid/icu/text/DisplayContext;

    .line 751
    array-length v4, p2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_5

    aget-object v6, p2, v5

    .line 752
    sget-object v7, Landroid/icu/impl/LocaleDisplayNamesImpl$1;->$SwitchMap$android$icu$text$DisplayContext$Type:[I

    invoke-virtual {v6}, Landroid/icu/text/DisplayContext;->type()Landroid/icu/text/DisplayContext$Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/icu/text/DisplayContext$Type;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/4 v8, 0x1

    if-eq v7, v8, :cond_3

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2

    const/4 v8, 0x3

    if-eq v7, v8, :cond_1

    const/4 v8, 0x4

    if-eq v7, v8, :cond_0

    goto :goto_1

    :cond_0
    move-object v3, v6

    goto :goto_1

    :cond_1
    move-object v2, v6

    goto :goto_1

    :cond_2
    move-object v1, v6

    goto :goto_1

    .line 754
    :cond_3
    invoke-virtual {v6}, Landroid/icu/text/DisplayContext;->value()I

    move-result v0

    sget-object v6, Landroid/icu/text/DisplayContext;->STANDARD_NAMES:Landroid/icu/text/DisplayContext;

    invoke-virtual {v6}, Landroid/icu/text/DisplayContext;->value()I

    move-result v6

    if-ne v0, v6, :cond_4

    .line 755
    sget-object v0, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->STANDARD_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    goto :goto_1

    :cond_4
    sget-object v0, Landroid/icu/text/LocaleDisplayNames$DialectHandling;->DIALECT_NAMES:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 770
    :cond_5
    iget-object v4, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->dialectHandling:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    if-ne v0, v4, :cond_6

    iget-object v4, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->capitalization:Landroid/icu/text/DisplayContext;

    if-ne v1, v4, :cond_6

    iget-object v4, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->nameLength:Landroid/icu/text/DisplayContext;

    if-ne v2, v4, :cond_6

    iget-object v4, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->substituteHandling:Landroid/icu/text/DisplayContext;

    if-ne v3, v4, :cond_6

    iget-object v4, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->locale:Landroid/icu/util/ULocale;

    .line 772
    invoke-virtual {p1, v4}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 773
    :cond_6
    iput-object p1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->locale:Landroid/icu/util/ULocale;

    .line 774
    iput-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->dialectHandling:Landroid/icu/text/LocaleDisplayNames$DialectHandling;

    .line 775
    iput-object v1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->capitalization:Landroid/icu/text/DisplayContext;

    .line 776
    iput-object v2, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->nameLength:Landroid/icu/text/DisplayContext;

    .line 777
    iput-object v3, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->substituteHandling:Landroid/icu/text/DisplayContext;

    .line 778
    new-instance v0, Landroid/icu/impl/LocaleDisplayNamesImpl;

    invoke-direct {v0, p1, p2}, Landroid/icu/impl/LocaleDisplayNamesImpl;-><init>(Landroid/icu/util/ULocale;[Landroid/icu/text/DisplayContext;)V

    iput-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->cache:Landroid/icu/text/LocaleDisplayNames;

    .line 780
    :cond_7
    iget-object p0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$Cache;->cache:Landroid/icu/text/LocaleDisplayNames;

    return-object p0
.end method
