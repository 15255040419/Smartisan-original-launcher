.class public Lcom/smartisanos/launcher/d/h;
.super Ljava/lang/Object;
.source "SectorLayoutHandler.java"


# static fields
.field public static Ws:Lsmartisanos/widget/sectormenu/SectorController;

.field private static log:Lcom/smartisanos/launcher/va;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/d/h;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/d/h;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Mf()V
    .locals 2

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/d/h;->Ws:Lsmartisanos/widget/sectormenu/SectorController;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/smartisanos/launcher/d/h;->Ws:Lsmartisanos/widget/sectormenu/SectorController;

    .line 3
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/d/h;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "onDestory"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static Nf()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/d/h;->Ws:Lsmartisanos/widget/sectormenu/SectorController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lsmartisanos/widget/sectormenu/SectorController;->isAddSectorMenuLayout()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public static a(Lsmartisanos/widget/sectormenu/IconViewCallBack;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/smartisanos/launcher/d/h;->Ws:Lsmartisanos/widget/sectormenu/SectorController;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Lsmartisanos/widget/sectormenu/SectorController;->setCallBack(Lsmartisanos/widget/sectormenu/IconViewCallBack;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lsmartisanos/widget/sectormenu/ShortcutIconInfo;ZI)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/smartisanos/launcher/d/h;->b(Lsmartisanos/widget/sectormenu/ShortcutIconInfo;ZI)V

    return-void
.end method

.method public static actionDown(FF)V
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/d/h;->Ws:Lsmartisanos/widget/sectormenu/SectorController;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0, p1}, Lsmartisanos/widget/sectormenu/SectorController;->actionDown(FF)V

    :cond_0
    return-void
.end method

.method private static b(Lsmartisanos/widget/sectormenu/ShortcutIconInfo;ZI)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Lsmartisanos/widget/sectormenu/ShortcutIconInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lsmartisanos/widget/sectormenu/ShortcutIconInfo;->getShortcutId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Lcom/smartisanos/launcher/d/i;->getUserId(I)I

    move-result p2

    invoke-static {p1, p0, p2}, Lcom/smartisanos/launcher/d/j;->launchShortcut(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p0}, Lsmartisanos/widget/sectormenu/ShortcutIconInfo;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/J;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p0}, Lsmartisanos/widget/sectormenu/ShortcutIconInfo;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/smartisanos/launcher/d/i;->ca(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    const-string v2, "sector"

    if-eqz v0, :cond_2

    .line 2
    :try_start_1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/smartisanos/launcher/d/h;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needProvider packageName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/smartisanos/launcher/va;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/smartisanos/launcher/d/i;->ba(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/launcher/d/i;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/smartisanos/launcher/d/i;->g(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-static {p0, p1, p2}, Lcom/smartisanos/launcher/d/h;->f(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 7
    invoke-static {v0}, Lcom/smartisanos/launcher/d/i;->f(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p1

    move v1, p0

    move-object p0, p1

    goto :goto_0

    .line 8
    :cond_2
    sget-object v0, Lcom/smartisanos/launcher/d/h;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initSectorMenu xml packageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/smartisanos/launcher/va;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {p0, p1, p2}, Lcom/smartisanos/launcher/d/h;->f(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    .line 10
    :goto_0
    invoke-static {p0, v1}, Lcom/smartisanos/launcher/d/i;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    sget-object v0, Lcom/smartisanos/launcher/d/h;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sectorDrawables drawables.size() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/smartisanos/launcher/va;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-static {p1}, Lcom/smartisanos/launcher/d/h;->s(Ljava/util/List;)Lsmartisanos/widget/sectormenu/SectorController;

    .line 14
    new-instance p1, Lcom/smartisanos/launcher/d/f;

    invoke-direct {p1, p0, v1, p2}, Lcom/smartisanos/launcher/d/f;-><init>(Ljava/util/List;ZI)V

    invoke-static {p1}, Lcom/smartisanos/launcher/d/h;->a(Lsmartisanos/widget/sectormenu/IconViewCallBack;)V

    .line 15
    new-instance p0, Lcom/smartisanos/launcher/d/g;

    invoke-direct {p0}, Lcom/smartisanos/launcher/d/g;-><init>()V

    invoke-static {p0}, Lcom/smartisanos/launcher/d/h;->setSectorLayoutCallBack(Lsmartisanos/widget/sectormenu/SectorLayoutCallBack;)V

    goto :goto_2

    .line 16
    :cond_4
    :goto_1
    sget-object p0, Lcom/smartisanos/launcher/d/h;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "sectorDrawables  is null or size is 0"

    invoke-virtual {p0, v2, p1}, Lcom/smartisanos/launcher/va;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public static dismiss(Z)V
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/d/h;->Ws:Lsmartisanos/widget/sectormenu/SectorController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsmartisanos/widget/sectormenu/SectorController;->isAddSectorMenuLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/smartisanos/launcher/d/h;->Ws:Lsmartisanos/widget/sectormenu/SectorController;

    invoke-virtual {v0, p0}, Lsmartisanos/widget/sectormenu/SectorController;->onDestory(Z)V

    :cond_0
    return-void
.end method

.method private static f(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/smartisanos/launcher/d/i;->d(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/smartisanos/launcher/d/i;->t(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static s(Ljava/util/List;)Lsmartisanos/widget/sectormenu/SectorController;
    .locals 3

    .line 1
    new-instance v0, Lsmartisanos/widget/sectormenu/SectorController;

    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2}, Lsmartisanos/widget/sectormenu/SectorController;-><init>(Landroid/content/Context;Ljava/util/List;)V

    sput-object v0, Lcom/smartisanos/launcher/d/h;->Ws:Lsmartisanos/widget/sectormenu/SectorController;

    .line 2
    sget-object v0, Lcom/smartisanos/launcher/d/h;->Ws:Lsmartisanos/widget/sectormenu/SectorController;

    invoke-virtual {v0, p0}, Lsmartisanos/widget/sectormenu/SectorController;->setIconDrawables(Ljava/util/List;)V

    .line 3
    sget-object p0, Lcom/smartisanos/launcher/d/h;->Ws:Lsmartisanos/widget/sectormenu/SectorController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lsmartisanos/widget/sectormenu/SectorController;->setForceTouch(Z)V

    .line 4
    sget-object p0, Lcom/smartisanos/launcher/d/h;->Ws:Lsmartisanos/widget/sectormenu/SectorController;

    return-object p0
.end method

.method public static sectorTouch(IFFFF)V
    .locals 6

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/d/h;->Ws:Lsmartisanos/widget/sectormenu/SectorController;

    if-eqz v0, :cond_0

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 2
    invoke-virtual/range {v0 .. v5}, Lsmartisanos/widget/sectormenu/SectorController;->sectorTouch(IFFFF)V

    :cond_0
    return-void
.end method

.method public static setSectorLayoutCallBack(Lsmartisanos/widget/sectormenu/SectorLayoutCallBack;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/d/h;->Ws:Lsmartisanos/widget/sectormenu/SectorController;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Lsmartisanos/widget/sectormenu/SectorController;->setSectorLayoutCallBack(Lsmartisanos/widget/sectormenu/SectorLayoutCallBack;)V

    :cond_0
    return-void
.end method
