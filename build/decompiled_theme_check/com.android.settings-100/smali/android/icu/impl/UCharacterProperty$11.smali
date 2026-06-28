.class Landroid/icu/impl/UCharacterProperty$11;
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

    .line 365
    iput-object p1, p0, Landroid/icu/impl/UCharacterProperty$11;->this$0:Landroid/icu/impl/UCharacterProperty;

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    return-void
.end method


# virtual methods
.method contains(I)Z
    .locals 3

    .line 368
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object p0

    iget-object p0, p0, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getDecomposition(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 371
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    .line 372
    invoke-static {p1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    return v0

    :cond_1
    :goto_0
    const/4 v1, 0x1

    if-ltz p1, :cond_3

    .line 381
    sget-object p0, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    .line 382
    sget-object v2, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 383
    sget-object v2, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, v2, v0}, Landroid/icu/impl/UCaseProps;->toFullFolding(ILjava/lang/Appendable;I)I

    move-result p0

    if-ltz p0, :cond_2

    move v0, v1

    :cond_2
    return v0

    .line 386
    :cond_3
    invoke-static {p0, v1}, Landroid/icu/lang/UCharacter;->foldCase(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 387
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method
