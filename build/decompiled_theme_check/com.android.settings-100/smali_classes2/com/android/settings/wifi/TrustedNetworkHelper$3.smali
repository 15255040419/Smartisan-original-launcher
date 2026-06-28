.class Lcom/android/settings/wifi/TrustedNetworkHelper$3;
.super Ljava/lang/Object;
.source "TrustedNetworkHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 119
    iput-object p1, p0, Lcom/android/settings/wifi/TrustedNetworkHelper$3;->this$0:Lcom/android/settings/wifi/TrustedNetworkHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/settings/wifi/TrustedNetworkHelper$3;->this$0:Lcom/android/settings/wifi/TrustedNetworkHelper;

    invoke-static {p0}, Lcom/android/settings/wifi/TrustedNetworkHelper;->access$000(Lcom/android/settings/wifi/TrustedNetworkHelper;)V

    return-void
.end method
