.class Lcom/android/settings/widget/BaseFingerprintAnimView$1;
.super Landroid/os/Handler;
.source "BaseFingerprintAnimView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/BaseFingerprintAnimView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/BaseFingerprintAnimView;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/BaseFingerprintAnimView;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/android/settings/widget/BaseFingerprintAnimView$1;->this$0:Lcom/android/settings/widget/BaseFingerprintAnimView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 81
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 82
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/android/settings/widget/BaseFingerprintAnimView$1;->this$0:Lcom/android/settings/widget/BaseFingerprintAnimView;

    invoke-virtual {p1}, Lcom/android/settings/widget/BaseFingerprintAnimView;->invalidate()V

    .line 85
    iget-object p1, p0, Lcom/android/settings/widget/BaseFingerprintAnimView$1;->this$0:Lcom/android/settings/widget/BaseFingerprintAnimView;

    iget-object p1, p1, Lcom/android/settings/widget/BaseFingerprintAnimView;->mCallback:Lcom/android/settings/widget/BaseFingerprintAnimView$Callback;

    if-eqz p1, :cond_1

    .line 86
    iget-object p0, p0, Lcom/android/settings/widget/BaseFingerprintAnimView$1;->this$0:Lcom/android/settings/widget/BaseFingerprintAnimView;

    iget-object p0, p0, Lcom/android/settings/widget/BaseFingerprintAnimView;->mCallback:Lcom/android/settings/widget/BaseFingerprintAnimView$Callback;

    invoke-interface {p0}, Lcom/android/settings/widget/BaseFingerprintAnimView$Callback;->onAnimDone()V

    :cond_1
    :goto_0
    return-void
.end method
