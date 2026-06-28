.class Lcom/android/settings/widget/TouchAreaAnimView$5;
.super Ljava/lang/Object;
.source "TouchAreaAnimView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/TouchAreaAnimView;->playActionUpAnimWithError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/TouchAreaAnimView;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/TouchAreaAnimView;)V
    .locals 0

    .line 595
    iput-object p1, p0, Lcom/android/settings/widget/TouchAreaAnimView$5;->this$0:Lcom/android/settings/widget/TouchAreaAnimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 608
    iget-object p0, p0, Lcom/android/settings/widget/TouchAreaAnimView$5;->this$0:Lcom/android/settings/widget/TouchAreaAnimView;

    invoke-static {p0}, Lcom/android/settings/widget/TouchAreaAnimView;->access$700(Lcom/android/settings/widget/TouchAreaAnimView;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 603
    iget-object p0, p0, Lcom/android/settings/widget/TouchAreaAnimView$5;->this$0:Lcom/android/settings/widget/TouchAreaAnimView;

    invoke-static {p0}, Lcom/android/settings/widget/TouchAreaAnimView;->access$700(Lcom/android/settings/widget/TouchAreaAnimView;)V

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
