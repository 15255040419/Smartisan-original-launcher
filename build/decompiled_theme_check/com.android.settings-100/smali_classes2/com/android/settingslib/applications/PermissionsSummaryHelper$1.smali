.class final Lcom/android/settingslib/applications/PermissionsSummaryHelper$1;
.super Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;
.source "PermissionsSummaryHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/applications/PermissionsSummaryHelper;->getPermissionSummary(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;


# direct methods
.method constructor <init>(Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/android/settingslib/applications/PermissionsSummaryHelper$1;->val$callback:Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    invoke-direct {p0}, Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetAppPermissions(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/permission/RuntimePermissionPresentationInfo;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v3, v0, :cond_2

    .line 46
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/permission/RuntimePermissionPresentationInfo;

    add-int/lit8 v5, v5, 0x1

    .line 48
    invoke-virtual {v7}, Landroid/content/pm/permission/RuntimePermissionPresentationInfo;->isGranted()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 49
    invoke-virtual {v7}, Landroid/content/pm/permission/RuntimePermissionPresentationInfo;->isStandard()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 50
    invoke-virtual {v7}, Landroid/content/pm/permission/RuntimePermissionPresentationInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 58
    :cond_2
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object p1

    .line 59
    invoke-virtual {p1, v2}, Ljava/text/Collator;->setStrength(I)V

    .line 60
    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 62
    iget-object p0, p0, Lcom/android/settingslib/applications/PermissionsSummaryHelper$1;->val$callback:Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    invoke-virtual {p0, v4, v5, v6, v1}, Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;->onPermissionSummaryResult(IIILjava/util/List;)V

    return-void
.end method
