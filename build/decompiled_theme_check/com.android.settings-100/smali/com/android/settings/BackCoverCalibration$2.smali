.class Lcom/android/settings/BackCoverCalibration$2;
.super Ljava/lang/Object;
.source "BackCoverCalibration.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/BackCoverCalibration;->updateGlobalThemeIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BackCoverCalibration;


# direct methods
.method constructor <init>(Lcom/android/settings/BackCoverCalibration;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/android/settings/BackCoverCalibration$2;->this$0:Lcom/android/settings/BackCoverCalibration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 217
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.smartisanos.COLOR_THEME_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    iget-object p2, p0, Lcom/android/settings/BackCoverCalibration$2;->this$0:Lcom/android/settings/BackCoverCalibration;

    invoke-static {p2}, Lcom/android/settings/BackCoverCalibration;->access$100(Lcom/android/settings/BackCoverCalibration;)I

    move-result p2

    const-string v0, "color"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 220
    iget-object p2, p0, Lcom/android/settings/BackCoverCalibration$2;->this$0:Lcom/android/settings/BackCoverCalibration;

    invoke-virtual {p2, p1}, Lcom/android/settings/BackCoverCalibration;->sendBroadcast(Landroid/content/Intent;)V

    .line 223
    iget-object p1, p0, Lcom/android/settings/BackCoverCalibration$2;->this$0:Lcom/android/settings/BackCoverCalibration;

    invoke-virtual {p1}, Lcom/android/settings/BackCoverCalibration;->finish()V

    .line 224
    invoke-static {}, Lsmartisanos/api/ConfigurationSmt;->getInstance()Lsmartisanos/api/ConfigurationSmt;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/BackCoverCalibration$2;->this$0:Lcom/android/settings/BackCoverCalibration;

    invoke-static {p2}, Lcom/android/settings/BackCoverCalibration;->access$300(Lcom/android/settings/BackCoverCalibration;)Landroid/content/res/Configuration;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/BackCoverCalibration$2;->this$0:Lcom/android/settings/BackCoverCalibration;

    invoke-virtual {v0}, Lcom/android/settings/BackCoverCalibration;->getThemeFromValue()Landroid/content/res/CustomTheme;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lsmartisanos/api/ConfigurationSmt;->set_customTheme(Landroid/content/res/Configuration;Landroid/content/res/CustomTheme;)V

    .line 226
    :try_start_0
    invoke-static {}, Lsmartisanos/api/ActivityManagerSmt;->getInstance()Lsmartisanos/api/ActivityManagerSmt;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/BackCoverCalibration$2;->this$0:Lcom/android/settings/BackCoverCalibration;

    invoke-static {p2}, Lcom/android/settings/BackCoverCalibration;->access$400(Lcom/android/settings/BackCoverCalibration;)Landroid/app/ActivityManager;

    move-result-object p2

    iget-object p0, p0, Lcom/android/settings/BackCoverCalibration$2;->this$0:Lcom/android/settings/BackCoverCalibration;

    invoke-static {p0}, Lcom/android/settings/BackCoverCalibration;->access$300(Lcom/android/settings/BackCoverCalibration;)Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lsmartisanos/api/ActivityManagerSmt;->updateConfiguration(Landroid/app/ActivityManager;Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 228
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
