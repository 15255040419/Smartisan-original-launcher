.class Lcom/android/settings/widget/FingerprintEnrollRootView$1;
.super Ljava/lang/Object;
.source "FingerprintEnrollRootView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/FingerprintEnrollRootView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/FingerprintEnrollRootView;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/FingerprintEnrollRootView;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/android/settings/widget/FingerprintEnrollRootView$1;->this$0:Lcom/android/settings/widget/FingerprintEnrollRootView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "FingerEnrollRootView"

    const-string v1, "run dim callback"

    .line 76
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/android/settings/widget/FingerprintEnrollRootView$1;->this$0:Lcom/android/settings/widget/FingerprintEnrollRootView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/FingerprintEnrollRootView;->setReceivedCallback(Z)V

    .line 78
    iget-object v0, p0, Lcom/android/settings/widget/FingerprintEnrollRootView$1;->this$0:Lcom/android/settings/widget/FingerprintEnrollRootView;

    invoke-virtual {v0}, Lcom/android/settings/widget/FingerprintEnrollRootView;->isFingerDown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/FingerprintEnrollRootView$1;->this$0:Lcom/android/settings/widget/FingerprintEnrollRootView;

    invoke-static {v0}, Lcom/android/settings/widget/FingerprintEnrollRootView;->access$000(Lcom/android/settings/widget/FingerprintEnrollRootView;)Lcom/android/settings/widget/FingerprintEnrollRootView$OnDimChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object p0, p0, Lcom/android/settings/widget/FingerprintEnrollRootView$1;->this$0:Lcom/android/settings/widget/FingerprintEnrollRootView;

    invoke-static {p0}, Lcom/android/settings/widget/FingerprintEnrollRootView;->access$000(Lcom/android/settings/widget/FingerprintEnrollRootView;)Lcom/android/settings/widget/FingerprintEnrollRootView$OnDimChangeListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settings/widget/FingerprintEnrollRootView$OnDimChangeListener;->onDimChange()V

    :cond_0
    return-void
.end method
