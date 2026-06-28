.class Lcom/android/settingslib/animation/AppearAnimationUtils$1;
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

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settingslib/animation/AppearAnimationUtils;Landroid/view/View;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/android/settingslib/animation/AppearAnimationUtils$1;->this$0:Lcom/android/settingslib/animation/AppearAnimationUtils;

    iput-object p2, p0, Lcom/android/settingslib/animation/AppearAnimationUtils$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 204
    iget-object p0, p0, Lcom/android/settingslib/animation/AppearAnimationUtils$1;->val$view:Landroid/view/View;

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method
