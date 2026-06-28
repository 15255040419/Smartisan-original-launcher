.class synthetic Landroid/icu/impl/Trie2$2;
.super Ljava/lang/Object;
.source "Trie2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/Trie2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$android$icu$impl$Trie2$ValueWidth:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 171
    invoke-static {}, Landroid/icu/impl/Trie2$ValueWidth;->values()[Landroid/icu/impl/Trie2$ValueWidth;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroid/icu/impl/Trie2$2;->$SwitchMap$android$icu$impl$Trie2$ValueWidth:[I

    :try_start_0
    sget-object v0, Landroid/icu/impl/Trie2$2;->$SwitchMap$android$icu$impl$Trie2$ValueWidth:[I

    sget-object v1, Landroid/icu/impl/Trie2$ValueWidth;->BITS_16:Landroid/icu/impl/Trie2$ValueWidth;

    invoke-virtual {v1}, Landroid/icu/impl/Trie2$ValueWidth;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Landroid/icu/impl/Trie2$2;->$SwitchMap$android$icu$impl$Trie2$ValueWidth:[I

    sget-object v1, Landroid/icu/impl/Trie2$ValueWidth;->BITS_32:Landroid/icu/impl/Trie2$ValueWidth;

    invoke-virtual {v1}, Landroid/icu/impl/Trie2$ValueWidth;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
