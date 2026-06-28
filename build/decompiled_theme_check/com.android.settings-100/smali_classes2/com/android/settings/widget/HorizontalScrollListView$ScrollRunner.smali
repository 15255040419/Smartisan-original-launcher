.class Lcom/android/settings/widget/HorizontalScrollListView$ScrollRunner;
.super Ljava/lang/Object;
.source "HorizontalScrollListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/HorizontalScrollListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollRunner"
.end annotation


# instance fields
.field private listener:Lcom/android/settings/widget/HorizontalScrollListView$ScrollAnimationListener;

.field final synthetic this$0:Lcom/android/settings/widget/HorizontalScrollListView;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/HorizontalScrollListView;)V
    .locals 1

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/HorizontalScrollListView$ScrollRunner;-><init>(Lcom/android/settings/widget/HorizontalScrollListView;Lcom/android/settings/widget/HorizontalScrollListView$ScrollAnimationListener;)V

    return-void
.end method

.method constructor <init>(Lcom/android/settings/widget/HorizontalScrollListView;Lcom/android/settings/widget/HorizontalScrollListView$ScrollAnimationListener;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/android/settings/widget/HorizontalScrollListView$ScrollRunner;->this$0:Lcom/android/settings/widget/HorizontalScrollListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p2, p0, Lcom/android/settings/widget/HorizontalScrollListView$ScrollRunner;->listener:Lcom/android/settings/widget/HorizontalScrollListView$ScrollAnimationListener;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 111
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalScrollListView$ScrollRunner;->this$0:Lcom/android/settings/widget/HorizontalScrollListView;

    invoke-static {v0}, Lcom/android/settings/widget/HorizontalScrollListView;->access$000(Lcom/android/settings/widget/HorizontalScrollListView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    .line 112
    iget-object v1, p0, Lcom/android/settings/widget/HorizontalScrollListView$ScrollRunner;->this$0:Lcom/android/settings/widget/HorizontalScrollListView;

    invoke-virtual {v1}, Lcom/android/settings/widget/HorizontalScrollListView;->getScrollHandleView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/android/settings/widget/HorizontalScrollListView$ScrollRunner;->this$0:Lcom/android/settings/widget/HorizontalScrollListView;

    invoke-virtual {v1}, Lcom/android/settings/widget/HorizontalScrollListView;->getScrollHandleView()Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/widget/HorizontalScrollListView$ScrollRunner;->this$0:Lcom/android/settings/widget/HorizontalScrollListView;

    invoke-static {v3}, Lcom/android/settings/widget/HorizontalScrollListView;->access$000(Lcom/android/settings/widget/HorizontalScrollListView;)Landroid/widget/Scroller;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    invoke-virtual {v1, v3, v2}, Landroid/view/View;->scrollTo(II)V

    :cond_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalScrollListView$ScrollRunner;->this$0:Lcom/android/settings/widget/HorizontalScrollListView;

    invoke-static {v0, v1}, Lcom/android/settings/widget/HorizontalScrollListView;->access$102(Lcom/android/settings/widget/HorizontalScrollListView;Z)Z

    .line 117
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalScrollListView$ScrollRunner;->this$0:Lcom/android/settings/widget/HorizontalScrollListView;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/HorizontalScrollListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalScrollListView$ScrollRunner;->this$0:Lcom/android/settings/widget/HorizontalScrollListView;

    invoke-static {v0, v2}, Lcom/android/settings/widget/HorizontalScrollListView;->access$102(Lcom/android/settings/widget/HorizontalScrollListView;Z)Z

    .line 120
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalScrollListView$ScrollRunner;->this$0:Lcom/android/settings/widget/HorizontalScrollListView;

    invoke-virtual {v0}, Lcom/android/settings/widget/HorizontalScrollListView;->getHorizontalScrollX()I

    move-result v0

    if-nez v0, :cond_4

    .line 121
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalScrollListView$ScrollRunner;->this$0:Lcom/android/settings/widget/HorizontalScrollListView;

    invoke-static {v0, v2}, Lcom/android/settings/widget/HorizontalScrollListView;->access$202(Lcom/android/settings/widget/HorizontalScrollListView;I)I

    .line 122
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalScrollListView$ScrollRunner;->this$0:Lcom/android/settings/widget/HorizontalScrollListView;

    invoke-static {v0}, Lcom/android/settings/widget/HorizontalScrollListView;->access$300(Lcom/android/settings/widget/HorizontalScrollListView;)Lcom/android/settings/widget/HorizontalScrollListView$ScrollStateListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalScrollListView$ScrollRunner;->this$0:Lcom/android/settings/widget/HorizontalScrollListView;

    invoke-static {v0}, Lcom/android/settings/widget/HorizontalScrollListView;->access$300(Lcom/android/settings/widget/HorizontalScrollListView;)Lcom/android/settings/widget/HorizontalScrollListView$ScrollStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/widget/HorizontalScrollListView$ScrollStateListener;->onScrollRestored()V

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalScrollListView$ScrollRunner;->this$0:Lcom/android/settings/widget/HorizontalScrollListView;

    invoke-virtual {v0}, Lcom/android/settings/widget/HorizontalScrollListView;->getBtnsView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 126
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalScrollListView$ScrollRunner;->this$0:Lcom/android/settings/widget/HorizontalScrollListView;

    invoke-virtual {v0}, Lcom/android/settings/widget/HorizontalScrollListView;->getBtnsView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 128
    :cond_3
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalScrollListView$ScrollRunner;->this$0:Lcom/android/settings/widget/HorizontalScrollListView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/HorizontalScrollListView;->saveHintViewPosition(I)V

    goto :goto_1

    .line 130
    :cond_4
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalScrollListView$ScrollRunner;->this$0:Lcom/android/settings/widget/HorizontalScrollListView;

    invoke-virtual {v0}, Lcom/android/settings/widget/HorizontalScrollListView;->getBtnsView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 131
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalScrollListView$ScrollRunner;->this$0:Lcom/android/settings/widget/HorizontalScrollListView;

    invoke-virtual {v0}, Lcom/android/settings/widget/HorizontalScrollListView;->getHorizontalScrollX()I

    move-result v2

    if-lez v2, :cond_5

    const/4 v2, 0x4

    goto :goto_0

    :cond_5
    const/4 v2, 0x3

    :goto_0
    invoke-static {v0, v2}, Lcom/android/settings/widget/HorizontalScrollListView;->access$202(Lcom/android/settings/widget/HorizontalScrollListView;I)I

    .line 133
    :cond_6
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalScrollListView$ScrollRunner;->this$0:Lcom/android/settings/widget/HorizontalScrollListView;

    invoke-static {v0}, Lcom/android/settings/widget/HorizontalScrollListView;->access$300(Lcom/android/settings/widget/HorizontalScrollListView;)Lcom/android/settings/widget/HorizontalScrollListView$ScrollStateListener;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 134
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalScrollListView$ScrollRunner;->this$0:Lcom/android/settings/widget/HorizontalScrollListView;

    invoke-static {v0}, Lcom/android/settings/widget/HorizontalScrollListView;->access$300(Lcom/android/settings/widget/HorizontalScrollListView;)Lcom/android/settings/widget/HorizontalScrollListView$ScrollStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/widget/HorizontalScrollListView$ScrollStateListener;->onScrollCompleted()V

    .line 136
    :cond_7
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalScrollListView$ScrollRunner;->this$0:Lcom/android/settings/widget/HorizontalScrollListView;

    invoke-virtual {v0}, Lcom/android/settings/widget/HorizontalScrollListView;->getBtnsView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 137
    iget-object v0, p0, Lcom/android/settings/widget/HorizontalScrollListView$ScrollRunner;->this$0:Lcom/android/settings/widget/HorizontalScrollListView;

    invoke-virtual {v0}, Lcom/android/settings/widget/HorizontalScrollListView;->getBtnsView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 140
    :cond_8
    :goto_1
    iget-object p0, p0, Lcom/android/settings/widget/HorizontalScrollListView$ScrollRunner;->listener:Lcom/android/settings/widget/HorizontalScrollListView$ScrollAnimationListener;

    if-eqz p0, :cond_9

    .line 141
    invoke-interface {p0}, Lcom/android/settings/widget/HorizontalScrollListView$ScrollAnimationListener;->onAnimationEnd()V

    :cond_9
    :goto_2
    return-void
.end method
