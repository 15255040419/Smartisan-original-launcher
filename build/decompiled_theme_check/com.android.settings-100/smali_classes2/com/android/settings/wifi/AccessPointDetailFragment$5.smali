.class Lcom/android/settings/wifi/AccessPointDetailFragment$5;
.super Ljava/lang/Object;
.source "AccessPointDetailFragment.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/AccessPointDetailFragment;->onCreate(Landroid/os/Bundle;)V
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

    .line 212
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment$5;->this$0:Lcom/android/settings/wifi/AccessPointDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 0

    const p0, 0x7f1217fe

    .line 219
    invoke-static {p0}, Lcom/android/settings/ToastUtils;->show(I)V

    return-void
.end method

.method public onSuccess()V
    .locals 0

    return-void
.end method
