.class final Landroid/support/v4/view/ViewPager$1;
.super Ljava/lang/Object;
.source "ViewPager.java"

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
.method public compare(Landroid/support/v4/view/ViewPager$ItemInfo;Landroid/support/v4/view/ViewPager$ItemInfo;)I
    .locals 0

    .line 2
    iget p0, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget p1, p2, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/view/ViewPager$ItemInfo;

    check-cast p2, Landroid/support/v4/view/ViewPager$ItemInfo;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/view/ViewPager$1;->compare(Landroid/support/v4/view/ViewPager$ItemInfo;Landroid/support/v4/view/ViewPager$ItemInfo;)I

    move-result p0

    return p0
.end method
