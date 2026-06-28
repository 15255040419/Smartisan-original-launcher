.class Lcom/android/settings/wifi/WifiSettings$WifiListAdapter;
.super Lcom/android/settings/SettingsAdapter;
.source "WifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiListAdapter"
.end annotation


# instance fields
.field accessPointsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/wifi/AccessPointInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    .line 1362
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$WifiListAdapter;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Lcom/android/settings/SettingsAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/WifiSettings$1;)V
    .locals 0

    .line 1362
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings$WifiListAdapter;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 1377
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$WifiListAdapter;->accessPointsList:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getData()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/wifi/AccessPointInfo;",
            ">;"
        }
    .end annotation

    .line 1367
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$WifiListAdapter;->accessPointsList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getItem(I)Lcom/android/settings/wifi/AccessPointInfo;
    .locals 0

    .line 1382
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$WifiListAdapter;->accessPointsList:Ljava/util/ArrayList;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1385
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/AccessPointInfo;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1362
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings$WifiListAdapter;->getItem(I)Lcom/android/settings/wifi/AccessPointInfo;

    move-result-object p0

    return-object p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    .line 1392
    new-instance p2, Lcom/android/settings/wifi/AccessPointView;

    iget-object p3, p0, Lcom/android/settings/wifi/WifiSettings$WifiListAdapter;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {p3}, Lcom/android/settings/wifi/WifiSettings;->access$1800(Lcom/android/settings/wifi/WifiSettings;)Landroid/app/Activity;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/android/settings/wifi/AccessPointView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 1394
    :cond_0
    check-cast p2, Lcom/android/settings/wifi/AccessPointView;

    :goto_0
    const/4 p3, 0x0

    .line 1397
    invoke-virtual {p2, p3}, Lcom/android/settings/wifi/AccessPointView;->setClipChildren(Z)V

    .line 1398
    invoke-virtual {p2, p3}, Lcom/android/settings/wifi/AccessPointView;->setClipToPadding(Z)V

    const v0, 0x7f0a05f8

    .line 1400
    invoke-virtual {p2, v0}, Lcom/android/settings/wifi/AccessPointView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1402
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings$WifiListAdapter;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne p1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 p3, 0x8

    :goto_1
    invoke-virtual {v0, p3}, Landroid/view/View;->setVisibility(I)V

    .line 1404
    :cond_2
    iget-object p3, p0, Lcom/android/settings/wifi/WifiSettings$WifiListAdapter;->accessPointsList:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/settings/wifi/AccessPointInfo;

    invoke-virtual {p2, p3}, Lcom/android/settings/wifi/AccessPointView;->bindData(Lcom/android/settings/wifi/AccessPointInfo;)V

    .line 1405
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings$WifiListAdapter;->getBackgroundStyle(I)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/settings/wifi/AccessPointView;->setBackgroundStyle(I)V

    .line 1406
    invoke-virtual {p2, v1}, Lcom/android/settings/wifi/AccessPointView;->setGravity(I)V

    return-object p2
.end method

.method public updateData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/wifi/AccessPointInfo;",
            ">;)V"
        }
    .end annotation

    .line 1371
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$WifiListAdapter;->accessPointsList:Ljava/util/ArrayList;

    .line 1372
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings$WifiListAdapter;->notifyDataSetChanged()V

    return-void
.end method
