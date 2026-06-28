.class Lcom/android/settingslib/drawer/SettingsDrawerActivity$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingsDrawerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/drawer/SettingsDrawerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/drawer/SettingsDrawerActivity;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/drawer/SettingsDrawerActivity;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity$PackageReceiver;->this$0:Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/drawer/SettingsDrawerActivity;Lcom/android/settingslib/drawer/SettingsDrawerActivity$1;)V
    .locals 0

    .line 208
    invoke-direct {p0, p1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity$PackageReceiver;-><init>(Lcom/android/settingslib/drawer/SettingsDrawerActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 211
    new-instance p1, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdateTask;

    iget-object p0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity$PackageReceiver;->this$0:Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    invoke-direct {p1, p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdateTask;-><init>(Lcom/android/settingslib/drawer/SettingsDrawerActivity;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
