.class public Lsmartisan/widget/SearchBar$h;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SearchBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/SearchBar;->f(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lsmartisan/widget/SearchBar;


# direct methods
.method public constructor <init>(Lsmartisan/widget/SearchBar;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SearchBar$h;->b:Lsmartisan/widget/SearchBar;

    iput-boolean p2, p0, Lsmartisan/widget/SearchBar$h;->a:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lsmartisan/widget/SearchBar$h;->b:Lsmartisan/widget/SearchBar;

    invoke-static {p1}, Lsmartisan/widget/SearchBar;->g(Lsmartisan/widget/SearchBar;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-boolean v0, p0, Lsmartisan/widget/SearchBar$h;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lsmartisan/widget/SearchBar$h;->b:Lsmartisan/widget/SearchBar;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lsmartisan/widget/SearchBar;->a(Lsmartisan/widget/SearchBar;Z)Z

    .line 3
    iget-object p1, p0, Lsmartisan/widget/SearchBar$h;->b:Lsmartisan/widget/SearchBar;

    invoke-static {p1}, Lsmartisan/widget/SearchBar;->g(Lsmartisan/widget/SearchBar;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
