.class Lcom/android/settings/widget/CustomExpandableLinearLayout$LauncherIntentBuildTask;
.super Landroid/os/AsyncTask;
.source "CustomExpandableLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/CustomExpandableLinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LauncherIntentBuildTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList<",
        "Landroid/content/Intent;",
        ">;>;"
    }
.end annotation


# instance fields
.field private appsItemTitles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private appsPackageNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/widget/CustomExpandableLinearLayout;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/CustomExpandableLinearLayout;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 551
    iput-object p1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout$LauncherIntentBuildTask;->this$0:Lcom/android/settings/widget/CustomExpandableLinearLayout;

    .line 552
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 553
    iput-object p2, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout$LauncherIntentBuildTask;->appsPackageNames:Ljava/util/ArrayList;

    .line 554
    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->access$1200(Lcom/android/settings/widget/CustomExpandableLinearLayout;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout$LauncherIntentBuildTask;->appsItemTitles:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 547
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/CustomExpandableLinearLayout$LauncherIntentBuildTask;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 560
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 562
    iget-object v0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout$LauncherIntentBuildTask;->appsPackageNames:Ljava/util/ArrayList;

    .line 563
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 564
    iget-object v2, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout$LauncherIntentBuildTask;->this$0:Lcom/android/settings/widget/CustomExpandableLinearLayout;

    invoke-static {v2}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->access$1300(Lcom/android/settings/widget/CustomExpandableLinearLayout;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 565
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 567
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "doInBackground: intent size="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CustomExpandableLinearL"

    invoke-static {v0, p0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 547
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/CustomExpandableLinearLayout$LauncherIntentBuildTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .line 573
    iget-object v0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout$LauncherIntentBuildTask;->this$0:Lcom/android/settings/widget/CustomExpandableLinearLayout;

    invoke-static {v0}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->access$1100(Lcom/android/settings/widget/CustomExpandableLinearLayout;)Z

    move-result v0

    const-string v1, "CustomExpandableLinearL"

    if-eqz v0, :cond_0

    const-string p0, "host is released"

    .line 574
    invoke-static {v1, p0}, Lsmartisanos/util/LogTag;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 577
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 578
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPostExecute: intents:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    .line 581
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 582
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 584
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 585
    iget-object v5, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout$LauncherIntentBuildTask;->appsPackageNames:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 586
    iget-object v5, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout$LauncherIntentBuildTask;->appsItemTitles:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 592
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v2, v3

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 593
    iget-object v5, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout$LauncherIntentBuildTask;->appsPackageNames:Ljava/util/ArrayList;

    add-int/lit8 v6, v2, 0x1

    .line 594
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 593
    invoke-static {v4, v2, v3}, Lcom/android/settings/PhoneCaseShortcutSettingFragment;->createActivityJson(Landroid/content/Intent;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 595
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v6

    goto :goto_1

    .line 597
    :cond_3
    iget-object p1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout$LauncherIntentBuildTask;->this$0:Lcom/android/settings/widget/CustomExpandableLinearLayout;

    iget-object v2, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout$LauncherIntentBuildTask;->appsPackageNames:Ljava/util/ArrayList;

    invoke-static {p1, v2}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->access$1502(Lcom/android/settings/widget/CustomExpandableLinearLayout;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 598
    iget-object p1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout$LauncherIntentBuildTask;->this$0:Lcom/android/settings/widget/CustomExpandableLinearLayout;

    iget-object v2, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout$LauncherIntentBuildTask;->appsItemTitles:Ljava/util/ArrayList;

    invoke-static {p1, v2}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->access$1202(Lcom/android/settings/widget/CustomExpandableLinearLayout;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 599
    iget-object p1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout$LauncherIntentBuildTask;->this$0:Lcom/android/settings/widget/CustomExpandableLinearLayout;

    invoke-static {p1, v0}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->access$1602(Lcom/android/settings/widget/CustomExpandableLinearLayout;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 600
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostExecute: mItemTitle:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout$LauncherIntentBuildTask;->this$0:Lcom/android/settings/widget/CustomExpandableLinearLayout;

    invoke-static {v2}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->access$1200(Lcom/android/settings/widget/CustomExpandableLinearLayout;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " itemEntry:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    iget-object p1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout$LauncherIntentBuildTask;->this$0:Lcom/android/settings/widget/CustomExpandableLinearLayout;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->access$1700(Lcom/android/settings/widget/CustomExpandableLinearLayout;I)V

    .line 603
    iget-object p0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout$LauncherIntentBuildTask;->this$0:Lcom/android/settings/widget/CustomExpandableLinearLayout;

    invoke-static {p0}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->access$1800(Lcom/android/settings/widget/CustomExpandableLinearLayout;)Lcom/android/settings/widget/InnerExpandableLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/widget/InnerExpandableLayout;->update()V

    return-void
.end method
