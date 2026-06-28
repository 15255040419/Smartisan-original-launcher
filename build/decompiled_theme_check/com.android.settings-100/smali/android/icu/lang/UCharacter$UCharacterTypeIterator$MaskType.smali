.class final Landroid/icu/lang/UCharacter$UCharacterTypeIterator$MaskType;
.super Ljava/lang/Object;
.source "UCharacter.java"

# interfaces
.implements Landroid/icu/impl/Trie2$ValueMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/lang/UCharacter$UCharacterTypeIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MaskType"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/lang/UCharacter$1;)V
    .locals 0

    .line 4811
    invoke-direct {p0}, Landroid/icu/lang/UCharacter$UCharacterTypeIterator$MaskType;-><init>()V

    return-void
.end method


# virtual methods
.method public map(I)I
    .locals 0

    and-int/lit8 p0, p1, 0x1f

    return p0
.end method
