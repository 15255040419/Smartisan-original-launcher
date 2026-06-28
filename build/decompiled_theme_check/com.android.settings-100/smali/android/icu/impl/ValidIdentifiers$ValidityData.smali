.class Landroid/icu/impl/ValidIdentifiers$ValidityData;
.super Ljava/lang/Object;
.source "ValidIdentifiers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ValidIdentifiers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValidityData"
.end annotation


# static fields
.field static final data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/icu/impl/ValidIdentifiers$Datatype;",
            "Ljava/util/Map<",
            "Landroid/icu/impl/ValidIdentifiers$Datasubtype;",
            "Landroid/icu/impl/ValidIdentifiers$ValiditySet;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 122
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Landroid/icu/impl/ValidIdentifiers$Datatype;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 123
    sget-object v1, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v2, "android/icu/impl/data/icudt60b"

    const-string/jumbo v3, "supplementalData"

    invoke-static {v2, v3, v1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    const-string v2, "idValidity"

    .line 127
    invoke-virtual {v1, v2}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    .line 128
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object v1

    .line 129
    :goto_0
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 130
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    move-result-object v2

    .line 131
    invoke-virtual {v2}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 132
    invoke-static {v3}, Landroid/icu/impl/ValidIdentifiers$Datatype;->valueOf(Ljava/lang/String;)Landroid/icu/impl/ValidIdentifiers$Datatype;

    move-result-object v3

    .line 133
    new-instance v4, Ljava/util/EnumMap;

    const-class v5, Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    invoke-direct {v4, v5}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 134
    invoke-virtual {v2}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object v2

    .line 135
    :goto_1
    invoke-virtual {v2}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 136
    invoke-virtual {v2}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    move-result-object v5

    .line 137
    invoke-virtual {v5}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 138
    invoke-static {v6}, Landroid/icu/impl/ValidIdentifiers$Datasubtype;->valueOf(Ljava/lang/String;)Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    move-result-object v6

    .line 140
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 141
    invoke-virtual {v5}, Landroid/icu/util/UResourceBundle;->getType()I

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_0

    .line 142
    invoke-virtual {v5}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Landroid/icu/impl/ValidIdentifiers$ValidityData;->addRange(Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_3

    .line 144
    :cond_0
    invoke-virtual {v5}, Landroid/icu/util/UResourceBundle;->getStringArray()[Ljava/lang/String;

    move-result-object v5

    array-length v8, v5

    move v10, v9

    :goto_2
    if-ge v10, v8, :cond_1

    aget-object v11, v5, v10

    .line 145
    invoke-static {v11, v7}, Landroid/icu/impl/ValidIdentifiers$ValidityData;->addRange(Ljava/lang/String;Ljava/util/Set;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 148
    :cond_1
    :goto_3
    new-instance v5, Landroid/icu/impl/ValidIdentifiers$ValiditySet;

    sget-object v8, Landroid/icu/impl/ValidIdentifiers$Datatype;->subdivision:Landroid/icu/impl/ValidIdentifiers$Datatype;

    if-ne v3, v8, :cond_2

    const/4 v9, 0x1

    :cond_2
    invoke-direct {v5, v7, v9}, Landroid/icu/impl/ValidIdentifiers$ValiditySet;-><init>(Ljava/util/Set;Z)V

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 150
    :cond_3
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 152
    :cond_4
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/ValidIdentifiers$ValidityData;->data:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addRange(Ljava/lang/String;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 155
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x7e

    .line 156
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 158
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 160
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v1, p1}, Landroid/icu/impl/StringRange;->expand(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Collection;)Ljava/util/Collection;

    :goto_0
    return-void
.end method
