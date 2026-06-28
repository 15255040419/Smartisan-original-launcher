.class Landroid/icu/impl/UCharacterProperty$16;
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

    .line 534
    iput-object p1, p0, Landroid/icu/impl/UCharacterProperty$16;->this$0:Landroid/icu/impl/UCharacterProperty;

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/UCharacterProperty$IntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    return-void
.end method


# virtual methods
.method getMaxValue(I)I
    .locals 0

    const/16 p0, 0x1d

    return p0
.end method

.method getValue(I)I
    .locals 0

    .line 537
    iget-object p0, p0, Landroid/icu/impl/UCharacterProperty$16;->this$0:Landroid/icu/impl/UCharacterProperty;

    invoke-virtual {p0, p1}, Landroid/icu/impl/UCharacterProperty;->getType(I)I

    move-result p0

    return p0
.end method
