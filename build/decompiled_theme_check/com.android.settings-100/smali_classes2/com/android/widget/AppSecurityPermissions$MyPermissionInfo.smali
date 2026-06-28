.class Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;
.super Landroid/content/pm/PermissionInfo;
.source "AppSecurityPermissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/widget/AppSecurityPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyPermissionInfo"
.end annotation


# instance fields
.field mExistingReqFlags:I

.field mLabel:Ljava/lang/CharSequence;

.field mNew:Z

.field mNewReqFlags:I


# direct methods
.method constructor <init>(Landroid/content/pm/PermissionInfo;)V
    .locals 0

    .line 133
    invoke-direct {p0, p1}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    return-void
.end method
