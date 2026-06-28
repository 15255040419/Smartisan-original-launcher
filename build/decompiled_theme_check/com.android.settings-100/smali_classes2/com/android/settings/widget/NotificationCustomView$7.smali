.class Lcom/android/settings/widget/NotificationCustomView$7;
.super Ljava/lang/Object;
.source "NotificationCustomView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/NotificationCustomView;->getRestoreDragGridViewItemAnim()Landroid/view/animation/Animation$AnimationListener;
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

    .line 1121
    iput-object p1, p0, Lcom/android/settings/widget/NotificationCustomView$7;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1129
    iget-object p0, p0, Lcom/android/settings/widget/NotificationCustomView$7;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-static {p0}, Lcom/android/settings/widget/NotificationCustomView;->access$1100(Lcom/android/settings/widget/NotificationCustomView;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1124
    iget-object p0, p0, Lcom/android/settings/widget/NotificationCustomView$7;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/settings/widget/NotificationCustomView;->access$602(Lcom/android/settings/widget/NotificationCustomView;Z)Z

    return-void
.end method
