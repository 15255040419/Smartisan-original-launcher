.class Lcom/android/settings/wifi/SortNetworkListActivity$4;
.super Ljava/lang/Object;
.source "SortNetworkListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/SortNetworkListActivity;->initTitleView()V
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

    .line 238
    iput-object p1, p0, Lcom/android/settings/wifi/SortNetworkListActivity$4;->this$0:Lcom/android/settings/wifi/SortNetworkListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 241
    iget-object p1, p0, Lcom/android/settings/wifi/SortNetworkListActivity$4;->this$0:Lcom/android/settings/wifi/SortNetworkListActivity;

    invoke-static {p1}, Lcom/android/settings/wifi/SortNetworkListActivity;->access$500(Lcom/android/settings/wifi/SortNetworkListActivity;)Lcom/android/settings/wifi/dslv/DragSortListView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/wifi/dslv/DragSortListView;->getDragState()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/settings/wifi/SortNetworkListActivity$4;->this$0:Lcom/android/settings/wifi/SortNetworkListActivity;

    .line 242
    invoke-static {p1}, Lcom/android/settings/wifi/SortNetworkListActivity;->access$500(Lcom/android/settings/wifi/SortNetworkListActivity;)Lcom/android/settings/wifi/dslv/DragSortListView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/wifi/dslv/DragSortListView;->getDragState()I

    move-result p1

    if-nez p1, :cond_1

    .line 243
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/SortNetworkListActivity$4;->this$0:Lcom/android/settings/wifi/SortNetworkListActivity;

    invoke-virtual {p0}, Lcom/android/settings/wifi/SortNetworkListActivity;->finish()V

    :cond_1
    return-void
.end method
