.class Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$5;
.super Ljava/lang/Object;
.source "SwipeRefreshLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->finishSpinner(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method constructor <init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V
    .locals 0

    .line 976
    iput-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$5;->this$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 984
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$5;->this$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget-boolean p1, p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mScale:Z

    if-nez p1, :cond_0

    .line 985
    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$5;->this$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
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
