.class Lcom/android/settings/widget/CustomExpandableLinearLayout$AppQueryTask;
.super Landroid/os/AsyncTask;
.source "CustomExpandableLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/CustomExpandableLinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppQueryTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList<",
        "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field final hiddenApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/widget/CustomExpandableLinearLayout;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/CustomExpandableLinearLayout;Lcom/android/settings/applications/ApplicationsState;)V
    .locals 4

    .line 490
    iput-object p1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout$AppQueryTask;->this$0:Lcom/android/settings/widget/CustomExpandableLinearLayout;

    .line 491
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, "com.smartisanos.sara"

    const-string v1, "com.smartisanos.sidebar"

    const-string v2, "com.smartisanos.calculator"

    const-string v3, "com.bullet.messenger"

    .line 488
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout$AppQueryTask;->hiddenApps:Ljava/util/List;

    .line 492
    invoke-static {p1}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->access$800(Lcom/android/settings/widget/CustomExpandableLinearLayout;)Lcom/android/settings/applications/ApplicationsState$Session;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 493
    invoke-static {p1}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->access$800(Lcom/android/settings/widget/CustomExpandableLinearLayout;)Lcom/android/settings/applications/ApplicationsState$Session;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ApplicationsState$Session;->resume(Z)V

    goto :goto_0

    .line 495
    :cond_0
    invoke-static {p1}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->access$900(Lcom/android/settings/widget/CustomExpandableLinearLayout;)Lcom/android/settings/widget/CustomExpandableLinearLayout$AppSessionCallback;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/settings/applications/ApplicationsState;->newSession(Lcom/android/settings/applications/ApplicationsState$Callbacks;)Lcom/android/settings/applications/ApplicationsState$Session;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->access$802(Lcom/android/settings/widget/CustomExpandableLinearLayout;Lcom/android/settings/applications/ApplicationsState$Session;)Lcom/android/settings/applications/ApplicationsState$Session;

    .line 496
    invoke-static {p1}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->access$800(Lcom/android/settings/widget/CustomExpandableLinearLayout;)Lcom/android/settings/applications/ApplicationsState$Session;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ApplicationsState$Session;->resume(Z)V

    :goto_0
    return-void
.end method

.method private isBlackListApp(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3

    const-string v0, "com.smartisanos.appstore"

    .line 533
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout$AppQueryTask;->this$0:Lcom/android/settings/widget/CustomExpandableLinearLayout;

    invoke-static {p0}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->access$1400(Lcom/android/settings/widget/CustomExpandableLinearLayout;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/Utils;->isCmccVersion(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    const-string p0, "com.smartisanos.sidebar"

    .line 534
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    move v0, p0

    .line 538
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_3

    .line 539
    aget-object v2, p2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return p0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 487
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/CustomExpandableLinearLayout$AppQueryTask;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    .line 502
    iget-object p1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout$AppQueryTask;->this$0:Lcom/android/settings/widget/CustomExpandableLinearLayout;

    invoke-static {p1}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->access$800(Lcom/android/settings/widget/CustomExpandableLinearLayout;)Lcom/android/settings/applications/ApplicationsState$Session;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout$AppQueryTask;->this$0:Lcom/android/settings/widget/CustomExpandableLinearLayout;

    invoke-static {p0}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->access$1000(Lcom/android/settings/widget/CustomExpandableLinearLayout;)Ljava/util/Comparator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/android/settings/applications/ApplicationsState$Session;->rebuild(Lcom/android/settings/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 487
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/CustomExpandableLinearLayout$AppQueryTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 507
    iget-object v0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout$AppQueryTask;->this$0:Lcom/android/settings/widget/CustomExpandableLinearLayout;

    invoke-static {v0}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->access$1100(Lcom/android/settings/widget/CustomExpandableLinearLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 511
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 512
    iget-object v1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout$AppQueryTask;->this$0:Lcom/android/settings/widget/CustomExpandableLinearLayout;

    invoke-static {v1}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->access$1200(Lcom/android/settings/widget/CustomExpandableLinearLayout;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 513
    iget-object v1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout$AppQueryTask;->this$0:Lcom/android/settings/widget/CustomExpandableLinearLayout;

    invoke-virtual {v1}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 514
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 516
    iget-object v3, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout$AppQueryTask;->this$0:Lcom/android/settings/widget/CustomExpandableLinearLayout;

    invoke-static {v3}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->access$1300(Lcom/android/settings/widget/CustomExpandableLinearLayout;)Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->isPackageInLockedBlock(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 519
    :cond_1
    iget-object v3, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout$AppQueryTask;->hiddenApps:Ljava/util/List;

    iget-object v4, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 522
    :cond_2
    iget-object v3, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3, v1}, Lcom/android/settings/widget/CustomExpandableLinearLayout$AppQueryTask;->isBlackListApp(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 525
    :cond_3
    iget-object v3, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout$AppQueryTask;->this$0:Lcom/android/settings/widget/CustomExpandableLinearLayout;

    invoke-static {v3}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->access$1200(Lcom/android/settings/widget/CustomExpandableLinearLayout;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 528
    :cond_4
    new-instance p1, Lcom/android/settings/widget/CustomExpandableLinearLayout$LauncherIntentBuildTask;

    iget-object p0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout$AppQueryTask;->this$0:Lcom/android/settings/widget/CustomExpandableLinearLayout;

    invoke-direct {p1, p0, v0}, Lcom/android/settings/widget/CustomExpandableLinearLayout$LauncherIntentBuildTask;-><init>(Lcom/android/settings/widget/CustomExpandableLinearLayout;Ljava/util/ArrayList;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/CustomExpandableLinearLayout$LauncherIntentBuildTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 508
    :cond_5
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AppQueryTask return, isRelease ?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout$AppQueryTask;->this$0:Lcom/android/settings/widget/CustomExpandableLinearLayout;

    invoke-static {p0}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->access$1100(Lcom/android/settings/widget/CustomExpandableLinearLayout;)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CustomExpandableLinearL"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
