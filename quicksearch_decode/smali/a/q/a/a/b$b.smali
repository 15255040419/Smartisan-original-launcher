.class public La/q/a/a/b$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimatedVectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/q/a/a/b;->registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La/q/a/a/b;


# direct methods
.method public constructor <init>(La/q/a/a/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/q/a/a/b$b;->a:La/q/a/a/b;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, La/q/a/a/b$b;->a:La/q/a/a/b;

    iget-object v0, v0, La/q/a/a/b;->f:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$a;

    iget-object v3, p0, La/q/a/a/b$b;->a:La/q/a/a/b;

    invoke-virtual {v2, v3}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$a;->a(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, La/q/a/a/b$b;->a:La/q/a/a/b;

    iget-object v0, v0, La/q/a/a/b;->f:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$a;

    iget-object v3, p0, La/q/a/a/b$b;->a:La/q/a/a/b;

    invoke-virtual {v2, v3}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$a;->b(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
