.class Landroid/icu/impl/Norm2AllModes$1;
.super Landroid/icu/impl/SoftCache;
.source "Norm2AllModes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/Norm2AllModes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/impl/SoftCache<",
        "Ljava/lang/String;",
        "Landroid/icu/impl/Norm2AllModes;",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 348
    invoke-direct {p0}, Landroid/icu/impl/SoftCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInstance(Ljava/lang/String;Ljava/nio/ByteBuffer;)Landroid/icu/impl/Norm2AllModes;
    .locals 0

    if-nez p2, :cond_0

    .line 353
    new-instance p0, Landroid/icu/impl/Normalizer2Impl;

    invoke-direct {p0}, Landroid/icu/impl/Normalizer2Impl;-><init>()V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".nrm"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->load(Ljava/lang/String;)Landroid/icu/impl/Normalizer2Impl;

    move-result-object p0

    goto :goto_0

    .line 355
    :cond_0
    new-instance p0, Landroid/icu/impl/Normalizer2Impl;

    invoke-direct {p0}, Landroid/icu/impl/Normalizer2Impl;-><init>()V

    invoke-virtual {p0, p2}, Landroid/icu/impl/Normalizer2Impl;->load(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Normalizer2Impl;

    move-result-object p0

    .line 357
    :goto_0
    new-instance p1, Landroid/icu/impl/Norm2AllModes;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Landroid/icu/impl/Norm2AllModes;-><init>(Landroid/icu/impl/Normalizer2Impl;Landroid/icu/impl/Norm2AllModes$1;)V

    return-object p1
.end method

.method protected bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 348
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/Norm2AllModes$1;->createInstance(Ljava/lang/String;Ljava/nio/ByteBuffer;)Landroid/icu/impl/Norm2AllModes;

    move-result-object p0

    return-object p0
.end method
