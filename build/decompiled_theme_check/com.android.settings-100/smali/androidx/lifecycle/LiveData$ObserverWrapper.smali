.class abstract Landroidx/lifecycle/LiveData$ObserverWrapper;
.super Ljava/lang/Object;
.source "LiveData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ObserverWrapper"
.end annotation


# instance fields
.field mActive:Z

.field mLastVersion:I

.field final mObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/lifecycle/LiveData;


# direct methods
.method constructor <init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 395
    iput-object p1, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->this$0:Landroidx/lifecycle/LiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 393
    iput p1, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->mLastVersion:I

    .line 396
    iput-object p2, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->mObserver:Landroidx/lifecycle/Observer;

    return-void
.end method


# virtual methods
.method activeStateChanged(Z)V
    .locals 4

    .line 409
    iget-boolean v0, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 414
    :cond_0
    iput-boolean p1, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    .line 415
    iget-object p1, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->this$0:Landroidx/lifecycle/LiveData;

    iget p1, p1, Landroidx/lifecycle/LiveData;->mActiveCount:I

    const/4 v0, 0x1

    if-nez p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 416
    :goto_0
    iget-object v1, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->this$0:Landroidx/lifecycle/LiveData;

    iget v2, v1, Landroidx/lifecycle/LiveData;->mActiveCount:I

    iget-boolean v3, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :goto_1
    add-int/2addr v2, v0

    iput v2, v1, Landroidx/lifecycle/LiveData;->mActiveCount:I

    if-eqz p1, :cond_3

    .line 417
    iget-boolean p1, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-eqz p1, :cond_3

    .line 418
    iget-object p1, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->this$0:Landroidx/lifecycle/LiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->onActive()V

    .line 420
    :cond_3
    iget-object p1, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->this$0:Landroidx/lifecycle/LiveData;

    iget p1, p1, Landroidx/lifecycle/LiveData;->mActiveCount:I

    if-nez p1, :cond_4

    iget-boolean p1, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-nez p1, :cond_4

    .line 421
    iget-object p1, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->this$0:Landroidx/lifecycle/LiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->onInactive()V

    .line 423
    :cond_4
    iget-boolean p1, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-eqz p1, :cond_5

    .line 424
    iget-object p1, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->this$0:Landroidx/lifecycle/LiveData;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->dispatchingValue(Landroidx/lifecycle/LiveData$ObserverWrapper;)V

    :cond_5
    return-void
.end method

.method detachObserver()V
    .locals 0

    return-void
.end method

.method isAttachedTo(Landroidx/lifecycle/LifecycleOwner;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method abstract shouldBeActive()Z
.end method
