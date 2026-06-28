.class Lcom/android/settings/wifi/SortNetworkListActivity$5;
.super Ljava/lang/Object;
.source "SortNetworkListActivity.java"

# interfaces
.implements Lcom/android/settings/wifi/dslv/DragSortListView$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/SortNetworkListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/SortNetworkListActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/SortNetworkListActivity;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/android/settings/wifi/SortNetworkListActivity$5;->this$0:Lcom/android/settings/wifi/SortNetworkListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 4

    .line 318
    iget-object v0, p0, Lcom/android/settings/wifi/SortNetworkListActivity$5;->this$0:Lcom/android/settings/wifi/SortNetworkListActivity;

    invoke-static {v0}, Lcom/android/settings/wifi/SortNetworkListActivity;->access$600(Lcom/android/settings/wifi/SortNetworkListActivity;)Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;

    move-result-object v0

    iget v0, v0, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->mSortSplitLinePosition:I

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DragSortListView from="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SortNetworkListActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p1, p2, :cond_4

    if-eq p1, v0, :cond_4

    .line 321
    iget-object v1, p0, Lcom/android/settings/wifi/SortNetworkListActivity$5;->this$0:Lcom/android/settings/wifi/SortNetworkListActivity;

    invoke-static {v1}, Lcom/android/settings/wifi/SortNetworkListActivity;->access$600(Lcom/android/settings/wifi/SortNetworkListActivity;)Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 322
    iget-object v2, p0, Lcom/android/settings/wifi/SortNetworkListActivity$5;->this$0:Lcom/android/settings/wifi/SortNetworkListActivity;

    invoke-static {v2}, Lcom/android/settings/wifi/SortNetworkListActivity;->access$600(Lcom/android/settings/wifi/SortNetworkListActivity;)Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;

    move-result-object v2

    iget-object v2, v2, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->mList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 323
    iget-object v2, p0, Lcom/android/settings/wifi/SortNetworkListActivity$5;->this$0:Lcom/android/settings/wifi/SortNetworkListActivity;

    invoke-static {v2}, Lcom/android/settings/wifi/SortNetworkListActivity;->access$600(Lcom/android/settings/wifi/SortNetworkListActivity;)Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;

    move-result-object v2

    iget-object v2, v2, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->mList:Ljava/util/List;

    invoke-interface {v2, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v1, 0x1

    if-le p1, v0, :cond_0

    if-gt p2, v0, :cond_0

    .line 325
    iget-object v2, p0, Lcom/android/settings/wifi/SortNetworkListActivity$5;->this$0:Lcom/android/settings/wifi/SortNetworkListActivity;

    invoke-static {v2}, Lcom/android/settings/wifi/SortNetworkListActivity;->access$600(Lcom/android/settings/wifi/SortNetworkListActivity;)Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;

    move-result-object v2

    iget v3, v2, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->mSortSplitLinePosition:I

    add-int/2addr v3, v1

    iput v3, v2, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->mSortSplitLinePosition:I

    goto :goto_0

    :cond_0
    if-ge p1, v0, :cond_1

    if-lt p2, v0, :cond_1

    .line 327
    iget-object v2, p0, Lcom/android/settings/wifi/SortNetworkListActivity$5;->this$0:Lcom/android/settings/wifi/SortNetworkListActivity;

    invoke-static {v2}, Lcom/android/settings/wifi/SortNetworkListActivity;->access$600(Lcom/android/settings/wifi/SortNetworkListActivity;)Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;

    move-result-object v2

    iget v3, v2, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->mSortSplitLinePosition:I

    sub-int/2addr v3, v1

    iput v3, v2, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->mSortSplitLinePosition:I

    :cond_1
    :goto_0
    if-ge p1, v0, :cond_2

    if-lt p2, v0, :cond_3

    .line 330
    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/SortNetworkListActivity$5;->this$0:Lcom/android/settings/wifi/SortNetworkListActivity;

    invoke-static {p1}, Lcom/android/settings/wifi/SortNetworkListActivity;->access$700(Lcom/android/settings/wifi/SortNetworkListActivity;)V

    .line 332
    :cond_3
    iget-object p1, p0, Lcom/android/settings/wifi/SortNetworkListActivity$5;->this$0:Lcom/android/settings/wifi/SortNetworkListActivity;

    invoke-static {p1}, Lcom/android/settings/wifi/SortNetworkListActivity;->access$600(Lcom/android/settings/wifi/SortNetworkListActivity;)Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->notifyDataSetChanged()V

    .line 333
    iget-object p1, p0, Lcom/android/settings/wifi/SortNetworkListActivity$5;->this$0:Lcom/android/settings/wifi/SortNetworkListActivity;

    invoke-static {p1}, Lcom/android/settings/wifi/SortNetworkListActivity;->access$800(Lcom/android/settings/wifi/SortNetworkListActivity;)Lcom/android/settings/wifi/SortNetworkListActivity$ServiceHandler;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/settings/wifi/SortNetworkListActivity$ServiceHandler;->removeMessages(I)V

    .line 334
    iget-object p1, p0, Lcom/android/settings/wifi/SortNetworkListActivity$5;->this$0:Lcom/android/settings/wifi/SortNetworkListActivity;

    invoke-static {p1}, Lcom/android/settings/wifi/SortNetworkListActivity;->access$800(Lcom/android/settings/wifi/SortNetworkListActivity;)Lcom/android/settings/wifi/SortNetworkListActivity$ServiceHandler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/wifi/SortNetworkListActivity$5;->this$0:Lcom/android/settings/wifi/SortNetworkListActivity;

    invoke-static {p2}, Lcom/android/settings/wifi/SortNetworkListActivity;->access$600(Lcom/android/settings/wifi/SortNetworkListActivity;)Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;

    move-result-object p2

    iget-object p2, p2, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->mList:Ljava/util/List;

    invoke-virtual {p1, v1, p2}, Lcom/android/settings/wifi/SortNetworkListActivity$ServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 335
    iget-object p0, p0, Lcom/android/settings/wifi/SortNetworkListActivity$5;->this$0:Lcom/android/settings/wifi/SortNetworkListActivity;

    invoke-static {p0}, Lcom/android/settings/wifi/SortNetworkListActivity;->access$800(Lcom/android/settings/wifi/SortNetworkListActivity;)Lcom/android/settings/wifi/SortNetworkListActivity$ServiceHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/SortNetworkListActivity$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    return-void
.end method
