.class Lcom/android/settings/wifi/TrustedNetworkList$4;
.super Ljava/lang/Object;
.source "TrustedNetworkList.java"

# interfaces
.implements Lcom/android/settings/wifi/TrustedNetworkHelper$CancelCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/TrustedNetworkList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/TrustedNetworkList;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/TrustedNetworkList;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/android/settings/wifi/TrustedNetworkList$4;->this$0:Lcom/android/settings/wifi/TrustedNetworkList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 165
    iget-object p0, p0, Lcom/android/settings/wifi/TrustedNetworkList$4;->this$0:Lcom/android/settings/wifi/TrustedNetworkList;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settings/wifi/TrustedNetworkList;->access$400(Lcom/android/settings/wifi/TrustedNetworkList;Z)V

    return-void
.end method
