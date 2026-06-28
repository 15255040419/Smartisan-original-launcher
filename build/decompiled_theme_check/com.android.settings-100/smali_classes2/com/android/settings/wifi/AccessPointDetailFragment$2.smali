.class Lcom/android/settings/wifi/AccessPointDetailFragment$2;
.super Landroid/os/Handler;
.source "AccessPointDetailFragment.java"


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
.method constructor <init>(Lcom/android/settings/wifi/AccessPointDetailFragment;Landroid/os/Looper;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointDetailFragment$2;->this$0:Lcom/android/settings/wifi/AccessPointDetailFragment;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 122
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointDetailFragment$2;->this$0:Lcom/android/settings/wifi/AccessPointDetailFragment;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/android/settings/wifi/AccessPointDetailFragment;->access$100(Lcom/android/settings/wifi/AccessPointDetailFragment;Ljava/util/List;)V

    :goto_0
    return-void
.end method
