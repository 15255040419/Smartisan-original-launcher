.class public abstract Lcom/android/settings/widget/GestureDetector;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# static fields
.field private static final LONG_PRESS_TIMEOUT:J = 0x1388L

.field private static final MSG_TRIGGER_DOUBLE_LONG_PRESS_EVENT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GestureDetector"


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/android/settings/widget/GestureDetector$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/widget/GestureDetector$1;-><init>(Lcom/android/settings/widget/GestureDetector;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/widget/GestureDetector;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-string v1, "GestureDetector"

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event.getAction() "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event.getActionMasked() "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event.getActionIndex() "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_4

    const/4 v4, 0x5

    if-eq v0, v4, :cond_1

    const/4 p0, 0x6

    if-eq v0, p0, :cond_6

    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    if-ne p1, v3, :cond_2

    move v2, v3

    :cond_2
    if-eqz v2, :cond_3

    const-string p1, "send long press event delay"

    .line 48
    invoke-static {v1, p1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object p0, p0, Lcom/android/settings/widget/GestureDetector;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 51
    :cond_3
    iget-object p0, p0, Lcom/android/settings/widget/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1

    :cond_4
    const-string p1, "cancel long press event delay"

    .line 60
    invoke-static {v1, p1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object p0, p0, Lcom/android/settings/widget/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_5
    :goto_0
    move v3, v2

    :cond_6
    :goto_1
    return v3
.end method

.method public abstract onDoublePointLongPress()V
.end method
