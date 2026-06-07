.class public Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$a;
.super Ljava/lang/Object;
.source "SwipeRefreshLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method public constructor <init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$a;->a:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$a;->a:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget-boolean v0, p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->c:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object p1, p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->B:La/p/a/b;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, La/p/a/b;->setAlpha(I)V

    .line 3
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$a;->a:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget-object p1, p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->B:La/p/a/b;

    invoke-virtual {p1}, La/p/a/b;->start()V

    .line 4
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$a;->a:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget-boolean v0, p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->H:Z

    if-eqz v0, :cond_0

    .line 5
    iget-object p1, p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->b:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;->onRefresh()V

    .line 7
    :cond_0
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$a;->a:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget-object v0, p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->u:La/p/a/a;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTop()I

    move-result v0

    iput v0, p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->m:I

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->d()V

    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
