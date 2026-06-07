.class public final synthetic Lb/a/a/c1/h/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic a:Lcom/android/quicksearchbox/animation/view/ContainerView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quicksearchbox/animation/view/ContainerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/a/c1/h/b;->a:Lcom/android/quicksearchbox/animation/view/ContainerView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lb/a/a/c1/h/b;->a:Lcom/android/quicksearchbox/animation/view/ContainerView;

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/animation/view/ContainerView;->a(Landroid/animation/ValueAnimator;)V

    return-void
.end method
