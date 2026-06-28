.class final Landroidx/recyclerview/widget/DiffUtil$1;
.super Ljava/lang/Object;
.source "DiffUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/recyclerview/widget/DiffUtil$Snake;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroidx/recyclerview/widget/DiffUtil$Snake;Landroidx/recyclerview/widget/DiffUtil$Snake;)I
    .locals 1

    .line 87
    iget p0, p1, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    iget v0, p2, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    sub-int/2addr p0, v0

    if-nez p0, :cond_0

    .line 88
    iget p0, p1, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    iget p1, p2, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    sub-int/2addr p0, p1

    :cond_0
    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 84
    check-cast p1, Landroidx/recyclerview/widget/DiffUtil$Snake;

    check-cast p2, Landroidx/recyclerview/widget/DiffUtil$Snake;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/DiffUtil$1;->compare(Landroidx/recyclerview/widget/DiffUtil$Snake;Landroidx/recyclerview/widget/DiffUtil$Snake;)I

    move-result p0

    return p0
.end method
