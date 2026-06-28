.class final Landroidx/core/text/util/LinkifyCompat$1;
.super Ljava/lang/Object;
.source "LinkifyCompat.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/util/LinkifyCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/core/text/util/LinkifyCompat$LinkSpec;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroidx/core/text/util/LinkifyCompat$LinkSpec;Landroidx/core/text/util/LinkifyCompat$LinkSpec;)I
    .locals 3

    .line 62
    iget p0, p1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    iget v0, p2, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    const/4 v1, -0x1

    if-ge p0, v0, :cond_0

    return v1

    .line 66
    :cond_0
    iget p0, p1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    iget v0, p2, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    const/4 v2, 0x1

    if-le p0, v0, :cond_1

    return v2

    .line 70
    :cond_1
    iget p0, p1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    iget v0, p2, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    if-ge p0, v0, :cond_2

    return v2

    .line 74
    :cond_2
    iget p0, p1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    iget p1, p2, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    if-le p0, p1, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 59
    check-cast p1, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    check-cast p2, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    invoke-virtual {p0, p1, p2}, Landroidx/core/text/util/LinkifyCompat$1;->compare(Landroidx/core/text/util/LinkifyCompat$LinkSpec;Landroidx/core/text/util/LinkifyCompat$LinkSpec;)I

    move-result p0

    return p0
.end method
