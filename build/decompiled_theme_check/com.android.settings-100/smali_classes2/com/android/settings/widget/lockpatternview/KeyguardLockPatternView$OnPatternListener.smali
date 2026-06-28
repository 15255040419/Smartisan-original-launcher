.class public interface abstract Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView$OnPatternListener;
.super Ljava/lang/Object;
.source "KeyguardLockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/lockpatternview/KeyguardLockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPatternListener"
.end annotation


# virtual methods
.method public abstract onPatternCellAdded(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onPatternCleared()V
.end method

.method public abstract onPatternDetected(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onPatternStart()V
.end method
