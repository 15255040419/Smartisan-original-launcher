.class public Lcom/android/quicksearchbox/animation/view/ContainerView$b;
.super Ljava/lang/Object;
.source "ContainerView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/animation/view/ContainerView;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:I

.field public final synthetic c:Lcom/android/quicksearchbox/animation/view/ContainerView;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/animation/view/ContainerView;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/animation/view/ContainerView$b;->c:Lcom/android/quicksearchbox/animation/view/ContainerView;

    iput p2, p0, Lcom/android/quicksearchbox/animation/view/ContainerView$b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/quicksearchbox/animation/view/ContainerView$b;->a:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    sget-boolean p1, Lb/a/a/c1/c;->e:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/quicksearchbox/animation/view/ContainerView$b;->c:Lcom/android/quicksearchbox/animation/view/ContainerView;

    invoke-static {p1}, Lcom/android/quicksearchbox/animation/view/ContainerView;->a(Lcom/android/quicksearchbox/animation/view/ContainerView;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Animation -> onAnimationCancel!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/android/quicksearchbox/animation/view/ContainerView$b;->a:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 2
    sget-boolean p1, Lb/a/a/c1/c;->e:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/quicksearchbox/animation/view/ContainerView$b;->c:Lcom/android/quicksearchbox/animation/view/ContainerView;

    invoke-static {p1}, Lcom/android/quicksearchbox/animation/view/ContainerView;->a(Lcom/android/quicksearchbox/animation/view/ContainerView;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Animation -> onAnimationEnd!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    iget-boolean p1, p0, Lcom/android/quicksearchbox/animation/view/ContainerView$b;->a:Z

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/android/quicksearchbox/animation/view/ContainerView$b;->c:Lcom/android/quicksearchbox/animation/view/ContainerView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/quicksearchbox/animation/view/ContainerView;->a(Lcom/android/quicksearchbox/animation/view/ContainerView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 6
    iget-object p1, p0, Lcom/android/quicksearchbox/animation/view/ContainerView$b;->c:Lcom/android/quicksearchbox/animation/view/ContainerView;

    iget v0, p0, Lcom/android/quicksearchbox/animation/view/ContainerView$b;->b:I

    invoke-static {p1, v0}, Lcom/android/quicksearchbox/animation/view/ContainerView;->a(Lcom/android/quicksearchbox/animation/view/ContainerView;I)V

    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/animation/view/ContainerView$b;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    sget-boolean p1, Lb/a/a/c1/c;->e:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/quicksearchbox/animation/view/ContainerView$b;->c:Lcom/android/quicksearchbox/animation/view/ContainerView;

    invoke-static {p1}, Lcom/android/quicksearchbox/animation/view/ContainerView;->a(Lcom/android/quicksearchbox/animation/view/ContainerView;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Animation -> onAnimationRepeat!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 2
    iget-object p1, p0, Lcom/android/quicksearchbox/animation/view/ContainerView$b;->c:Lcom/android/quicksearchbox/animation/view/ContainerView;

    invoke-static {p1}, Lcom/android/quicksearchbox/animation/view/ContainerView;->a(Lcom/android/quicksearchbox/animation/view/ContainerView;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Animation -> onAnimationStart!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/android/quicksearchbox/animation/view/ContainerView$b;->a:Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/animation/view/ContainerView$b;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method
