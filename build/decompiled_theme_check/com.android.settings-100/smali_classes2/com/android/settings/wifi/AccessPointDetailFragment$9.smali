.class Lcom/android/settings/wifi/AccessPointDetailFragment$9;
.super Ljava/lang/Object;
.source "AccessPointDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/AccessPointDetailFragment;->showSetPrioritNetworkDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/AccessPointDetailFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/AccessPointDetailFragment;)V
    .locals 0

    .line 631
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment$9;->this$0:Lcom/android/settings/wifi/AccessPointDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 635
    iget-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment$9;->this$0:Lcom/android/settings/wifi/AccessPointDetailFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/AccessPointDetailFragment;->access$900(Lcom/android/settings/wifi/AccessPointDetailFragment;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object p2

    iget p2, p2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-static {p1, p2}, Lcom/android/settings/wifi/AccessPointDetailFragment;->access$802(Lcom/android/settings/wifi/AccessPointDetailFragment;I)I

    .line 636
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment$9;->this$0:Lcom/android/settings/wifi/AccessPointDetailFragment;

    invoke-static {p0}, Lcom/android/settings/wifi/AccessPointDetailFragment;->access$900(Lcom/android/settings/wifi/AccessPointDetailFragment;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object p0

    iget p0, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "persist.wifi.manual.sort"

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
