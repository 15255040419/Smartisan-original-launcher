.class Lcom/android/settings/BaseFragment$2;
.super Landroid/database/ContentObserver;
.source "BaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/BaseFragment;->monitorExtDisplayStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BaseFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/BaseFragment;Landroid/os/Handler;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/android/settings/BaseFragment$2;->this$0:Lcom/android/settings/BaseFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 137
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 138
    iget-object p1, p0, Lcom/android/settings/BaseFragment$2;->this$0:Lcom/android/settings/BaseFragment;

    iget-object p1, p1, Lcom/android/settings/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "global_pc_mode_settings"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v0, v1

    .line 140
    :cond_0
    iget-object p0, p0, Lcom/android/settings/BaseFragment$2;->this$0:Lcom/android/settings/BaseFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/BaseFragment;->onExtDisplayChanged(Z)V

    .line 141
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "PC mode changed into "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BaseFragment"

    invoke-static {p1, p0}, Lsmartisanos/util/LogTag;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
