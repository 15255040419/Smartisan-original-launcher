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
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sput-object p0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->db:Lcom/smartisanos/launcher/theme/ThemeChooserActivity;

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/MaintainedLauncherSettingsHost;->show(Landroid/app/Activity;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    sget-object v0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->db:Lcom/smartisanos/launcher/theme/ThemeChooserActivity;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->db:Lcom/smartisanos/launcher/theme/ThemeChooserActivity;

    :cond_0
    return-void
.end method
