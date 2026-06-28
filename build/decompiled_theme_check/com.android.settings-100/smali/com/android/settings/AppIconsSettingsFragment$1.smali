.class Lcom/android/settings/AppIconsSettingsFragment$1;
.super Landroid/os/Handler;
.source "AppIconsSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AppIconsSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AppIconsSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/AppIconsSettingsFragment;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/android/settings/AppIconsSettingsFragment$1;->this$0:Lcom/android/settings/AppIconsSettingsFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 103
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "extra_invalid_asset"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/settings/AppIconsSettingsFragment$Asset;

    if-eqz p1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/settings/AppIconsSettingsFragment$1;->this$0:Lcom/android/settings/AppIconsSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/AppIconsSettingsFragment;->access$000(Lcom/android/settings/AppIconsSettingsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lcom/android/settings/AppIconsSettingsFragment$1;->this$0:Lcom/android/settings/AppIconsSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/AppIconsSettingsFragment;->access$100(Lcom/android/settings/AppIconsSettingsFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcom/android/settings/AppIconsSettingsFragment$1;->this$0:Lcom/android/settings/AppIconsSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/AppIconsSettingsFragment;->access$200(Lcom/android/settings/AppIconsSettingsFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_0
    iget-object p0, p0, Lcom/android/settings/AppIconsSettingsFragment$1;->this$0:Lcom/android/settings/AppIconsSettingsFragment;

    invoke-static {p0}, Lcom/android/settings/AppIconsSettingsFragment;->access$300(Lcom/android/settings/AppIconsSettingsFragment;)Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter;->notifyDataSetChanged()V

    return-void
.end method
