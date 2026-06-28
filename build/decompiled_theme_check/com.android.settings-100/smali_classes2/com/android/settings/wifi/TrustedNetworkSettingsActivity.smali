.class public Lcom/android/settings/wifi/TrustedNetworkSettingsActivity;
.super Landroid/app/Activity;
.source "TrustedNetworkSettingsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .line 32
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 33
    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustedNetworkSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustedNetworkSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "smartisanos.intent.extra.ANIM_RESOURCE_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 36
    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/wifi/TrustedNetworkSettingsActivity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0319

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/TrustedNetworkSettingsActivity;->setContentView(I)V

    const p1, 0x7f0a0a0b

    .line 20
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/TrustedNetworkSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/TitleBar;

    const v0, 0x20200a4

    .line 21
    invoke-virtual {p1, v0}, Lsmartisanos/widget/TitleBar;->addLeftImageView(I)Landroid/widget/ImageView;

    move-result-object p1

    .line 22
    new-instance v0, Lcom/android/settings/wifi/TrustedNetworkSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/TrustedNetworkSettingsActivity$1;-><init>(Lcom/android/settings/wifi/TrustedNetworkSettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
