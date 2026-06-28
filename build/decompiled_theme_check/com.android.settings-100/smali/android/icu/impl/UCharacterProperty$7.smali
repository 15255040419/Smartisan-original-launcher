.class Landroid/icu/impl/UCharacterProperty$7;
.super Landroid/icu/impl/UCharacterProperty$BinaryProperty;
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

    .line 317
    iput-object p1, p0, Landroid/icu/impl/UCharacterProperty$7;->this$0:Landroid/icu/impl/UCharacterProperty;

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    return-void
.end method


# virtual methods
.method contains(I)Z
    .locals 2

    const/4 p0, 0x1

    const/4 v0, 0x0

    const/16 v1, 0x9f

    if-gt p1, v1, :cond_2

    const/16 v1, 0x9

    if-eq p1, v1, :cond_1

    const/16 v1, 0x20

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    :cond_1
    :goto_0
    return p0

    .line 325
    :cond_2
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result p1

    const/16 v1, 0xc

    if-ne p1, v1, :cond_3

    goto :goto_1

    :cond_3
    move p0, v0

    :goto_1
    return p0
.end method
