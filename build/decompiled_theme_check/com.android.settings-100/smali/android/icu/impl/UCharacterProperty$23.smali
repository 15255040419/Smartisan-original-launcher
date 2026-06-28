.class Landroid/icu/impl/UCharacterProperty$23;
.super Landroid/icu/impl/UCharacterProperty$CombiningClassIntProperty;
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

    .line 601
    iput-object p1, p0, Landroid/icu/impl/UCharacterProperty$23;->this$0:Landroid/icu/impl/UCharacterProperty;

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/UCharacterProperty$CombiningClassIntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    return-void
.end method


# virtual methods
.method getValue(I)I
    .locals 0

    .line 604
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object p0

    iget-object p0, p0, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method
