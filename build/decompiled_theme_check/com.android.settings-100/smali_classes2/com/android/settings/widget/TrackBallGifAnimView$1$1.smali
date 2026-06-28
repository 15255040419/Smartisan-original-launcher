.class Lcom/android/settings/widget/TrackBallGifAnimView$1$1;
.super Ljava/lang/Object;
.source "TrackBallGifAnimView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/TrackBallGifAnimView$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/widget/TrackBallGifAnimView$1;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/TrackBallGifAnimView$1;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/android/settings/widget/TrackBallGifAnimView$1$1;->this$1:Lcom/android/settings/widget/TrackBallGifAnimView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/android/settings/widget/TrackBallGifAnimView$1$1;->this$1:Lcom/android/settings/widget/TrackBallGifAnimView$1;

    iget-object p0, p0, Lcom/android/settings/widget/TrackBallGifAnimView$1;->this$0:Lcom/android/settings/widget/TrackBallGifAnimView;

    invoke-virtual {p0}, Lcom/android/settings/widget/TrackBallGifAnimView;->startAnim()V

    return-void
.end method
