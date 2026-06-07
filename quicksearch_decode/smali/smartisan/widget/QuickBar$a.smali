.class public Lsmartisan/widget/QuickBar$a;
.super Ljava/lang/Object;
.source "QuickBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/QuickBar;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lsmartisan/widget/QuickBar;


# direct methods
.method public constructor <init>(Lsmartisan/widget/QuickBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/QuickBar$a;->a:Lsmartisan/widget/QuickBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lsmartisan/widget/QuickBar$a;->a:Lsmartisan/widget/QuickBar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lsmartisan/widget/QuickBar;->a(Lsmartisan/widget/QuickBar;Z)Z

    .line 2
    iget-object p1, p0, Lsmartisan/widget/QuickBar$a;->a:Lsmartisan/widget/QuickBar;

    invoke-static {p1}, Lsmartisan/widget/QuickBar;->a(Lsmartisan/widget/QuickBar;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lsmartisan/widget/QuickBar$a;->a:Lsmartisan/widget/QuickBar;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lsmartisan/widget/QuickBar;->a(Lsmartisan/widget/QuickBar;Z)Z

    .line 2
    iget-object p1, p0, Lsmartisan/widget/QuickBar$a;->a:Lsmartisan/widget/QuickBar;

    iput-boolean v0, p1, Lsmartisan/widget/QuickBar;->l:Z

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
