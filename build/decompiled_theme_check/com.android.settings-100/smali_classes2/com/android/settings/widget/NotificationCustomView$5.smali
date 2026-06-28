.class Lcom/android/settings/widget/NotificationCustomView$5;
.super Ljava/lang/Object;
.source "NotificationCustomView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/NotificationCustomView;->getMoveViewAnimListener()Landroid/view/animation/Animation$AnimationListener;
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

    .line 791
    iput-object p1, p0, Lcom/android/settings/widget/NotificationCustomView$5;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 799
    iget-object p1, p0, Lcom/android/settings/widget/NotificationCustomView$5;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-static {p1}, Lcom/android/settings/widget/NotificationCustomView;->access$900(Lcom/android/settings/widget/NotificationCustomView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 800
    iget-object p0, p0, Lcom/android/settings/widget/NotificationCustomView$5;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-static {p0}, Lcom/android/settings/widget/NotificationCustomView;->access$900(Lcom/android/settings/widget/NotificationCustomView;)Landroid/widget/ImageView;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
