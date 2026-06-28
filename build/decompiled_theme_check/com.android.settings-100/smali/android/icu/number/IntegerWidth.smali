.class public Landroid/icu/number/IntegerWidth;
.super Ljava/lang/Object;
.source "IntegerWidth.java"


# static fields
.field static final DEFAULT:Landroid/icu/number/IntegerWidth;


# instance fields
.field final maxInt:I

.field final minInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 20
    new-instance v0, Landroid/icu/number/IntegerWidth;

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/number/IntegerWidth;-><init>(II)V

    sput-object v0, Landroid/icu/number/IntegerWidth;->DEFAULT:Landroid/icu/number/IntegerWidth;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Landroid/icu/number/IntegerWidth;->minInt:I

    .line 27
    iput p2, p0, Landroid/icu/number/IntegerWidth;->maxInt:I

    return-void
.end method

.method public static zeroFillTo(I)Landroid/icu/number/IntegerWidth;
    .locals 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 44
    sget-object p0, Landroid/icu/number/IntegerWidth;->DEFAULT:Landroid/icu/number/IntegerWidth;

    return-object p0

    :cond_0
    if-ltz p0, :cond_1

    const/16 v0, 0x64

    if-ge p0, v0, :cond_1

    .line 46
    new-instance v0, Landroid/icu/number/IntegerWidth;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v1}, Landroid/icu/number/IntegerWidth;-><init>(II)V

    return-object v0

    .line 48
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Integer digits must be between 0 and 100"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public truncateAt(I)Landroid/icu/number/IntegerWidth;
    .locals 1

    .line 65
    iget v0, p0, Landroid/icu/number/IntegerWidth;->maxInt:I

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    if-ltz p1, :cond_1

    const/16 v0, 0x64

    if-ge p1, v0, :cond_1

    .line 68
    new-instance v0, Landroid/icu/number/IntegerWidth;

    iget p0, p0, Landroid/icu/number/IntegerWidth;->minInt:I

    invoke-direct {v0, p0, p1}, Landroid/icu/number/IntegerWidth;-><init>(II)V

    return-object v0

    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 70
    new-instance v0, Landroid/icu/number/IntegerWidth;

    iget p0, p0, Landroid/icu/number/IntegerWidth;->minInt:I

    invoke-direct {v0, p0, p1}, Landroid/icu/number/IntegerWidth;-><init>(II)V

    return-object v0

    .line 72
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Integer digits must be between 0 and 100"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
