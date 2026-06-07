.class public La/o/a/h$a;
.super La/g/h/a;
.source "RecyclerViewAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/o/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final d:La/o/a/h;

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "La/g/h/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(La/o/a/h;)V
    .locals 1

    .line 1
    invoke-direct {p0}, La/g/h/a;-><init>()V

    .line 2
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, La/o/a/h$a;->e:Ljava/util/Map;

    .line 3
    iput-object p1, p0, La/o/a/h$a;->d:La/o/a/h;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)La/g/h/n/d;
    .locals 1

    .line 26
    iget-object v0, p0, La/o/a/h$a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/g/h/a;

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0, p1}, La/g/h/a;->a(Landroid/view/View;)La/g/h/n/d;

    move-result-object p1

    return-object p1

    .line 28
    :cond_0
    invoke-super {p0, p1}, La/g/h/a;->a(Landroid/view/View;)La/g/h/n/d;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/view/View;I)V
    .locals 1

    .line 17
    iget-object v0, p0, La/o/a/h$a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/g/h/a;

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0, p1, p2}, La/g/h/a;->a(Landroid/view/View;I)V

    goto :goto_0

    .line 19
    :cond_0
    invoke-super {p0, p1, p2}, La/g/h/a;->a(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method public a(Landroid/view/View;La/g/h/n/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, La/o/a/h$a;->d:La/o/a/h;

    invoke-virtual {v0}, La/o/a/h;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, La/o/a/h$a;->d:La/o/a/h;

    iget-object v0, v0, La/o/a/h;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, La/o/a/h$a;->d:La/o/a/h;

    iget-object v0, v0, La/o/a/h;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a(Landroid/view/View;La/g/h/n/c;)V

    .line 5
    iget-object v0, p0, La/o/a/h$a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/g/h/a;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1, p2}, La/g/h/a;->a(Landroid/view/View;La/g/h/n/c;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-super {p0, p1, p2}, La/g/h/a;->a(Landroid/view/View;La/g/h/n/c;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-super {p0, p1, p2}, La/g/h/a;->a(Landroid/view/View;La/g/h/n/c;)V

    :goto_0
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    .line 9
    iget-object v0, p0, La/o/a/h$a;->d:La/o/a/h;

    invoke-virtual {v0}, La/o/a/h;->c()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, La/o/a/h$a;->d:La/o/a/h;

    iget-object v0, v0, La/o/a/h;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, La/o/a/h$a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/g/h/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0, p1, p2, p3}, La/g/h/a;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 13
    :cond_0
    invoke-super {p0, p1, p2, p3}, La/g/h/a;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 14
    :cond_1
    iget-object v0, p0, La/o/a/h$a;->d:La/o/a/h;

    iget-object v0, v0, La/o/a/h;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 15
    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 16
    :cond_2
    invoke-super {p0, p1, p2, p3}, La/g/h/a;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 20
    iget-object v0, p0, La/o/a/h$a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/g/h/a;

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {v0, p1, p2}, La/g/h/a;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    .line 22
    :cond_0
    invoke-super {p0, p1, p2}, La/g/h/a;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 23
    iget-object v0, p0, La/o/a/h$a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/g/h/a;

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0, p1, p2, p3}, La/g/h/a;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    .line 25
    :cond_0
    invoke-super {p0, p1, p2, p3}, La/g/h/a;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, La/o/a/h$a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/g/h/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, La/g/h/a;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, La/g/h/a;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    :goto_0
    return-void
.end method

.method public c(Landroid/view/View;)La/g/h/a;
    .locals 1

    .line 1
    iget-object v0, p0, La/o/a/h$a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La/g/h/a;

    return-object p1
.end method

.method public c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 2
    iget-object v0, p0, La/o/a/h$a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/g/h/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2}, La/g/h/a;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, La/g/h/a;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    :goto_0
    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->b(Landroid/view/View;)La/g/h/a;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 2
    iget-object v1, p0, La/o/a/h$a;->e:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 3
    iget-object v0, p0, La/o/a/h$a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/g/h/a;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2}, La/g/h/a;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-super {p0, p1, p2}, La/g/h/a;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    :goto_0
    return-void
.end method
