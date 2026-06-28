.class Landroid/icu/impl/UCharacterProperty$NormInertBinaryProperty;
.super Landroid/icu/impl/UCharacterProperty$BinaryProperty;
.source "UCharacterProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UCharacterProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NormInertBinaryProperty"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/icu/impl/UCharacterProperty;

.field which:I


# direct methods
.method constructor <init>(Landroid/icu/impl/UCharacterProperty;II)V
    .locals 0

    .line 224
    iput-object p1, p0, Landroid/icu/impl/UCharacterProperty$NormInertBinaryProperty;->this$0:Landroid/icu/impl/UCharacterProperty;

    .line 225
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    .line 226
    iput p3, p0, Landroid/icu/impl/UCharacterProperty$NormInertBinaryProperty;->which:I

    return-void
.end method


# virtual methods
.method contains(I)Z
    .locals 0

    .line 230
    iget p0, p0, Landroid/icu/impl/UCharacterProperty$NormInertBinaryProperty;->which:I

    add-int/lit8 p0, p0, -0x25

    invoke-static {p0}, Landroid/icu/impl/Norm2AllModes;->getN2WithImpl(I)Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->isInert(I)Z

    move-result p0

    return p0
.end method
