.class public final Landroid/icu/impl/Norm2AllModes;
.super Ljava/lang/Object;
.source "Norm2AllModes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/Norm2AllModes$NFKC_CFSingleton;,
        Landroid/icu/impl/Norm2AllModes$NFKCSingleton;,
        Landroid/icu/impl/Norm2AllModes$NFCSingleton;,
        Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;,
        Landroid/icu/impl/Norm2AllModes$FCDNormalizer2;,
        Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;,
        Landroid/icu/impl/Norm2AllModes$DecomposeNormalizer2;,
        Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;,
        Landroid/icu/impl/Norm2AllModes$NoopNormalizer2;
    }
.end annotation


# static fields
.field public static final NOOP_NORMALIZER2:Landroid/icu/impl/Norm2AllModes$NoopNormalizer2;

.field private static cache:Landroid/icu/impl/CacheBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/CacheBase<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/Norm2AllModes;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final comp:Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;

.field public final decomp:Landroid/icu/impl/Norm2AllModes$DecomposeNormalizer2;

.field public final fcc:Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;

.field public final fcd:Landroid/icu/impl/Norm2AllModes$FCDNormalizer2;

.field public final impl:Landroid/icu/impl/Normalizer2Impl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 347
    new-instance v0, Landroid/icu/impl/Norm2AllModes$1;

    invoke-direct {v0}, Landroid/icu/impl/Norm2AllModes$1;-><init>()V

    sput-object v0, Landroid/icu/impl/Norm2AllModes;->cache:Landroid/icu/impl/CacheBase;

    .line 361
    new-instance v0, Landroid/icu/impl/Norm2AllModes$NoopNormalizer2;

    invoke-direct {v0}, Landroid/icu/impl/Norm2AllModes$NoopNormalizer2;-><init>()V

    sput-object v0, Landroid/icu/impl/Norm2AllModes;->NOOP_NORMALIZER2:Landroid/icu/impl/Norm2AllModes$NoopNormalizer2;

    return-void
.end method

.method private constructor <init>(Landroid/icu/impl/Normalizer2Impl;)V
    .locals 2

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    iput-object p1, p0, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    .line 289
    new-instance v0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;-><init>(Landroid/icu/impl/Normalizer2Impl;Z)V

    iput-object v0, p0, Landroid/icu/impl/Norm2AllModes;->comp:Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;

    .line 290
    new-instance v0, Landroid/icu/impl/Norm2AllModes$DecomposeNormalizer2;

    invoke-direct {v0, p1}, Landroid/icu/impl/Norm2AllModes$DecomposeNormalizer2;-><init>(Landroid/icu/impl/Normalizer2Impl;)V

    iput-object v0, p0, Landroid/icu/impl/Norm2AllModes;->decomp:Landroid/icu/impl/Norm2AllModes$DecomposeNormalizer2;

    .line 291
    new-instance v0, Landroid/icu/impl/Norm2AllModes$FCDNormalizer2;

    invoke-direct {v0, p1}, Landroid/icu/impl/Norm2AllModes$FCDNormalizer2;-><init>(Landroid/icu/impl/Normalizer2Impl;)V

    iput-object v0, p0, Landroid/icu/impl/Norm2AllModes;->fcd:Landroid/icu/impl/Norm2AllModes$FCDNormalizer2;

    .line 292
    new-instance v0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;-><init>(Landroid/icu/impl/Normalizer2Impl;Z)V

    iput-object v0, p0, Landroid/icu/impl/Norm2AllModes;->fcc:Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/Normalizer2Impl;Landroid/icu/impl/Norm2AllModes$1;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Landroid/icu/impl/Norm2AllModes;-><init>(Landroid/icu/impl/Normalizer2Impl;)V

    return-void
.end method

.method public static getFCDNormalizer2()Landroid/icu/text/Normalizer2;
    .locals 1

    .line 367
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v0

    iget-object v0, v0, Landroid/icu/impl/Norm2AllModes;->fcd:Landroid/icu/impl/Norm2AllModes$FCDNormalizer2;

    return-object v0
.end method

.method public static getInstance(Ljava/nio/ByteBuffer;Ljava/lang/String;)Landroid/icu/impl/Norm2AllModes;
    .locals 1

    if-nez p0, :cond_4

    const-string v0, "nfc"

    .line 329
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    invoke-static {}, Landroid/icu/impl/Norm2AllModes$NFCSingleton;->access$200()Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "nfkc"

    .line 331
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    invoke-static {}, Landroid/icu/impl/Norm2AllModes$NFKCSingleton;->access$300()Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "nfkc_cf"

    .line 333
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 334
    invoke-static {}, Landroid/icu/impl/Norm2AllModes$NFKC_CFSingleton;->access$400()Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 339
    invoke-static {v0}, Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;->access$000(Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;)Ljava/lang/RuntimeException;

    move-result-object p0

    if-nez p0, :cond_3

    .line 342
    invoke-static {v0}, Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;->access$100(Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;)Landroid/icu/impl/Norm2AllModes;

    move-result-object p0

    return-object p0

    .line 340
    :cond_3
    invoke-static {v0}, Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;->access$000(Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 345
    :cond_4
    sget-object v0, Landroid/icu/impl/Norm2AllModes;->cache:Landroid/icu/impl/CacheBase;

    invoke-virtual {v0, p1, p0}, Landroid/icu/impl/CacheBase;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/Norm2AllModes;

    return-object p0
.end method

.method private static getInstanceFromSingleton(Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;)Landroid/icu/impl/Norm2AllModes;
    .locals 1

    .line 302
    invoke-static {p0}, Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;->access$000(Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;)Ljava/lang/RuntimeException;

    move-result-object v0

    if-nez v0, :cond_0

    .line 305
    invoke-static {p0}, Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;->access$100(Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;)Landroid/icu/impl/Norm2AllModes;

    move-result-object p0

    return-object p0

    .line 303
    :cond_0
    invoke-static {p0}, Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;->access$000(Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static getN2WithImpl(I)Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 322
    :cond_0
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFKCInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object p0

    iget-object p0, p0, Landroid/icu/impl/Norm2AllModes;->comp:Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;

    return-object p0

    .line 321
    :cond_1
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object p0

    iget-object p0, p0, Landroid/icu/impl/Norm2AllModes;->comp:Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;

    return-object p0

    .line 320
    :cond_2
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFKCInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object p0

    iget-object p0, p0, Landroid/icu/impl/Norm2AllModes;->decomp:Landroid/icu/impl/Norm2AllModes$DecomposeNormalizer2;

    return-object p0

    .line 319
    :cond_3
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object p0

    iget-object p0, p0, Landroid/icu/impl/Norm2AllModes;->decomp:Landroid/icu/impl/Norm2AllModes$DecomposeNormalizer2;

    return-object p0
.end method

.method public static getNFCInstance()Landroid/icu/impl/Norm2AllModes;
    .locals 1

    .line 308
    invoke-static {}, Landroid/icu/impl/Norm2AllModes$NFCSingleton;->access$200()Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/Norm2AllModes;->getInstanceFromSingleton(Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;)Landroid/icu/impl/Norm2AllModes;

    move-result-object v0

    return-object v0
.end method

.method public static getNFKCInstance()Landroid/icu/impl/Norm2AllModes;
    .locals 1

    .line 311
    invoke-static {}, Landroid/icu/impl/Norm2AllModes$NFKCSingleton;->access$300()Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/Norm2AllModes;->getInstanceFromSingleton(Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;)Landroid/icu/impl/Norm2AllModes;

    move-result-object v0

    return-object v0
.end method

.method public static getNFKC_CFInstance()Landroid/icu/impl/Norm2AllModes;
    .locals 1

    .line 314
    invoke-static {}, Landroid/icu/impl/Norm2AllModes$NFKC_CFSingleton;->access$400()Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/Norm2AllModes;->getInstanceFromSingleton(Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;)Landroid/icu/impl/Norm2AllModes;

    move-result-object v0

    return-object v0
.end method
