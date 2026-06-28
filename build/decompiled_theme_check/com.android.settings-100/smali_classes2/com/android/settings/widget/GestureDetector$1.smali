.class Lcom/android/settings/widget/GestureDetector$1;
.super Landroid/os/Handler;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/GestureDetector;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/GestureDetector;Landroid/os/Looper;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/android/settings/widget/GestureDetector$1;->this$0:Lcom/android/settings/widget/GestureDetector;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 23
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handle msg "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GestureDetector"

    invoke-static {v1, v0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    iget-object p0, p0, Lcom/android/settings/widget/GestureDetector$1;->this$0:Lcom/android/settings/widget/GestureDetector;

    invoke-virtual {p0}, Lcom/android/settings/widget/GestureDetector;->onDoublePointLongPress()V

    :goto_0
    return-void
.end method
