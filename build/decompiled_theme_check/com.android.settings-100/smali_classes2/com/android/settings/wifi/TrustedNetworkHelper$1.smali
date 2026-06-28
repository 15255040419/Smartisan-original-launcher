.class Lcom/android/settings/wifi/TrustedNetworkHelper$1;
.super Ljava/lang/Object;
.source "TrustedNetworkHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/TrustedNetworkHelper;->chooseOrConfirmPasswordDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/TrustedNetworkHelper;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/TrustedNetworkHelper;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/android/settings/wifi/TrustedNetworkHelper$1;->this$0:Lcom/android/settings/wifi/TrustedNetworkHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/settings/wifi/TrustedNetworkHelper$1;->this$0:Lcom/android/settings/wifi/TrustedNetworkHelper;

    invoke-static {p0}, Lcom/android/settings/wifi/TrustedNetworkHelper;->access$000(Lcom/android/settings/wifi/TrustedNetworkHelper;)V

    return-void
.end method
