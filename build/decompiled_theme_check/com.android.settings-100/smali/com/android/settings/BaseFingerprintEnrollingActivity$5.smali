.class Lcom/android/settings/BaseFingerprintEnrollingActivity$5;
.super Ljava/lang/Object;
.source "BaseFingerprintEnrollingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/BaseFingerprintEnrollingActivity;->retryEnrolling()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/BaseFingerprintEnrollingActivity;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity$5;->this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 263
    iget-object p0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity$5;->this$0:Lcom/android/settings/BaseFingerprintEnrollingActivity;

    iget-object p0, p0, Lcom/android/settings/BaseFingerprintEnrollingActivity;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->startEnrollIfNeeded()V

    return-void
.end method
