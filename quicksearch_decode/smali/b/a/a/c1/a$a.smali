.class public final Lb/a/a/c1/a$a;
.super Ljava/lang/Object;
.source "AnimationExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/c1/a;->a(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lb/a/a/c1/a;->a()Lcom/android/quicksearchbox/animation/view/ContainerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lb/a/a/c1/a;->b()Landroid/view/WindowManager;

    move-result-object v0

    invoke-static {}, Lb/a/a/c1/a;->a()Lcom/android/quicksearchbox/animation/view/ContainerView;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 3
    invoke-static {}, Lb/a/a/c1/a;->b()Landroid/view/WindowManager;

    move-result-object v0

    invoke-static {}, Lb/a/a/c1/a;->a()Lcom/android/quicksearchbox/animation/view/ContainerView;

    move-result-object v1

    sget-object v2, Lb/a/a/c1/a;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
