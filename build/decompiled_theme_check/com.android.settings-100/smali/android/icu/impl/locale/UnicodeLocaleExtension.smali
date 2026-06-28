.class public Landroid/icu/impl/locale/UnicodeLocaleExtension;
.super Landroid/icu/impl/locale/Extension;
.source "UnicodeLocaleExtension.java"


# static fields
.field public static final CA_JAPANESE:Landroid/icu/impl/locale/UnicodeLocaleExtension;

.field private static final EMPTY_SORTED_MAP:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_SORTED_SET:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NU_THAI:Landroid/icu/impl/locale/UnicodeLocaleExtension;

.field public static final SINGLETON:C = 'u'


# instance fields
.field private _attributes:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _keywords:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    sput-object v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->EMPTY_SORTED_SET:Ljava/util/SortedSet;

    .line 27
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->EMPTY_SORTED_MAP:Ljava/util/SortedMap;

    .line 36
    new-instance v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;

    invoke-direct {v0}, Landroid/icu/impl/locale/UnicodeLocaleExtension;-><init>()V

    sput-object v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->CA_JAPANESE:Landroid/icu/impl/locale/UnicodeLocaleExtension;

    .line 37
    sget-object v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->CA_JAPANESE:Landroid/icu/impl/locale/UnicodeLocaleExtension;

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_keywords:Ljava/util/SortedMap;

    .line 38
    sget-object v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->CA_JAPANESE:Landroid/icu/impl/locale/UnicodeLocaleExtension;

    iget-object v0, v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_keywords:Ljava/util/SortedMap;

    const-string v1, "ca"

    const-string v2, "japanese"

    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->CA_JAPANESE:Landroid/icu/impl/locale/UnicodeLocaleExtension;

    const-string v1, "ca-japanese"

    iput-object v1, v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_value:Ljava/lang/String;

    .line 41
    new-instance v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;

    invoke-direct {v0}, Landroid/icu/impl/locale/UnicodeLocaleExtension;-><init>()V

    sput-object v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->NU_THAI:Landroid/icu/impl/locale/UnicodeLocaleExtension;

    .line 42
    sget-object v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->NU_THAI:Landroid/icu/impl/locale/UnicodeLocaleExtension;

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_keywords:Ljava/util/SortedMap;

    .line 43
    sget-object v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->NU_THAI:Landroid/icu/impl/locale/UnicodeLocaleExtension;

    iget-object v0, v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_keywords:Ljava/util/SortedMap;

    const-string v1, "nu"

    const-string/jumbo v2, "thai"

    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->NU_THAI:Landroid/icu/impl/locale/UnicodeLocaleExtension;

    const-string v1, "nu-thai"

    iput-object v1, v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_value:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/16 v0, 0x75

    .line 48
    invoke-direct {p0, v0}, Landroid/icu/impl/locale/Extension;-><init>(C)V

    .line 29
    sget-object v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->EMPTY_SORTED_SET:Ljava/util/SortedSet;

    iput-object v0, p0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_attributes:Ljava/util/SortedSet;

    .line 30
    sget-object v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->EMPTY_SORTED_MAP:Ljava/util/SortedMap;

    iput-object v0, p0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_keywords:Ljava/util/SortedMap;

    return-void
.end method

.method constructor <init>(Ljava/util/SortedSet;Ljava/util/SortedMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Landroid/icu/impl/locale/UnicodeLocaleExtension;-><init>()V

    if-eqz p1, :cond_0

    .line 53
    invoke-interface {p1}, Ljava/util/SortedSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 54
    iput-object p1, p0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_attributes:Ljava/util/SortedSet;

    :cond_0
    if-eqz p2, :cond_1

    .line 56
    invoke-interface {p2}, Ljava/util/SortedMap;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 57
    iput-object p2, p0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_keywords:Ljava/util/SortedMap;

    .line 60
    :cond_1
    iget-object p1, p0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_attributes:Ljava/util/SortedSet;

    invoke-interface {p1}, Ljava/util/SortedSet;->size()I

    move-result p1

    if-gtz p1, :cond_2

    iget-object p1, p0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_keywords:Ljava/util/SortedMap;

    invoke-interface {p1}, Ljava/util/SortedMap;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 61
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    iget-object p2, p0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_attributes:Ljava/util/SortedSet;

    invoke-interface {p2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "-"

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 65
    :cond_3
    iget-object p2, p0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_keywords:Ljava/util/SortedMap;

    invoke-interface {p2}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 66
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 67
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 69
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 71
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const/4 p2, 0x1

    .line 74
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_value:Ljava/lang/String;

    :cond_6
    return-void
.end method

.method public static isAttribute(Ljava/lang/String;)Z
    .locals 2

    .line 96
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaNumericString(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isKey(Ljava/lang/String;)Z
    .locals 2

    .line 101
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaNumericString(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSingletonChar(C)Z
    .locals 1

    .line 91
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    move-result p0

    const/16 v0, 0x75

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isType(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const-string v2, "-"

    .line 114
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-gez v2, :cond_0

    .line 115
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 116
    :goto_1
    invoke-static {v3}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->isTypeSubtag(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    return v0

    :cond_1
    if-gez v2, :cond_3

    .line 125
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-ge v1, p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    :cond_3
    add-int/lit8 v1, v2, 0x1

    goto :goto_0
.end method

.method public static isTypeSubtag(Ljava/lang/String;)Z
    .locals 2

    .line 106
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaNumericString(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getUnicodeLocaleAttributes()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object p0, p0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_attributes:Ljava/util/SortedSet;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getUnicodeLocaleKeys()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object p0, p0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_keywords:Ljava/util/SortedMap;

    invoke-interface {p0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_keywords:Ljava/util/SortedMap;

    invoke-interface {p0, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
