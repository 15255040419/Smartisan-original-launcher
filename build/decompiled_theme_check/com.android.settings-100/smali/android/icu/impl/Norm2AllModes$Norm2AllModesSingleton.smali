.class final Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;
.super Ljava/lang/Object;
.source "Norm2AllModes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/Norm2AllModes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Norm2AllModesSingleton"
.end annotation


# instance fields
.field private allModes:Landroid/icu/impl/Norm2AllModes;

.field private exception:Ljava/lang/RuntimeException;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    :try_start_0
    new-instance v0, Landroid/icu/impl/Normalizer2Impl;

    invoke-direct {v0}, Landroid/icu/impl/Normalizer2Impl;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".nrm"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/icu/impl/Normalizer2Impl;->load(Ljava/lang/String;)Landroid/icu/impl/Normalizer2Impl;

    move-result-object p1

    .line 374
    new-instance v0, Landroid/icu/impl/Norm2AllModes;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/icu/impl/Norm2AllModes;-><init>(Landroid/icu/impl/Normalizer2Impl;Landroid/icu/impl/Norm2AllModes$1;)V

    iput-object v0, p0, Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;->allModes:Landroid/icu/impl/Norm2AllModes;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 376
    iput-object p1, p0, Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;->exception:Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/icu/impl/Norm2AllModes$1;)V
    .locals 0

    .line 370
    invoke-direct {p0, p1}, Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;)Ljava/lang/RuntimeException;
    .locals 0

    .line 370
    iget-object p0, p0, Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;->exception:Ljava/lang/RuntimeException;

    return-object p0
.end method

.method static synthetic access$100(Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;)Landroid/icu/impl/Norm2AllModes;
    .locals 0

    .line 370
    iget-object p0, p0, Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;->allModes:Landroid/icu/impl/Norm2AllModes;

    return-object p0
.end method
