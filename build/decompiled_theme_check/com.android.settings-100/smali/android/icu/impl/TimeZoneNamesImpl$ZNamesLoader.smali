.class final Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;
.super Landroid/icu/impl/UResource$Sink;
.source "TimeZoneNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TimeZoneNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ZNamesLoader"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static DUMMY_LOADER:Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;


# instance fields
.field private names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 586
    const-class v0, Landroid/icu/impl/TimeZoneNamesImpl;

    .line 592
    new-instance v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    invoke-direct {v0}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;-><init>()V

    sput-object v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->DUMMY_LOADER:Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 586
    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/TimeZoneNamesImpl$1;)V
    .locals 0

    .line 586
    invoke-direct {p0}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;-><init>()V

    return-void
.end method

.method static synthetic access$400()Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;
    .locals 1

    .line 586
    sget-object v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->DUMMY_LOADER:Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    return-object v0
.end method

.method static synthetic access$600(Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;)[Ljava/lang/String;
    .locals 0

    .line 586
    invoke-direct {p0}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->getNames()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getNames()[Ljava/lang/String;
    .locals 6

    .line 660
    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/icu/impl/Utility;->sameObjects(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    move v3, v2

    :goto_0
    const/4 v4, 0x7

    if-ge v2, v4, :cond_3

    .line 665
    iget-object v4, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    aget-object v4, v4, v2

    if-eqz v4, :cond_2

    const-string/jumbo v5, "\u2205\u2205\u2205"

    .line 667
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 668
    iget-object v4, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    aput-object v1, v4, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v2, 0x1

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-ne v3, v4, :cond_4

    .line 678
    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    goto :goto_2

    :cond_4
    if-nez v3, :cond_5

    goto :goto_2

    .line 685
    :cond_5
    iget-object p0, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    invoke-static {p0, v0, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, [Ljava/lang/String;

    :goto_2
    return-object v1
.end method

.method private static nameTypeIndexFromKey(Landroid/icu/impl/UResource$Key;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;
    .locals 6

    .line 619
    invoke-virtual {p0}, Landroid/icu/impl/UResource$Key;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 622
    invoke-virtual {p0, v0}, Landroid/icu/impl/UResource$Key;->charAt(I)C

    move-result v0

    const/4 v2, 0x1

    .line 623
    invoke-virtual {p0, v2}, Landroid/icu/impl/UResource$Key;->charAt(I)C

    move-result p0

    const/16 v2, 0x6c

    const/16 v3, 0x64

    const/16 v4, 0x67

    const/16 v5, 0x73

    if-ne v0, v2, :cond_4

    if-ne p0, v4, :cond_1

    .line 625
    sget-object v1, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->LONG_GENERIC:Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    goto :goto_0

    :cond_1
    if-ne p0, v5, :cond_2

    .line 626
    sget-object v1, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->LONG_STANDARD:Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    goto :goto_0

    :cond_2
    if-ne p0, v3, :cond_3

    .line 627
    sget-object v1, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->LONG_DAYLIGHT:Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    :cond_3
    :goto_0
    return-object v1

    :cond_4
    if-ne v0, v5, :cond_8

    if-ne p0, v4, :cond_5

    .line 629
    sget-object v1, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->SHORT_GENERIC:Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    goto :goto_1

    :cond_5
    if-ne p0, v5, :cond_6

    .line 630
    sget-object v1, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->SHORT_STANDARD:Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    goto :goto_1

    :cond_6
    if-ne p0, v3, :cond_7

    .line 631
    sget-object v1, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->SHORT_DAYLIGHT:Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    :cond_7
    :goto_1
    return-object v1

    :cond_8
    const/16 v2, 0x65

    if-ne v0, v2, :cond_9

    const/16 v0, 0x63

    if-ne p0, v0, :cond_9

    .line 633
    sget-object p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->EXEMPLAR_LOCATION:Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    return-object p0

    :cond_9
    return-object v1
.end method

.method private setNameIfEmpty(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .locals 2

    .line 639
    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 640
    iput-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    .line 642
    :cond_0
    invoke-static {p1}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->nameTypeIndexFromKey(Landroid/icu/impl/UResource$Key;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 645
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    if-nez v0, :cond_2

    .line 646
    iget-object p0, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->ordinal()I

    move-result p1

    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p0, p1

    :cond_2
    return-void
.end method


# virtual methods
.method loadMetaZone(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)V
    .locals 2

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "meta:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 596
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->loadNames(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)V

    return-void
.end method

.method loadNames(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 610
    iput-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->names:[Ljava/lang/String;

    .line 612
    :try_start_0
    invoke-virtual {p1, p2, p0}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method loadTimeZone(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x2f

    const/16 v1, 0x3a

    .line 600
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    .line 601
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->loadNames(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)V

    return-void
.end method

.method public put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .locals 2

    .line 652
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object p3

    const/4 v0, 0x0

    .line 653
    :goto_0
    invoke-interface {p3, v0, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 655
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->setNameIfEmpty(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
