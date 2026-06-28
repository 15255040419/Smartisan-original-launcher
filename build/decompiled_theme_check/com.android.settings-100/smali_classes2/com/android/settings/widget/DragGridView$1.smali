.class Lcom/android/settings/widget/DragGridView$1;
.super Ljava/lang/Object;
.source "DragGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/DragGridView;
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

    .line 106
    iput-object p1, p0, Lcom/android/settings/widget/DragGridView$1;->this$0:Lcom/android/settings/widget/DragGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/android/settings/widget/DragGridView$1;->this$0:Lcom/android/settings/widget/DragGridView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/widget/DragGridView;->access$002(Lcom/android/settings/widget/DragGridView;Z)Z

    .line 112
    iget-object v0, p0, Lcom/android/settings/widget/DragGridView$1;->this$0:Lcom/android/settings/widget/DragGridView;

    invoke-static {v0}, Lcom/android/settings/widget/DragGridView;->access$100(Lcom/android/settings/widget/DragGridView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/android/settings/widget/DragGridView$1;->this$0:Lcom/android/settings/widget/DragGridView;

    invoke-static {v0}, Lcom/android/settings/widget/DragGridView;->access$200(Lcom/android/settings/widget/DragGridView;)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/widget/DragGridView$1;->this$0:Lcom/android/settings/widget/DragGridView;

    invoke-static {v0}, Lcom/android/settings/widget/DragGridView;->access$300(Lcom/android/settings/widget/DragGridView;)Lcom/android/settings/widget/DragGridView$GridViewDragListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/settings/widget/DragGridView$1;->this$0:Lcom/android/settings/widget/DragGridView;

    invoke-static {v0}, Lcom/android/settings/widget/DragGridView;->access$300(Lcom/android/settings/widget/DragGridView;)Lcom/android/settings/widget/DragGridView$GridViewDragListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/DragGridView$1;->this$0:Lcom/android/settings/widget/DragGridView;

    invoke-static {v1}, Lcom/android/settings/widget/DragGridView;->access$400(Lcom/android/settings/widget/DragGridView;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/widget/DragGridView$1;->this$0:Lcom/android/settings/widget/DragGridView;

    iget v2, v2, Lcom/android/settings/widget/DragGridView;->mLastX:I

    iget-object p0, p0, Lcom/android/settings/widget/DragGridView$1;->this$0:Lcom/android/settings/widget/DragGridView;

    iget p0, p0, Lcom/android/settings/widget/DragGridView;->mLastY:I

    invoke-interface {v0, v1, v2, p0}, Lcom/android/settings/widget/DragGridView$GridViewDragListener;->onDragStart(III)V

    :cond_0
    return-void
.end method
