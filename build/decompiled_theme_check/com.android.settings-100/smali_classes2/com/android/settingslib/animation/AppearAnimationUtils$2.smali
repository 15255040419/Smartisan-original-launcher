.class Lcom/android/settingslib/animation/AppearAnimationUtils$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AppearAnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/animation/AppearAnimationUtils;->createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/animation/AppearAnimationUtils;

.field final synthetic val$endRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/settingslib/animation/AppearAnimationUtils;Ljava/lang/Runnable;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/android/settingslib/animation/AppearAnimationUtils$2;->this$0:Lcom/android/settingslib/animation/AppearAnimationUtils;

    iput-object p2, p0, Lcom/android/settingslib/animation/AppearAnimationUtils$2;->val$endRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/android/settingslib/animation/AppearAnimationUtils$2;->val$endRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
