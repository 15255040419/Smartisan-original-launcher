.class public Lcom/android/settings/widget/NotificationCustomView$LongPressedThread;
.super Ljava/lang/Object;
.source "NotificationCustomView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/NotificationCustomView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LongPressedThread"
.end annotation


# instance fields
.field pos:I

.field final synthetic this$0:Lcom/android/settings/widget/NotificationCustomView;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/NotificationCustomView;I)V
    .locals 0

    .line 1145
    iput-object p1, p0, Lcom/android/settings/widget/NotificationCustomView$LongPressedThread;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1146
    iput p2, p0, Lcom/android/settings/widget/NotificationCustomView$LongPressedThread;->pos:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1151
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView$LongPressedThread;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-static {v0}, Lcom/android/settings/widget/NotificationCustomView;->access$100(Lcom/android/settings/widget/NotificationCustomView;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/widget/NotificationCustomView$LongPressedThread;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-static {v1}, Lcom/android/settings/widget/NotificationCustomView;->access$200(Lcom/android/settings/widget/NotificationCustomView;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x2d

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView$LongPressedThread;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-static {v0}, Lcom/android/settings/widget/NotificationCustomView;->access$300(Lcom/android/settings/widget/NotificationCustomView;)I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/widget/NotificationCustomView$LongPressedThread;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-static {v2}, Lcom/android/settings/widget/NotificationCustomView;->access$400(Lcom/android/settings/widget/NotificationCustomView;)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 1154
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView$LongPressedThread;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/settings/widget/NotificationCustomView;->mIsDragCandidate:Z

    .line 1156
    iget v1, p0, Lcom/android/settings/widget/NotificationCustomView$LongPressedThread;->pos:I

    invoke-static {v0, v1}, Lcom/android/settings/widget/NotificationCustomView;->access$2000(Lcom/android/settings/widget/NotificationCustomView;I)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/widget/NotificationCustomView;->access$1902(Lcom/android/settings/widget/NotificationCustomView;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 1157
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView$LongPressedThread;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-static {v0}, Lcom/android/settings/widget/NotificationCustomView;->access$1800(Lcom/android/settings/widget/NotificationCustomView;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/widget/NotificationCustomView$LongPressedThread;->pos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notificationcustom/QuickWidget;

    invoke-static {v0, v1}, Lcom/android/settings/widget/NotificationCustomView;->access$2100(Lcom/android/settings/widget/NotificationCustomView;Lcom/android/settings/notificationcustom/QuickWidget;)V

    .line 1158
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView$LongPressedThread;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-static {v0}, Lcom/android/settings/widget/NotificationCustomView;->access$2200(Lcom/android/settings/widget/NotificationCustomView;)V

    .line 1159
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView$LongPressedThread;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-static {v0}, Lcom/android/settings/widget/NotificationCustomView;->access$1400(Lcom/android/settings/widget/NotificationCustomView;)Landroid/view/ViewGroup;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/widget/NotificationCustomView$LongPressedThread;->pos:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1160
    iget-object p0, p0, Lcom/android/settings/widget/NotificationCustomView$LongPressedThread;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-static {p0}, Lcom/android/settings/widget/NotificationCustomView;->access$1500(Lcom/android/settings/widget/NotificationCustomView;)Lcom/android/settings/notificationcustom/INotificationCustomLayoutStrategy;

    move-result-object p0

    const/4 v1, 0x4

    invoke-interface {p0, v0, v1}, Lcom/android/settings/notificationcustom/INotificationCustomLayoutStrategy;->updateCandidateChildViewVisibility(Landroid/view/View;I)V

    :cond_1
    :goto_0
    return-void
.end method
