.class public Lcom/android/settings/wifi/SoftApControllerActivity;
.super Lcom/android/settings/BaseActivity;
.source "SoftApControllerActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/android/settings/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/android/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d02bf

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/SoftApControllerActivity;->setContentView(I)V

    .line 17
    invoke-virtual {p0}, Lcom/android/settings/wifi/SoftApControllerActivity;->setupBackBtnOnTitle()Lsmartisanos/widget/TitleBar;

    return-void
.end method
