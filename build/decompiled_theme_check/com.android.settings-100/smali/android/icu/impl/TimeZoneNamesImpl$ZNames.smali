.class Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
.super Ljava/lang/Object;
.source "TimeZoneNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TimeZoneNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZNames"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;
    }
.end annotation


# static fields
.field static final EMPTY_ZNAMES:Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

.field private static final EX_LOC_INDEX:I

.field public static final NUM_NAME_TYPES:I = 0x7


# instance fields
.field private _names:[Ljava/lang/String;

.field private didAddIntoTrie:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 749
    new-instance v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;-><init>([Ljava/lang/String;)V

    sput-object v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->EMPTY_ZNAMES:Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    .line 751
    sget-object v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->EXEMPLAR_LOCATION:Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->ordinal()I

    move-result v0

    sput v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->EX_LOC_INDEX:I

    return-void
.end method

.method protected constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 756
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 757
    iput-object p1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->_names:[Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 758
    :goto_0
    iput-boolean p1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->didAddIntoTrie:Z

    return-void
.end method

.method private addNamesIntoTrie(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/TextTrieMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/icu/impl/TextTrieMap<",
            "Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;",
            ">;)V"
        }
    .end annotation

    .line 807
    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->_names:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->didAddIntoTrie:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 810
    iput-boolean v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->didAddIntoTrie:Z

    const/4 v0, 0x0

    .line 812
    :goto_0
    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->_names:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 813
    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 815
    new-instance v2, Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;-><init>(Landroid/icu/impl/TimeZoneNamesImpl$1;)V

    .line 816
    iput-object p1, v2, Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;->mzID:Ljava/lang/String;

    .line 817
    iput-object p2, v2, Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;->tzID:Ljava/lang/String;

    .line 818
    invoke-static {v0}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->getNameType(I)Landroid/icu/text/TimeZoneNames$NameType;

    move-result-object v3

    iput-object v3, v2, Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;->type:Landroid/icu/text/TimeZoneNames$NameType;

    .line 819
    invoke-virtual {p3, v1, v2}, Landroid/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/icu/impl/TextTrieMap;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static createMetaZoneAndPutInCache(Ljava/util/Map;[Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/TimeZoneNamesImpl$ZNames;",
            ">;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/icu/impl/TimeZoneNamesImpl$ZNames;"
        }
    .end annotation

    .line 763
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    if-nez p1, :cond_0

    .line 766
    sget-object p1, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->EMPTY_ZNAMES:Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    goto :goto_0

    .line 768
    :cond_0
    new-instance v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    invoke-direct {v0, p1}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;-><init>([Ljava/lang/String;)V

    move-object p1, v0

    .line 770
    :goto_0
    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public static createTimeZoneAndPutInCache(Ljava/util/Map;[Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/TimeZoneNamesImpl$ZNames;",
            ">;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/icu/impl/TimeZoneNamesImpl$ZNames;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 778
    sget p1, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->EX_LOC_INDEX:I

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    .line 779
    :cond_0
    sget v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->EX_LOC_INDEX:I

    aget-object v1, p1, v0

    if-nez v1, :cond_1

    .line 780
    invoke-static {p2}, Landroid/icu/impl/TimeZoneNamesImpl;->getDefaultExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 783
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    .line 784
    new-instance v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    invoke-direct {v0, p1}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;-><init>([Ljava/lang/String;)V

    .line 785
    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static getNameType(I)Landroid/icu/text/TimeZoneNames$NameType;
    .locals 3

    .line 729
    sget-object v0, Landroid/icu/impl/TimeZoneNamesImpl$1;->$SwitchMap$android$icu$impl$TimeZoneNamesImpl$ZNames$NameTypeIndex:[I

    sget-object v1, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->values:[Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    aget-object v1, v1, p0

    invoke-virtual {v1}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 745
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No NameType match for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 743
    :pswitch_0
    sget-object p0, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    return-object p0

    .line 741
    :pswitch_1
    sget-object p0, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    return-object p0

    .line 739
    :pswitch_2
    sget-object p0, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    return-object p0

    .line 737
    :pswitch_3
    sget-object p0, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    return-object p0

    .line 735
    :pswitch_4
    sget-object p0, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    return-object p0

    .line 733
    :pswitch_5
    sget-object p0, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    return-object p0

    .line 731
    :pswitch_6
    sget-object p0, Landroid/icu/text/TimeZoneNames$NameType;->EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneNames$NameType;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getNameTypeIndex(Landroid/icu/text/TimeZoneNames$NameType;)I
    .locals 3

    .line 708
    sget-object v0, Landroid/icu/impl/TimeZoneNamesImpl$1;->$SwitchMap$android$icu$text$TimeZoneNames$NameType:[I

    invoke-virtual {p0}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 724
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No NameTypeIndex match for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 722
    :pswitch_0
    sget-object p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->SHORT_DAYLIGHT:Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    invoke-virtual {p0}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->ordinal()I

    move-result p0

    return p0

    .line 720
    :pswitch_1
    sget-object p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->SHORT_STANDARD:Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    invoke-virtual {p0}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->ordinal()I

    move-result p0

    return p0

    .line 718
    :pswitch_2
    sget-object p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->SHORT_GENERIC:Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    invoke-virtual {p0}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->ordinal()I

    move-result p0

    return p0

    .line 716
    :pswitch_3
    sget-object p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->LONG_DAYLIGHT:Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    invoke-virtual {p0}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->ordinal()I

    move-result p0

    return p0

    .line 714
    :pswitch_4
    sget-object p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->LONG_STANDARD:Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    invoke-virtual {p0}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->ordinal()I

    move-result p0

    return p0

    .line 712
    :pswitch_5
    sget-object p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->LONG_GENERIC:Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    invoke-virtual {p0}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->ordinal()I

    move-result p0

    return p0

    .line 710
    :pswitch_6
    sget-object p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->EXEMPLAR_LOCATION:Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    invoke-virtual {p0}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->ordinal()I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addAsMetaZoneIntoTrie(Ljava/lang/String;Landroid/icu/impl/TextTrieMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/icu/impl/TextTrieMap<",
            "Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 799
    invoke-direct {p0, p1, v0, p2}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->addNamesIntoTrie(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/TextTrieMap;)V

    return-void
.end method

.method public addAsTimeZoneIntoTrie(Ljava/lang/String;Landroid/icu/impl/TextTrieMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/icu/impl/TextTrieMap<",
            "Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 803
    invoke-direct {p0, v0, p1, p2}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->addNamesIntoTrie(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/TextTrieMap;)V

    return-void
.end method

.method public getName(Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;
    .locals 1

    .line 790
    invoke-static {p1}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->getNameTypeIndex(Landroid/icu/text/TimeZoneNames$NameType;)I

    move-result p1

    .line 791
    iget-object p0, p0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->_names:[Ljava/lang/String;

    if-eqz p0, :cond_0

    array-length v0, p0

    if-ge p1, v0, :cond_0

    .line 792
    aget-object p0, p0, p1

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
