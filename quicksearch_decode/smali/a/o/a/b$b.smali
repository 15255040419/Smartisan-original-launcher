.class public La/o/a/b$b;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/o/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La/o/a/b;


# direct methods
.method public constructor <init>(La/o/a/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/o/a/b$b;->a:La/o/a/b;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    iget-object p2, p0, La/o/a/b$b;->a:La/o/a/b;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result p3

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p1

    .line 3
    invoke-virtual {p2, p3, p1}, La/o/a/b;->a(II)V

    return-void
.end method
