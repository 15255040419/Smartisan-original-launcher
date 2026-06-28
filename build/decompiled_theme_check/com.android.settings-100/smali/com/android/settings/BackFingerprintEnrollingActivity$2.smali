.class Lcom/android/settings/BackFingerprintEnrollingActivity$2;
.super Ljava/lang/Object;
.source "BackFingerprintEnrollingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/BackFingerprintEnrollingActivity;->showSetupForPaymentDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BackFingerprintEnrollingActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/BackFingerprintEnrollingActivity;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/android/settings/BackFingerprintEnrollingActivity$2;->this$0:Lcom/android/settings/BackFingerprintEnrollingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 132
    iget-object p1, p0, Lcom/android/settings/BackFingerprintEnrollingActivity$2;->this$0:Lcom/android/settings/BackFingerprintEnrollingActivity;

    iget-boolean p1, p1, Lcom/android/settings/BackFingerprintEnrollingActivity;->isFirstFingerprint:Z

    if-eqz p1, :cond_0

    .line 133
    iget-object p1, p0, Lcom/android/settings/BackFingerprintEnrollingActivity$2;->this$0:Lcom/android/settings/BackFingerprintEnrollingActivity;

    invoke-virtual {p1}, Lcom/android/settings/BackFingerprintEnrollingActivity;->turnToFingerprintManage()V

    .line 135
    :cond_0
    iget-object p0, p0, Lcom/android/settings/BackFingerprintEnrollingActivity$2;->this$0:Lcom/android/settings/BackFingerprintEnrollingActivity;

    invoke-static {p0}, Lcom/android/settings/BackFingerprintEnrollingActivity;->access$100(Lcom/android/settings/BackFingerprintEnrollingActivity;)V

    return-void
.end method
