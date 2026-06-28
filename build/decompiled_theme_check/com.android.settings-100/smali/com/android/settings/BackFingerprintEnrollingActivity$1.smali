.class Lcom/android/settings/BackFingerprintEnrollingActivity$1;
.super Landroid/text/style/ClickableSpan;
.source "BackFingerprintEnrollingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/BackFingerprintEnrollingActivity;->setSetupForPaymentTextView()V
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

    .line 79
    iput-object p1, p0, Lcom/android/settings/BackFingerprintEnrollingActivity$1;->this$0:Lcom/android/settings/BackFingerprintEnrollingActivity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/settings/BackFingerprintEnrollingActivity$1;->this$0:Lcom/android/settings/BackFingerprintEnrollingActivity;

    invoke-static {p0}, Lcom/android/settings/BackFingerprintEnrollingActivity;->access$000(Lcom/android/settings/BackFingerprintEnrollingActivity;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 87
    iget-object p0, p0, Lcom/android/settings/BackFingerprintEnrollingActivity$1;->this$0:Lcom/android/settings/BackFingerprintEnrollingActivity;

    invoke-virtual {p0}, Lcom/android/settings/BackFingerprintEnrollingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f060028

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 p0, 0x1

    .line 88
    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
