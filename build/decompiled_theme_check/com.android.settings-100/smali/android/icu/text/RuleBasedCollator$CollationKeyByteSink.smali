.class final Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;
.super Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;
.source "RuleBasedCollator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RuleBasedCollator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CollationKeyByteSink"
.end annotation


# instance fields
.field private key_:Landroid/icu/text/RawCollationKey;


# direct methods
.method constructor <init>(Landroid/icu/text/RawCollationKey;)V
    .locals 1

    .line 1078
    iget-object v0, p1, Landroid/icu/text/RawCollationKey;->bytes:[B

    invoke-direct {p0, v0}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;-><init>([B)V

    .line 1079
    iput-object p1, p0, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->key_:Landroid/icu/text/RawCollationKey;

    return-void
.end method

.method static synthetic access$100(Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;)Landroid/icu/text/RawCollationKey;
    .locals 0

    .line 1076
    iget-object p0, p0, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->key_:Landroid/icu/text/RawCollationKey;

    return-object p0
.end method


# virtual methods
.method protected AppendBeyondCapacity([BIII)V
    .locals 1

    .line 1085
    invoke-virtual {p0, p3, p4}, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->Resize(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1086
    iget-object p0, p0, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->buffer_:[B

    invoke-static {p1, p2, p0, p4, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_0
    return-void
.end method

.method protected Resize(II)Z
    .locals 2

    .line 1092
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->buffer_:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p2

    if-ge v0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    const/16 v0, 0xc8

    if-ge p1, v0, :cond_1

    move p1, v0

    .line 1103
    :cond_1
    new-array p1, p1, [B

    .line 1104
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->buffer_:[B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, v1, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1105
    iget-object p2, p0, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->key_:Landroid/icu/text/RawCollationKey;

    iput-object p1, p2, Landroid/icu/text/RawCollationKey;->bytes:[B

    iput-object p1, p0, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->buffer_:[B

    const/4 p0, 0x1

    return p0
.end method
