.class Lcom/android/settings/wifi/TrustedNetworkHelper$4;
.super Ljava/lang/Object;
.source "TrustedNetworkHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/TrustedNetworkHelper;->showChooseLockscreenModeDialog()V
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

    .line 153
    iput-object p1, p0, Lcom/android/settings/wifi/TrustedNetworkHelper$4;->this$0:Lcom/android/settings/wifi/TrustedNetworkHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 156
    iget-object p1, p0, Lcom/android/settings/wifi/TrustedNetworkHelper$4;->this$0:Lcom/android/settings/wifi/TrustedNetworkHelper;

    invoke-static {p1}, Lcom/android/settings/wifi/TrustedNetworkHelper;->access$000(Lcom/android/settings/wifi/TrustedNetworkHelper;)V

    .line 157
    iget-object p0, p0, Lcom/android/settings/wifi/TrustedNetworkHelper$4;->this$0:Lcom/android/settings/wifi/TrustedNetworkHelper;

    invoke-static {p0}, Lcom/android/settings/wifi/TrustedNetworkHelper;->access$200(Lcom/android/settings/wifi/TrustedNetworkHelper;)Lsmartisanos/app/MenuDialog;

    move-result-object p0

    invoke-virtual {p0}, Lsmartisanos/app/MenuDialog;->dismiss()V

    return-void
.end method
