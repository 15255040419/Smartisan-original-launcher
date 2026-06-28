.class public Landroid/icu/impl/locale/XLocaleDistance;
.super Ljava/lang/Object;
.source "XLocaleDistance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/locale/XLocaleDistance$CompactAndImmutablizer;,
        Landroid/icu/impl/locale/XLocaleDistance$RegionSet;,
        Landroid/icu/impl/locale/XLocaleDistance$RegionMapper;,
        Landroid/icu/impl/locale/XLocaleDistance$DistanceOption;,
        Landroid/icu/impl/locale/XLocaleDistance$AddSub;,
        Landroid/icu/impl/locale/XLocaleDistance$CopyIfEmpty;,
        Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;,
        Landroid/icu/impl/locale/XLocaleDistance$StringDistanceNode;,
        Landroid/icu/impl/locale/XLocaleDistance$IdMakerFull;,
        Landroid/icu/impl/locale/XLocaleDistance$IdMapper;,
        Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;,
        Landroid/icu/impl/locale/XLocaleDistance$DistanceTable;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ABOVE_THRESHOLD:I = 0x64

.field private static final ALL_FINAL_REGIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ANY:Ljava/lang/String; = "\ufffd"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final CONTAINER_TO_CONTAINED:Landroid/icu/impl/locale/XCldrStub$Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/locale/XCldrStub$Multimap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final CONTAINER_TO_CONTAINED_FINAL:Landroid/icu/impl/locale/XCldrStub$Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/locale/XCldrStub$Multimap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT:Landroid/icu/impl/locale/XLocaleDistance;

.field static final PRINT_OVERRIDES:Z = false

.field static final english:Landroid/icu/text/LocaleDisplayNames;


# instance fields
.field private final defaultLanguageDistance:I

.field private final defaultRegionDistance:I

.field private final defaultScriptDistance:I

.field private final languageDesired2Supported:Landroid/icu/impl/locale/XLocaleDistance$DistanceTable;

.field private final regionMapper:Landroid/icu/impl/locale/XLocaleDistance$RegionMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 60
    sget-object v0, Landroid/icu/util/ULocale;->ENGLISH:Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/locale/XLocaleDistance;->english:Landroid/icu/text/LocaleDisplayNames;

    .line 183
    invoke-static {}, Landroid/icu/impl/locale/XLocaleDistance;->xGetContainment()Landroid/icu/impl/locale/XCldrStub$Multimap;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/locale/XLocaleDistance;->CONTAINER_TO_CONTAINED:Landroid/icu/impl/locale/XCldrStub$Multimap;

    .line 184
    invoke-static {}, Landroid/icu/impl/locale/XCldrStub$TreeMultimap;->create()Landroid/icu/impl/locale/XCldrStub$TreeMultimap;

    move-result-object v0

    .line 185
    sget-object v1, Landroid/icu/impl/locale/XLocaleDistance;->CONTAINER_TO_CONTAINED:Landroid/icu/impl/locale/XCldrStub$Multimap;

    invoke-virtual {v1}, Landroid/icu/impl/locale/XCldrStub$Multimap;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 186
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 187
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 188
    sget-object v5, Landroid/icu/impl/locale/XLocaleDistance;->CONTAINER_TO_CONTAINED:Landroid/icu/impl/locale/XCldrStub$Multimap;

    invoke-virtual {v5, v4}, Landroid/icu/impl/locale/XCldrStub$Multimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    if-nez v5, :cond_1

    .line 189
    invoke-virtual {v0, v3, v4}, Landroid/icu/impl/locale/XCldrStub$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 193
    :cond_2
    invoke-static {v0}, Landroid/icu/impl/locale/XCldrStub$ImmutableMultimap;->copyOf(Landroid/icu/impl/locale/XCldrStub$Multimap;)Landroid/icu/impl/locale/XCldrStub$Multimap;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/locale/XLocaleDistance;->CONTAINER_TO_CONTAINED_FINAL:Landroid/icu/impl/locale/XCldrStub$Multimap;

    .line 196
    sget-object v0, Landroid/icu/impl/locale/XLocaleDistance;->CONTAINER_TO_CONTAINED_FINAL:Landroid/icu/impl/locale/XCldrStub$Multimap;

    const-string v1, "001"

    invoke-virtual {v0, v1}, Landroid/icu/impl/locale/XCldrStub$Multimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/locale/XCldrStub$ImmutableSet;->copyOf(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/locale/XLocaleDistance;->ALL_FINAL_REGIONS:Ljava/util/Set;

    const/4 v0, 0x4

    new-array v1, v0, [[Ljava/lang/String;

    const-string v2, "$enUS"

    const-string v3, "AS+GU+MH+MP+PR+UM+US+VI"

    .line 822
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "$cnsar"

    const-string v4, "HK+MO"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "$americas"

    const-string v5, "019"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "$maghreb"

    const-string v6, "MA+DZ+TN+LY+MR+EH"

    filled-new-array {v2, v6}, [Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v7, "en"

    const-string v8, "en-GB"

    const-string v9, "es"

    const-string v10, "es-419"

    const-string/jumbo v11, "pt-BR"

    const-string/jumbo v12, "pt-PT"

    .line 831
    filled-new-array/range {v7 .. v12}, [Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x10

    new-array v7, v7, [[Ljava/lang/String;

    const-string v8, "ar_*_$maghreb"

    const-string v9, "96"

    .line 834
    filled-new-array {v8, v8, v9}, [Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    const-string v8, "ar_*_$!maghreb"

    filled-new-array {v8, v8, v9}, [Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    const-string v8, "ar_*_*"

    const-string v10, "95"

    filled-new-array {v8, v8, v10}, [Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    const-string v8, "en_*_$enUS"

    filled-new-array {v8, v8, v9}, [Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    const-string v8, "en_*_$!enUS"

    filled-new-array {v8, v8, v9}, [Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    const/4 v0, 0x5

    const-string v8, "en_*_*"

    filled-new-array {v8, v8, v10}, [Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    const/4 v0, 0x6

    const-string v8, "es_*_$americas"

    filled-new-array {v8, v8, v9}, [Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    const/4 v0, 0x7

    const-string v8, "es_*_$!americas"

    filled-new-array {v8, v8, v9}, [Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    const/16 v0, 0x8

    const-string v8, "es_*_*"

    const-string v11, "es_*_*"

    filled-new-array {v8, v11, v10}, [Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    const/16 v0, 0x9

    const-string/jumbo v8, "pt_*_$americas"

    const-string/jumbo v11, "pt_*_$americas"

    filled-new-array {v8, v11, v9}, [Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    const/16 v0, 0xa

    const-string/jumbo v8, "pt_*_$!americas"

    const-string/jumbo v11, "pt_*_$!americas"

    filled-new-array {v8, v11, v9}, [Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    const/16 v0, 0xb

    const-string/jumbo v8, "pt_*_*"

    const-string/jumbo v11, "pt_*_*"

    filled-new-array {v8, v11, v10}, [Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    const/16 v0, 0xc

    const-string/jumbo v8, "zh_Hant_$cnsar"

    const-string/jumbo v11, "zh_Hant_$cnsar"

    filled-new-array {v8, v11, v9}, [Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    const/16 v0, 0xd

    const-string/jumbo v8, "zh_Hant_$!cnsar"

    const-string/jumbo v11, "zh_Hant_$!cnsar"

    filled-new-array {v8, v11, v9}, [Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    const/16 v0, 0xe

    const-string/jumbo v8, "zh_Hant_*"

    const-string/jumbo v11, "zh_Hant_*"

    filled-new-array {v8, v11, v10}, [Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    const/16 v0, 0xf

    const-string v8, "*_*_*"

    const-string v10, "*_*_*"

    filled-new-array {v8, v10, v9}, [Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    .line 858
    new-instance v0, Landroid/icu/impl/locale/XLocaleDistance$RegionMapper$Builder;

    invoke-direct {v0}, Landroid/icu/impl/locale/XLocaleDistance$RegionMapper$Builder;-><init>()V

    invoke-virtual {v0, v2}, Landroid/icu/impl/locale/XLocaleDistance$RegionMapper$Builder;->addParadigms([Ljava/lang/String;)Landroid/icu/impl/locale/XLocaleDistance$RegionMapper$Builder;

    move-result-object v0

    .line 859
    array-length v2, v1

    move v8, v3

    :goto_1
    if-ge v8, v2, :cond_3

    aget-object v9, v1, v8

    .line 860
    aget-object v10, v9, v3

    aget-object v9, v9, v4

    invoke-virtual {v0, v10, v9}, Landroid/icu/impl/locale/XLocaleDistance$RegionMapper$Builder;->add(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 874
    :cond_3
    new-instance v1, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;

    invoke-direct {v1}, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;-><init>()V

    .line 875
    invoke-virtual {v0}, Landroid/icu/impl/locale/XLocaleDistance$RegionMapper$Builder;->build()Landroid/icu/impl/locale/XLocaleDistance$RegionMapper;

    move-result-object v0

    const/16 v2, 0x5f

    .line 877
    invoke-static {v2}, Landroid/icu/impl/locale/XCldrStub$Splitter;->on(C)Landroid/icu/impl/locale/XCldrStub$Splitter;

    move-result-object v2

    new-array v8, v6, [Ljava/util/ArrayList;

    .line 881
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    aput-object v9, v8, v3

    .line 882
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    aput-object v9, v8, v4

    .line 883
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    aput-object v9, v8, v5

    .line 886
    invoke-static {}, Landroid/icu/impl/locale/XLocaleDistance;->xGetLanguageMatcherData()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/icu/impl/Row$R4;

    .line 887
    invoke-virtual {v10}, Landroid/icu/impl/Row$R4;->get0()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 888
    invoke-virtual {v10}, Landroid/icu/impl/Row$R4;->get1()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 889
    invoke-virtual {v2, v11}, Landroid/icu/impl/locale/XCldrStub$Splitter;->splitToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 890
    invoke-virtual {v2, v12}, Landroid/icu/impl/locale/XCldrStub$Splitter;->splitToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 891
    invoke-virtual {v10}, Landroid/icu/impl/Row$R4;->get3()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    const-string v15, "*_*"

    .line 892
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/16 v10, 0x32

    goto :goto_3

    :cond_4
    invoke-virtual {v10}, Landroid/icu/impl/Row$R4;->get2()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 893
    :goto_3
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v11

    if-ne v11, v6, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v11, v11, -0x1

    .line 898
    aget-object v11, v8, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v13, v12, v10, v14}, Landroid/icu/impl/Row;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/icu/impl/Row$R4;

    move-result-object v10

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 901
    :cond_6
    array-length v6, v8

    move v9, v3

    :goto_4
    if-ge v9, v6, :cond_9

    aget-object v10, v8, v9

    .line 902
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/icu/impl/Row$R4;

    .line 903
    invoke-virtual {v11}, Landroid/icu/impl/Row$R4;->get0()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 904
    invoke-virtual {v11}, Landroid/icu/impl/Row$R4;->get1()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 905
    invoke-virtual {v11}, Landroid/icu/impl/Row$R4;->get2()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 906
    invoke-virtual {v11}, Landroid/icu/impl/Row$R4;->get3()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    .line 907
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v1, v12, v13, v15}, Landroid/icu/impl/locale/XLocaleDistance;->add(Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;Ljava/util/List;Ljava/util/List;I)V

    .line 908
    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v11, v15, :cond_7

    invoke-interface {v12, v13}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    .line 909
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v1, v13, v12, v15}, Landroid/icu/impl/locale/XLocaleDistance;->add(Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;Ljava/util/List;Ljava/util/List;I)V

    .line 911
    :cond_7
    invoke-static {v12, v13, v14, v11}, Landroid/icu/impl/locale/XLocaleDistance;->printMatchXml(Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    goto :goto_5

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 916
    :cond_9
    array-length v6, v7

    move v8, v3

    :goto_6
    if-ge v8, v6, :cond_e

    aget-object v9, v7, v8

    .line 927
    new-instance v10, Ljava/util/ArrayList;

    aget-object v11, v9, v3

    invoke-virtual {v2, v11}, Landroid/icu/impl/locale/XCldrStub$Splitter;->splitToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 928
    new-instance v11, Ljava/util/ArrayList;

    aget-object v12, v9, v4

    invoke-virtual {v2, v12}, Landroid/icu/impl/locale/XCldrStub$Splitter;->splitToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 929
    aget-object v9, v9, v5

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    rsub-int/lit8 v9, v9, 0x64

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 930
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {v10, v11, v9, v12}, Landroid/icu/impl/locale/XLocaleDistance;->printMatchXml(Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 932
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v0, v12}, Landroid/icu/impl/locale/XLocaleDistance$RegionMapper;->getIdsFromVariable(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v12

    .line 933
    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_d

    .line 936
    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v0, v13}, Landroid/icu/impl/locale/XLocaleDistance$RegionMapper;->getIdsFromVariable(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v13

    .line 937
    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_c

    .line 940
    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 941
    invoke-virtual {v14}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v10, v5, v14}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 942
    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 943
    invoke-virtual {v15}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v11, v5, v15}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 944
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v1, v10, v11, v15}, Landroid/icu/impl/locale/XLocaleDistance;->add(Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;Ljava/util/List;Ljava/util/List;I)V

    .line 945
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v1, v11, v10, v15}, Landroid/icu/impl/locale/XLocaleDistance;->add(Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;Ljava/util/List;Ljava/util/List;I)V

    goto :goto_7

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_6

    .line 938
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad region variable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 934
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad region variable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 953
    :cond_e
    new-instance v2, Landroid/icu/impl/locale/XLocaleDistance;

    invoke-virtual {v1}, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;->compact()Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Landroid/icu/impl/locale/XLocaleDistance;-><init>(Landroid/icu/impl/locale/XLocaleDistance$DistanceTable;Landroid/icu/impl/locale/XLocaleDistance$RegionMapper;)V

    sput-object v2, Landroid/icu/impl/locale/XLocaleDistance;->DEFAULT:Landroid/icu/impl/locale/XLocaleDistance;

    return-void
.end method

.method public constructor <init>(Landroid/icu/impl/locale/XLocaleDistance$DistanceTable;Landroid/icu/impl/locale/XLocaleDistance$RegionMapper;)V
    .locals 1

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    iput-object p1, p0, Landroid/icu/impl/locale/XLocaleDistance;->languageDesired2Supported:Landroid/icu/impl/locale/XLocaleDistance$DistanceTable;

    .line 399
    iput-object p2, p0, Landroid/icu/impl/locale/XLocaleDistance;->regionMapper:Landroid/icu/impl/locale/XLocaleDistance$RegionMapper;

    .line 401
    iget-object p1, p0, Landroid/icu/impl/locale/XLocaleDistance;->languageDesired2Supported:Landroid/icu/impl/locale/XLocaleDistance$DistanceTable;

    check-cast p1, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;

    iget-object p1, p1, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;->subtables:Ljava/util/Map;

    const-string/jumbo p2, "\ufffd"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceNode;

    .line 402
    iget v0, p1, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceNode;->distance:I

    iput v0, p0, Landroid/icu/impl/locale/XLocaleDistance;->defaultLanguageDistance:I

    .line 403
    iget-object p1, p1, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceNode;->distanceTable:Landroid/icu/impl/locale/XLocaleDistance$DistanceTable;

    check-cast p1, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;

    iget-object p1, p1, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;->subtables:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceNode;

    .line 404
    iget v0, p1, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceNode;->distance:I

    iput v0, p0, Landroid/icu/impl/locale/XLocaleDistance;->defaultScriptDistance:I

    .line 405
    iget-object p1, p1, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceNode;->distanceTable:Landroid/icu/impl/locale/XLocaleDistance$DistanceTable;

    check-cast p1, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;

    iget-object p1, p1, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;->subtables:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;

    .line 406
    iget p1, p1, Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;->distance:I

    iput p1, p0, Landroid/icu/impl/locale/XLocaleDistance;->defaultRegionDistance:I

    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .line 47
    invoke-static {}, Landroid/icu/impl/locale/XLocaleDistance;->newMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/Set;
    .locals 1

    .line 47
    sget-object v0, Landroid/icu/impl/locale/XLocaleDistance;->ALL_FINAL_REGIONS:Ljava/util/Set;

    return-object v0
.end method

.method public static add(Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;Ljava/util/List;Ljava/util/List;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1012
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1013
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    const/4 v2, 0x3

    if-gt v0, v2, :cond_2

    const/4 v2, 0x0

    .line 1016
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/icu/impl/locale/XLocaleDistance;->fixAny(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1017
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/icu/impl/locale/XLocaleDistance;->fixAny(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-ne v0, v1, :cond_0

    .line 1019
    invoke-virtual {p0, v5, v6, p3}, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;->addSubtable(Ljava/lang/String;Ljava/lang/String;I)Landroid/icu/impl/locale/XLocaleDistance$DistanceNode;

    goto :goto_0

    .line 1021
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/icu/impl/locale/XLocaleDistance;->fixAny(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1022
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/icu/impl/locale/XLocaleDistance;->fixAny(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    move-object v4, p0

    move v9, p3

    .line 1024
    invoke-virtual/range {v4 .. v9}, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;->addSubtables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 1026
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/icu/impl/locale/XLocaleDistance;->fixAny(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1027
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/icu/impl/locale/XLocaleDistance;->fixAny(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v4, p0

    move v11, p3

    .line 1028
    invoke-virtual/range {v4 .. v11}, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;->addSubtables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void

    .line 1014
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static fill(Ljava/lang/String;Landroid/icu/impl/locale/XCldrStub$TreeMultimap;Landroid/icu/impl/locale/XCldrStub$Multimap;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/icu/impl/locale/XCldrStub$TreeMultimap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/icu/impl/locale/XCldrStub$Multimap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 164
    invoke-virtual {p1, p0}, Landroid/icu/impl/locale/XCldrStub$TreeMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    .line 166
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 168
    :cond_0
    invoke-virtual {p2, p0, v0}, Landroid/icu/impl/locale/XCldrStub$Multimap;->putAll(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 170
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 171
    invoke-static {v1, p1, p2}, Landroid/icu/impl/locale/XLocaleDistance;->fill(Ljava/lang/String;Landroid/icu/impl/locale/XCldrStub$TreeMultimap;Landroid/icu/impl/locale/XCldrStub$Multimap;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p2, p0, v1}, Landroid/icu/impl/locale/XCldrStub$Multimap;->putAll(Ljava/lang/Object;Ljava/util/Collection;)V

    goto :goto_0

    .line 173
    :cond_1
    invoke-virtual {p2, p0}, Landroid/icu/impl/locale/XCldrStub$Multimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private static fixAny(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "*"

    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p0, "\ufffd"

    :cond_0
    return-object p0
.end method

.method private static fixedName(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 978
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 979
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    .line 982
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x3

    const/4 v3, 0x2

    const-string v4, "*"

    if-lt p0, v2, :cond_2

    .line 985
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 986
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "$"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 989
    :cond_0
    sget-object v5, Landroid/icu/impl/locale/XLocaleDistance;->english:Landroid/icu/text/LocaleDisplayNames;

    invoke-virtual {v5, v2}, Landroid/icu/text/LocaleDisplayNames;->regionDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 987
    :cond_1
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    const/4 v2, 0x1

    const/4 v5, 0x0

    if-lt p0, v3, :cond_4

    .line 993
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 994
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 995
    invoke-virtual {v1, v5, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 997
    :cond_3
    sget-object v6, Landroid/icu/impl/locale/XLocaleDistance;->english:Landroid/icu/text/LocaleDisplayNames;

    invoke-virtual {v6, v3}, Landroid/icu/text/LocaleDisplayNames;->scriptDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_2
    if-lt p0, v2, :cond_6

    .line 1001
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 1002
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1003
    invoke-virtual {v1, v5, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1005
    :cond_5
    sget-object v2, Landroid/icu/impl/locale/XLocaleDistance;->english:Landroid/icu/text/LocaleDisplayNames;

    invoke-virtual {v2, p0}, Landroid/icu/text/LocaleDisplayNames;->languageDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v5, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_3
    const-string p0, "; "

    .line 1008
    invoke-static {v0, p0}, Landroid/icu/impl/locale/XCldrStub$CollectionUtilities;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getContainingMacrosFor(Ljava/util/Collection;Ljava/util/Set;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1049
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 1050
    sget-object v0, Landroid/icu/impl/locale/XLocaleDistance;->CONTAINER_TO_CONTAINED:Landroid/icu/impl/locale/XCldrStub$Multimap;

    invoke-virtual {v0}, Landroid/icu/impl/locale/XCldrStub$Multimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1051
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {p0, v2}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1052
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public static getDefault()Landroid/icu/impl/locale/XLocaleDistance;
    .locals 1

    .line 818
    sget-object v0, Landroid/icu/impl/locale/XLocaleDistance;->DEFAULT:Landroid/icu/impl/locale/XLocaleDistance;

    return-object v0
.end method

.method public static invertMap(Ljava/util/Map;)Landroid/icu/impl/locale/XCldrStub$Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TV;TK;>;)",
            "Landroid/icu/impl/locale/XCldrStub$Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1271
    invoke-static {p0}, Landroid/icu/impl/locale/XCldrStub$Multimaps;->forMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    invoke-static {}, Landroid/icu/impl/locale/XCldrStub$LinkedHashMultimap;->create()Landroid/icu/impl/locale/XCldrStub$LinkedHashMultimap;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/icu/impl/locale/XCldrStub$Multimaps;->invertFrom(Ljava/util/Map;Landroid/icu/impl/locale/XCldrStub$Multimap;)Landroid/icu/impl/locale/XCldrStub$Multimap;

    move-result-object p0

    return-object p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    .line 1342
    invoke-static {}, Landroid/icu/impl/locale/XLocaleDistance;->getDefault()Landroid/icu/impl/locale/XLocaleDistance;

    move-result-object p0

    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleDistance;->languageDesired2Supported:Landroid/icu/impl/locale/XLocaleDistance$DistanceTable;

    .line 1343
    invoke-virtual {p0}, Landroid/icu/impl/locale/XLocaleDistance$DistanceTable;->compact()Landroid/icu/impl/locale/XLocaleDistance$DistanceTable;

    move-result-object v0

    .line 1344
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 1345
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Compaction isn\'t equal"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static newMap()Ljava/util/Map;
    .locals 1

    .line 411
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    return-object v0
.end method

.method private static printMatchXml(Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method private static xGetContainment()Landroid/icu/impl/locale/XCldrStub$Multimap;
    .locals 49
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/icu/impl/locale/XCldrStub$Multimap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 112
    invoke-static {}, Landroid/icu/impl/locale/XCldrStub$TreeMultimap;->create()Landroid/icu/impl/locale/XCldrStub$TreeMultimap;

    move-result-object v0

    const-string v1, "009"

    const-string v2, "142"

    const-string v3, "150"

    const-string v4, "002"

    const-string v5, "019"

    .line 113
    filled-new-array {v5, v4, v3, v2, v1}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "001"

    .line 114
    invoke-virtual {v0, v7, v6}, Landroid/icu/impl/locale/XCldrStub$TreeMultimap;->putAll(Ljava/lang/Object;[Ljava/lang/Object;)Landroid/icu/impl/locale/XCldrStub$Multimap;

    move-result-object v6

    const-string v8, "BF"

    const-string v9, "BJ"

    const-string v10, "CI"

    const-string v11, "CV"

    const-string v12, "GH"

    const-string v13, "GM"

    const-string v14, "GN"

    const-string v15, "GW"

    const-string v16, "LR"

    const-string v17, "ML"

    const-string v18, "MR"

    const-string v19, "NE"

    const-string v20, "NG"

    const-string v21, "SH"

    const-string v22, "SL"

    const-string v23, "SN"

    const-string v24, "TG"

    filled-new-array/range {v8 .. v24}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "011"

    .line 115
    invoke-virtual {v6, v9, v8}, Landroid/icu/impl/locale/XCldrStub$Multimap;->putAll(Ljava/lang/Object;[Ljava/lang/Object;)Landroid/icu/impl/locale/XCldrStub$Multimap;

    move-result-object v6

    const-string v10, "BZ"

    const-string v11, "CR"

    const-string v12, "GT"

    const-string v13, "HN"

    const-string v14, "MX"

    const-string v15, "NI"

    const-string v16, "PA"

    const-string v17, "SV"

    filled-new-array/range {v10 .. v17}, [Ljava/lang/String;

    move-result-object v8

    const-string v10, "013"

    .line 116
    invoke-virtual {v6, v10, v8}, Landroid/icu/impl/locale/XCldrStub$Multimap;->putAll(Ljava/lang/Object;[Ljava/lang/Object;)Landroid/icu/impl/locale/XCldrStub$Multimap;

    move-result-object v6

    const-string v11, "BI"

    const-string v12, "DJ"

    const-string v13, "ER"

    const-string v14, "ET"

    const-string v15, "KE"

    const-string v16, "KM"

    const-string v17, "MG"

    const-string v18, "MU"

    const-string v19, "MW"

    const-string v20, "MZ"

    const-string v21, "RE"

    const-string v22, "RW"

    const-string v23, "SC"

    const-string v24, "SO"

    const-string v25, "SS"

    const-string v26, "TZ"

    const-string v27, "UG"

    const-string v28, "YT"

    const-string v29, "ZM"

    const-string v30, "ZW"

    filled-new-array/range {v11 .. v30}, [Ljava/lang/String;

    move-result-object v8

    const-string v11, "014"

    .line 117
    invoke-virtual {v6, v11, v8}, Landroid/icu/impl/locale/XCldrStub$Multimap;->putAll(Ljava/lang/Object;[Ljava/lang/Object;)Landroid/icu/impl/locale/XCldrStub$Multimap;

    move-result-object v6

    const-string v8, "035"

    const-string v12, "034"

    const-string v13, "030"

    const-string v14, "143"

    const-string v15, "145"

    move-object/from16 v16, v0

    filled-new-array {v15, v14, v13, v12, v8}, [Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-virtual {v6, v2, v0}, Landroid/icu/impl/locale/XCldrStub$Multimap;->putAll(Ljava/lang/Object;[Ljava/lang/Object;)Landroid/icu/impl/locale/XCldrStub$Multimap;

    move-result-object v0

    const-string v2, "TM"

    const-string v6, "TJ"

    move-object/from16 v17, v7

    const-string v7, "KG"

    move-object/from16 v18, v1

    const-string v1, "KZ"

    move-object/from16 v19, v12

    const-string v12, "UZ"

    filled-new-array {v2, v6, v7, v1, v12}, [Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-virtual {v0, v14, v1}, Landroid/icu/impl/locale/XCldrStub$Multimap;->putAll(Ljava/lang/Object;[Ljava/lang/Object;)Landroid/icu/impl/locale/XCldrStub$Multimap;

    move-result-object v0

    const-string v20, "AE"

    const-string v21, "AM"

    const-string v22, "AZ"

    const-string v23, "BH"

    const-string v24, "CY"

    const-string v25, "GE"

    const-string v26, "IL"

    const-string v27, "IQ"

    const-string v28, "JO"

    const-string v29, "KW"

    const-string v30, "LB"

    const-string v31, "OM"

    const-string v32, "PS"

    const-string v33, "QA"

    const-string v34, "SA"

    const-string v35, "SY"

    const-string v36, "TR"

    const-string v37, "YE"

    const-string v38, "NT"

    const-string v39, "YD"

    filled-new-array/range {v20 .. v39}, [Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-virtual {v0, v15, v1}, Landroid/icu/impl/locale/XCldrStub$Multimap;->putAll(Ljava/lang/Object;[Ljava/lang/Object;)Landroid/icu/impl/locale/XCldrStub$Multimap;

    move-result-object v0

    const-string v20, "DZ"

    const-string v21, "EG"

    const-string v22, "EH"

    const-string v23, "LY"

    const-string v24, "MA"

    const-string v25, "SD"

    const-string v26, "TN"

    const-string v27, "EA"

    const-string v28, "IC"

    filled-new-array/range {v20 .. v28}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "015"

    .line 121
    invoke-virtual {v0, v2, v1}, Landroid/icu/impl/locale/XCldrStub$Multimap;->putAll(Ljava/lang/Object;[Ljava/lang/Object;)Landroid/icu/impl/locale/XCldrStub$Multimap;

    move-result-object v0

    const-string v1, "154"

    const-string v2, "155"

    const-string v6, "151"

    const-string v7, "039"

    filled-new-array {v1, v2, v6, v7}, [Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-virtual {v0, v3, v1}, Landroid/icu/impl/locale/XCldrStub$Multimap;->putAll(Ljava/lang/Object;[Ljava/lang/Object;)Landroid/icu/impl/locale/XCldrStub$Multimap;

    move-result-object v0

    const-string v20, "BG"

    const-string v21, "BY"

    const-string v22, "CZ"

    const-string v23, "HU"

    const-string v24, "MD"

    const-string v25, "PL"

    const-string v26, "RO"

    const-string v27, "RU"

    const-string v28, "SK"

    const-string v29, "UA"

    const-string v30, "SU"

    filled-new-array/range {v20 .. v30}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "151"

    .line 123
    invoke-virtual {v0, v2, v1}, Landroid/icu/impl/locale/XCldrStub$Multimap;->putAll(Ljava/lang/Object;[Ljava/lang/Object;)Landroid/icu/impl/locale/XCldrStub$Multimap;

    move-result-object v0

    const-string v20, "GG"

    const-string v21, "IM"

    const-string v22, "JE"

    const-string v23, "AX"

    const-string v24, "DK"

    const-string v25, "EE"

    const-string v26, "FI"

    const-string v27, "FO"

    const-string v28, "GB"

    const-string v29, "IE"

    const-string v30, "IS"

    const-string v31, "LT"

    const-string v32, "LV"

    const-string v33, "NO"

    const-string v34, "SE"

    const-string v35, "SJ"

    filled-new-array/range {v20 .. v35}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "154"

    .line 124
    invoke-virtual {v0, v2, v1}, Landroid/icu/impl/locale/XCldrStub$Multimap;->putAll(Ljava/lang/Object;[Ljava/lang/Object;)Landroid/icu/impl/locale/XCldrStub$Multimap;

    move-result-object v0

    const-string v20, "AT"

    const-string v21, "BE"

    const-string v22, "CH"

    const-string v23, "DE"

    const-string v24, "FR"

    const-string v25, "LI"

    const-string v26, "LU"

    const-string v27, "MC"

    const-string v28, "NL"

    const-string v29, "DD"

    const-string v30, "FX"

    filled-new-array/range {v20 .. v30}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "155"

    .line 125
    invoke-virtual {v0, v2, v1}, Landroid/icu/impl/locale/XCldrStub$Multimap;->putAll(Ljava/lang/Object;[Ljava/lang/Object;)Landroid/icu/impl/locale/XCldrStub$Multimap;

    move-result-object v0

    const-string v20, "AO"

    const-string v21, "CD"

    const-string v22, "CF"

    const-string v23, "CG"

    const-string v24, "CM"

    const-string v25, "GA"

    const-string v26, "GQ"

    const-string v27, "ST"

    const-string v28, "TD"

    const-string v29, "ZR"

    filled-new-array/range {v20 .. v29}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "017"

    .line 126
    invoke-virtual {v0, v2, v1}, Landroid/icu/impl/locale/XCldrStub$Multimap;->putAll(Ljava/lang/Object;[Ljava/lang/Object;)Landroid/icu/impl/locale/XCldrStub$Multimap;

    move-result-object v0

    const-string v1, "BW"

    const-string v2, "LS"

    const-string v3, "NA"

    const-string v6, "SZ"

    const-string v7, "ZA"

    filled-new-array {v1, v2, v3, v6, v7}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "018"

    .line 127
    invoke-virtual {v0, v2, v1}, Landroid/icu/impl/locale/XCldrStub$Multimap;->putAll(Ljava/lang/Object;[Ljava/lang/Object;)Landroid/icu/impl/locale/XCldrStub$Multimap;

    move-result-object v0

    const-string v20, "021"

    const-string v21, "013"

    const-string v22, "029"

    const-string v23, "005"

    const-string v24, "003"

    const-string v25, "419"

    filled-new-array/range {v20 .. v25}, [Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-virtual {v0, v5, v1}, Landroid/icu/impl/locale/XCldrStub$Multimap;->putAll(Ljava/lang/Object;[Ljava/lang/Object;)Landroid/icu/impl/locale/XCldrStub$Multimap;

    move-result-object v0

    const-string v1, "015"

    const-string v2, "017"

    const-string v3, "018"

    filled-new-array {v1, v9, v2, v11, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-virtual {v0, v4, v1}, Landroid/icu/impl/locale/XCldrStub$Multimap;->putAll(Ljava/lang/Object;[Ljava/lang/Object;)Landroid/icu/impl/locale/XCldrStub$Multimap;

    move-result-object v0

    const-string v1, "BM"

    const-string v2, "CA"

    const-string v3, "GL"

    const-string v4, "PM"

    const-string v5, "US"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "021"

    .line 130
    invoke-virtual {v0, v2, v1}, Landroid/icu/impl/locale/XCldrStub$Multimap;->putAll(Ljava/lang/Object;[Ljava/lang/Object;)Landroid/icu/impl/locale/XCldrStub$Multimap;

    move-result-object v0

    const-string v20, "AG"

    const-string v21, "AI"

    const-string v22, "AW"

    const-string v23, "BB"

    const-string v24, "BL"

    const-string v25, "BQ"

    const-string v26, "BS"

    const-string v27, "CU"

    const-string v28, "CW"

    const-string v29, "DM"

    const-string v30, "DO"

    const-string v31, "GD"

    const-string v32, "GP"

    const-string v33, "HT"

    const-string v34, "JM"

    const-string v35, "KN"

    const-string v36, "KY"

    const-string v37, "LC"

    const-string v38, "MF"

    const-string v39, "MQ"

    const-string v40, "MS"

    const-string v41, "PR"

    const-string v42, "SX"

    const-string v43, "TC"

    const-string v44, "TT"

    const-string v45, "VC"

    const-string v46, "VG"

    const-string v47, "VI"

    const-string v48, "AN"

    filled-new-array/range {v20 .. v48}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "029"

    .line 131
    invoke-virtual {v0, v2, v1}, Landroid/icu/impl/locale/XCldrStub$Multimap;->putAll(Ljava/lang/Object;[Ljava/lang/Object;)Landroid/icu/impl/locale/XCldrStub$Multimap;

    move-result-object v0

    const-string v1, "021"

    filled-new-array {v1, v10, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v3, "003"

    .line 132
    invoke-virtual {v0, v3, v1}, Landroid/icu/impl/locale/XCldrStub$Multimap;->putAll(Ljava/lang/Object;[Ljava/lang/Object;)Landroid/icu/impl/locale/XCldrStub$Multimap;

    move-result-object v0

    const-string v20, "CN"

    const-string v21, "HK"

    const-string v22, "JP"

    const-string v23, "KP"

    const-string v24, "KR"

    const-string v25, "MN"

    const-string v26, "MO"

    const-string v27, "TW"

    filled-new-array/range {v20 .. v27}, [Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-virtual {v0, v13, v1}, Landroid/icu/impl/locale/XCldrStub$Multimap;->putAll(Ljava/lang/Object;[Ljava/lang/Object;)Landroid/icu/impl/locale/XCldrStub$Multimap;

    move-result-object v0

    const-string v20, "BN"

    const-string v21, "ID"

    const-string v22, "KH"

    const-string v23, "LA"

    const-string v24, "MM"

    const-string v25, "MY"

    const-string v26, "PH"

    const-string v27, "SG"

    const-string v28, "TH"

    const-string v29, "TL"

    const-string v30, "VN"

    const-string v31, "BU"

    const-string v32, "TP"

    filled-new-array/range {v20 .. v32}, [Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-virtual {v0, v8, v1}, Landroid/icu/impl/locale/XCldrStub$Multimap;->putAll(Ljava/lang/Object;[Ljava/lang/Object;)Landroid/icu/impl/locale/XCldrStub$Multimap;

    move-result-object v0

    const-string v20, "AD"

    const-string v21, "AL"

    const-string v22, "BA"

    const-string v23, "ES"

    const-string v24, "GI"

    const-string v25, "GR"

    const-string v26, "HR"

    const-string v27, "IT"

    const-string v28, "ME"

    const-string v29, "MK"

    const-string v30, "MT"

    const-string v31, "RS"

    const-string v32, "PT"

    const-string v33, "SI"

    const-string v34, "SM"

    const-string v35, "VA"

    const-string v36, "XK"

    const-string v37, "CS"

    const-string v38, "YU"

    filled-new-array/range {v20 .. v38}, [Ljava/lang/String;

    move-result-object v1

    const-string v3, "039"

    .line 135
    invoke-virtual {v0, v3, v1}, Landroid/icu/impl/locale/XCldrStub$Multimap;->putAll(Ljava/lang/Object;[Ljava/lang/Object;)Landroid/icu/impl/locale/XCldrStub$Multimap;

    move-result-object v0

    const-string v1, "005"

    filled-new-array {v10, v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "419"

    .line 136
    invoke-virtual {v0, v2, v1}, Landroid/icu/impl/locale/XCldrStub$Multimap;->putAll(Ljava/lang/Object;[Ljava/lang/Object;)Landroid/icu/impl/locale/XCldrStub$Multimap;

    move-result-object v0

    const-string v1, "AR"

    const-string v2, "BO"

    const-string v3, "BR"

    const-string v4, "CL"

    const-string v5, "CO"

    const-string v6, "EC"

    const-string v7, "FK"

    const-string v8, "GF"

    const-string v9, "GY"

    const-string v10, "PE"

    const-string v11, "PY"

    const-string v12, "SR"

    const-string v13, "UY"

    const-string v14, "VE"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "005"

    .line 137
    invoke-virtual {v0, v2, v1}, Landroid/icu/impl/locale/XCldrStub$Multimap;->putAll(Ljava/lang/Object;[Ljava/lang/Object;)Landroid/icu/impl/locale/XCldrStub$Multimap;

    move-result-object v0

    const-string v1, "AU"

    const-string v2, "NF"

    const-string v3, "NZ"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "053"

    .line 138
    invoke-virtual {v0, v2, v1}, Landroid/icu/impl/locale/XCldrStub$Multimap;->putAll(Ljava/lang/Object;[Ljava/lang/Object;)Landroid/icu/impl/locale/XCldrStub$Multimap;

    move-result-object v0

    const-string v1, "FJ"

    const-string v2, "NC"

    const-string v3, "PG"

    const-string v4, "SB"

    const-string v5, "VU"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "054"

    .line 139
    invoke-virtual {v0, v2, v1}, Landroid/icu/impl/locale/XCldrStub$Multimap;->putAll(Ljava/lang/Object;[Ljava/lang/Object;)Landroid/icu/impl/locale/XCldrStub$Multimap;

    move-result-object v0

    const-string v1, "FM"

    const-string v2, "GU"

    const-string v3, "KI"

    const-string v4, "MH"

    const-string v5, "MP"

    const-string v6, "NR"

    const-string v7, "PW"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "057"

    .line 140
    invoke-virtual {v0, v2, v1}, Landroid/icu/impl/locale/XCldrStub$Multimap;->putAll(Ljava/lang/Object;[Ljava/lang/Object;)Landroid/icu/impl/locale/XCldrStub$Multimap;

    move-result-object v0

    const-string v1, "AS"

    const-string v2, "CK"

    const-string v3, "NU"

    const-string v4, "PF"

    const-string v5, "PN"

    const-string v6, "TK"

    const-string v7, "TO"

    const-string v8, "TV"

    const-string v9, "WF"

    const-string v10, "WS"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "061"

    .line 141
    invoke-virtual {v0, v2, v1}, Landroid/icu/impl/locale/XCldrStub$Multimap;->putAll(Ljava/lang/Object;[Ljava/lang/Object;)Landroid/icu/impl/locale/XCldrStub$Multimap;

    move-result-object v0

    const-string v1, "AF"

    const-string v2, "BD"

    const-string v3, "BT"

    const-string v4, "IN"

    const-string v5, "IR"

    const-string v6, "LK"

    const-string v7, "MV"

    const-string v8, "NP"

    const-string v9, "PK"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v19

    .line 142
    invoke-virtual {v0, v2, v1}, Landroid/icu/impl/locale/XCldrStub$Multimap;->putAll(Ljava/lang/Object;[Ljava/lang/Object;)Landroid/icu/impl/locale/XCldrStub$Multimap;

    move-result-object v0

    const-string v1, "053"

    const-string v2, "054"

    const-string v3, "057"

    const-string v4, "061"

    const-string v5, "QO"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v18

    .line 143
    invoke-virtual {v0, v2, v1}, Landroid/icu/impl/locale/XCldrStub$Multimap;->putAll(Ljava/lang/Object;[Ljava/lang/Object;)Landroid/icu/impl/locale/XCldrStub$Multimap;

    move-result-object v0

    const-string v1, "AQ"

    const-string v2, "BV"

    const-string v3, "CC"

    const-string v4, "CX"

    const-string v5, "GS"

    const-string v6, "HM"

    const-string v7, "IO"

    const-string v8, "TF"

    const-string v9, "UM"

    const-string v10, "AC"

    const-string v11, "CP"

    const-string v12, "DG"

    const-string v13, "TA"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "QO"

    .line 144
    invoke-virtual {v0, v2, v1}, Landroid/icu/impl/locale/XCldrStub$Multimap;->putAll(Ljava/lang/Object;[Ljava/lang/Object;)Landroid/icu/impl/locale/XCldrStub$Multimap;

    .line 158
    invoke-static {}, Landroid/icu/impl/locale/XCldrStub$TreeMultimap;->create()Landroid/icu/impl/locale/XCldrStub$TreeMultimap;

    move-result-object v0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    .line 159
    invoke-static {v2, v1, v0}, Landroid/icu/impl/locale/XLocaleDistance;->fill(Ljava/lang/String;Landroid/icu/impl/locale/XCldrStub$TreeMultimap;Landroid/icu/impl/locale/XCldrStub$Multimap;)Ljava/util/Set;

    .line 160
    invoke-static {v0}, Landroid/icu/impl/locale/XCldrStub$ImmutableMultimap;->copyOf(Landroid/icu/impl/locale/XCldrStub$Multimap;)Landroid/icu/impl/locale/XCldrStub$Multimap;

    move-result-object v0

    return-object v0
.end method

.method private static xGetLanguageMatcherData()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/icu/impl/Row$R4<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    invoke-static {}, Landroid/icu/util/LocaleMatcher;->getICUSupplementalData()Landroid/icu/impl/ICUResourceBundle;

    move-result-object v1

    const-string v2, "languageMatchingNew"

    .line 66
    invoke-virtual {v1, v2}, Landroid/icu/impl/ICUResourceBundle;->findTopLevel(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v1

    const-string/jumbo v2, "written"

    .line 67
    invoke-virtual {v1, v2}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    .line 69
    invoke-virtual {v1}, Landroid/icu/impl/ICUResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/ICUResourceBundle;

    .line 71
    invoke-virtual {v2}, Landroid/icu/impl/ICUResourceBundle;->getSize()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-le v3, v6, :cond_0

    invoke-virtual {v2, v6}, Landroid/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, "1"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_1

    :cond_0
    move v3, v5

    .line 75
    :goto_1
    invoke-virtual {v2, v5}, Landroid/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 76
    invoke-virtual {v2, v4}, Landroid/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    .line 77
    invoke-virtual {v2, v6}, Landroid/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 78
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 74
    invoke-static {v5, v4, v2, v3}, Landroid/icu/impl/Row;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/icu/impl/Row$R4;

    move-result-object v2

    .line 79
    invoke-virtual {v2}, Landroid/icu/impl/Row$R4;->freeze()Landroid/icu/impl/Row;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/Row$R4;

    .line 72
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static xGetMatchVariables()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 97
    invoke-static {}, Landroid/icu/util/LocaleMatcher;->getICUSupplementalData()Landroid/icu/impl/ICUResourceBundle;

    move-result-object v0

    const-string v1, "languageMatchingInfo"

    .line 98
    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->findTopLevel(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v0

    const-string/jumbo v1, "written"

    .line 99
    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    const-string v1, "matchVariable"

    .line 100
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    .line 103
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 104
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 106
    invoke-virtual {v0, v3}, Landroid/icu/impl/ICUResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 108
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static xGetParadigmLocales()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 86
    invoke-static {}, Landroid/icu/util/LocaleMatcher;->getICUSupplementalData()Landroid/icu/impl/ICUResourceBundle;

    move-result-object v0

    const-string v1, "languageMatchingInfo"

    .line 87
    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->findTopLevel(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v0

    const-string/jumbo v1, "written"

    .line 88
    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    const-string/jumbo v1, "paradigmLocales"

    .line 89
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    .line 91
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getStringArray()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 92
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public distance(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;ILandroid/icu/impl/locale/XLocaleDistance$DistanceOption;)I
    .locals 0

    .line 723
    invoke-static {p2}, Landroid/icu/impl/locale/XLikelySubtags$LSR;->fromMaximalized(Landroid/icu/util/ULocale;)Landroid/icu/impl/locale/XLikelySubtags$LSR;

    move-result-object p2

    .line 724
    invoke-static {p1}, Landroid/icu/impl/locale/XLikelySubtags$LSR;->fromMaximalized(Landroid/icu/util/ULocale;)Landroid/icu/impl/locale/XLikelySubtags$LSR;

    move-result-object p1

    .line 725
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/icu/impl/locale/XLocaleDistance;->distanceRaw(Landroid/icu/impl/locale/XLikelySubtags$LSR;Landroid/icu/impl/locale/XLikelySubtags$LSR;ILandroid/icu/impl/locale/XLocaleDistance$DistanceOption;)I

    move-result p0

    return p0
.end method

.method public distanceRaw(Landroid/icu/impl/locale/XLikelySubtags$LSR;Landroid/icu/impl/locale/XLikelySubtags$LSR;ILandroid/icu/impl/locale/XLocaleDistance$DistanceOption;)I
    .locals 9

    .line 733
    iget-object v1, p1, Landroid/icu/impl/locale/XLikelySubtags$LSR;->language:Ljava/lang/String;

    iget-object v2, p2, Landroid/icu/impl/locale/XLikelySubtags$LSR;->language:Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/impl/locale/XLikelySubtags$LSR;->script:Ljava/lang/String;

    iget-object v4, p2, Landroid/icu/impl/locale/XLikelySubtags$LSR;->script:Ljava/lang/String;

    iget-object v5, p1, Landroid/icu/impl/locale/XLikelySubtags$LSR;->region:Ljava/lang/String;

    iget-object v6, p2, Landroid/icu/impl/locale/XLikelySubtags$LSR;->region:Ljava/lang/String;

    move-object v0, p0

    move v7, p3

    move-object v8, p4

    invoke-virtual/range {v0 .. v8}, Landroid/icu/impl/locale/XLocaleDistance;->distanceRaw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/icu/impl/locale/XLocaleDistance$DistanceOption;)I

    move-result p0

    return p0
.end method

.method public distanceRaw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/icu/impl/locale/XLocaleDistance$DistanceOption;)I
    .locals 4

    .line 752
    new-instance v0, Landroid/icu/util/Output;

    invoke-direct {v0}, Landroid/icu/util/Output;-><init>()V

    .line 754
    iget-object v1, p0, Landroid/icu/impl/locale/XLocaleDistance;->languageDesired2Supported:Landroid/icu/impl/locale/XLocaleDistance$DistanceTable;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, v0, v2}, Landroid/icu/impl/locale/XLocaleDistance$DistanceTable;->getDistance(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Output;Z)I

    move-result p1

    .line 755
    sget-object p2, Landroid/icu/impl/locale/XLocaleDistance$DistanceOption;->SCRIPT_FIRST:Landroid/icu/impl/locale/XLocaleDistance$DistanceOption;

    const/4 v1, 0x0

    if-ne p8, p2, :cond_0

    move p2, v2

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    if-eqz p2, :cond_1

    shr-int/lit8 p1, p1, 0x2

    :cond_1
    const/16 p8, 0x64

    if-gez p1, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    if-lt p1, p7, :cond_3

    return p8

    .line 765
    :cond_3
    :goto_1
    iget-object v3, v0, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v3, Landroid/icu/impl/locale/XLocaleDistance$DistanceTable;

    invoke-virtual {v3, p3, p4, v0, v2}, Landroid/icu/impl/locale/XLocaleDistance$DistanceTable;->getDistance(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Output;Z)I

    move-result p3

    if-eqz p2, :cond_4

    shr-int/lit8 p3, p3, 0x1

    :cond_4
    add-int/2addr p1, p3

    if-lt p1, p7, :cond_5

    return p8

    .line 774
    :cond_5
    invoke-virtual {p5, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    return p1

    .line 780
    :cond_6
    iget-object p2, p0, Landroid/icu/impl/locale/XLocaleDistance;->regionMapper:Landroid/icu/impl/locale/XLocaleDistance$RegionMapper;

    invoke-virtual {p2, p5}, Landroid/icu/impl/locale/XLocaleDistance$RegionMapper;->toId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 781
    iget-object p3, p0, Landroid/icu/impl/locale/XLocaleDistance;->regionMapper:Landroid/icu/impl/locale/XLocaleDistance$RegionMapper;

    invoke-virtual {p3, p6}, Landroid/icu/impl/locale/XLocaleDistance$RegionMapper;->toId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 787
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    const/4 v2, 0x0

    if-eqz p4, :cond_7

    iget-object p4, p0, Landroid/icu/impl/locale/XLocaleDistance;->regionMapper:Landroid/icu/impl/locale/XLocaleDistance$RegionMapper;

    iget-object p4, p4, Landroid/icu/impl/locale/XLocaleDistance$RegionMapper;->macroToPartitions:Landroid/icu/impl/locale/XCldrStub$Multimap;

    invoke-virtual {p4, p5}, Landroid/icu/impl/locale/XCldrStub$Multimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p4

    goto :goto_2

    :cond_7
    move-object p4, v2

    .line 788
    :goto_2
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p5

    if-eqz p5, :cond_8

    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleDistance;->regionMapper:Landroid/icu/impl/locale/XLocaleDistance$RegionMapper;

    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleDistance$RegionMapper;->macroToPartitions:Landroid/icu/impl/locale/XCldrStub$Multimap;

    invoke-virtual {p0, p6}, Landroid/icu/impl/locale/XCldrStub$Multimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    goto :goto_3

    :cond_8
    move-object p0, v2

    :goto_3
    if-nez p4, :cond_a

    if-eqz p0, :cond_9

    goto :goto_4

    .line 808
    :cond_9
    iget-object p0, v0, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    check-cast p0, Landroid/icu/impl/locale/XLocaleDistance$DistanceTable;

    invoke-virtual {p0, p2, p3, v2, v1}, Landroid/icu/impl/locale/XLocaleDistance$DistanceTable;->getDistance(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Output;Z)I

    move-result p0

    goto :goto_6

    :cond_a
    :goto_4
    if-nez p4, :cond_b

    .line 793
    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p4

    :cond_b
    if-nez p0, :cond_c

    .line 796
    invoke-static {p3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    .line 799
    :cond_c
    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move p3, v1

    :cond_d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 800
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_e
    :goto_5
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_d

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    .line 801
    iget-object v3, v0, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v3, Landroid/icu/impl/locale/XLocaleDistance$DistanceTable;

    invoke-virtual {v3, p4, p6, v2, v1}, Landroid/icu/impl/locale/XLocaleDistance$DistanceTable;->getDistance(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Output;Z)I

    move-result p6

    if-ge p3, p6, :cond_e

    move p3, p6

    goto :goto_5

    :cond_f
    move p0, p3

    :goto_6
    add-int/2addr p0, p1

    if-lt p0, p7, :cond_10

    move p0, p8

    :cond_10
    return p0
.end method

.method public getDefaultLanguageDistance()I
    .locals 0

    .line 1279
    iget p0, p0, Landroid/icu/impl/locale/XLocaleDistance;->defaultLanguageDistance:I

    return p0
.end method

.method public getDefaultRegionDistance()I
    .locals 0

    .line 1287
    iget p0, p0, Landroid/icu/impl/locale/XLocaleDistance;->defaultRegionDistance:I

    return p0
.end method

.method public getDefaultScriptDistance()I
    .locals 0

    .line 1283
    iget p0, p0, Landroid/icu/impl/locale/XLocaleDistance;->defaultScriptDistance:I

    return p0
.end method

.method public getParadigms()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation

    .line 1275
    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleDistance;->regionMapper:Landroid/icu/impl/locale/XLocaleDistance$RegionMapper;

    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleDistance$RegionMapper;->paradigms:Ljava/util/Set;

    return-object p0
.end method

.method public internalGetDistanceTable()Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1328
    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleDistance;->languageDesired2Supported:Landroid/icu/impl/locale/XLocaleDistance$DistanceTable;

    check-cast p0, Landroid/icu/impl/locale/XLocaleDistance$StringDistanceTable;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1035
    invoke-virtual {p0, v0}, Landroid/icu/impl/locale/XLocaleDistance;->toString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 2

    .line 1039
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/icu/impl/locale/XLocaleDistance;->regionMapper:Landroid/icu/impl/locale/XLocaleDistance$RegionMapper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleDistance;->languageDesired2Supported:Landroid/icu/impl/locale/XLocaleDistance$DistanceTable;

    invoke-virtual {p0, p1}, Landroid/icu/impl/locale/XLocaleDistance$DistanceTable;->toString(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
