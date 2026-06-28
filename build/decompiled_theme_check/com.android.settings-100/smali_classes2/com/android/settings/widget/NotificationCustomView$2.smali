.class Lcom/android/settings/widget/NotificationCustomView$2;
.super Ljava/lang/Object;
.source "NotificationCustomView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/NotificationCustomView;->moveWidgetToCandidateAnim(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/NotificationCustomView;

.field final synthetic val$positionInCandidate:I

.field final synthetic val$positionInGridView:I


# direct methods
.method constructor <init>(Lcom/android/settings/widget/NotificationCustomView;II)V
    .locals 0

    .line 640
    iput-object p1, p0, Lcom/android/settings/widget/NotificationCustomView$2;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    iput p2, p0, Lcom/android/settings/widget/NotificationCustomView$2;->val$positionInGridView:I

    iput p3, p0, Lcom/android/settings/widget/NotificationCustomView$2;->val$positionInCandidate:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 654
    iget-object p1, p0, Lcom/android/settings/widget/NotificationCustomView$2;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-static {p1}, Lcom/android/settings/widget/NotificationCustomView;->access$900(Lcom/android/settings/widget/NotificationCustomView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 655
    iget-object p1, p0, Lcom/android/settings/widget/NotificationCustomView$2;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-static {p1}, Lcom/android/settings/widget/NotificationCustomView;->access$900(Lcom/android/settings/widget/NotificationCustomView;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 656
    iget-object p1, p0, Lcom/android/settings/widget/NotificationCustomView$2;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    iget v0, p0, Lcom/android/settings/widget/NotificationCustomView$2;->val$positionInGridView:I

    iget v1, p0, Lcom/android/settings/widget/NotificationCustomView$2;->val$positionInCandidate:I

    invoke-static {p1, v0, v1}, Lcom/android/settings/widget/NotificationCustomView;->access$1000(Lcom/android/settings/widget/NotificationCustomView;II)V

    .line 657
    iget-object p0, p0, Lcom/android/settings/widget/NotificationCustomView$2;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-static {p0}, Lcom/android/settings/widget/NotificationCustomView;->access$1100(Lcom/android/settings/widget/NotificationCustomView;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 643
    iget-object p1, p0, Lcom/android/settings/widget/NotificationCustomView$2;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/widget/NotificationCustomView;->access$602(Lcom/android/settings/widget/NotificationCustomView;Z)Z

    .line 644
    iget-object p1, p0, Lcom/android/settings/widget/NotificationCustomView$2;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-static {p1}, Lcom/android/settings/widget/NotificationCustomView;->access$700(Lcom/android/settings/widget/NotificationCustomView;)Lcom/android/settings/widget/NotificationCustomView$DragAdapter;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/widget/NotificationCustomView$2;->val$positionInGridView:I

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/NotificationCustomView$DragAdapter;->setHideItem(I)V

    .line 645
    iget-object p1, p0, Lcom/android/settings/widget/NotificationCustomView$2;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-static {p1}, Lcom/android/settings/widget/NotificationCustomView;->access$800(Lcom/android/settings/widget/NotificationCustomView;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/widget/NotificationCustomView$2;->val$positionInGridView:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/notificationcustom/QuickWidget;

    if-eqz p1, :cond_0

    .line 647
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView$2;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-static {v0}, Lcom/android/settings/widget/NotificationCustomView;->access$900(Lcom/android/settings/widget/NotificationCustomView;)Landroid/widget/ImageView;

    move-result-object v0

    iget p1, p1, Lcom/android/settings/notificationcustom/QuickWidget;->imageResId:I

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 649
    :cond_0
    iget-object p0, p0, Lcom/android/settings/widget/NotificationCustomView$2;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-static {p0}, Lcom/android/settings/widget/NotificationCustomView;->access$900(Lcom/android/settings/widget/NotificationCustomView;)Landroid/widget/ImageView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
