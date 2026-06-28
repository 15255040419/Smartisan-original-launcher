.class Landroid/icu/impl/UCharacterProperty$21;
.super Landroid/icu/impl/UCharacterProperty$IntProperty;
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

    .line 573
    iput-object p1, p0, Landroid/icu/impl/UCharacterProperty$21;->this$0:Landroid/icu/impl/UCharacterProperty;

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/UCharacterProperty$IntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    return-void
.end method


# virtual methods
.method getMaxValue(I)I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method getValue(I)I
    .locals 1

    .line 577
    iget-object p0, p0, Landroid/icu/impl/UCharacterProperty$21;->this$0:Landroid/icu/impl/UCharacterProperty;

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/UCharacterProperty;->getAdditional(II)I

    move-result p0

    and-int/lit16 p0, p0, 0x3e0

    ushr-int/lit8 p0, p0, 0x5

    .line 578
    invoke-static {}, Landroid/icu/impl/UCharacterProperty;->access$300()[I

    move-result-object p1

    array-length p1, p1

    if-ge p0, p1, :cond_0

    .line 579
    invoke-static {}, Landroid/icu/impl/UCharacterProperty;->access$300()[I

    move-result-object p1

    aget p0, p1, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
