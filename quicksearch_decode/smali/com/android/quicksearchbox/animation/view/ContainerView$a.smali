.class public Lcom/android/quicksearchbox/animation/view/ContainerView$a;
.super Ljava/lang/Object;
.source "ContainerView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/animation/view/ContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/animation/view/ContainerView;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/animation/view/ContainerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/animation/view/ContainerView$a;->a:Lcom/android/quicksearchbox/animation/view/ContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/ContainerView$a;->a:Lcom/android/quicksearchbox/animation/view/ContainerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2
    sget-boolean v0, Lb/a/a/c1/a;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lb/a/a/c1/a;->f:Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/ContainerView$a;->a:Lcom/android/quicksearchbox/animation/view/ContainerView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/animation/view/ContainerView;->e()V

    :goto_0
    return-void
.end method
