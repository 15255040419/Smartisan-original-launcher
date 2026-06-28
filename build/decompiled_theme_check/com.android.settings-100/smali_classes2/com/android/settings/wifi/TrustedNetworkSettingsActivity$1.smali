.class Lcom/android/settings/wifi/TrustedNetworkSettingsActivity$1;
.super Ljava/lang/Object;
.source "TrustedNetworkSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/TrustedNetworkSettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/TrustedNetworkSettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/TrustedNetworkSettingsActivity;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/android/settings/wifi/TrustedNetworkSettingsActivity$1;->this$0:Lcom/android/settings/wifi/TrustedNetworkSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/settings/wifi/TrustedNetworkSettingsActivity$1;->this$0:Lcom/android/settings/wifi/TrustedNetworkSettingsActivity;

    invoke-virtual {p0}, Lcom/android/settings/wifi/TrustedNetworkSettingsActivity;->finish()V

    return-void
.end method
