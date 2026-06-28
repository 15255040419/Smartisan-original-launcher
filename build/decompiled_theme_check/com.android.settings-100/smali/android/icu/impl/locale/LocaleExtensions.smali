.class public Landroid/icu/impl/locale/LocaleExtensions;
.super Ljava/lang/Object;
.source "LocaleExtensions.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final CALENDAR_JAPANESE:Landroid/icu/impl/locale/LocaleExtensions;

.field public static final EMPTY_EXTENSIONS:Landroid/icu/impl/locale/LocaleExtensions;

.field private static final EMPTY_MAP:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Character;",
            "Landroid/icu/impl/locale/Extension;",
            ">;"
        }
    .end annotation
.end field

.field public static final NUMBER_THAI:Landroid/icu/impl/locale/LocaleExtensions;


# instance fields
.field private _id:Ljava/lang/String;

.field private _map:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Character;",
            "Landroid/icu/impl/locale/Extension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 32
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 33
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/locale/LocaleExtensions;->EMPTY_MAP:Ljava/util/SortedMap;

    .line 40
    new-instance v0, Landroid/icu/impl/locale/LocaleExtensions;

    invoke-direct {v0}, Landroid/icu/impl/locale/LocaleExtensions;-><init>()V

    sput-object v0, Landroid/icu/impl/locale/LocaleExtensions;->EMPTY_EXTENSIONS:Landroid/icu/impl/locale/LocaleExtensions;

    .line 41
    sget-object v0, Landroid/icu/impl/locale/LocaleExtensions;->EMPTY_EXTENSIONS:Landroid/icu/impl/locale/LocaleExtensions;

    const-string v1, ""

    iput-object v1, v0, Landroid/icu/impl/locale/LocaleExtensions;->_id:Ljava/lang/String;

    .line 42
    sget-object v1, Landroid/icu/impl/locale/LocaleExtensions;->EMPTY_MAP:Ljava/util/SortedMap;

    iput-object v1, v0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    .line 44
    new-instance v0, Landroid/icu/impl/locale/LocaleExtensions;

    invoke-direct {v0}, Landroid/icu/impl/locale/LocaleExtensions;-><init>()V

    sput-object v0, Landroid/icu/impl/locale/LocaleExtensions;->CALENDAR_JAPANESE:Landroid/icu/impl/locale/LocaleExtensions;

    .line 45
    sget-object v0, Landroid/icu/impl/locale/LocaleExtensions;->CALENDAR_JAPANESE:Landroid/icu/impl/locale/LocaleExtensions;

    const-string/jumbo v1, "u-ca-japanese"

    iput-object v1, v0, Landroid/icu/impl/locale/LocaleExtensions;->_id:Ljava/lang/String;

    .line 46
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, v0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    .line 47
    sget-object v0, Landroid/icu/impl/locale/LocaleExtensions;->CALENDAR_JAPANESE:Landroid/icu/impl/locale/LocaleExtensions;

    iget-object v0, v0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    const/16 v1, 0x75

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    sget-object v3, Landroid/icu/impl/locale/UnicodeLocaleExtension;->CA_JAPANESE:Landroid/icu/impl/locale/UnicodeLocaleExtension;

    invoke-interface {v0, v2, v3}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance v0, Landroid/icu/impl/locale/LocaleExtensions;

    invoke-direct {v0}, Landroid/icu/impl/locale/LocaleExtensions;-><init>()V

    sput-object v0, Landroid/icu/impl/locale/LocaleExtensions;->NUMBER_THAI:Landroid/icu/impl/locale/LocaleExtensions;

    .line 50
    sget-object v0, Landroid/icu/impl/locale/LocaleExtensions;->NUMBER_THAI:Landroid/icu/impl/locale/LocaleExtensions;

    const-string/jumbo v2, "u-nu-thai"

    iput-object v2, v0, Landroid/icu/impl/locale/LocaleExtensions;->_id:Ljava/lang/String;

    .line 51
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    iput-object v2, v0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    .line 52
    sget-object v0, Landroid/icu/impl/locale/LocaleExtensions;->NUMBER_THAI:Landroid/icu/impl/locale/LocaleExtensions;

    iget-object v0, v0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Landroid/icu/impl/locale/UnicodeLocaleExtension;->NU_THAI:Landroid/icu/impl/locale/UnicodeLocaleExtension;

    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;",
            ">;",
            "Ljava/util/Map<",
            "Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 63
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz p2, :cond_1

    .line 64
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-eqz p3, :cond_2

    .line 65
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    const-string v1, ""

    if-nez v2, :cond_3

    if-nez v3, :cond_3

    if-nez v0, :cond_3

    .line 68
    sget-object p1, Landroid/icu/impl/locale/LocaleExtensions;->EMPTY_MAP:Ljava/util/SortedMap;

    iput-object p1, p0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    .line 69
    iput-object v1, p0, Landroid/icu/impl/locale/LocaleExtensions;->_id:Ljava/lang/String;

    return-void

    .line 74
    :cond_3
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    iput-object v4, p0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    if-eqz v2, :cond_5

    .line 76
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 77
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    invoke-virtual {v4}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;->value()C

    move-result v4

    invoke-static {v4}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    move-result v4

    .line 78
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 80
    invoke-static {v4}, Landroid/icu/impl/locale/LanguageTag;->isPrivateusePrefixChar(C)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 82
    invoke-static {v2}, Landroid/icu/impl/locale/InternalLocaleBuilder;->removePrivateuseVariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_3

    .line 88
    :cond_4
    new-instance v5, Landroid/icu/impl/locale/Extension;

    invoke-static {v2}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v4, v2}, Landroid/icu/impl/locale/Extension;-><init>(CLjava/lang/String;)V

    .line 89
    iget-object v2, p0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v2, v4, v5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    if-nez v3, :cond_6

    if-eqz v0, :cond_a

    :cond_6
    const/4 p1, 0x0

    if-eqz v3, :cond_7

    .line 98
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 99
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;

    .line 100
    invoke-virtual {v3}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;->value()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    move-object v2, p1

    :cond_8
    if-eqz v0, :cond_9

    .line 105
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    .line 106
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 107
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;

    invoke-virtual {v0}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;->value()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 109
    invoke-virtual {p1, v0, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 113
    :cond_9
    new-instance p2, Landroid/icu/impl/locale/UnicodeLocaleExtension;

    invoke-direct {p2, v2, p1}, Landroid/icu/impl/locale/UnicodeLocaleExtension;-><init>(Ljava/util/SortedSet;Ljava/util/SortedMap;)V

    .line 114
    iget-object p1, p0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    const/16 p3, 0x75

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p3

    invoke-interface {p1, p3, p2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_a
    iget-object p1, p0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    invoke-interface {p1}, Ljava/util/SortedMap;->size()I

    move-result p1

    if-nez p1, :cond_b

    .line 119
    sget-object p1, Landroid/icu/impl/locale/LocaleExtensions;->EMPTY_MAP:Ljava/util/SortedMap;

    iput-object p1, p0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    .line 120
    iput-object v1, p0, Landroid/icu/impl/locale/LocaleExtensions;->_id:Ljava/lang/String;

    goto :goto_6

    .line 122
    :cond_b
    iget-object p1, p0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    invoke-static {p1}, Landroid/icu/impl/locale/LocaleExtensions;->toID(Ljava/util/SortedMap;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/locale/LocaleExtensions;->_id:Ljava/lang/String;

    :goto_6
    return-void
.end method

.method public static isValidKey(C)Z
    .locals 1

    .line 174
    invoke-static {p0}, Landroid/icu/impl/locale/LanguageTag;->isExtensionSingletonChar(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/icu/impl/locale/LanguageTag;->isPrivateusePrefixChar(C)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isValidUnicodeLocaleKey(Ljava/lang/String;)Z
    .locals 0

    .line 178
    invoke-static {p0}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->isKey(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static toID(Ljava/util/SortedMap;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "Ljava/lang/Character;",
            "Landroid/icu/impl/locale/Extension;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    invoke-interface {p0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "-"

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 185
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Character;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    .line 186
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/locale/Extension;

    .line 187
    invoke-static {v4}, Landroid/icu/impl/locale/LanguageTag;->isPrivateusePrefixChar(C)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 190
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 191
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_4

    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_3

    .line 198
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 202
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 225
    :cond_0
    instance-of v0, p1, Landroid/icu/impl/locale/LocaleExtensions;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 228
    :cond_1
    iget-object p0, p0, Landroid/icu/impl/locale/LocaleExtensions;->_id:Ljava/lang/String;

    check-cast p1, Landroid/icu/impl/locale/LocaleExtensions;

    iget-object p1, p1, Landroid/icu/impl/locale/LocaleExtensions;->_id:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getExtension(Ljava/lang/Character;)Landroid/icu/impl/locale/Extension;
    .locals 0

    .line 131
    iget-object p0, p0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-static {p1}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/locale/Extension;

    return-object p0
.end method

.method public getExtensionValue(Ljava/lang/Character;)Ljava/lang/String;
    .locals 0

    .line 135
    iget-object p0, p0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-static {p1}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/locale/Extension;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 139
    :cond_0
    invoke-virtual {p0}, Landroid/icu/impl/locale/Extension;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getID()Ljava/lang/String;
    .locals 0

    .line 212
    iget-object p0, p0, Landroid/icu/impl/locale/LocaleExtensions;->_id:Ljava/lang/String;

    return-object p0
.end method

.method public getKeys()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object p0, p0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    invoke-interface {p0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getUnicodeLocaleAttributes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 143
    iget-object p0, p0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    const/16 v0, 0x75

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/locale/Extension;

    if-nez p0, :cond_0

    .line 145
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 148
    :cond_0
    check-cast p0, Landroid/icu/impl/locale/UnicodeLocaleExtension;

    invoke-virtual {p0}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->getUnicodeLocaleAttributes()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getUnicodeLocaleKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 152
    iget-object p0, p0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    const/16 v0, 0x75

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/locale/Extension;

    if-nez p0, :cond_0

    .line 154
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 157
    :cond_0
    check-cast p0, Landroid/icu/impl/locale/UnicodeLocaleExtension;

    invoke-virtual {p0}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->getUnicodeLocaleKeys()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 161
    iget-object p0, p0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    const/16 v0, 0x75

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/locale/Extension;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 166
    :cond_0
    check-cast p0, Landroid/icu/impl/locale/UnicodeLocaleExtension;

    invoke-static {p1}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 217
    iget-object p0, p0, Landroid/icu/impl/locale/LocaleExtensions;->_id:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    .line 170
    iget-object p0, p0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    invoke-interface {p0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 208
    iget-object p0, p0, Landroid/icu/impl/locale/LocaleExtensions;->_id:Ljava/lang/String;

    return-object p0
.end method
