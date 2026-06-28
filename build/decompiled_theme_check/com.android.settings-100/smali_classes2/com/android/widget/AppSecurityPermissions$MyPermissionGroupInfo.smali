.class Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;
.super Landroid/content/pm/PermissionGroupInfo;
.source "AppSecurityPermissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/widget/AppSecurityPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyPermissionGroupInfo"
.end annotation


# instance fields
.field final mAllPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field mLabel:Ljava/lang/CharSequence;

.field final mNewPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/pm/PermissionGroupInfo;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Landroid/content/pm/PermissionGroupInfo;-><init>(Landroid/content/pm/PermissionGroupInfo;)V

    .line 91
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mNewPermissions:Ljava/util/ArrayList;

    .line 92
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mAllPermissions:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Landroid/content/pm/PermissionInfo;)V
    .locals 1

    .line 94
    invoke-direct {p0}, Landroid/content/pm/PermissionGroupInfo;-><init>()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mNewPermissions:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mAllPermissions:Ljava/util/ArrayList;

    .line 95
    iget-object v0, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;->name:Ljava/lang/String;

    .line 96
    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;->packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public loadGroupIcon(Landroid/content/Context;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 104
    iget v0, p0, Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;->icon:I

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0, p2}, Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;->loadUnbadgedIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    const p0, 0x108065b

    .line 107
    invoke-virtual {p1, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method
