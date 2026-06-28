.class public final Landroid/icu/impl/coll/CollationRoot;
.super Ljava/lang/Object;
.source "CollationRoot.java"


# static fields
.field private static final exception:Ljava/lang/RuntimeException;

.field private static final rootSingleton:Landroid/icu/impl/coll/CollationTailoring;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "coll/ucadata.icu"

    .line 51
    invoke-static {v1}, Landroid/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 52
    new-instance v2, Landroid/icu/impl/coll/CollationTailoring;

    invoke-direct {v2, v0}, Landroid/icu/impl/coll/CollationTailoring;-><init>(Landroid/icu/impl/coll/SharedObject$Reference;)V

    .line 53
    invoke-static {v0, v1, v2}, Landroid/icu/impl/coll/CollationDataReader;->read(Landroid/icu/impl/coll/CollationTailoring;Ljava/nio/ByteBuffer;Landroid/icu/impl/coll/CollationTailoring;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 58
    :catch_1
    new-instance v1, Ljava/util/MissingResourceException;

    const-string v2, "IOException while reading CLDR root data"

    const-string v3, "CollationRoot"

    const-string v4, "data/icudt60b/coll/ucadata.icu"

    invoke-direct {v1, v2, v3, v4}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :goto_0
    sput-object v0, Landroid/icu/impl/coll/CollationRoot;->rootSingleton:Landroid/icu/impl/coll/CollationTailoring;

    .line 65
    sput-object v1, Landroid/icu/impl/coll/CollationRoot;->exception:Ljava/lang/RuntimeException;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getData()Landroid/icu/impl/coll/CollationData;
    .locals 1

    .line 39
    invoke-static {}, Landroid/icu/impl/coll/CollationRoot;->getRoot()Landroid/icu/impl/coll/CollationTailoring;

    move-result-object v0

    .line 40
    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->data:Landroid/icu/impl/coll/CollationData;

    return-object v0
.end method

.method public static final getRoot()Landroid/icu/impl/coll/CollationTailoring;
    .locals 1

    .line 33
    sget-object v0, Landroid/icu/impl/coll/CollationRoot;->exception:Ljava/lang/RuntimeException;

    if-nez v0, :cond_0

    .line 36
    sget-object v0, Landroid/icu/impl/coll/CollationRoot;->rootSingleton:Landroid/icu/impl/coll/CollationTailoring;

    return-object v0

    .line 34
    :cond_0
    throw v0
.end method

.method static final getSettings()Landroid/icu/impl/coll/CollationSettings;
    .locals 1

    .line 43
    invoke-static {}, Landroid/icu/impl/coll/CollationRoot;->getRoot()Landroid/icu/impl/coll/CollationTailoring;

    move-result-object v0

    .line 44
    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    return-object v0
.end method
