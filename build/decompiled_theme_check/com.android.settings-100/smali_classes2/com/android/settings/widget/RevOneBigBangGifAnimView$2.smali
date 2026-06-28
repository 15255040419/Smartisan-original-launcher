.class Lcom/android/settings/widget/RevOneBigBangGifAnimView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RevOneBigBangGifAnimView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/RevOneBigBangGifAnimView;->createCircleIconAnim()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/RevOneBigBangGifAnimView;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/RevOneBigBangGifAnimView;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/android/settings/widget/RevOneBigBangGifAnimView$2;->this$0:Lcom/android/settings/widget/RevOneBigBangGifAnimView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/settings/widget/RevOneBigBangGifAnimView$2;->this$0:Lcom/android/settings/widget/RevOneBigBangGifAnimView;

    invoke-static {p0}, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->access$200(Lcom/android/settings/widget/RevOneBigBangGifAnimView;)Landroid/widget/ImageView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method
