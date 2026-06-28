.class Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdateTask;
.super Landroid/os/AsyncTask;
.source "SettingsDrawerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/drawer/SettingsDrawerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CategoriesUpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCategoryManager:Lcom/android/settingslib/drawer/CategoryManager;

.field final synthetic this$0:Lcom/android/settingslib/drawer/SettingsDrawerActivity;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/drawer/SettingsDrawerActivity;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdateTask;->this$0:Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 192
    invoke-static {p1}, Lcom/android/settingslib/drawer/CategoryManager;->get(Landroid/content/Context;)Lcom/android/settingslib/drawer/CategoryManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdateTask;->mCategoryManager:Lcom/android/settingslib/drawer/CategoryManager;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 187
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdateTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 197
    iget-object p1, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdateTask;->mCategoryManager:Lcom/android/settingslib/drawer/CategoryManager;

    iget-object p0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdateTask;->this$0:Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getSettingPkg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/settingslib/drawer/CategoryManager;->reloadAllCategories(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 187
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdateTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 203
    iget-object p1, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdateTask;->mCategoryManager:Lcom/android/settingslib/drawer/CategoryManager;

    invoke-static {}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->access$100()Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/drawer/CategoryManager;->updateCategoryFromBlacklist(Ljava/util/Set;)V

    .line 204
    iget-object p0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdateTask;->this$0:Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    invoke-static {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->access$200(Lcom/android/settingslib/drawer/SettingsDrawerActivity;)V

    return-void
.end method
