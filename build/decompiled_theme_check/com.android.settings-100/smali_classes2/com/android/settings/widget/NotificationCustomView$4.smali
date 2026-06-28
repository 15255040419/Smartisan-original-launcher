.class Lcom/android/settings/widget/NotificationCustomView$4;
.super Ljava/lang/Object;
.source "NotificationCustomView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/NotificationCustomView;->moveCandidateToWidgetAnim(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/NotificationCustomView;

.field final synthetic val$candidateIcon:Landroid/widget/ImageView;

.field final synthetic val$candidatePosition:I

.field final synthetic val$positionInGridView:I


# direct methods
.method constructor <init>(Lcom/android/settings/widget/NotificationCustomView;ILandroid/widget/ImageView;I)V
    .locals 0

    .line 737
    iput-object p1, p0, Lcom/android/settings/widget/NotificationCustomView$4;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    iput p2, p0, Lcom/android/settings/widget/NotificationCustomView$4;->val$candidatePosition:I

    iput-object p3, p0, Lcom/android/settings/widget/NotificationCustomView$4;->val$candidateIcon:Landroid/widget/ImageView;

    iput p4, p0, Lcom/android/settings/widget/NotificationCustomView$4;->val$positionInGridView:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 749
    iget-object p1, p0, Lcom/android/settings/widget/NotificationCustomView$4;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-static {p1}, Lcom/android/settings/widget/NotificationCustomView;->access$900(Lcom/android/settings/widget/NotificationCustomView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 750
    iget-object p1, p0, Lcom/android/settings/widget/NotificationCustomView$4;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-static {p1}, Lcom/android/settings/widget/NotificationCustomView;->access$900(Lcom/android/settings/widget/NotificationCustomView;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 751
    iget-object p1, p0, Lcom/android/settings/widget/NotificationCustomView$4;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    iget v0, p0, Lcom/android/settings/widget/NotificationCustomView$4;->val$positionInGridView:I

    iget v1, p0, Lcom/android/settings/widget/NotificationCustomView$4;->val$candidatePosition:I

    invoke-static {p1, v0, v1}, Lcom/android/settings/widget/NotificationCustomView;->access$1000(Lcom/android/settings/widget/NotificationCustomView;II)V

    .line 752
    iget-object p0, p0, Lcom/android/settings/widget/NotificationCustomView$4;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-static {p0}, Lcom/android/settings/widget/NotificationCustomView;->access$1100(Lcom/android/settings/widget/NotificationCustomView;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .line 740
    iget-object p1, p0, Lcom/android/settings/widget/NotificationCustomView$4;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/widget/NotificationCustomView;->access$602(Lcom/android/settings/widget/NotificationCustomView;Z)Z

    .line 741
    iget-object p1, p0, Lcom/android/settings/widget/NotificationCustomView$4;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-static {p1}, Lcom/android/settings/widget/NotificationCustomView;->access$900(Lcom/android/settings/widget/NotificationCustomView;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView$4;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-static {v0}, Lcom/android/settings/widget/NotificationCustomView;->access$1800(Lcom/android/settings/widget/NotificationCustomView;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/widget/NotificationCustomView$4;->val$candidatePosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notificationcustom/QuickWidget;

    iget v0, v0, Lcom/android/settings/notificationcustom/QuickWidget;->imageResId:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 742
    iget-object p1, p0, Lcom/android/settings/widget/NotificationCustomView$4;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-static {p1}, Lcom/android/settings/widget/NotificationCustomView;->access$900(Lcom/android/settings/widget/NotificationCustomView;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 743
    iget-object p1, p0, Lcom/android/settings/widget/NotificationCustomView$4;->val$candidateIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 744
    iget-object p1, p0, Lcom/android/settings/widget/NotificationCustomView$4;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-static {p1}, Lcom/android/settings/widget/NotificationCustomView;->access$1500(Lcom/android/settings/widget/NotificationCustomView;)Lcom/android/settings/notificationcustom/INotificationCustomLayoutStrategy;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView$4;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-static {v0}, Lcom/android/settings/widget/NotificationCustomView;->access$1400(Lcom/android/settings/widget/NotificationCustomView;)Landroid/view/ViewGroup;

    move-result-object v0

    iget p0, p0, Lcom/android/settings/widget/NotificationCustomView$4;->val$candidatePosition:I

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x4

    invoke-interface {p1, p0, v0}, Lcom/android/settings/notificationcustom/INotificationCustomLayoutStrategy;->updateCandidateChildViewVisibility(Landroid/view/View;I)V

    return-void
.end method
