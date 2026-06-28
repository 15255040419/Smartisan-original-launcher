.class public Lcom/android/settingslib/drawer/UserAdapter$UserDetails;
.super Ljava/lang/Object;
.source "UserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/drawer/UserAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserDetails"
.end annotation


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mName:Ljava/lang/String;

.field private final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/os/UserHandle;Landroid/os/UserManager;Landroid/content/Context;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/settingslib/drawer/UserAdapter$UserDetails;->mUserHandle:Landroid/os/UserHandle;

    .line 54
    iget-object p1, p0, Lcom/android/settingslib/drawer/UserAdapter$UserDetails;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    sget p1, Lcom/android/settingslib/R$string;->managed_user_title:I

    invoke-virtual {p3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/drawer/UserAdapter$UserDetails;->mName:Ljava/lang/String;

    const p1, 0x1080487

    .line 58
    invoke-virtual {p3, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingslib/drawer/UserAdapter$UserDetails;->mName:Ljava/lang/String;

    .line 62
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 63
    invoke-virtual {p2, p1}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 64
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p2, p1}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object p1, v0

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/4 v0, 0x0

    .line 66
    invoke-static {p2, p1, v0}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 70
    :goto_0
    invoke-static {p3, p1}, Lcom/android/settingslib/drawer/UserAdapter$UserDetails;->encircle(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/drawer/UserAdapter$UserDetails;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingslib/drawer/UserAdapter$UserDetails;)Landroid/os/UserHandle;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settingslib/drawer/UserAdapter$UserDetails;->mUserHandle:Landroid/os/UserHandle;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settingslib/drawer/UserAdapter$UserDetails;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settingslib/drawer/UserAdapter$UserDetails;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private static encircle(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 74
    new-instance v0, Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-static {p0}, Lcom/android/settingslib/drawable/UserIconDrawable;->getSizeForList(Landroid/content/Context;)I

    move-result p0

    invoke-direct {v0, p0}, Lcom/android/settingslib/drawable/UserIconDrawable;-><init>(I)V

    .line 75
    invoke-virtual {v0, p1}, Lcom/android/settingslib/drawable/UserIconDrawable;->setIconDrawable(Landroid/graphics/drawable/Drawable;)Lcom/android/settingslib/drawable/UserIconDrawable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/drawable/UserIconDrawable;->bake()Lcom/android/settingslib/drawable/UserIconDrawable;

    move-result-object p0

    return-object p0
.end method
