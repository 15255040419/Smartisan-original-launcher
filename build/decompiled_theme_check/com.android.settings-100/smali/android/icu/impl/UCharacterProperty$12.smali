.class Landroid/icu/impl/UCharacterProperty$12;
.super Landroid/icu/impl/UCharacterProperty$BinaryProperty;
.source "UCharacterProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UCharacterProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/icu/impl/UCharacterProperty;


# direct methods
.method constructor <init>(Landroid/icu/impl/UCharacterProperty;I)V
    .locals 0

    .line 392
    iput-object p1, p0, Landroid/icu/impl/UCharacterProperty$12;->this$0:Landroid/icu/impl/UCharacterProperty;

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    return-void
.end method


# virtual methods
.method contains(I)Z
    .locals 7

    .line 395
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFKC_CFInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object p0

    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    .line 396
    invoke-static {p1}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 397
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 399
    new-instance v6, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    const/4 v1, 0x5

    invoke-direct {v6, v0, p1, v1}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;-><init>(Landroid/icu/impl/Normalizer2Impl;Ljava/lang/Appendable;I)V

    .line 400
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Landroid/icu/impl/Normalizer2Impl;->compose(Ljava/lang/CharSequence;IIZZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)Z

    .line 401
    invoke-static {p1, p0}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->equal(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
