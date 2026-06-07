.class public La/g/h/g;
.super Ljava/lang/Object;
.source "NestedScrollingParentHelper.java"


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 4
    iget v0, p0, La/g/h/g;->a:I

    iget v1, p0, La/g/h/g;->b:I

    or-int/2addr v0, v1

    return v0
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, La/g/h/g;->a(Landroid/view/View;I)V

    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 6
    iput p1, p0, La/g/h/g;->b:I

    goto :goto_0

    .line 7
    :cond_0
    iput p1, p0, La/g/h/g;->a:I

    :goto_0
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, La/g/h/g;->a(Landroid/view/View;Landroid/view/View;II)V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    const/4 p1, 0x1

    if-ne p4, p1, :cond_0

    .line 2
    iput p3, p0, La/g/h/g;->b:I

    goto :goto_0

    .line 3
    :cond_0
    iput p3, p0, La/g/h/g;->a:I

    :goto_0
    return-void
.end method
