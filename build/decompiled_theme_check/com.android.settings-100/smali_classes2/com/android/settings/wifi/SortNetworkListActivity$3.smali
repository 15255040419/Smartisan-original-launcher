.class Lcom/android/settings/wifi/SortNetworkListActivity$3;
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

    .line 219
    iput-object p1, p0, Lcom/android/settings/wifi/SortNetworkListActivity$3;->this$0:Lcom/android/settings/wifi/SortNetworkListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 222
    iget-object p1, p0, Lcom/android/settings/wifi/SortNetworkListActivity$3;->this$0:Lcom/android/settings/wifi/SortNetworkListActivity;

    invoke-static {p1}, Lcom/android/settings/wifi/SortNetworkListActivity;->access$200(Lcom/android/settings/wifi/SortNetworkListActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 223
    iget-object p1, p0, Lcom/android/settings/wifi/SortNetworkListActivity$3;->this$0:Lcom/android/settings/wifi/SortNetworkListActivity;

    invoke-static {p1}, Lcom/android/settings/wifi/SortNetworkListActivity;->access$300(Lcom/android/settings/wifi/SortNetworkListActivity;)V

    .line 224
    iget-object p0, p0, Lcom/android/settings/wifi/SortNetworkListActivity$3;->this$0:Lcom/android/settings/wifi/SortNetworkListActivity;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/wifi/SortNetworkListActivity;->access$202(Lcom/android/settings/wifi/SortNetworkListActivity;Z)Z

    goto :goto_0

    .line 226
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/SortNetworkListActivity$3;->this$0:Lcom/android/settings/wifi/SortNetworkListActivity;

    invoke-static {p1}, Lcom/android/settings/wifi/SortNetworkListActivity;->access$400(Lcom/android/settings/wifi/SortNetworkListActivity;)V

    .line 227
    iget-object p0, p0, Lcom/android/settings/wifi/SortNetworkListActivity$3;->this$0:Lcom/android/settings/wifi/SortNetworkListActivity;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/settings/wifi/SortNetworkListActivity;->access$202(Lcom/android/settings/wifi/SortNetworkListActivity;Z)Z

    :goto_0
    return-void
.end method
