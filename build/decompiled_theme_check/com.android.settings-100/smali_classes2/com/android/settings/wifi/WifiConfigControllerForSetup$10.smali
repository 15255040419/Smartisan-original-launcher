.class Lcom/android/settings/wifi/WifiConfigControllerForSetup$10;
.super Ljava/lang/Object;
.source "WifiConfigControllerForSetup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiConfigControllerForSetup;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiConfigControllerForSetup;

.field final synthetic val$eapCaCerts:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiConfigControllerForSetup;[Ljava/lang/String;)V
    .locals 0

    .line 1197
    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup$10;->this$0:Lcom/android/settings/wifi/WifiConfigControllerForSetup;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup$10;->val$eapCaCerts:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1200
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup$10;->this$0:Lcom/android/settings/wifi/WifiConfigControllerForSetup;

    invoke-static {p1, p2}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->access$2602(Lcom/android/settings/wifi/WifiConfigControllerForSetup;I)I

    .line 1201
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup$10;->this$0:Lcom/android/settings/wifi/WifiConfigControllerForSetup;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->access$102(Lcom/android/settings/wifi/WifiConfigControllerForSetup;Z)Z

    .line 1202
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup$10;->this$0:Lcom/android/settings/wifi/WifiConfigControllerForSetup;

    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup$10;->val$eapCaCerts:[Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->access$2600(Lcom/android/settings/wifi/WifiConfigControllerForSetup;)I

    move-result v0

    aget-object p2, p2, v0

    invoke-static {p1, p2}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->access$2700(Lcom/android/settings/wifi/WifiConfigControllerForSetup;Ljava/lang/String;)V

    .line 1203
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup$10;->this$0:Lcom/android/settings/wifi/WifiConfigControllerForSetup;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->access$300(Lcom/android/settings/wifi/WifiConfigControllerForSetup;)V

    .line 1204
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup$10;->this$0:Lcom/android/settings/wifi/WifiConfigControllerForSetup;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->showWarningMessagesIfAppropriate()V

    .line 1205
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup$10;->this$0:Lcom/android/settings/wifi/WifiConfigControllerForSetup;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->enableSubmitIfAppropriate()V

    .line 1206
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup$10;->this$0:Lcom/android/settings/wifi/WifiConfigControllerForSetup;

    invoke-static {p0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->access$2800(Lcom/android/settings/wifi/WifiConfigControllerForSetup;)Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
