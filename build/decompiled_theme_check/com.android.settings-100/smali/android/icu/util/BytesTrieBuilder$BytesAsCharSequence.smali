.class final Landroid/icu/util/BytesTrieBuilder$BytesAsCharSequence;
.super Ljava/lang/Object;
.source "BytesTrieBuilder.java"

# interfaces
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/BytesTrieBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BytesAsCharSequence"
.end annotation


# instance fields
.field private len:I

.field private s:[B


# direct methods
.method public constructor <init>([BI)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Landroid/icu/util/BytesTrieBuilder$BytesAsCharSequence;->s:[B

    .line 36
    iput p2, p0, Landroid/icu/util/BytesTrieBuilder$BytesAsCharSequence;->len:I

    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 0

    .line 38
    iget-object p0, p0, Landroid/icu/util/BytesTrieBuilder$BytesAsCharSequence;->s:[B

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-char p0, p0

    return p0
.end method

.method public length()I
    .locals 0

    .line 39
    iget p0, p0, Landroid/icu/util/BytesTrieBuilder$BytesAsCharSequence;->len:I

    return p0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
