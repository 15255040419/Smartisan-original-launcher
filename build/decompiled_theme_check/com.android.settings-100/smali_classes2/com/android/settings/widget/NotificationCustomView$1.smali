.class Lcom/android/settings/widget/NotificationCustomView$1;
.super Ljava/lang/Object;
.source "NotificationCustomView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/NotificationCustomView;->handleAppNameVisibility()V
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

    .line 518
    iput-object p1, p0, Lcom/android/settings/widget/NotificationCustomView$1;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 521
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView$1;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    iget-boolean v0, v0, Lcom/android/settings/widget/NotificationCustomView;->mIsDragCandidate:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView$1;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-static {v0}, Lcom/android/settings/widget/NotificationCustomView;->access$000(Lcom/android/settings/widget/NotificationCustomView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView$1;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-static {v0}, Lcom/android/settings/widget/NotificationCustomView;->access$100(Lcom/android/settings/widget/NotificationCustomView;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/widget/NotificationCustomView$1;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-static {v1}, Lcom/android/settings/widget/NotificationCustomView;->access$200(Lcom/android/settings/widget/NotificationCustomView;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x2d

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView$1;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-static {v0}, Lcom/android/settings/widget/NotificationCustomView;->access$300(Lcom/android/settings/widget/NotificationCustomView;)I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/widget/NotificationCustomView$1;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-static {v2}, Lcom/android/settings/widget/NotificationCustomView;->access$400(Lcom/android/settings/widget/NotificationCustomView;)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v1, :cond_1

    goto :goto_0

    .line 525
    :cond_1
    iget-object p0, p0, Lcom/android/settings/widget/NotificationCustomView$1;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-static {p0}, Lcom/android/settings/widget/NotificationCustomView;->access$500(Lcom/android/settings/widget/NotificationCustomView;)Landroid/widget/TextView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method
