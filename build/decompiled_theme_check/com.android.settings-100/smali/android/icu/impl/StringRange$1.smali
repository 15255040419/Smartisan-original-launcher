.class Landroid/icu/impl/StringRange$1;
.super Ljava/lang/Object;
.source "StringRange.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/StringRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "[I>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 39
    check-cast p1, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/StringRange$1;->compare([I[I)I

    move-result p0

    return p0
.end method

.method public compare([I[I)I
    .locals 3

    .line 42
    array-length p0, p1

    array-length v0, p2

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    .line 44
    aget v1, p1, v0

    aget v2, p2, v0

    sub-int/2addr v1, v2

    if-eqz v1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_1
    array-length p0, p1

    array-length p1, p2

    sub-int/2addr p0, p1

    return p0
.end method
