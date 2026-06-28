.class Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;
.super Landroid/icu/impl/UCharacterProperty$BinaryProperty;
.source "UCharacterProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UCharacterProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaseBinaryProperty"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/icu/impl/UCharacterProperty;

.field which:I


# direct methods
.method constructor <init>(Landroid/icu/impl/UCharacterProperty;I)V
    .locals 1

    .line 212
    iput-object p1, p0, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;->this$0:Landroid/icu/impl/UCharacterProperty;

    const/4 v0, 0x4

    .line 213
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    .line 214
    iput p2, p0, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;->which:I

    return-void
.end method


# virtual methods
.method contains(I)Z
    .locals 1

    .line 218
    sget-object v0, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    iget p0, p0, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;->which:I

    invoke-virtual {v0, p1, p0}, Landroid/icu/impl/UCaseProps;->hasBinaryProperty(II)Z

    move-result p0

    return p0
.end method
