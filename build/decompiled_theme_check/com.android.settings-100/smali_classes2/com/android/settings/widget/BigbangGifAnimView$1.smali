.class Lcom/android/settings/widget/BigbangGifAnimView$1;
.super Ljava/lang/Object;
.source "BigbangGifAnimView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/BigbangGifAnimView;->startAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/BigbangGifAnimView;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/BigbangGifAnimView;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/settings/widget/BigbangGifAnimView$1;->this$0:Lcom/android/settings/widget/BigbangGifAnimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/android/settings/widget/BigbangGifAnimView$1;->this$0:Lcom/android/settings/widget/BigbangGifAnimView;

    invoke-virtual {p0}, Lcom/android/settings/widget/BigbangGifAnimView;->startAnim()V

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
