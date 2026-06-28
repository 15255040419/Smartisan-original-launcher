.class Lcom/android/settings/wifi/WifiSettings$6;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettings;->initSetupWizardViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$6;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 468
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$6;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/WifiPickerActivity;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPickerActivity;->gotoNextPage()V

    return-void
.end method
