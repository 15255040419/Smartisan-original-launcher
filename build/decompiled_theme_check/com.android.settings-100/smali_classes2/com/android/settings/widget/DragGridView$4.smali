.class Lcom/android/settings/widget/DragGridView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DragGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/DragGridView;->animateReorder(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/DragGridView;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/DragGridView;)V
    .locals 0

    .line 446
    iput-object p1, p0, Lcom/android/settings/widget/DragGridView$4;->this$0:Lcom/android/settings/widget/DragGridView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 454
    iget-object p1, p0, Lcom/android/settings/widget/DragGridView$4;->this$0:Lcom/android/settings/widget/DragGridView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/widget/DragGridView;->access$1102(Lcom/android/settings/widget/DragGridView;Z)Z

    .line 455
    iget-object p1, p0, Lcom/android/settings/widget/DragGridView$4;->this$0:Lcom/android/settings/widget/DragGridView;

    invoke-static {p1}, Lcom/android/settings/widget/DragGridView;->access$1200(Lcom/android/settings/widget/DragGridView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 456
    iget-object p0, p0, Lcom/android/settings/widget/DragGridView$4;->this$0:Lcom/android/settings/widget/DragGridView;

    invoke-static {p0}, Lcom/android/settings/widget/DragGridView;->access$1300(Lcom/android/settings/widget/DragGridView;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 449
    iget-object p0, p0, Lcom/android/settings/widget/DragGridView$4;->this$0:Lcom/android/settings/widget/DragGridView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/widget/DragGridView;->access$1102(Lcom/android/settings/widget/DragGridView;Z)Z

    return-void
.end method
