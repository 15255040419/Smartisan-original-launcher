.class Landroid/icu/impl/UCharacterProperty$10;
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

    .line 347
    iput-object p1, p0, Landroid/icu/impl/UCharacterProperty$10;->this$0:Landroid/icu/impl/UCharacterProperty;

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    return-void
.end method


# virtual methods
.method contains(I)Z
    .locals 1

    const/4 p0, 0x1

    const/16 v0, 0x66

    if-gt p1, v0, :cond_0

    const/16 v0, 0x41

    if-lt p1, v0, :cond_0

    const/16 v0, 0x46

    if-le p1, v0, :cond_1

    const/16 v0, 0x61

    if-ge p1, v0, :cond_1

    :cond_0
    const v0, 0xff21

    if-lt p1, v0, :cond_2

    const v0, 0xff46

    if-gt p1, v0, :cond_2

    const v0, 0xff26

    if-le p1, v0, :cond_1

    const v0, 0xff41

    if-lt p1, v0, :cond_2

    :cond_1
    return p0

    .line 357
    :cond_2
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result p1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
