.class public Lcom/android/settings/ChooseLockGeneric;
.super Lcom/android/settings/BaseActivity;
.source "ChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;,
        Lcom/android/settings/ChooseLockGeneric$InternalActivity;
    }
.end annotation


# static fields
.field public static final CONFIRM_CREDENTIALS:Ljava/lang/String; = "confirm_credentials"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/settings/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected canRunBeforeDeviceProvisioned()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public finish()V
    .locals 3

    .line 598
    invoke-super {p0}, Lcom/android/settings/BaseActivity;->finish()V

    .line 599
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 600
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "smartisanos.intent.extra.ANIM_RESOURCE_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 602
    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/ChooseLockGeneric;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-static {p0}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->canRunBeforeDeviceProvisioned()Z

    move-result p1

    if-nez p1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->finish()V

    return-void

    :cond_0
    const p1, 0x7f0d0089

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/settings/ChooseLockGeneric;->setContentView(I)V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->setupBackBtnOnTitle()Lsmartisanos/widget/TitleBar;

    return-void
.end method
