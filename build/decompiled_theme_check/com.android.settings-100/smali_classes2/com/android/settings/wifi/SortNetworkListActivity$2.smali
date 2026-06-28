.class Lcom/android/settings/wifi/SortNetworkListActivity$2;
.super Ljava/lang/Object;
.source "SortNetworkListActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/SortNetworkListActivity;->sortConfigedAPs(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/net/wifi/WifiConfiguration;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/SortNetworkListActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/SortNetworkListActivity;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/android/settings/wifi/SortNetworkListActivity$2;->this$0:Lcom/android/settings/wifi/SortNetworkListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I
    .locals 2

    .line 117
    iget p0, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->priority:I

    const/4 v1, -0x1

    if-le p0, v0, :cond_0

    return v1

    .line 119
    :cond_0
    iget p0, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget p1, p2, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-ge p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 115
    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    check-cast p2, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/wifi/SortNetworkListActivity$2;->compare(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I

    move-result p0

    return p0
.end method
