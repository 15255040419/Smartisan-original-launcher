.class Lcom/android/settings/wifi/AccessPointDetailFragment$3;
.super Ljava/lang/Object;
.source "AccessPointDetailFragment.java"

# interfaces
.implements Lcom/android/settings/wifi/TrustedNetworkHelper$CancelCallback;


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

    .line 150
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment$3;->this$0:Lcom/android/settings/wifi/AccessPointDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 153
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment$3;->this$0:Lcom/android/settings/wifi/AccessPointDetailFragment;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settings/wifi/AccessPointDetailFragment;->access$200(Lcom/android/settings/wifi/AccessPointDetailFragment;Z)V

    return-void
.end method
