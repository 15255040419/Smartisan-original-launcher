.class public Lcom/smartisanos/launcher/eb;
.super Ljava/lang/Object;
.source "MenuManager.java"


# static fields
.field private static Hi:Landroid/view/View;

.field private static Ii:Landroid/view/MenuInflater;

.field private static Ji:Z

.field private static Ki:Lcom/smartisanos/launcher/view/a/g;

.field private static Li:I

.field private static Mi:I

.field private static Ni:Lcom/smartisanos/launcher/widget/LandscapeFrameLayout;

.field private static final Oi:Ljava/util/List;

.field private static final Pi:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private static final Qi:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private static log:Lcom/smartisanos/launcher/va;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/eb;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/eb;->log:Lcom/smartisanos/launcher/va;

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/smartisanos/launcher/eb;->Ji:Z

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/smartisanos/launcher/eb;->Ki:Lcom/smartisanos/launcher/view/a/g;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/eb;->Oi:Ljava/util/List;

    .line 5
    new-instance v0, Lcom/smartisanos/launcher/bb;

    invoke-direct {v0}, Lcom/smartisanos/launcher/bb;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/eb;->Pi:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 6
    new-instance v0, Lcom/smartisanos/launcher/db;

    invoke-direct {v0}, Lcom/smartisanos/launcher/db;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/eb;->Qi:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Ic()V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "package"

    .line 2
    sget-object v2, Lcom/smartisanos/launcher/eb;->Ki:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcom/smartisanos/launcher/eb;->Ki:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    iget v1, v1, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    move v1, v3

    :cond_0
    const-string v2, "UID"

    .line 4
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "extra_system_app_manager"

    .line 5
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$InstalledAppDetailsActivity"

    .line 7
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    .line 8
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 10
    invoke-static {v1}, Lcom/smartisanos/launcher/eb;->startActivity(Landroid/content/Intent;)V

    .line 11
    sget-object v0, Lcom/smartisanos/launcher/eb;->log:Lcom/smartisanos/launcher/va;

    const-string v1, " gotoAppInfoSetting "

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static Jc()V
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$NotificationDetailsActivity"

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 6
    sget-object v3, Lcom/smartisanos/launcher/eb;->Ki:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v3

    iget v3, v3, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    .line 7
    :cond_0
    sget-object v4, Lcom/smartisanos/launcher/eb;->Ki:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v4, v3}, Lcom/smartisanos/launcher/ua;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    const-string v3, "appInfo"

    .line 8
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 10
    invoke-static {v0}, Lcom/smartisanos/launcher/eb;->startActivity(Landroid/content/Intent;)V

    .line 11
    sget-object v0, Lcom/smartisanos/launcher/eb;->log:Lcom/smartisanos/launcher/va;

    const-string v1, " gotoNotificationSetting "

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static Kc()V
    .locals 4

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.smartisanos.security.action.NATIVE_PACKAGE_DETAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 3
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.smartisanos.security.action.PACKAGE_DETAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    :goto_1
    sget-object v1, Lcom/smartisanos/launcher/eb;->Ki:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/smartisanos/launcher/e/s;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    const-string v3, "detail"

    .line 5
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "from_security_center"

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7
    invoke-static {v0}, Lcom/smartisanos/launcher/eb;->startActivity(Landroid/content/Intent;)V

    .line 8
    sget-object v0, Lcom/smartisanos/launcher/eb;->log:Lcom/smartisanos/launcher/va;

    const-string v1, " gotoPermissionSettingsPage "

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method static synthetic P(I)I
    .locals 0

    .line 1
    sput p0, Lcom/smartisanos/launcher/eb;->Li:I

    return p0
.end method

.method static synthetic Q(I)I
    .locals 0

    .line 1
    sput p0, Lcom/smartisanos/launcher/eb;->Mi:I

    return p0
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/a/g;)Lcom/smartisanos/launcher/view/a/g;
    .locals 0

    .line 2
    sput-object p0, Lcom/smartisanos/launcher/eb;->Ki:Lcom/smartisanos/launcher/view/a/g;

    return-object p0
.end method

.method public static a(Landroid/view/ContextMenu;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    sget-object v0, Lcom/smartisanos/launcher/eb;->Ki:Lcom/smartisanos/launcher/view/a/g;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    sget-object v0, Lcom/smartisanos/launcher/eb;->Ii:Landroid/view/MenuInflater;

    sget v1, Lcom/smartisanos/launcher/nb;->menu:I

    invoke-virtual {v0, v1, p0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 6
    sget-object v0, Lcom/smartisanos/launcher/eb;->Ki:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-static {p0}, Lcom/smartisanos/launcher/eb;->b(Landroid/view/ContextMenu;)V

    goto :goto_0

    .line 8
    :cond_3
    invoke-static {p0}, Lcom/smartisanos/launcher/eb;->c(Landroid/view/ContextMenu;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private static a(Landroid/view/ContextMenu;Lcom/smartisanos/launcher/data/ItemInfo;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)V
    .locals 1

    .line 9
    invoke-virtual {p2, p3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p0

    .line 10
    invoke-virtual {p2, p3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-interface {p0, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object p0

    new-instance p2, Lcom/smartisanos/launcher/ab;

    invoke-direct {p2, p1}, Lcom/smartisanos/launcher/ab;-><init>(Lcom/smartisanos/launcher/data/ItemInfo;)V

    .line 11
    invoke-interface {p0, p2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/view/a/g;ZII)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/smartisanos/launcher/eb;->c(Lcom/smartisanos/launcher/view/a/g;ZII)V

    return-void
.end method

.method static synthetic access$100()Lcom/smartisanos/launcher/view/a/g;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/eb;->Ki:Lcom/smartisanos/launcher/view/a/g;

    return-object v0
.end method

.method static synthetic access$200()Landroid/view/View;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/eb;->Hi:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/eb;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    .line 1
    sget v0, Lcom/smartisanos/launcher/eb;->Li:I

    return v0
.end method

.method private static b(Landroid/view/ContextMenu;)V
    .locals 10

    .line 6
    sget v0, Lcom/smartisanos/launcher/kb;->menu_item:I

    invoke-interface {p0, v0}, Landroid/view/ContextMenu;->removeGroup(I)V

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 9
    sget-object v2, Lcom/smartisanos/launcher/eb;->Ki:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    .line 10
    instance-of v3, v2, Lcom/smartisanos/launcher/data/FolderInfo;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 11
    check-cast v2, Lcom/smartisanos/launcher/data/FolderInfo;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/FolderInfo;->lf()I

    move-result v3

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v5, v3, :cond_3

    .line 12
    invoke-virtual {v2, v5}, Lcom/smartisanos/launcher/data/FolderInfo;->ia(I)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v7

    .line 13
    iget v8, v7, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    if-lez v8, :cond_2

    invoke-virtual {v7}, Lcom/smartisanos/launcher/data/ItemInfo;->Re()Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_2

    .line 14
    :cond_0
    iget-object v8, v7, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 15
    iget v7, v7, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    const/4 v9, -0x1

    if-ne v7, v9, :cond_1

    move v7, v4

    .line 16
    :cond_1
    invoke-static {v0, v8, v7}, Lcom/smartisanos/launcher/e/s;->b(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v7

    .line 17
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    add-int/lit8 v6, v6, 0x1

    .line 18
    invoke-virtual {v2, v5}, Lcom/smartisanos/launcher/data/FolderInfo;->ia(I)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v9

    invoke-static {p0, v9, v8, v1}, Lcom/smartisanos/launcher/eb;->a(Landroid/view/ContextMenu;Lcom/smartisanos/launcher/data/ItemInfo;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)V

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    move v4, v6

    :cond_4
    const/4 p0, 0x1

    if-ge v4, p0, :cond_5

    .line 19
    invoke-static {}, Lcom/smartisanos/launcher/eb;->hide()V

    :cond_5
    return-void
.end method

.method public static b(Lcom/smartisanos/launcher/view/a/g;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 20
    :cond_0
    new-instance v0, Lcom/smartisanos/launcher/Ta;

    const/16 v1, 0x64

    invoke-direct {v0, v1, p0}, Lcom/smartisanos/launcher/Ta;-><init>(ILcom/smartisanos/launcher/view/a/g;)V

    const/4 p0, 0x0

    .line 21
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    return-void
.end method

.method public static b(Lcom/smartisanos/launcher/view/a/g;ZII)V
    .locals 6

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/eb;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show at ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/smartisanos/launcher/eb;->Ji:Z

    .line 3
    new-instance v1, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v1}, Lcom/smartisanos/smengine/a/j;-><init>()V

    int-to-float v2, p2

    int-to-float v3, p3

    .line 4
    sget v4, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v4, v4

    sget v5, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v5, v5

    invoke-static {v2, v3, v4, v5, v1}, Lcom/smartisanos/smengine/d/a;->b(FFFFLcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    new-instance v2, Lcom/smartisanos/launcher/Xa;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/smartisanos/launcher/Xa;-><init>(Lcom/smartisanos/launcher/view/a/g;ZII)V

    invoke-virtual {v1, p0, v0, v2}, Lcom/smartisanos/launcher/view/Eb;->a(Lcom/smartisanos/launcher/view/a/g;ZLjava/lang/Runnable;)V

    return-void
.end method

.method private static bw()V
    .locals 2

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/cb;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/cb;-><init>(I)V

    const v1, 0x3dcccccd    # 0.1f

    .line 2
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/n;->q(F)V

    return-void
.end method

.method private static c(Landroid/view/ContextMenu;)V
    .locals 4

    .line 2
    invoke-interface {p0}, Landroid/view/ContextMenu;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    invoke-interface {p0, v1}, Landroid/view/ContextMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    sget-object v3, Lcom/smartisanos/launcher/eb;->Pi:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static c(Lcom/smartisanos/launcher/view/a/g;ZII)V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/Ya;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/smartisanos/launcher/Ya;-><init>(Lcom/smartisanos/launcher/view/a/g;ZII)V

    invoke-static {v0}, Lcom/smartisanos/launcher/Sa;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static hide()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lcom/smartisanos/launcher/eb;->Ji:Z

    .line 2
    new-instance v0, Lcom/smartisanos/launcher/Za;

    invoke-direct {v0}, Lcom/smartisanos/launcher/Za;-><init>()V

    invoke-static {v0}, Lcom/smartisanos/launcher/Sa;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static init(Landroid/view/View;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    sput-object p0, Lcom/smartisanos/launcher/eb;->Hi:Landroid/view/View;

    .line 2
    new-instance p0, Landroid/view/MenuInflater;

    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    sput-object p0, Lcom/smartisanos/launcher/eb;->Ii:Landroid/view/MenuInflater;

    .line 3
    sget-object p0, Lcom/smartisanos/launcher/eb;->Hi:Landroid/view/View;

    new-instance v0, Lcom/smartisanos/launcher/Ua;

    invoke-direct {v0}, Lcom/smartisanos/launcher/Ua;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/J;->Pa()Lcom/smartisanos/launcher/widget/LandscapeFrameLayout;

    move-result-object p0

    sput-object p0, Lcom/smartisanos/launcher/eb;->Ni:Lcom/smartisanos/launcher/widget/LandscapeFrameLayout;

    .line 5
    sget-object p0, Lcom/smartisanos/launcher/eb;->Ni:Lcom/smartisanos/launcher/widget/LandscapeFrameLayout;

    new-instance v0, Lcom/smartisanos/launcher/Wa;

    invoke-direct {v0}, Lcom/smartisanos/launcher/Wa;-><init>()V

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/widget/LandscapeFrameLayout;->a(Lcom/smartisanos/launcher/widget/a;)V

    return-void
.end method

.method private static startActivity(Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x10200000

    .line 2
    invoke-virtual {p0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3
    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x0

    .line 4
    invoke-static {p0}, Lcom/smartisanos/launcher/animations/ab;->G(Z)V

    return-void
.end method

.method static synthetic u()I
    .locals 1

    .line 1
    sget v0, Lcom/smartisanos/launcher/eb;->Mi:I

    return v0
.end method

.method static synthetic x()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/eb;->bw()V

    return-void
.end method
