.class Landroid/icu/impl/UCharacterProperty$15;
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

    .line 526
    iput-object p1, p0, Landroid/icu/impl/UCharacterProperty$15;->this$0:Landroid/icu/impl/UCharacterProperty;

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/UCharacterProperty$CombiningClassIntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    return-void
.end method


# virtual methods
.method getValue(I)I
    .locals 0

    .line 529
    invoke-static {}, Landroid/icu/text/Normalizer2;->getNFDInstance()Landroid/icu/text/Normalizer2;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/icu/text/Normalizer2;->getCombiningClass(I)I

    move-result p0

    return p0
.end method
