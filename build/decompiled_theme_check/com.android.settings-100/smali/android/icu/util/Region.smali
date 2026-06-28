.class public Landroid/icu/util/Region;
.super Ljava/lang/Object;
.source "Region.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/Region$RegionType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroid/icu/util/Region;",
        ">;"
    }
.end annotation


# static fields
.field private static final OUTLYING_OCEANIA_REGION_ID:Ljava/lang/String; = "QO"

.field private static final UNKNOWN_REGION_ID:Ljava/lang/String; = "ZZ"

.field private static final WORLD_ID:Ljava/lang/String; = "001"

.field private static availableRegions:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Set<",
            "Landroid/icu/util/Region;",
            ">;>;"
        }
    .end annotation
.end field

.field private static numericCodeMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/icu/util/Region;",
            ">;"
        }
    .end annotation
.end field

.field private static regionAliases:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/util/Region;",
            ">;"
        }
    .end annotation
.end field

.field private static regionDataIsLoaded:Z = false

.field private static regionIDMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/util/Region;",
            ">;"
        }
    .end annotation
.end field

.field private static regions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/icu/util/Region;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private code:I

.field private containedRegions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/icu/util/Region;",
            ">;"
        }
    .end annotation
.end field

.field private containingRegion:Landroid/icu/util/Region;

.field private id:Ljava/lang/String;

.field private preferredValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/util/Region;",
            ">;"
        }
    .end annotation
.end field

.field private type:Landroid/icu/util/Region$RegionType;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Landroid/icu/util/Region;->containingRegion:Landroid/icu/util/Region;

    .line 108
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    iput-object v1, p0, Landroid/icu/util/Region;->containedRegions:Ljava/util/Set;

    .line 109
    iput-object v0, p0, Landroid/icu/util/Region;->preferredValues:Ljava/util/List;

    return-void
.end method

.method public static getAvailable(Landroid/icu/util/Region$RegionType;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/Region$RegionType;",
            ")",
            "Ljava/util/Set<",
            "Landroid/icu/util/Region;",
            ">;"
        }
    .end annotation

    .line 433
    invoke-static {}, Landroid/icu/util/Region;->loadRegionData()V

    .line 434
    sget-object v0, Landroid/icu/util/Region;->availableRegions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/icu/util/Region$RegionType;->ordinal()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(I)Landroid/icu/util/Region;
    .locals 3

    .line 398
    invoke-static {}, Landroid/icu/util/Region;->loadRegionData()V

    .line 400
    sget-object v0, Landroid/icu/util/Region;->numericCodeMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Region;

    if-nez v0, :cond_2

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    const-string v0, "00"

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    if-ge p0, v0, :cond_1

    const-string v0, "0"

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 409
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 410
    sget-object v1, Landroid/icu/util/Region;->regionAliases:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Region;

    :cond_2
    if-eqz v0, :cond_4

    .line 417
    iget-object p0, v0, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    sget-object v1, Landroid/icu/util/Region$RegionType;->DEPRECATED:Landroid/icu/util/Region$RegionType;

    if-ne p0, v1, :cond_3

    iget-object p0, v0, Landroid/icu/util/Region;->preferredValues:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_3

    .line 418
    iget-object p0, v0, Landroid/icu/util/Region;->preferredValues:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/icu/util/Region;

    :cond_3
    return-object v0

    .line 414
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown region code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/String;)Landroid/icu/util/Region;
    .locals 3

    if-eqz p0, :cond_3

    .line 370
    invoke-static {}, Landroid/icu/util/Region;->loadRegionData()V

    .line 372
    sget-object v0, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Region;

    if-nez v0, :cond_0

    .line 375
    sget-object v0, Landroid/icu/util/Region;->regionAliases:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Region;

    :cond_0
    if-eqz v0, :cond_2

    .line 382
    iget-object p0, v0, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    sget-object v1, Landroid/icu/util/Region$RegionType;->DEPRECATED:Landroid/icu/util/Region$RegionType;

    if-ne p0, v1, :cond_1

    iget-object p0, v0, Landroid/icu/util/Region;->preferredValues:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 383
    iget-object p0, v0, Landroid/icu/util/Region;->preferredValues:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/icu/util/Region;

    :cond_1
    return-object v0

    .line 379
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown region id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method private static declared-synchronized loadRegionData()V
    .locals 14

    const-class v0, Landroid/icu/util/Region;

    monitor-enter v0

    .line 140
    :try_start_0
    sget-boolean v1, Landroid/icu/util/Region;->regionDataIsLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 141
    monitor-exit v0

    return-void

    .line 144
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/icu/util/Region;->regionAliases:Ljava/util/Map;

    .line 145
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    .line 146
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/icu/util/Region;->numericCodeMap:Ljava/util/Map;

    .line 148
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Landroid/icu/util/Region$RegionType;->values()[Landroid/icu/util/Region$RegionType;

    move-result-object v2

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v1, Landroid/icu/util/Region;->availableRegions:Ljava/util/ArrayList;

    const-string v1, "android/icu/impl/data/icudt60b"

    const-string v2, "metadata"

    .line 163
    sget-object v3, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v1, v2, v3}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    const-string v2, "alias"

    .line 164
    invoke-virtual {v1, v2}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    const-string/jumbo v2, "territory"

    .line 165
    invoke-virtual {v1, v2}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    const-string v2, "android/icu/impl/data/icudt60b"

    const-string/jumbo v3, "supplementalData"

    .line 167
    sget-object v4, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v2, v3, v4}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    const-string v3, "codeMappings"

    .line 168
    invoke-virtual {v2, v3}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v3

    const-string v4, "idValidity"

    .line 169
    invoke-virtual {v2, v4}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v4

    const-string/jumbo v5, "region"

    .line 170
    invoke-virtual {v4, v5}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v4

    const-string/jumbo v5, "regular"

    .line 171
    invoke-virtual {v4, v5}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v5

    const-string v6, "macroregion"

    .line 172
    invoke-virtual {v4, v6}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v6

    const-string/jumbo v7, "unknown"

    .line 173
    invoke-virtual {v4, v7}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v4

    const-string/jumbo v7, "territoryContainment"

    .line 175
    invoke-virtual {v2, v7}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    const-string v7, "001"

    .line 176
    invoke-virtual {v2, v7}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v7

    const-string v8, "grouping"

    .line 177
    invoke-virtual {v2, v8}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v8

    .line 179
    invoke-virtual {v7}, Landroid/icu/util/UResourceBundle;->getStringArray()[Ljava/lang/String;

    move-result-object v7

    .line 180
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 181
    invoke-virtual {v8}, Landroid/icu/util/UResourceBundle;->getStringArray()[Ljava/lang/String;

    move-result-object v8

    .line 182
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 183
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 185
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 186
    invoke-virtual {v5}, Landroid/icu/util/UResourceBundle;->getStringArray()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v10, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 187
    invoke-virtual {v6}, Landroid/icu/util/UResourceBundle;->getStringArray()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v10, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 188
    invoke-virtual {v4}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v6, "~"

    .line 191
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_2

    .line 193
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v6, 0x1

    .line 194
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    .line 195
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/lit8 v6, v6, -0x1

    .line 196
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v11

    :goto_1
    if-gt v11, v5, :cond_1

    .line 198
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 199
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    int-to-char v11, v11

    .line 201
    invoke-virtual {v10, v6, v11}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_1

    .line 204
    :cond_2
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 208
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v4, Landroid/icu/util/Region;->regions:Ljava/util/ArrayList;

    .line 211
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 212
    new-instance v9, Landroid/icu/util/Region;

    invoke-direct {v9}, Landroid/icu/util/Region;-><init>()V

    .line 213
    iput-object v5, v9, Landroid/icu/util/Region;->id:Ljava/lang/String;

    .line 214
    sget-object v10, Landroid/icu/util/Region$RegionType;->TERRITORY:Landroid/icu/util/Region$RegionType;

    iput-object v10, v9, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    .line 215
    sget-object v10, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v10, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "[0-9]{3}"

    .line 216
    invoke-virtual {v5, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 217
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v9, Landroid/icu/util/Region;->code:I

    .line 218
    sget-object v5, Landroid/icu/util/Region;->numericCodeMap:Ljava/util/Map;

    iget v6, v9, Landroid/icu/util/Region;->code:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v5, Landroid/icu/util/Region$RegionType;->SUBCONTINENT:Landroid/icu/util/Region$RegionType;

    iput-object v5, v9, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    goto :goto_3

    .line 221
    :cond_4
    iput v6, v9, Landroid/icu/util/Region;->code:I

    .line 223
    :goto_3
    sget-object v5, Landroid/icu/util/Region;->regions:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    move v5, v4

    .line 228
    :goto_4
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result v9

    if-ge v5, v9, :cond_b

    .line 229
    invoke-virtual {v1, v5}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v9

    .line 230
    invoke-virtual {v9}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "replacement"

    .line 231
    invoke-virtual {v9, v11}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v9

    .line 233
    sget-object v11, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v11, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    sget-object v11, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v11, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 234
    sget-object v11, Landroid/icu/util/Region;->regionAliases:Ljava/util/Map;

    sget-object v12, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v12, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/icu/util/Region;

    invoke-interface {v11, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 237
    :cond_6
    sget-object v11, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v11, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 238
    sget-object v11, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/icu/util/Region;

    goto :goto_6

    .line 240
    :cond_7
    new-instance v11, Landroid/icu/util/Region;

    invoke-direct {v11}, Landroid/icu/util/Region;-><init>()V

    .line 241
    iput-object v10, v11, Landroid/icu/util/Region;->id:Ljava/lang/String;

    .line 242
    sget-object v12, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v12, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "[0-9]{3}"

    .line 243
    invoke-virtual {v10, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 244
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v11, Landroid/icu/util/Region;->code:I

    .line 245
    sget-object v10, Landroid/icu/util/Region;->numericCodeMap:Ljava/util/Map;

    iget v12, v11, Landroid/icu/util/Region;->code:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 247
    :cond_8
    iput v6, v11, Landroid/icu/util/Region;->code:I

    .line 249
    :goto_5
    sget-object v10, Landroid/icu/util/Region;->regions:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v10, v11

    .line 251
    :goto_6
    sget-object v11, Landroid/icu/util/Region$RegionType;->DEPRECATED:Landroid/icu/util/Region$RegionType;

    iput-object v11, v10, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    const-string v11, " "

    .line 252
    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 253
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v10, Landroid/icu/util/Region;->preferredValues:Ljava/util/List;

    .line 254
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_9
    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 255
    sget-object v12, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v12, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 256
    iget-object v12, v10, Landroid/icu/util/Region;->preferredValues:Ljava/util/List;

    sget-object v13, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v13, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/icu/util/Region;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_a
    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    :cond_b
    move v1, v4

    .line 263
    :goto_9
    invoke-virtual {v3}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result v5

    const/4 v6, 0x1

    if-ge v1, v5, :cond_d

    .line 264
    invoke-virtual {v3, v1}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v5

    .line 265
    invoke-virtual {v5}, Landroid/icu/util/UResourceBundle;->getType()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_c

    .line 266
    invoke-virtual {v5}, Landroid/icu/util/UResourceBundle;->getStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 267
    aget-object v9, v5, v4

    .line 268
    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    const/4 v10, 0x2

    .line 269
    aget-object v5, v5, v10

    .line 271
    sget-object v10, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v10, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 272
    sget-object v10, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/icu/util/Region;

    .line 273
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v9, Landroid/icu/util/Region;->code:I

    .line 274
    sget-object v6, Landroid/icu/util/Region;->numericCodeMap:Ljava/util/Map;

    iget v10, v9, Landroid/icu/util/Region;->code:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v6, Landroid/icu/util/Region;->regionAliases:Ljava/util/Map;

    invoke-interface {v6, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 282
    :cond_d
    sget-object v1, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    const-string v3, "001"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 283
    sget-object v1, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    const-string v3, "001"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/Region;

    .line 284
    sget-object v3, Landroid/icu/util/Region$RegionType;->WORLD:Landroid/icu/util/Region$RegionType;

    iput-object v3, v1, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    .line 287
    :cond_e
    sget-object v1, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    const-string v3, "ZZ"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 288
    sget-object v1, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    const-string v3, "ZZ"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/Region;

    .line 289
    sget-object v3, Landroid/icu/util/Region$RegionType;->UNKNOWN:Landroid/icu/util/Region$RegionType;

    iput-object v3, v1, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    .line 292
    :cond_f
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 293
    sget-object v5, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 294
    sget-object v5, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/util/Region;

    .line 295
    sget-object v5, Landroid/icu/util/Region$RegionType;->CONTINENT:Landroid/icu/util/Region$RegionType;

    iput-object v5, v3, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    goto :goto_a

    .line 299
    :cond_11
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 300
    sget-object v5, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 301
    sget-object v5, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/util/Region;

    .line 302
    sget-object v5, Landroid/icu/util/Region$RegionType;->GROUPING:Landroid/icu/util/Region$RegionType;

    iput-object v5, v3, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    goto :goto_b

    .line 309
    :cond_13
    sget-object v1, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    const-string v3, "QO"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 310
    sget-object v1, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    const-string v3, "QO"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/Region;

    .line 311
    sget-object v3, Landroid/icu/util/Region$RegionType;->SUBCONTINENT:Landroid/icu/util/Region$RegionType;

    iput-object v3, v1, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    :cond_14
    move v1, v4

    .line 315
    :goto_c
    invoke-virtual {v2}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result v3

    if-ge v1, v3, :cond_18

    .line 316
    invoke-virtual {v2, v1}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v3

    .line 317
    invoke-virtual {v3}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v7, "containedGroupings"

    .line 318
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_17

    const-string v7, "deprecated"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    goto :goto_e

    .line 322
    :cond_15
    sget-object v7, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/util/Region;

    move v7, v4

    .line 323
    :goto_d
    invoke-virtual {v3}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result v8

    if-ge v7, v8, :cond_17

    .line 324
    invoke-virtual {v3, v7}, Landroid/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 325
    sget-object v9, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/icu/util/Region;

    if-eqz v5, :cond_16

    if-eqz v8, :cond_16

    .line 329
    iget-object v9, v5, Landroid/icu/util/Region;->containedRegions:Ljava/util/Set;

    invoke-interface {v9, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 334
    invoke-virtual {v5}, Landroid/icu/util/Region;->getType()Landroid/icu/util/Region$RegionType;

    move-result-object v9

    sget-object v10, Landroid/icu/util/Region$RegionType;->GROUPING:Landroid/icu/util/Region$RegionType;

    if-eq v9, v10, :cond_16

    .line 335
    iput-object v5, v8, Landroid/icu/util/Region;->containingRegion:Landroid/icu/util/Region;

    :cond_16
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_17
    :goto_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 343
    :cond_18
    :goto_f
    invoke-static {}, Landroid/icu/util/Region$RegionType;->values()[Landroid/icu/util/Region$RegionType;

    move-result-object v1

    array-length v1, v1

    if-ge v4, v1, :cond_19

    .line 344
    sget-object v1, Landroid/icu/util/Region;->availableRegions:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 347
    :cond_19
    sget-object v1, Landroid/icu/util/Region;->regions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/util/Region;

    .line 348
    sget-object v3, Landroid/icu/util/Region;->availableRegions:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    invoke-virtual {v4}, Landroid/icu/util/Region$RegionType;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 349
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 350
    sget-object v4, Landroid/icu/util/Region;->availableRegions:Ljava/util/ArrayList;

    iget-object v2, v2, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    invoke-virtual {v2}, Landroid/icu/util/Region$RegionType;->ordinal()I

    move-result v2

    invoke-virtual {v4, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 353
    :cond_1a
    sput-boolean v6, Landroid/icu/util/Region;->regionDataIsLoaded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public compareTo(Landroid/icu/util/Region;)I
    .locals 0

    .line 580
    iget-object p0, p0, Landroid/icu/util/Region;->id:Ljava/lang/String;

    iget-object p1, p1, Landroid/icu/util/Region;->id:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 62
    check-cast p1, Landroid/icu/util/Region;

    invoke-virtual {p0, p1}, Landroid/icu/util/Region;->compareTo(Landroid/icu/util/Region;)I

    move-result p0

    return p0
.end method

.method public contains(Landroid/icu/util/Region;)Z
    .locals 2

    .line 532
    invoke-static {}, Landroid/icu/util/Region;->loadRegionData()V

    .line 534
    iget-object v0, p0, Landroid/icu/util/Region;->containedRegions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 537
    :cond_0
    iget-object p0, p0, Landroid/icu/util/Region;->containedRegions:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Region;

    .line 538
    invoke-virtual {v0, p1}, Landroid/icu/util/Region;->contains(Landroid/icu/util/Region;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public getContainedRegions()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/icu/util/Region;",
            ">;"
        }
    .end annotation

    .line 481
    invoke-static {}, Landroid/icu/util/Region;->loadRegionData()V

    .line 482
    iget-object p0, p0, Landroid/icu/util/Region;->containedRegions:Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getContainedRegions(Landroid/icu/util/Region$RegionType;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/Region$RegionType;",
            ")",
            "Ljava/util/Set<",
            "Landroid/icu/util/Region;",
            ">;"
        }
    .end annotation

    .line 496
    invoke-static {}, Landroid/icu/util/Region;->loadRegionData()V

    .line 498
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 499
    invoke-virtual {p0}, Landroid/icu/util/Region;->getContainedRegions()Ljava/util/Set;

    move-result-object p0

    .line 501
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/Region;

    .line 502
    invoke-virtual {v1}, Landroid/icu/util/Region;->getType()Landroid/icu/util/Region$RegionType;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 503
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 505
    :cond_0
    invoke-virtual {v1, p1}, Landroid/icu/util/Region;->getContainedRegions(Landroid/icu/util/Region$RegionType;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 508
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getContainingRegion()Landroid/icu/util/Region;
    .locals 0

    .line 446
    invoke-static {}, Landroid/icu/util/Region;->loadRegionData()V

    .line 447
    iget-object p0, p0, Landroid/icu/util/Region;->containingRegion:Landroid/icu/util/Region;

    return-object p0
.end method

.method public getContainingRegion(Landroid/icu/util/Region$RegionType;)Landroid/icu/util/Region;
    .locals 1

    .line 458
    invoke-static {}, Landroid/icu/util/Region;->loadRegionData()V

    .line 459
    iget-object v0, p0, Landroid/icu/util/Region;->containingRegion:Landroid/icu/util/Region;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 462
    :cond_0
    iget-object v0, v0, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    invoke-virtual {v0, p1}, Landroid/icu/util/Region$RegionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 463
    iget-object p0, p0, Landroid/icu/util/Region;->containingRegion:Landroid/icu/util/Region;

    return-object p0

    .line 465
    :cond_1
    iget-object p0, p0, Landroid/icu/util/Region;->containingRegion:Landroid/icu/util/Region;

    invoke-virtual {p0, p1}, Landroid/icu/util/Region;->getContainingRegion(Landroid/icu/util/Region$RegionType;)Landroid/icu/util/Region;

    move-result-object p0

    return-object p0
.end method

.method public getNumericCode()I
    .locals 0

    .line 564
    iget p0, p0, Landroid/icu/util/Region;->code:I

    return p0
.end method

.method public getPreferredValues()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/icu/util/Region;",
            ">;"
        }
    .end annotation

    .line 518
    invoke-static {}, Landroid/icu/util/Region;->loadRegionData()V

    .line 520
    iget-object v0, p0, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    sget-object v1, Landroid/icu/util/Region$RegionType;->DEPRECATED:Landroid/icu/util/Region$RegionType;

    if-ne v0, v1, :cond_0

    .line 521
    iget-object p0, p0, Landroid/icu/util/Region;->preferredValues:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getType()Landroid/icu/util/Region$RegionType;
    .locals 0

    .line 573
    iget-object p0, p0, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 553
    iget-object p0, p0, Landroid/icu/util/Region;->id:Ljava/lang/String;

    return-object p0
.end method
