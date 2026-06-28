.class public Lcom/android/settingslib/applications/PermissionsSummaryHelper;
.super Ljava/lang/Object;
.source "PermissionsSummaryHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPermissionSummary(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;)V
    .locals 1

    .line 33
    invoke-static {p0}, Landroid/content/pm/permission/RuntimePermissionPresenter;->getInstance(Landroid/content/Context;)Landroid/content/pm/permission/RuntimePermissionPresenter;

    move-result-object p0

    .line 34
    new-instance v0, Lcom/android/settingslib/applications/PermissionsSummaryHelper$1;

    invoke-direct {v0, p2}, Lcom/android/settingslib/applications/PermissionsSummaryHelper$1;-><init>(Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/permission/RuntimePermissionPresenter;->getAppPermissions(Ljava/lang/String;Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;Landroid/os/Handler;)V

    return-void
.end method
