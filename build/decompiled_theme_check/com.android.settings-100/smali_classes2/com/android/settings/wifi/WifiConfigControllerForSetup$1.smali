.class Lcom/android/settings/wifi/WifiConfigControllerForSetup$1;
.super Ljava/lang/Object;
.source "WifiConfigControllerForSetup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiConfigControllerForSetup;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiConfigControllerForSetup;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiConfigControllerForSetup;)V
    .locals 0

    .line 931
    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup$1;->this$0:Lcom/android/settings/wifi/WifiConfigControllerForSetup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 933
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup$1;->this$0:Lcom/android/settings/wifi/WifiConfigControllerForSetup;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->showWarningMessagesIfAppropriate()V

    .line 934
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup$1;->this$0:Lcom/android/settings/wifi/WifiConfigControllerForSetup;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->enableSubmitIfAppropriate()V

    return-void
.end method
