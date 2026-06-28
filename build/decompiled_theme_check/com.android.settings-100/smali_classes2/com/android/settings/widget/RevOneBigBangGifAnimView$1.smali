.class Lcom/android/settings/widget/RevOneBigBangGifAnimView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RevOneBigBangGifAnimView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/RevOneBigBangGifAnimView;->createAllAnimators()Landroid/animation/Animator;
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

    .line 85
    iput-object p1, p0, Lcom/android/settings/widget/RevOneBigBangGifAnimView$1;->this$0:Lcom/android/settings/widget/RevOneBigBangGifAnimView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/settings/widget/RevOneBigBangGifAnimView$1;->this$0:Lcom/android/settings/widget/RevOneBigBangGifAnimView;

    invoke-static {p0}, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->access$100(Lcom/android/settings/widget/RevOneBigBangGifAnimView;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/settings/widget/RevOneBigBangGifAnimView$1;->this$0:Lcom/android/settings/widget/RevOneBigBangGifAnimView;

    invoke-static {p0}, Lcom/android/settings/widget/RevOneBigBangGifAnimView;->access$000(Lcom/android/settings/widget/RevOneBigBangGifAnimView;)V

    return-void
.end method
