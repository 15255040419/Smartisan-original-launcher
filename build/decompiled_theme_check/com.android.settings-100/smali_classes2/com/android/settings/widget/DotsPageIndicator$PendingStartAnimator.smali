.class public abstract Lcom/android/settings/widget/DotsPageIndicator$PendingStartAnimator;
.super Landroid/animation/ValueAnimator;
.source "DotsPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/DotsPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "PendingStartAnimator"
.end annotation


# instance fields
.field protected hasStarted:Z

.field protected predicate:Lcom/android/settings/widget/DotsPageIndicator$StartPredicate;

.field final synthetic this$0:Lcom/android/settings/widget/DotsPageIndicator;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/DotsPageIndicator;Lcom/android/settings/widget/DotsPageIndicator$StartPredicate;)V
    .locals 0

    .line 738
    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingStartAnimator;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    .line 739
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 740
    iput-object p2, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingStartAnimator;->predicate:Lcom/android/settings/widget/DotsPageIndicator$StartPredicate;

    const/4 p1, 0x0

    .line 741
    iput-boolean p1, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingStartAnimator;->hasStarted:Z

    return-void
.end method


# virtual methods
.method public startIfNecessary(F)V
    .locals 1

    .line 745
    iget-boolean v0, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingStartAnimator;->hasStarted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingStartAnimator;->predicate:Lcom/android/settings/widget/DotsPageIndicator$StartPredicate;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/DotsPageIndicator$StartPredicate;->shouldStart(F)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 746
    invoke-virtual {p0}, Lcom/android/settings/widget/DotsPageIndicator$PendingStartAnimator;->start()V

    const/4 p1, 0x1

    .line 747
    iput-boolean p1, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingStartAnimator;->hasStarted:Z

    :cond_0
    return-void
.end method
