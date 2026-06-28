.class Lcom/android/settings/widget/NotificationCustomView$3;
.super Ljava/lang/Object;
.source "NotificationCustomView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/NotificationCustomView;->animExchangeCandidateWidgetInside()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/NotificationCustomView;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/NotificationCustomView;)V
    .locals 0

    .line 687
    iput-object p1, p0, Lcom/android/settings/widget/NotificationCustomView$3;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 699
    iget-object p1, p0, Lcom/android/settings/widget/NotificationCustomView$3;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-static {p1}, Lcom/android/settings/widget/NotificationCustomView;->access$900(Lcom/android/settings/widget/NotificationCustomView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 700
    iget-object p1, p0, Lcom/android/settings/widget/NotificationCustomView$3;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-static {p1}, Lcom/android/settings/widget/NotificationCustomView;->access$900(Lcom/android/settings/widget/NotificationCustomView;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 701
    iget-object p1, p0, Lcom/android/settings/widget/NotificationCustomView$3;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-static {p1}, Lcom/android/settings/widget/NotificationCustomView;->access$1700(Lcom/android/settings/widget/NotificationCustomView;)V

    .line 702
    iget-object p0, p0, Lcom/android/settings/widget/NotificationCustomView$3;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-static {p0}, Lcom/android/settings/widget/NotificationCustomView;->access$1100(Lcom/android/settings/widget/NotificationCustomView;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .line 690
    iget-object p1, p0, Lcom/android/settings/widget/NotificationCustomView$3;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/widget/NotificationCustomView;->access$602(Lcom/android/settings/widget/NotificationCustomView;Z)Z

    .line 691
    iget-object p1, p0, Lcom/android/settings/widget/NotificationCustomView$3;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-static {p1}, Lcom/android/settings/widget/NotificationCustomView;->access$900(Lcom/android/settings/widget/NotificationCustomView;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView$3;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-static {v0}, Lcom/android/settings/widget/NotificationCustomView;->access$1200(Lcom/android/settings/widget/NotificationCustomView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/widget/NotificationCustomView;->access$1300(Lcom/android/settings/widget/NotificationCustomView;I)Lcom/android/settings/notificationcustom/QuickWidget;

    move-result-object v0

    iget v0, v0, Lcom/android/settings/notificationcustom/QuickWidget;->imageResId:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 692
    iget-object p1, p0, Lcom/android/settings/widget/NotificationCustomView$3;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-static {p1}, Lcom/android/settings/widget/NotificationCustomView;->access$900(Lcom/android/settings/widget/NotificationCustomView;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 693
    iget-object p1, p0, Lcom/android/settings/widget/NotificationCustomView$3;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-static {p1}, Lcom/android/settings/widget/NotificationCustomView;->access$1500(Lcom/android/settings/widget/NotificationCustomView;)Lcom/android/settings/notificationcustom/INotificationCustomLayoutStrategy;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView$3;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-static {v0}, Lcom/android/settings/widget/NotificationCustomView;->access$1400(Lcom/android/settings/widget/NotificationCustomView;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/NotificationCustomView$3;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-static {v1}, Lcom/android/settings/widget/NotificationCustomView;->access$1200(Lcom/android/settings/widget/NotificationCustomView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {p1, v0, v1}, Lcom/android/settings/notificationcustom/INotificationCustomLayoutStrategy;->updateCandidateChildViewVisibility(Landroid/view/View;I)V

    .line 694
    iget-object p1, p0, Lcom/android/settings/widget/NotificationCustomView$3;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-static {p1}, Lcom/android/settings/widget/NotificationCustomView;->access$1500(Lcom/android/settings/widget/NotificationCustomView;)Lcom/android/settings/notificationcustom/INotificationCustomLayoutStrategy;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView$3;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-static {v0}, Lcom/android/settings/widget/NotificationCustomView;->access$1400(Lcom/android/settings/widget/NotificationCustomView;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/widget/NotificationCustomView$3;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-static {p0}, Lcom/android/settings/widget/NotificationCustomView;->access$1600(Lcom/android/settings/widget/NotificationCustomView;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-interface {p1, p0, v1}, Lcom/android/settings/notificationcustom/INotificationCustomLayoutStrategy;->updateCandidateChildViewVisibility(Landroid/view/View;I)V

    return-void
.end method
