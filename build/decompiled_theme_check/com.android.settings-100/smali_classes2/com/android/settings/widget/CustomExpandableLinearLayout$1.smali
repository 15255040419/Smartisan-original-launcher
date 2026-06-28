.class Lcom/android/settings/widget/CustomExpandableLinearLayout$1;
.super Ljava/lang/Object;
.source "CustomExpandableLinearLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/CustomExpandableLinearLayout;->likeDisable(Lsmartisanos/widget/SettingItemCheck;ZLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/CustomExpandableLinearLayout;

.field final synthetic val$pkgName:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/CustomExpandableLinearLayout;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout$1;->this$0:Lcom/android/settings/widget/CustomExpandableLinearLayout;

    iput-object p2, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout$1;->val$pkgName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout$1;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 297
    iget-object p1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout$1;->this$0:Lcom/android/settings/widget/CustomExpandableLinearLayout;

    iget-object v0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout$1;->val$pkgName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->access$102(Lcom/android/settings/widget/CustomExpandableLinearLayout;Ljava/lang/String;)Ljava/lang/String;

    .line 298
    iget-object p1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout$1;->this$0:Lcom/android/settings/widget/CustomExpandableLinearLayout;

    iget-object v0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout$1;->val$title:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->access$202(Lcom/android/settings/widget/CustomExpandableLinearLayout;Ljava/lang/String;)Ljava/lang/String;

    .line 299
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 300
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout$1;->this$0:Lcom/android/settings/widget/CustomExpandableLinearLayout;

    invoke-static {v1}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->access$300(Lcom/android/settings/widget/CustomExpandableLinearLayout;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/settings/DialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "dialog_type"

    const/4 v1, 0x4

    .line 301
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 302
    iget-object v0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout$1;->val$pkgName:Ljava/lang/String;

    const-string v1, "appPackageName"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    iget-object p0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout$1;->this$0:Lcom/android/settings/widget/CustomExpandableLinearLayout;

    invoke-static {p0}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->access$400(Lcom/android/settings/widget/CustomExpandableLinearLayout;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/settings/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
