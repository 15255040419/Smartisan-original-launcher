.class final Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;
.super Ljava/lang/Object;
.source "LocaleUtils.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/LocaleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ScoreEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;",
        ">;"
    }
.end annotation


# instance fields
.field public mIndex:I

.field public final mScore:[B


# direct methods
.method constructor <init>([BI)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 73
    iput v0, p0, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->mIndex:I

    .line 77
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->mScore:[B

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->set([BI)V

    return-void
.end method

.method private static compare([B[B)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 114
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 115
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    if-le v2, v3, :cond_0

    const/4 p0, 0x1

    return p0

    .line 117
    :cond_0
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    if-ge v2, v3, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private set([BI)V
    .locals 3

    const/4 v0, 0x0

    .line 82
    :goto_0
    iget-object v1, p0, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->mScore:[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 83
    aget-byte v2, p1, v0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    iput p2, p0, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->mIndex:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;)I
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->mScore:[B

    iget-object p1, p1, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->mScore:[B

    invoke-static {p0, p1}, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->compare([B[B)I

    move-result p0

    mul-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 72
    check-cast p1, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;

    invoke-virtual {p0, p1}, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->compareTo(Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;)I

    move-result p0

    return p0
.end method

.method public updateIfBetter([BI)V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->mScore:[B

    invoke-static {v0, p1}, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->compare([B[B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->set([BI)V

    :cond_0
    return-void
.end method
