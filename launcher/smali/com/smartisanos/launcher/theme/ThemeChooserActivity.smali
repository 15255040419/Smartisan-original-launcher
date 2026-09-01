.class public Lcom/smartisanos/launcher/theme/ThemeChooserActivity;
.super Landroid/app/Activity;
.source "LauncherSettingsActivity.java"


# static fields
.field private static volatile db:Lcom/smartisanos/launcher/theme/ThemeChooserActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/smartisanos/launcher/theme/ThemeChooserActivity;
    .locals 1

    sget-object v0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->db:Lcom/smartisanos/launcher/theme/ThemeChooserActivity;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    sget v1, Lcom/smartisanos/launcher/R$anim;->settings_exit:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sput-object p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->db:Lcom/smartisanos/launcher/theme/ThemeChooserActivity;

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/MaintainedLauncherSettingsHost;->show(Landroid/app/Activity;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    invoke-static {p0, p1, p2, p3}, Lcom/smartisanos/launcher/theme/MaintainedLauncherSettingsHost;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result v0

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/MaintainedLauncherSettingsHost;->show(Landroid/app/Activity;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    invoke-static {p0, p1, p2, p3}, Lcom/smartisanos/launcher/theme/MaintainedLauncherSettingsHost;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/MaintainedLauncherSettingsHost;->onSettingsHostResumed(Landroid/app/Activity;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/MaintainedLauncherSettingsHost;->clearSettingsBackActionPublic(Landroid/app/Activity;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    sget-object v0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->db:Lcom/smartisanos/launcher/theme/ThemeChooserActivity;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->db:Lcom/smartisanos/launcher/theme/ThemeChooserActivity;

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/MaintainedLauncherSettingsHost;->handleSettingsBackPublic(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :fallback_finish

    return-void

    :fallback_finish
    invoke-static {p0}, Lcom/smartisanos/launcher/theme/MaintainedLauncherSettingsHost;->logSettingsBackFallbackPublic(Landroid/app/Activity;)V

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method
