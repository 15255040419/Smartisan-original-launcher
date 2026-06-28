.class Landroid/icu/impl/UCharacterProperty$IntProperty;
.super Ljava/lang/Object;
.source "UCharacterProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UCharacterProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntProperty"
.end annotation


# instance fields
.field column:I

.field mask:I

.field shift:I

.field final synthetic this$0:Landroid/icu/impl/UCharacterProperty;


# direct methods
.method constructor <init>(Landroid/icu/impl/UCharacterProperty;I)V
    .locals 0

    .line 464
    iput-object p1, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->this$0:Landroid/icu/impl/UCharacterProperty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    iput p2, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->column:I

    const/4 p1, 0x0

    .line 466
    iput p1, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->mask:I

    return-void
.end method

.method constructor <init>(Landroid/icu/impl/UCharacterProperty;III)V
    .locals 0

    .line 459
    iput-object p1, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->this$0:Landroid/icu/impl/UCharacterProperty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    iput p2, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->column:I

    .line 461
    iput p3, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->mask:I

    .line 462
    iput p4, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->shift:I

    return-void
.end method


# virtual methods
.method getMaxValue(I)I
    .locals 1

    .line 476
    iget-object p1, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->this$0:Landroid/icu/impl/UCharacterProperty;

    iget v0, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->column:I

    invoke-virtual {p1, v0}, Landroid/icu/impl/UCharacterProperty;->getMaxValues(I)I

    move-result p1

    iget v0, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->mask:I

    and-int/2addr p1, v0

    iget p0, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->shift:I

    ushr-int p0, p1, p0

    return p0
.end method

.method final getSource()I
    .locals 1

    .line 469
    iget v0, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->mask:I

    if-nez v0, :cond_0

    iget p0, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->column:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method getValue(I)I
    .locals 2

    .line 473
    iget-object v0, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->this$0:Landroid/icu/impl/UCharacterProperty;

    iget v1, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->column:I

    invoke-virtual {v0, p1, v1}, Landroid/icu/impl/UCharacterProperty;->getAdditional(II)I

    move-result p1

    iget v0, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->mask:I

    and-int/2addr p1, v0

    iget p0, p0, Landroid/icu/impl/UCharacterProperty$IntProperty;->shift:I

    ushr-int p0, p1, p0

    return p0
.end method
