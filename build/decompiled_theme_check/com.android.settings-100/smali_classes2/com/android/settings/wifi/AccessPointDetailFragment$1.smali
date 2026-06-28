.class Lcom/android/settings/wifi/AccessPointDetailFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "AccessPointDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/AccessPointDetailFragment;
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

    .line 104
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment$1;->this$0:Lcom/android/settings/wifi/AccessPointDetailFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment$1;->this$0:Lcom/android/settings/wifi/AccessPointDetailFragment;

    invoke-static {p0, p1, p2}, Lcom/android/settings/wifi/AccessPointDetailFragment;->access$000(Lcom/android/settings/wifi/AccessPointDetailFragment;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
