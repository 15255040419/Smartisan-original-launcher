.class Lcom/android/settings/wifi/WifiSettings$22;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettings;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;

.field final synthetic val$compoundButton:Landroid/widget/CompoundButton;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;Landroid/widget/CompoundButton;)V
    .locals 0

    .line 1065
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$22;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettings$22;->val$compoundButton:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1068
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings$22;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/settings/wifi/WifiSettings;->access$1500(Lcom/android/settings/wifi/WifiSettings;Z)V

    .line 1069
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings$22;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiSettings;->access$1600(Lcom/android/settings/wifi/WifiSettings;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "network_avoid_bad_wifi"

    const-string v0, "1"

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1070
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings$22;->val$compoundButton:Landroid/widget/CompoundButton;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1071
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$22;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {p0, p2}, Lcom/android/settings/wifi/WifiSettings;->access$1500(Lcom/android/settings/wifi/WifiSettings;Z)V

    return-void
.end method
