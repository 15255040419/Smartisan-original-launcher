.class Lcom/android/settings/wifi/WifiSetupFragment$2;
.super Ljava/lang/Object;
.source "WifiSetupFragment.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSetupFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSetupFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSetupFragment;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSetupFragment$2;->this$0:Lcom/android/settings/wifi/WifiSetupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 0

    const p1, 0x7f1217fc

    .line 179
    invoke-static {p1}, Lcom/android/settings/ToastUtils;->show(I)V

    .line 180
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSetupFragment$2;->this$0:Lcom/android/settings/wifi/WifiSetupFragment;

    invoke-static {p0}, Lcom/android/settings/wifi/WifiSetupFragment;->access$800(Lcom/android/settings/wifi/WifiSetupFragment;)V

    return-void
.end method

.method public onSuccess()V
    .locals 0

    return-void
.end method
