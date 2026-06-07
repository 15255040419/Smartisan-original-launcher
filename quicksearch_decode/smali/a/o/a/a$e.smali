.class public La/o/a/a$e;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/o/a/a;->t(Landroidx/recyclerview/widget/RecyclerView$u;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView$u;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/view/ViewPropertyAnimator;

.field public final synthetic d:La/o/a/a;


# direct methods
.method public constructor <init>(La/o/a/a;Landroidx/recyclerview/widget/RecyclerView$u;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/o/a/a$e;->d:La/o/a/a;

    iput-object p2, p0, La/o/a/a$e;->a:Landroidx/recyclerview/widget/RecyclerView$u;

    iput-object p3, p0, La/o/a/a$e;->b:Landroid/view/View;

    iput-object p4, p0, La/o/a/a$e;->c:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, La/o/a/a$e;->b:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, La/o/a/a$e;->c:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 2
    iget-object p1, p0, La/o/a/a$e;->d:La/o/a/a;

    iget-object v0, p0, La/o/a/a$e;->a:Landroidx/recyclerview/widget/RecyclerView$u;

    invoke-virtual {p1, v0}, La/o/a/j;->h(Landroidx/recyclerview/widget/RecyclerView$u;)V

    .line 3
    iget-object p1, p0, La/o/a/a$e;->d:La/o/a/a;

    iget-object p1, p1, La/o/a/a;->o:Ljava/util/ArrayList;

    iget-object v0, p0, La/o/a/a$e;->a:Landroidx/recyclerview/widget/RecyclerView$u;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, La/o/a/a$e;->d:La/o/a/a;

    invoke-virtual {p1}, La/o/a/a;->j()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, La/o/a/a$e;->d:La/o/a/a;

    iget-object v0, p0, La/o/a/a$e;->a:Landroidx/recyclerview/widget/RecyclerView$u;

    invoke-virtual {p1, v0}, La/o/a/j;->i(Landroidx/recyclerview/widget/RecyclerView$u;)V

    return-void
.end method
