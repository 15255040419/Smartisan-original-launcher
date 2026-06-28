.class Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter$1;
.super Ljava/lang/Object;
.source "SortNetworkListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;

.field final synthetic val$pos:I

.field final synthetic val$sortAccessPoint:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;Landroid/net/wifi/WifiConfiguration;I)V
    .locals 0

    .line 492
    iput-object p1, p0, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter$1;->this$1:Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;

    iput-object p2, p0, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter$1;->val$sortAccessPoint:Landroid/net/wifi/WifiConfiguration;

    iput p3, p0, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter$1;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClink remove v = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SortNetworkListActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object p1, p0, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter$1;->this$1:Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;

    iget-object p1, p1, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->this$0:Lcom/android/settings/wifi/SortNetworkListActivity;

    iget-object v0, p0, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter$1;->this$1:Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;

    iget-object v0, v0, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->this$0:Lcom/android/settings/wifi/SortNetworkListActivity;

    invoke-static {v0}, Lcom/android/settings/wifi/SortNetworkListActivity;->access$1300(Lcom/android/settings/wifi/SortNetworkListActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/wifi/SortNetworkListActivity;->access$1202(Lcom/android/settings/wifi/SortNetworkListActivity;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    .line 497
    iget-object p1, p0, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter$1;->this$1:Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;

    iget-object p1, p1, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->this$0:Lcom/android/settings/wifi/SortNetworkListActivity;

    invoke-static {p1}, Lcom/android/settings/wifi/SortNetworkListActivity;->access$1200(Lcom/android/settings/wifi/SortNetworkListActivity;)Landroid/net/wifi/WifiInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result p1

    .line 498
    iget-object v0, p0, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter$1;->val$sortAccessPoint:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v0, p1, :cond_0

    return-void

    .line 501
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter$1;->this$1:Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;

    iget-object p1, p1, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->mList:Ljava/util/List;

    iget v0, p0, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter$1;->val$pos:I

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 502
    iget p1, p0, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter$1;->val$pos:I

    iget-object v0, p0, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter$1;->this$1:Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;

    iget v0, v0, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->mSortSplitLinePosition:I

    const/4 v1, 0x1

    if-ge p1, v0, :cond_1

    .line 503
    iget-object p1, p0, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter$1;->this$1:Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;

    iget v0, p1, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->mSortSplitLinePosition:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->mSortSplitLinePosition:I

    .line 505
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter$1;->this$1:Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;

    iget-object p1, p1, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->this$0:Lcom/android/settings/wifi/SortNetworkListActivity;

    invoke-static {p1}, Lcom/android/settings/wifi/SortNetworkListActivity;->access$1300(Lcom/android/settings/wifi/SortNetworkListActivity;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter$1;->val$sortAccessPoint:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 506
    iget-object p1, p0, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter$1;->this$1:Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;

    invoke-virtual {p1}, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->notifyDataSetChanged()V

    .line 507
    iget-object p1, p0, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter$1;->this$1:Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;

    iget-object p1, p1, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->mList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gt p1, v1, :cond_2

    .line 508
    iget-object p1, p0, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter$1;->this$1:Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;

    iget-object p1, p1, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->this$0:Lcom/android/settings/wifi/SortNetworkListActivity;

    invoke-static {p1}, Lcom/android/settings/wifi/SortNetworkListActivity;->access$1600(Lcom/android/settings/wifi/SortNetworkListActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 509
    iget-object p1, p0, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter$1;->this$1:Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;

    iget-object p1, p1, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->this$0:Lcom/android/settings/wifi/SortNetworkListActivity;

    invoke-static {p1}, Lcom/android/settings/wifi/SortNetworkListActivity;->access$1700(Lcom/android/settings/wifi/SortNetworkListActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 510
    iget-object p0, p0, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter$1;->this$1:Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;

    iget-object p0, p0, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->this$0:Lcom/android/settings/wifi/SortNetworkListActivity;

    invoke-static {p0}, Lcom/android/settings/wifi/SortNetworkListActivity;->access$500(Lcom/android/settings/wifi/SortNetworkListActivity;)Lcom/android/settings/wifi/dslv/DragSortListView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/dslv/DragSortListView;->setVisibility(I)V

    :cond_2
    return-void
.end method
