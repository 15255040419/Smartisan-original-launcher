.class public Lsmartisan/widget/SearchBar$i;
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
    iput-object p1, p0, Lsmartisan/widget/SearchBar$i;->b:Lsmartisan/widget/SearchBar;

    iput-boolean p2, p0, Lsmartisan/widget/SearchBar$i;->a:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lsmartisan/widget/SearchBar$i;->b:Lsmartisan/widget/SearchBar;

    invoke-static {p1}, Lsmartisan/widget/SearchBar;->d(Lsmartisan/widget/SearchBar;)Lsmartisan/widget/SearchBar$Listener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lsmartisan/widget/SearchBar$i;->b:Lsmartisan/widget/SearchBar;

    invoke-static {p1}, Lsmartisan/widget/SearchBar;->d(Lsmartisan/widget/SearchBar;)Lsmartisan/widget/SearchBar$Listener;

    move-result-object p1

    invoke-interface {p1}, Lsmartisan/widget/SearchBar$Listener;->exeAnimationEnd()V

    .line 3
    :cond_0
    iget-object p1, p0, Lsmartisan/widget/SearchBar$i;->b:Lsmartisan/widget/SearchBar;

    invoke-static {p1}, Lsmartisan/widget/SearchBar;->h(Lsmartisan/widget/SearchBar;)Lsmartisan/widget/SearchBar$AnimationListenr;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lsmartisan/widget/SearchBar$i;->b:Lsmartisan/widget/SearchBar;

    invoke-static {p1}, Lsmartisan/widget/SearchBar;->h(Lsmartisan/widget/SearchBar;)Lsmartisan/widget/SearchBar$AnimationListenr;

    move-result-object p1

    invoke-interface {p1}, Lsmartisan/widget/SearchBar$AnimationListenr;->onAnimationEnd()V

    .line 5
    :cond_1
    iget-object p1, p0, Lsmartisan/widget/SearchBar$i;->b:Lsmartisan/widget/SearchBar;

    new-instance v0, Lsmartisan/widget/SearchBar$i$a;

    invoke-direct {v0, p0}, Lsmartisan/widget/SearchBar$i$a;-><init>(Lsmartisan/widget/SearchBar$i;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 6
    iget-object p1, p0, Lsmartisan/widget/SearchBar$i;->b:Lsmartisan/widget/SearchBar;

    iget-boolean v0, p0, Lsmartisan/widget/SearchBar$i;->a:Z

    invoke-static {p1, v0}, Lsmartisan/widget/SearchBar;->b(Lsmartisan/widget/SearchBar;Z)V

    .line 7
    iget-boolean p1, p0, Lsmartisan/widget/SearchBar$i;->a:Z

    if-nez p1, :cond_2

    .line 8
    iget-object v0, p0, Lsmartisan/widget/SearchBar$i;->b:Lsmartisan/widget/SearchBar;

    invoke-static {v0, p1}, Lsmartisan/widget/SearchBar;->c(Lsmartisan/widget/SearchBar;Z)V

    .line 9
    :cond_2
    iget-boolean p1, p0, Lsmartisan/widget/SearchBar$i;->a:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lsmartisan/widget/SearchBar$i;->b:Lsmartisan/widget/SearchBar;

    invoke-virtual {p1}, Lsmartisan/widget/SearchBar;->e()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    :cond_3
    iget-object p1, p0, Lsmartisan/widget/SearchBar$i;->b:Lsmartisan/widget/SearchBar;

    invoke-static {p1}, Lsmartisan/widget/SearchBar;->c(Lsmartisan/widget/SearchBar;)V

    .line 11
    :cond_4
    iget-object p1, p0, Lsmartisan/widget/SearchBar$i;->b:Lsmartisan/widget/SearchBar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lsmartisan/widget/SearchBar;->a(Lsmartisan/widget/SearchBar;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lsmartisan/widget/SearchBar$i;->b:Lsmartisan/widget/SearchBar;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lsmartisan/widget/SearchBar;->a(Lsmartisan/widget/SearchBar;Z)Z

    .line 2
    iget-object p1, p0, Lsmartisan/widget/SearchBar$i;->b:Lsmartisan/widget/SearchBar;

    invoke-static {p1}, Lsmartisan/widget/SearchBar;->d(Lsmartisan/widget/SearchBar;)Lsmartisan/widget/SearchBar$Listener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lsmartisan/widget/SearchBar$i;->b:Lsmartisan/widget/SearchBar;

    invoke-static {p1}, Lsmartisan/widget/SearchBar;->d(Lsmartisan/widget/SearchBar;)Lsmartisan/widget/SearchBar$Listener;

    move-result-object p1

    invoke-interface {p1}, Lsmartisan/widget/SearchBar$Listener;->exeAnimationStart()V

    .line 4
    :cond_0
    iget-object p1, p0, Lsmartisan/widget/SearchBar$i;->b:Lsmartisan/widget/SearchBar;

    invoke-static {p1}, Lsmartisan/widget/SearchBar;->h(Lsmartisan/widget/SearchBar;)Lsmartisan/widget/SearchBar$AnimationListenr;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lsmartisan/widget/SearchBar$i;->b:Lsmartisan/widget/SearchBar;

    invoke-static {p1}, Lsmartisan/widget/SearchBar;->h(Lsmartisan/widget/SearchBar;)Lsmartisan/widget/SearchBar$AnimationListenr;

    move-result-object p1

    invoke-interface {p1}, Lsmartisan/widget/SearchBar$AnimationListenr;->onAnimationStart()V

    :cond_1
    return-void
.end method
