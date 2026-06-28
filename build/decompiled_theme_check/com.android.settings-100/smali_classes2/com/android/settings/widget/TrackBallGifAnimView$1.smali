.class Lcom/android/settings/widget/TrackBallGifAnimView$1;
.super Ljava/lang/Object;
.source "TrackBallGifAnimView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/TrackBallGifAnimView;->startAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/TrackBallGifAnimView;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/TrackBallGifAnimView;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/android/settings/widget/TrackBallGifAnimView$1;->this$0:Lcom/android/settings/widget/TrackBallGifAnimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 136
    iget-object p1, p0, Lcom/android/settings/widget/TrackBallGifAnimView$1;->this$0:Lcom/android/settings/widget/TrackBallGifAnimView;

    new-instance v0, Lcom/android/settings/widget/TrackBallGifAnimView$1$1;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/TrackBallGifAnimView$1$1;-><init>(Lcom/android/settings/widget/TrackBallGifAnimView$1;)V

    iget-object p0, p0, Lcom/android/settings/widget/TrackBallGifAnimView$1;->this$0:Lcom/android/settings/widget/TrackBallGifAnimView;

    .line 141
    invoke-static {p0}, Lcom/android/settings/widget/TrackBallGifAnimView;->access$000(Lcom/android/settings/widget/TrackBallGifAnimView;)J

    move-result-wide v1

    .line 136
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/settings/widget/TrackBallGifAnimView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
