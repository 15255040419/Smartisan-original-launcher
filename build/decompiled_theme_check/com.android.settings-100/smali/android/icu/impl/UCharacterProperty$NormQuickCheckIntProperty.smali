.class Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;
.super Landroid/icu/impl/UCharacterProperty$IntProperty;
.source "UCharacterProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UCharacterProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NormQuickCheckIntProperty"
.end annotation


# instance fields
.field max:I

.field final synthetic this$0:Landroid/icu/impl/UCharacterProperty;

.field which:I


# direct methods
.method constructor <init>(Landroid/icu/impl/UCharacterProperty;III)V
    .locals 0

    .line 503
    iput-object p1, p0, Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;->this$0:Landroid/icu/impl/UCharacterProperty;

    .line 504
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/UCharacterProperty$IntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    .line 505
    iput p3, p0, Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;->which:I

    .line 506
    iput p4, p0, Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;->max:I

    return-void
.end method


# virtual methods
.method getMaxValue(I)I
    .locals 0

    .line 514
    iget p0, p0, Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;->max:I

    return p0
.end method

.method getValue(I)I
    .locals 0

    .line 510
    iget p0, p0, Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;->which:I

    add-int/lit16 p0, p0, -0x100c

    invoke-static {p0}, Landroid/icu/impl/Norm2AllModes;->getN2WithImpl(I)Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->getQuickCheck(I)I

    move-result p0

    return p0
.end method
