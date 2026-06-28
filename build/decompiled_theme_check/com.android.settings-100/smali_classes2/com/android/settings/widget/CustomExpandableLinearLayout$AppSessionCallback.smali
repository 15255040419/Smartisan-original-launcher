.class Lcom/android/settings/widget/CustomExpandableLinearLayout$AppSessionCallback;
.super Ljava/lang/Object;
.source "CustomExpandableLinearLayout.java"

# interfaces
.implements Lcom/android/settings/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/CustomExpandableLinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppSessionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/CustomExpandableLinearLayout;


# direct methods
.method private constructor <init>(Lcom/android/settings/widget/CustomExpandableLinearLayout;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout$AppSessionCallback;->this$0:Lcom/android/settings/widget/CustomExpandableLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/widget/CustomExpandableLinearLayout;Lcom/android/settings/widget/CustomExpandableLinearLayout$1;)V
    .locals 0

    .line 436
    invoke-direct {p0, p1}, Lcom/android/settings/widget/CustomExpandableLinearLayout$AppSessionCallback;-><init>(Lcom/android/settings/widget/CustomExpandableLinearLayout;)V

    return-void
.end method


# virtual methods
.method public onAllSizesComputed()V
    .locals 2

    const-string v0, "CustomExpandableLinearL"

    const-string v1, "onAllSizesComputed: "

    .line 462
    invoke-static {v0, v1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object p0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout$AppSessionCallback;->this$0:Lcom/android/settings/widget/CustomExpandableLinearLayout;

    invoke-virtual {p0}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->rebuild()V

    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    return-void
.end method

.method public onPackageListChanged()V
    .locals 1

    const-string p0, "CustomExpandableLinearL"

    const-string v0, "onPackageListChanged: "

    .line 444
    invoke-static {p0, v0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    const-string p0, "CustomExpandableLinearL"

    const-string p1, "onRebuildComplete: "

    .line 449
    invoke-static {p0, p1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 1

    .line 439
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onRunningStateChanged: running?"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CustomExpandableLinearL"

    invoke-static {p1, p0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
