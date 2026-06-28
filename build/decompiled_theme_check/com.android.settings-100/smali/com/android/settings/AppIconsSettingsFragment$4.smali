.class Lcom/android/settings/AppIconsSettingsFragment$4;
.super Landroid/content/BroadcastReceiver;
.source "AppIconsSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AppIconsSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AppIconsSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/AppIconsSettingsFragment;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lcom/android/settings/AppIconsSettingsFragment$4;->this$0:Lcom/android/settings/AppIconsSettingsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 479
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppIconsSettingsFragment"

    invoke-static {v1, v0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 481
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 482
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "com.smartisanos.launcher.update_icon"

    .line 484
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "extra_packagename"

    .line 485
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p2, ","

    .line 487
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    aget-object v1, p1, v0

    .line 488
    iget-object v2, p0, Lcom/android/settings/AppIconsSettingsFragment$4;->this$0:Lcom/android/settings/AppIconsSettingsFragment;

    invoke-static {v2, v1}, Lcom/android/settings/AppIconsSettingsFragment;->access$1000(Lcom/android/settings/AppIconsSettingsFragment;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 483
    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/android/settings/AppIconsSettingsFragment$4;->this$0:Lcom/android/settings/AppIconsSettingsFragment;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/AppIconsSettingsFragment;->access$1000(Lcom/android/settings/AppIconsSettingsFragment;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
