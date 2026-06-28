.class public Lcom/android/settings/widget/FingerprintEnrollRootView;
.super Landroid/widget/FrameLayout;
.source "FingerprintEnrollRootView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/FingerprintEnrollRootView$OnDimChangeListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FingerEnrollRootView"


# instance fields
.field private mChoreographer:Landroid/view/Choreographer;

.field private mDimFinishFrameCallback:Ljava/lang/Runnable;

.field private mIsFingerDown:Z

.field private mListener:Lcom/android/settings/widget/FingerprintEnrollRootView$OnDimChangeListener;

.field private mReceivedCallback:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 73
    new-instance p1, Lcom/android/settings/widget/FingerprintEnrollRootView$1;

    invoke-direct {p1, p0}, Lcom/android/settings/widget/FingerprintEnrollRootView$1;-><init>(Lcom/android/settings/widget/FingerprintEnrollRootView;)V

    iput-object p1, p0, Lcom/android/settings/widget/FingerprintEnrollRootView;->mDimFinishFrameCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    new-instance p1, Lcom/android/settings/widget/FingerprintEnrollRootView$1;

    invoke-direct {p1, p0}, Lcom/android/settings/widget/FingerprintEnrollRootView$1;-><init>(Lcom/android/settings/widget/FingerprintEnrollRootView;)V

    iput-object p1, p0, Lcom/android/settings/widget/FingerprintEnrollRootView;->mDimFinishFrameCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    new-instance p1, Lcom/android/settings/widget/FingerprintEnrollRootView$1;

    invoke-direct {p1, p0}, Lcom/android/settings/widget/FingerprintEnrollRootView$1;-><init>(Lcom/android/settings/widget/FingerprintEnrollRootView;)V

    iput-object p1, p0, Lcom/android/settings/widget/FingerprintEnrollRootView;->mDimFinishFrameCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 73
    new-instance p1, Lcom/android/settings/widget/FingerprintEnrollRootView$1;

    invoke-direct {p1, p0}, Lcom/android/settings/widget/FingerprintEnrollRootView$1;-><init>(Lcom/android/settings/widget/FingerprintEnrollRootView;)V

    iput-object p1, p0, Lcom/android/settings/widget/FingerprintEnrollRootView;->mDimFinishFrameCallback:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/FingerprintEnrollRootView;)Lcom/android/settings/widget/FingerprintEnrollRootView$OnDimChangeListener;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/android/settings/widget/FingerprintEnrollRootView;->mListener:Lcom/android/settings/widget/FingerprintEnrollRootView$OnDimChangeListener;

    return-object p0
.end method


# virtual methods
.method public isFingerDown()Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/android/settings/widget/FingerprintEnrollRootView;->mIsFingerDown:Z

    return p0
.end method

.method public isReceivedCallback()Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/android/settings/widget/FingerprintEnrollRootView;->mReceivedCallback:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 63
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 64
    iget-object v0, p0, Lcom/android/settings/widget/FingerprintEnrollRootView;->mChoreographer:Landroid/view/Choreographer;

    iget-object p0, p0, Lcom/android/settings/widget/FingerprintEnrollRootView;->mDimFinishFrameCallback:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lcom/android/settings/MultiSDKAdapter;->setCallbackForScreenChange(Landroid/view/Choreographer;Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 69
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 70
    iget-object p0, p0, Lcom/android/settings/widget/FingerprintEnrollRootView;->mChoreographer:Landroid/view/Choreographer;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settings/MultiSDKAdapter;->setCallbackForScreenChange(Landroid/view/Choreographer;Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 57
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 58
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/FingerprintEnrollRootView;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method

.method public setFingerDown(Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/android/settings/widget/FingerprintEnrollRootView;->mIsFingerDown:Z

    return-void
.end method

.method public setOnDimChangeListener(Lcom/android/settings/widget/FingerprintEnrollRootView$OnDimChangeListener;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/settings/widget/FingerprintEnrollRootView;->mListener:Lcom/android/settings/widget/FingerprintEnrollRootView$OnDimChangeListener;

    return-void
.end method

.method public setReceivedCallback(Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/android/settings/widget/FingerprintEnrollRootView;->mReceivedCallback:Z

    return-void
.end method
