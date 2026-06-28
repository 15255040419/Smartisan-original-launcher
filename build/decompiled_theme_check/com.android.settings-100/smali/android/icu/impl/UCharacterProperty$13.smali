.class Landroid/icu/impl/UCharacterProperty$13;
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

    .line 409
    iput-object p1, p0, Landroid/icu/impl/UCharacterProperty$13;->this$0:Landroid/icu/impl/UCharacterProperty;

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    return-void
.end method


# virtual methods
.method contains(I)Z
    .locals 0

    const p0, 0x1f1e6

    if-gt p0, p1, :cond_0

    const p0, 0x1f1ff

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
