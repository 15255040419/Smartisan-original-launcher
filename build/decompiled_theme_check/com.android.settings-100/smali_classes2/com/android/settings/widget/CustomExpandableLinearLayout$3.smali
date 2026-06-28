.class Lcom/android/settings/widget/CustomExpandableLinearLayout$3;
.super Ljava/lang/Object;
.source "CustomExpandableLinearLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/CustomExpandableLinearLayout;->rebuild()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/CustomExpandableLinearLayout;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/CustomExpandableLinearLayout;)V
    .locals 0

    .line 478
    iput-object p1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout$3;->this$0:Lcom/android/settings/widget/CustomExpandableLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 481
    new-instance v0, Lcom/android/settings/widget/CustomExpandableLinearLayout$AppQueryTask;

    iget-object p0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout$3;->this$0:Lcom/android/settings/widget/CustomExpandableLinearLayout;

    invoke-static {p0}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->access$700(Lcom/android/settings/widget/CustomExpandableLinearLayout;)Lcom/android/settings/applications/ApplicationsState;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/widget/CustomExpandableLinearLayout$AppQueryTask;-><init>(Lcom/android/settings/widget/CustomExpandableLinearLayout;Lcom/android/settings/applications/ApplicationsState;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/CustomExpandableLinearLayout$AppQueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
