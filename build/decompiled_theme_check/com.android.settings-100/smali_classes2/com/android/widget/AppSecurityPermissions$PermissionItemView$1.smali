.class Lcom/android/widget/AppSecurityPermissions$PermissionItemView$1;
.super Ljava/lang/Object;
.source "AppSecurityPermissions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/widget/AppSecurityPermissions$PermissionItemView;->addRevokeUIIfNecessary(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/widget/AppSecurityPermissions$PermissionItemView;


# direct methods
.method constructor <init>(Lcom/android/widget/AppSecurityPermissions$PermissionItemView;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/android/widget/AppSecurityPermissions$PermissionItemView$1;->this$0:Lcom/android/widget/AppSecurityPermissions$PermissionItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 266
    iget-object p1, p0, Lcom/android/widget/AppSecurityPermissions$PermissionItemView$1;->this$0:Lcom/android/widget/AppSecurityPermissions$PermissionItemView;

    invoke-virtual {p1}, Lcom/android/widget/AppSecurityPermissions$PermissionItemView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 267
    iget-object p2, p0, Lcom/android/widget/AppSecurityPermissions$PermissionItemView$1;->this$0:Lcom/android/widget/AppSecurityPermissions$PermissionItemView;

    invoke-static {p2}, Lcom/android/widget/AppSecurityPermissions$PermissionItemView;->access$100(Lcom/android/widget/AppSecurityPermissions$PermissionItemView;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/widget/AppSecurityPermissions$PermissionItemView$1;->this$0:Lcom/android/widget/AppSecurityPermissions$PermissionItemView;

    iget-object v0, v0, Lcom/android/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;

    iget-object v0, v0, Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;->name:Ljava/lang/String;

    new-instance v1, Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/widget/AppSecurityPermissions$PermissionItemView$1;->this$0:Lcom/android/widget/AppSecurityPermissions$PermissionItemView;

    .line 268
    invoke-static {v2}, Lcom/android/widget/AppSecurityPermissions$PermissionItemView;->access$200(Lcom/android/widget/AppSecurityPermissions$PermissionItemView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 267
    invoke-virtual {p1, p2, v0, v1}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 269
    iget-object p0, p0, Lcom/android/widget/AppSecurityPermissions$PermissionItemView$1;->this$0:Lcom/android/widget/AppSecurityPermissions$PermissionItemView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/widget/AppSecurityPermissions$PermissionItemView;->setVisibility(I)V

    return-void
.end method
