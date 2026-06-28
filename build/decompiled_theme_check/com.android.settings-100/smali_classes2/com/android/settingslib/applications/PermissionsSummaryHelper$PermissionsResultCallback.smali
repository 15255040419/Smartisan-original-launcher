.class public abstract Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;
.super Ljava/lang/Object;
.source "PermissionsSummaryHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/PermissionsSummaryHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PermissionsResultCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppWithPermissionsCountsResult(II)V
    .locals 0

    return-void
.end method

.method public onPermissionSummaryResult(IIILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
