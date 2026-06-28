.class Landroid/icu/impl/UCharacterProperty$CombiningClassIntProperty;
.super Landroid/icu/impl/UCharacterProperty$IntProperty;
.source "UCharacterProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UCharacterProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CombiningClassIntProperty"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/icu/impl/UCharacterProperty;


# direct methods
.method constructor <init>(Landroid/icu/impl/UCharacterProperty;I)V
    .locals 0

    .line 491
    iput-object p1, p0, Landroid/icu/impl/UCharacterProperty$CombiningClassIntProperty;->this$0:Landroid/icu/impl/UCharacterProperty;

    .line 492
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/UCharacterProperty$IntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    return-void
.end method


# virtual methods
.method getMaxValue(I)I
    .locals 0

    const/16 p0, 0xff

    return p0
.end method
