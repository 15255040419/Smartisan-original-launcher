.class Lcom/android/settings/wifi/WifiEnabler$2;
.super Ljava/lang/Object;
.source "WifiEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiEnabler;

.field final synthetic val$sharedpreferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiEnabler;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler$2;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiEnabler$2;->val$sharedpreferences:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 238
    iget-object p0, p0, Lcom/android/settings/wifi/WifiEnabler$2;->val$sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 240
    invoke-static {}, Lcom/android/settings/wifi/WifiEnabler;->access$100()Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const-string p2, "TurnOffWifiShowAgain"

    .line 239
    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 241
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
