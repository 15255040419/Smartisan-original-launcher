.class Lcom/android/settings/wifi/WifiConfigControllerForSetup$8;
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

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiConfigControllerForSetup;Landroid/view/View;)V
    .locals 0

    .line 1141
    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup$8;->this$0:Lcom/android/settings/wifi/WifiConfigControllerForSetup;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup$8;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1144
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup$8;->this$0:Lcom/android/settings/wifi/WifiConfigControllerForSetup;

    invoke-static {p1, p2}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->access$1702(Lcom/android/settings/wifi/WifiConfigControllerForSetup;I)I

    .line 1145
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup$8;->val$v:Landroid/view/View;

    check-cast p1, Lsmartisanos/widget/ListContentItemText;

    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup$8;->this$0:Lcom/android/settings/wifi/WifiConfigControllerForSetup;

    .line 1146
    invoke-static {p2}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->access$1600(Lcom/android/settings/wifi/WifiConfigControllerForSetup;)I

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup$8;->this$0:Lcom/android/settings/wifi/WifiConfigControllerForSetup;

    invoke-static {p2}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->access$2000(Lcom/android/settings/wifi/WifiConfigControllerForSetup;)[Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup$8;->this$0:Lcom/android/settings/wifi/WifiConfigControllerForSetup;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->access$1700(Lcom/android/settings/wifi/WifiConfigControllerForSetup;)I

    move-result v0

    aget-object p2, p2, v0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup$8;->this$0:Lcom/android/settings/wifi/WifiConfigControllerForSetup;

    .line 1147
    invoke-static {p2}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->access$2100(Lcom/android/settings/wifi/WifiConfigControllerForSetup;)[Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup$8;->this$0:Lcom/android/settings/wifi/WifiConfigControllerForSetup;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->access$1700(Lcom/android/settings/wifi/WifiConfigControllerForSetup;)I

    move-result v0

    aget-object p2, p2, v0

    .line 1146
    :goto_0
    invoke-virtual {p1, p2}, Lsmartisanos/widget/ListContentItemText;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1148
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup$8;->this$0:Lcom/android/settings/wifi/WifiConfigControllerForSetup;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->access$300(Lcom/android/settings/wifi/WifiConfigControllerForSetup;)V

    .line 1149
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup$8;->this$0:Lcom/android/settings/wifi/WifiConfigControllerForSetup;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->showWarningMessagesIfAppropriate()V

    .line 1150
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup$8;->this$0:Lcom/android/settings/wifi/WifiConfigControllerForSetup;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->enableSubmitIfAppropriate()V

    .line 1151
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerForSetup$8;->this$0:Lcom/android/settings/wifi/WifiConfigControllerForSetup;

    invoke-static {p0}, Lcom/android/settings/wifi/WifiConfigControllerForSetup;->access$2200(Lcom/android/settings/wifi/WifiConfigControllerForSetup;)Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
