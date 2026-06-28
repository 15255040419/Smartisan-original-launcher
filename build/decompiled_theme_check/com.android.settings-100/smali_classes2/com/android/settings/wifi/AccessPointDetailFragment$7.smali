.class Lcom/android/settings/wifi/AccessPointDetailFragment$7;
.super Ljava/lang/Object;
.source "AccessPointDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    .line 647
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment$7;->this$0:Lcom/android/settings/wifi/AccessPointDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 651
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment$7;->this$0:Lcom/android/settings/wifi/AccessPointDetailFragment;

    invoke-static {p0}, Lcom/android/settings/wifi/AccessPointDetailFragment;->access$700(Lcom/android/settings/wifi/AccessPointDetailFragment;)Lsmartisanos/widget/ListContentItemSwitch;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lsmartisanos/widget/ListContentItemSwitch;->setChecked(Z)V

    return-void
.end method
