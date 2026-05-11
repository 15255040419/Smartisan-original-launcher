.class final Landroid/support/v4/provider/FontsContractCompat$5;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/provider/FontsContractCompat$5;->compare([B[B)I

    move-result p0

    return p0
.end method

.method public compare([B[B)I
    .locals 3

    .line 2
    array-length p0, p1

    array-length v0, p2

    if-eq p0, v0, :cond_0

    .line 3
    array-length p0, p1

    array-length p1, p2

    :goto_0
    sub-int/2addr p0, p1

    return p0

    :cond_0
    const/4 p0, 0x0

    move v0, p0

    .line 4
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 5
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    if-eq v1, v2, :cond_1

    .line 6
    aget-byte p0, p1, v0

    aget-byte p1, p2, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return p0
.end method
