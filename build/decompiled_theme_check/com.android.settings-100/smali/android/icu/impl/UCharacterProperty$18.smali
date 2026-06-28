.class Landroid/icu/impl/UCharacterProperty$18;
.super Landroid/icu/impl/UCharacterProperty$BiDiIntProperty;
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
.method constructor <init>(Landroid/icu/impl/UCharacterProperty;)V
    .locals 0

    .line 550
    iput-object p1, p0, Landroid/icu/impl/UCharacterProperty$18;->this$0:Landroid/icu/impl/UCharacterProperty;

    invoke-direct {p0, p1}, Landroid/icu/impl/UCharacterProperty$BiDiIntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;)V

    return-void
.end method


# virtual methods
.method getValue(I)I
    .locals 0

    .line 553
    sget-object p0, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    invoke-virtual {p0, p1}, Landroid/icu/impl/UBiDiProps;->getJoiningType(I)I

    move-result p0

    return p0
.end method
