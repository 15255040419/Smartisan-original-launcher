.class final Landroid/support/v7/util/DiffUtil$1;
.super Ljava/lang/Object;
.source "DiffUtil.java"

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
.method public compare(Landroid/support/v7/util/DiffUtil$Snake;Landroid/support/v7/util/DiffUtil$Snake;)I
    .locals 1

    .line 2
    iget p0, p1, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    iget v0, p2, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    sub-int/2addr p0, v0

    if-nez p0, :cond_0

    .line 3
    iget p0, p1, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    iget p1, p2, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    sub-int/2addr p0, p1

    :cond_0
    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v7/util/DiffUtil$Snake;

    check-cast p2, Landroid/support/v7/util/DiffUtil$Snake;

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/util/DiffUtil$1;->compare(Landroid/support/v7/util/DiffUtil$Snake;Landroid/support/v7/util/DiffUtil$Snake;)I

    move-result p0

    return p0
.end method
