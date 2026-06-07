.class public final Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView$a;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "SnapRecyclerView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;->d(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public final synthetic c:Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView$a;->c:Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 3

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$n;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 2
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView$a;->c:Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {p1, v2}, Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;->a(Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;Z)V

    if-nez p2, :cond_1

    .line 3
    iget-boolean p1, p0, Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView$a;->a:Z

    if-eqz p1, :cond_1

    .line 4
    iput-boolean v1, p0, Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView$a;->a:Z

    .line 5
    iput-boolean v1, p0, Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView$a;->b:Z

    goto :goto_1

    :cond_1
    if-ne p2, v0, :cond_2

    .line 6
    iput-boolean v0, p0, Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView$a;->b:Z

    :cond_2
    :goto_1
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$n;->a(Landroidx/recyclerview/widget/RecyclerView;II)V

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView$a;->a:Z

    .line 9
    :cond_1
    iget-boolean p1, p0, Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView$a;->b:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView$a;->a:Z

    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView$a;->c:Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;->getMSnapHelper()Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->c()V

    :cond_2
    return-void
.end method
