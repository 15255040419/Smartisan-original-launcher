.class public final Lb/a/a/l1/c$d;
.super Ljava/lang/Object;
.source "TNTSuggestionsListAdapter.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/l1/c;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/a/a/l1/c;


# direct methods
.method public constructor <init>(Lb/a/a/l1/c;)V
    .locals 0

    iput-object p1, p0, Lb/a/a/l1/c$d;->a:Lb/a/a/l1/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lb/a/a/l1/c$d;->a:Lb/a/a/l1/c;

    invoke-static {v0}, Lb/a/a/l1/c;->f(Lb/a/a/l1/c;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/a/a/l1/c$d;->a:Lb/a/a/l1/c;

    invoke-static {v0}, Lb/a/a/l1/c;->f(Lb/a/a/l1/c;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->i()Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Landroid/transition/TransitionSet;

    invoke-direct {v1}, Landroid/transition/TransitionSet;-><init>()V

    const-wide/16 v2, 0x32

    .line 3
    invoke-virtual {v1, v2, v3}, Landroid/transition/TransitionSet;->setStartDelay(J)Landroid/transition/TransitionSet;

    move-result-object v1

    .line 4
    new-instance v2, Landroid/transition/ChangeBounds;

    invoke-direct {v2}, Landroid/transition/ChangeBounds;-><init>()V

    invoke-virtual {v1, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v1

    .line 5
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3eae147b    # 0.34f

    const v4, 0x3f30a3d7    # 0.69f

    const v5, 0x3dcccccd    # 0.1f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    move-result-object v1

    const-wide/16 v2, 0x190

    .line 6
    invoke-virtual {v1, v2, v3}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lb/a/a/l1/c$d;->a:Lb/a/a/l1/c;

    invoke-static {v0}, Lb/a/a/l1/c;->k(Lb/a/a/l1/c;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
