.class Lcom/android/settings/wifi/WifiConfigControllerEx$4;
.super Ljava/lang/Object;
.source "WifiConfigControllerEx.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiConfigControllerEx;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiConfigControllerEx;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiConfigControllerEx;)V
    .locals 0

    .line 539
    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerEx$4;->this$0:Lcom/android/settings/wifi/WifiConfigControllerEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 542
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerEx$4;->this$0:Lcom/android/settings/wifi/WifiConfigControllerEx;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiConfigControllerEx;->access$100(Lcom/android/settings/wifi/WifiConfigControllerEx;)Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 543
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerEx$4;->this$0:Lcom/android/settings/wifi/WifiConfigControllerEx;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiConfigControllerEx;->access$100(Lcom/android/settings/wifi/WifiConfigControllerEx;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 545
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx$4;->this$0:Lcom/android/settings/wifi/WifiConfigControllerEx;

    invoke-static {p0, p2}, Lcom/android/settings/wifi/WifiConfigControllerEx;->access$200(Lcom/android/settings/wifi/WifiConfigControllerEx;I)V

    return-void
.end method
