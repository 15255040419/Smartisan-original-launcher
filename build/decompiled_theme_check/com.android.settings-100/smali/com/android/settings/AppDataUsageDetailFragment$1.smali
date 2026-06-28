.class Lcom/android/settings/AppDataUsageDetailFragment$1;
.super Ljava/lang/Object;
.source "AppDataUsageDetailFragment.java"

# interfaces
.implements Lcom/android/settings/utils/DataUsageStatHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AppDataUsageDetailFragment;->refreshDataUsageAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AppDataUsageDetailFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/AppDataUsageDetailFragment;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/android/settings/AppDataUsageDetailFragment$1;->this$0:Lcom/android/settings/AppDataUsageDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataStatUpdated(Lcom/android/settings/utils/DataUsageStatHelper$AppDataUsageInfo;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/android/settings/AppDataUsageDetailFragment$1;->this$0:Lcom/android/settings/AppDataUsageDetailFragment;

    invoke-virtual {v0}, Lcom/android/settings/AppDataUsageDetailFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 108
    :cond_0
    iget-object p0, p0, Lcom/android/settings/AppDataUsageDetailFragment$1;->this$0:Lcom/android/settings/AppDataUsageDetailFragment;

    invoke-static {p0, p1}, Lcom/android/settings/AppDataUsageDetailFragment;->access$000(Lcom/android/settings/AppDataUsageDetailFragment;Lcom/android/settings/utils/DataUsageStatHelper$AppDataUsageInfo;)V

    return-void
.end method
