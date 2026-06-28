.class public final Landroid/icu/impl/coll/CollationTailoring;
.super Ljava/lang/Object;
.source "CollationTailoring.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public actualLocale:Landroid/icu/util/ULocale;

.field public data:Landroid/icu/impl/coll/CollationData;

.field public maxExpansions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field ownedData:Landroid/icu/impl/coll/CollationData;

.field private rules:Ljava/lang/String;

.field private rulesResource:Landroid/icu/util/UResourceBundle;

.field public settings:Landroid/icu/impl/coll/SharedObject$Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/coll/SharedObject$Reference<",
            "Landroid/icu/impl/coll/CollationSettings;",
            ">;"
        }
    .end annotation
.end field

.field trie:Landroid/icu/impl/Trie2_32;

.field unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

.field public version:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/icu/impl/coll/SharedObject$Reference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/coll/SharedObject$Reference<",
            "Landroid/icu/impl/coll/CollationSettings;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    sget-object v0, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    iput-object v0, p0, Landroid/icu/impl/coll/CollationTailoring;->actualLocale:Landroid/icu/util/ULocale;

    const/4 v0, 0x0

    .line 115
    iput v0, p0, Landroid/icu/impl/coll/CollationTailoring;->version:I

    if-eqz p1, :cond_0

    .line 42
    invoke-virtual {p1}, Landroid/icu/impl/coll/SharedObject$Reference;->clone()Landroid/icu/impl/coll/SharedObject$Reference;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/coll/CollationTailoring;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    goto :goto_0

    .line 44
    :cond_0
    new-instance p1, Landroid/icu/impl/coll/SharedObject$Reference;

    new-instance v0, Landroid/icu/impl/coll/CollationSettings;

    invoke-direct {v0}, Landroid/icu/impl/coll/CollationSettings;-><init>()V

    invoke-direct {p1, v0}, Landroid/icu/impl/coll/SharedObject$Reference;-><init>(Landroid/icu/impl/coll/SharedObject;)V

    iput-object p1, p0, Landroid/icu/impl/coll/CollationTailoring;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    :goto_0
    return-void
.end method

.method static makeBaseVersion(Landroid/icu/util/VersionInfo;)Landroid/icu/util/VersionInfo;
    .locals 3

    .line 77
    sget-object v0, Landroid/icu/util/VersionInfo;->UCOL_BUILDER_VERSION:Landroid/icu/util/VersionInfo;

    .line 78
    invoke-virtual {v0}, Landroid/icu/util/VersionInfo;->getMajor()I

    move-result v0

    .line 79
    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->getMajor()I

    move-result v1

    shl-int/lit8 v1, v1, 0x3

    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->getMinor()I

    move-result v2

    add-int/2addr v1, v2

    .line 80
    invoke-virtual {p0}, Landroid/icu/util/VersionInfo;->getMilli()I

    move-result p0

    shl-int/lit8 p0, p0, 0x6

    const/4 v2, 0x0

    .line 77
    invoke-static {v0, v1, p0, v2}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method ensureOwnedData()V
    .locals 2

    .line 49
    iget-object v0, p0, Landroid/icu/impl/coll/CollationTailoring;->ownedData:Landroid/icu/impl/coll/CollationData;

    if-nez v0, :cond_0

    .line 50
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v0

    iget-object v0, v0, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    .line 51
    new-instance v1, Landroid/icu/impl/coll/CollationData;

    invoke-direct {v1, v0}, Landroid/icu/impl/coll/CollationData;-><init>(Landroid/icu/impl/Normalizer2Impl;)V

    iput-object v1, p0, Landroid/icu/impl/coll/CollationTailoring;->ownedData:Landroid/icu/impl/coll/CollationData;

    .line 53
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/coll/CollationTailoring;->ownedData:Landroid/icu/impl/coll/CollationData;

    iput-object v0, p0, Landroid/icu/impl/coll/CollationTailoring;->data:Landroid/icu/impl/coll/CollationData;

    return-void
.end method

.method public getRules()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Landroid/icu/impl/coll/CollationTailoring;->rules:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 70
    :cond_0
    iget-object p0, p0, Landroid/icu/impl/coll/CollationTailoring;->rulesResource:Landroid/icu/util/UResourceBundle;

    if-eqz p0, :cond_1

    .line 71
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method getUCAVersion()I
    .locals 1

    .line 97
    iget p0, p0, Landroid/icu/impl/coll/CollationTailoring;->version:I

    shr-int/lit8 v0, p0, 0xc

    and-int/lit16 v0, v0, 0xff0

    shr-int/lit8 p0, p0, 0xe

    and-int/lit8 p0, p0, 0x3

    or-int/2addr p0, v0

    return p0
.end method

.method setRules(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Landroid/icu/impl/coll/CollationTailoring;->rules:Ljava/lang/String;

    return-void
.end method

.method setRulesResource(Landroid/icu/util/UResourceBundle;)V
    .locals 0

    .line 64
    iput-object p1, p0, Landroid/icu/impl/coll/CollationTailoring;->rulesResource:Landroid/icu/util/UResourceBundle;

    return-void
.end method

.method setVersion(II)V
    .locals 5

    shr-int/lit8 v0, p2, 0x10

    const v1, 0xff00

    and-int/2addr v1, v0

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 p2, p2, 0xff

    .line 89
    sget-object v3, Landroid/icu/util/VersionInfo;->UCOL_BUILDER_VERSION:Landroid/icu/util/VersionInfo;

    invoke-virtual {v3}, Landroid/icu/util/VersionInfo;->getMajor()I

    move-result v3

    shl-int/lit8 v3, v3, 0x18

    const v4, 0xffc000

    and-int/2addr p1, v4

    or-int/2addr p1, v3

    shr-int/lit8 v3, v1, 0x6

    add-int/2addr v1, v3

    and-int/lit16 v1, v1, 0x3f00

    or-int/2addr p1, v1

    shl-int/lit8 v1, v0, 0x3

    shr-int/lit8 v0, v0, 0x5

    add-int/2addr v1, v0

    add-int/2addr v1, v2

    shl-int/lit8 v0, p2, 0x4

    add-int/2addr v1, v0

    shr-int/lit8 p2, p2, 0x4

    add-int/2addr v1, p2

    and-int/lit16 p2, v1, 0xff

    or-int/2addr p1, p2

    iput p1, p0, Landroid/icu/impl/coll/CollationTailoring;->version:I

    return-void
.end method
