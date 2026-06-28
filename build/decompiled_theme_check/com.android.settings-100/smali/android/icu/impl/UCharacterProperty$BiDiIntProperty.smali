.class Landroid/icu/impl/UCharacterProperty$BiDiIntProperty;
.super Landroid/icu/impl/UCharacterProperty$IntProperty;
.source "UCharacterProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UCharacterProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BiDiIntProperty"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/icu/impl/UCharacterProperty;


# direct methods
.method constructor <init>(Landroid/icu/impl/UCharacterProperty;)V
    .locals 1

    .line 481
    iput-object p1, p0, Landroid/icu/impl/UCharacterProperty$BiDiIntProperty;->this$0:Landroid/icu/impl/UCharacterProperty;

    const/4 v0, 0x5

    .line 482
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/UCharacterProperty$IntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    return-void
.end method


# virtual methods
.method getMaxValue(I)I
    .locals 0

    .line 486
    sget-object p0, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    invoke-virtual {p0, p1}, Landroid/icu/impl/UBiDiProps;->getMaxValue(I)I

    move-result p0

    return p0
.end method
