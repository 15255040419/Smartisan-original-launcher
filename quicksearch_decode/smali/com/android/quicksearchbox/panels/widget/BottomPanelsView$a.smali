.class public Lcom/android/quicksearchbox/panels/widget/BottomPanelsView$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BottomPanelsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView$a;->a:Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView$a;->a:Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;

    invoke-static {p1}, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->a(Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView$a;->a:Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;

    invoke-static {p1}, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->b(Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
