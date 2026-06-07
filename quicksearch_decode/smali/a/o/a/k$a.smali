.class public La/o/a/k$a;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "SnapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/o/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:La/o/a/k;


# direct methods
.method public constructor <init>(La/o/a/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/o/a/k$a;->b:La/o/a/k;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, La/o/a/k$a;->a:Z

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$n;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    .line 2
    iget-boolean p1, p0, La/o/a/k$a;->a:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, La/o/a/k$a;->a:Z

    .line 4
    iget-object p1, p0, La/o/a/k$a;->b:La/o/a/k;

    invoke-virtual {p1}, La/o/a/k;->c()V

    :cond_0
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, La/o/a/k$a;->a:Z

    :cond_1
    return-void
.end method
