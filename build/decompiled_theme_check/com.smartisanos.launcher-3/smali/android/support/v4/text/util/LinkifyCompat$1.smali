.class final Landroid/support/v4/text/util/LinkifyCompat$1;
.super Ljava/lang/Object;
.source "LinkifyCompat.java"

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
.method public compare(Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;)I
    .locals 3

    .line 2
    iget p0, p1, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->start:I

    iget v0, p2, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->start:I

    const/4 v1, -0x1

    if-ge p0, v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    if-le p0, v0, :cond_1

    return v2

    .line 3
    :cond_1
    iget p0, p1, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->end:I

    iget p1, p2, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->end:I

    if-ge p0, p1, :cond_2

    return v2

    :cond_2
    if-le p0, p1, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;

    check-cast p2, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/text/util/LinkifyCompat$1;->compare(Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;)I

    move-result p0

    return p0
.end method
