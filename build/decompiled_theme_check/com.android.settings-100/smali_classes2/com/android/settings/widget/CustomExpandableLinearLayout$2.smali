.class Lcom/android/settings/widget/CustomExpandableLinearLayout$2;
.super Ljava/lang/Object;
.source "CustomExpandableLinearLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/CustomExpandableLinearLayout;
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

    .line 387
    iput-object p1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout$2;->this$0:Lcom/android/settings/widget/CustomExpandableLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 390
    instance-of v0, p1, Lsmartisanos/widget/SettingItemCheck;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lsmartisanos/widget/SettingItemCheck;

    invoke-virtual {v0}, Lsmartisanos/widget/SettingItemCheck;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 393
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clear focus for all items. check listener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout$2;->this$0:Lcom/android/settings/widget/CustomExpandableLinearLayout;

    invoke-static {v2}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->access$500(Lcom/android/settings/widget/CustomExpandableLinearLayout;)Lcom/android/settings/widget/CustomExpandableLinearLayout$ClearCheckListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CustomExpandableLinearL"

    invoke-static {v2, v1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout$2;->this$0:Lcom/android/settings/widget/CustomExpandableLinearLayout;

    invoke-static {v1}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->access$500(Lcom/android/settings/widget/CustomExpandableLinearLayout;)Lcom/android/settings/widget/CustomExpandableLinearLayout$ClearCheckListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 395
    iget-object v1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout$2;->this$0:Lcom/android/settings/widget/CustomExpandableLinearLayout;

    invoke-static {v1}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->access$500(Lcom/android/settings/widget/CustomExpandableLinearLayout;)Lcom/android/settings/widget/CustomExpandableLinearLayout$ClearCheckListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/settings/widget/CustomExpandableLinearLayout$ClearCheckListener;->clearChecks()V

    goto :goto_0

    .line 397
    :cond_1
    iget-object v1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout$2;->this$0:Lcom/android/settings/widget/CustomExpandableLinearLayout;

    invoke-virtual {v1}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->clearChecks()V

    :goto_0
    const/4 v1, 0x1

    .line 400
    invoke-virtual {v0, v1}, Lsmartisanos/widget/SettingItemCheck;->setChecked(Z)V

    .line 401
    iget-object p0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout$2;->this$0:Lcom/android/settings/widget/CustomExpandableLinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->access$600(Lcom/android/settings/widget/CustomExpandableLinearLayout;I)V

    :cond_2
    :goto_1
    return-void
.end method
