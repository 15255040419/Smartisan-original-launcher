.class Lcom/android/settings/AppIconsSettingsFragment$2;
.super Landroid/os/AsyncTask;
.source "AppIconsSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AppIconsSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList<",
        "Lcom/android/settings/AppIconsSettingsFragment$Asset;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AppIconsSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/AppIconsSettingsFragment;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/android/settings/AppIconsSettingsFragment$2;->this$0:Lcom/android/settings/AppIconsSettingsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 126
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/AppIconsSettingsFragment$2;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/AppIconsSettingsFragment$Asset;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object p0, p0, Lcom/android/settings/AppIconsSettingsFragment$2;->this$0:Lcom/android/settings/AppIconsSettingsFragment;

    invoke-static {p0}, Lcom/android/settings/AppIconsSettingsFragment;->access$400(Lcom/android/settings/AppIconsSettingsFragment;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 126
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/settings/AppIconsSettingsFragment$2;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/AppIconsSettingsFragment$Asset;",
            ">;)V"
        }
    .end annotation

    .line 133
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 134
    iget-object v0, p0, Lcom/android/settings/AppIconsSettingsFragment$2;->this$0:Lcom/android/settings/AppIconsSettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings/AppIconsSettingsFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AppIconsSettingsFragment$2;->this$0:Lcom/android/settings/AppIconsSettingsFragment;

    invoke-static {v0, p1}, Lcom/android/settings/AppIconsSettingsFragment;->access$002(Lcom/android/settings/AppIconsSettingsFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 138
    iget-object p1, p0, Lcom/android/settings/AppIconsSettingsFragment$2;->this$0:Lcom/android/settings/AppIconsSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/AppIconsSettingsFragment;->access$300(Lcom/android/settings/AppIconsSettingsFragment;)Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 139
    iget-object p1, p0, Lcom/android/settings/AppIconsSettingsFragment$2;->this$0:Lcom/android/settings/AppIconsSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/AppIconsSettingsFragment;->access$300(Lcom/android/settings/AppIconsSettingsFragment;)Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter;->notifyDataSetChanged()V

    .line 141
    :cond_1
    iget-object p1, p0, Lcom/android/settings/AppIconsSettingsFragment$2;->this$0:Lcom/android/settings/AppIconsSettingsFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/AppIconsSettingsFragment;->access$500(Lcom/android/settings/AppIconsSettingsFragment;Z)V

    .line 142
    iget-object p1, p0, Lcom/android/settings/AppIconsSettingsFragment$2;->this$0:Lcom/android/settings/AppIconsSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/AppIconsSettingsFragment;->access$600(Lcom/android/settings/AppIconsSettingsFragment;)V

    .line 143
    iget-object p0, p0, Lcom/android/settings/AppIconsSettingsFragment$2;->this$0:Lcom/android/settings/AppIconsSettingsFragment;

    invoke-static {p0}, Lcom/android/settings/AppIconsSettingsFragment;->access$700(Lcom/android/settings/AppIconsSettingsFragment;)V

    return-void
.end method
