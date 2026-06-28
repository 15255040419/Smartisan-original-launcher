.class Lcom/android/settings/widget/DragGridView$3;
.super Ljava/lang/Object;
.source "DragGridView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/DragGridView;->onSwapItem(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/DragGridView;

.field final synthetic val$observer:Landroid/view/ViewTreeObserver;

.field final synthetic val$tempPosition:I


# direct methods
.method constructor <init>(Lcom/android/settings/widget/DragGridView;Landroid/view/ViewTreeObserver;I)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/android/settings/widget/DragGridView$3;->this$0:Lcom/android/settings/widget/DragGridView;

    iput-object p2, p0, Lcom/android/settings/widget/DragGridView$3;->val$observer:Landroid/view/ViewTreeObserver;

    iput p3, p0, Lcom/android/settings/widget/DragGridView$3;->val$tempPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .line 390
    iget-object v0, p0, Lcom/android/settings/widget/DragGridView$3;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 391
    iget-object v0, p0, Lcom/android/settings/widget/DragGridView$3;->this$0:Lcom/android/settings/widget/DragGridView;

    invoke-static {v0}, Lcom/android/settings/widget/DragGridView;->access$400(Lcom/android/settings/widget/DragGridView;)I

    move-result v1

    iget v2, p0, Lcom/android/settings/widget/DragGridView$3;->val$tempPosition:I

    invoke-static {v0, v1, v2}, Lcom/android/settings/widget/DragGridView;->access$1000(Lcom/android/settings/widget/DragGridView;II)V

    .line 392
    iget-object v0, p0, Lcom/android/settings/widget/DragGridView$3;->this$0:Lcom/android/settings/widget/DragGridView;

    iget p0, p0, Lcom/android/settings/widget/DragGridView$3;->val$tempPosition:I

    invoke-static {v0, p0}, Lcom/android/settings/widget/DragGridView;->access$402(Lcom/android/settings/widget/DragGridView;I)I

    const/4 p0, 0x1

    return p0
.end method
