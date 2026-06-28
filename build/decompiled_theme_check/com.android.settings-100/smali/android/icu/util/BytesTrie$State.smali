.class public final Landroid/icu/util/BytesTrie$State;
.super Ljava/lang/Object;
.source "BytesTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/BytesTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "State"
.end annotation


# instance fields
.field private bytes:[B

.field private pos:I

.field private remainingMatchLength:I

.field private root:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/icu/util/BytesTrie$State;)[B
    .locals 0

    .line 75
    iget-object p0, p0, Landroid/icu/util/BytesTrie$State;->bytes:[B

    return-object p0
.end method

.method static synthetic access$002(Landroid/icu/util/BytesTrie$State;[B)[B
    .locals 0

    .line 75
    iput-object p1, p0, Landroid/icu/util/BytesTrie$State;->bytes:[B

    return-object p1
.end method

.method static synthetic access$100(Landroid/icu/util/BytesTrie$State;)I
    .locals 0

    .line 75
    iget p0, p0, Landroid/icu/util/BytesTrie$State;->root:I

    return p0
.end method

.method static synthetic access$102(Landroid/icu/util/BytesTrie$State;I)I
    .locals 0

    .line 75
    iput p1, p0, Landroid/icu/util/BytesTrie$State;->root:I

    return p1
.end method

.method static synthetic access$200(Landroid/icu/util/BytesTrie$State;)I
    .locals 0

    .line 75
    iget p0, p0, Landroid/icu/util/BytesTrie$State;->pos:I

    return p0
.end method

.method static synthetic access$202(Landroid/icu/util/BytesTrie$State;I)I
    .locals 0

    .line 75
    iput p1, p0, Landroid/icu/util/BytesTrie$State;->pos:I

    return p1
.end method

.method static synthetic access$300(Landroid/icu/util/BytesTrie$State;)I
    .locals 0

    .line 75
    iget p0, p0, Landroid/icu/util/BytesTrie$State;->remainingMatchLength:I

    return p0
.end method

.method static synthetic access$302(Landroid/icu/util/BytesTrie$State;I)I
    .locals 0

    .line 75
    iput p1, p0, Landroid/icu/util/BytesTrie$State;->remainingMatchLength:I

    return p1
.end method
