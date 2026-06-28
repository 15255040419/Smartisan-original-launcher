.class Lcom/android/settings/widget/DragGridView$2;
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

    .line 355
    iput-object p1, p0, Lcom/android/settings/widget/DragGridView$2;->this$0:Lcom/android/settings/widget/DragGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 360
    iget-object v0, p0, Lcom/android/settings/widget/DragGridView$2;->this$0:Lcom/android/settings/widget/DragGridView;

    invoke-virtual {v0}, Lcom/android/settings/widget/DragGridView;->getFirstVisiblePosition()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/DragGridView$2;->this$0:Lcom/android/settings/widget/DragGridView;

    invoke-virtual {v0}, Lcom/android/settings/widget/DragGridView;->getLastVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/widget/DragGridView$2;->this$0:Lcom/android/settings/widget/DragGridView;

    invoke-virtual {v1}, Lcom/android/settings/widget/DragGridView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/DragGridView$2;->this$0:Lcom/android/settings/widget/DragGridView;

    invoke-static {v0}, Lcom/android/settings/widget/DragGridView;->access$600(Lcom/android/settings/widget/DragGridView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/DragGridView$2;->this$0:Lcom/android/settings/widget/DragGridView;

    invoke-static {v1}, Lcom/android/settings/widget/DragGridView;->access$500(Lcom/android/settings/widget/DragGridView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/DragGridView$2;->this$0:Lcom/android/settings/widget/DragGridView;

    invoke-static {v0}, Lcom/android/settings/widget/DragGridView;->access$700(Lcom/android/settings/widget/DragGridView;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/widget/DragGridView$2;->this$0:Lcom/android/settings/widget/DragGridView;

    invoke-static {v1}, Lcom/android/settings/widget/DragGridView;->access$800(Lcom/android/settings/widget/DragGridView;)I

    move-result v1

    const-wide/16 v2, 0x19

    if-le v0, v1, :cond_2

    .line 366
    iget-object v0, p0, Lcom/android/settings/widget/DragGridView$2;->this$0:Lcom/android/settings/widget/DragGridView;

    invoke-static {v0}, Lcom/android/settings/widget/DragGridView;->access$600(Lcom/android/settings/widget/DragGridView;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/widget/DragGridView$2;->this$0:Lcom/android/settings/widget/DragGridView;

    invoke-static {p0}, Lcom/android/settings/widget/DragGridView;->access$500(Lcom/android/settings/widget/DragGridView;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 367
    :cond_2
    iget-object v0, p0, Lcom/android/settings/widget/DragGridView$2;->this$0:Lcom/android/settings/widget/DragGridView;

    invoke-static {v0}, Lcom/android/settings/widget/DragGridView;->access$700(Lcom/android/settings/widget/DragGridView;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/widget/DragGridView$2;->this$0:Lcom/android/settings/widget/DragGridView;

    invoke-static {v1}, Lcom/android/settings/widget/DragGridView;->access$900(Lcom/android/settings/widget/DragGridView;)I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 369
    iget-object v0, p0, Lcom/android/settings/widget/DragGridView$2;->this$0:Lcom/android/settings/widget/DragGridView;

    invoke-static {v0}, Lcom/android/settings/widget/DragGridView;->access$600(Lcom/android/settings/widget/DragGridView;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/widget/DragGridView$2;->this$0:Lcom/android/settings/widget/DragGridView;

    invoke-static {p0}, Lcom/android/settings/widget/DragGridView;->access$500(Lcom/android/settings/widget/DragGridView;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 372
    :cond_3
    iget-object v0, p0, Lcom/android/settings/widget/DragGridView$2;->this$0:Lcom/android/settings/widget/DragGridView;

    invoke-static {v0}, Lcom/android/settings/widget/DragGridView;->access$600(Lcom/android/settings/widget/DragGridView;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/widget/DragGridView$2;->this$0:Lcom/android/settings/widget/DragGridView;

    invoke-static {p0}, Lcom/android/settings/widget/DragGridView;->access$500(Lcom/android/settings/widget/DragGridView;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
