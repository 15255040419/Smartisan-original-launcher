.class public Lcom/smartisanos/launcher/ub;
.super Ljava/lang/Object;
.source "StatusManager.java"


# static fields
.field public static final Jh:Ljava/util/Map;

.field public static final Kh:I

.field public static final dj:Ljava/util/Map;

.field public static final ej:I

.field public static fj:Lcom/smartisanos/launcher/ub;

.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field private Ih:Ljava/util/HashMap;

.field private cj:Ljava/util/HashMap;

.field private volatile mPrivateFlags:I

.field private volatile mPrivateFlags2:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    const-class v0, Lcom/smartisanos/launcher/ub;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/ub;->log:Lcom/smartisanos/launcher/va;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/ub;->Jh:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/ub;->dj:Ljava/util/Map;

    .line 4
    sget-object v0, Lcom/smartisanos/launcher/ub;->Jh:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ON_PAGE_SCROLL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/smartisanos/launcher/ub;->Jh:Ljava/util/Map;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ON_DRAG_OBJECT"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/smartisanos/launcher/ub;->Jh:Ljava/util/Map;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ON_GRID_SWITCH"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/smartisanos/launcher/ub;->Jh:Ljava/util/Map;

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "ON_CHANGE_THEME_ANIMATING"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lcom/smartisanos/launcher/ub;->Jh:Ljava/util/Map;

    const/16 v5, 0x10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "ON_PAGE_DOING_FLOATING_ANIM"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lcom/smartisanos/launcher/ub;->Jh:Ljava/util/Map;

    const/16 v6, 0x20

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ON_PAGE_HAS_FLOAT"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lcom/smartisanos/launcher/ub;->Jh:Ljava/util/Map;

    const/16 v6, 0x40

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ON_CELL_IN_TRASH"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lcom/smartisanos/launcher/ub;->Jh:Ljava/util/Map;

    const/16 v6, 0x80

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ON_PAGE_IS_RESET"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v0, Lcom/smartisanos/launcher/ub;->Jh:Ljava/util/Map;

    const/16 v6, 0x100

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ON_TOUCH_IN_WINDOW"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lcom/smartisanos/launcher/ub;->Jh:Ljava/util/Map;

    const/16 v6, 0x200

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ON_ALL_CELL_RESET_BACKGROUND_ANIMATION"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lcom/smartisanos/launcher/ub;->Jh:Ljava/util/Map;

    const/16 v6, 0x400

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ON_CANCEL_UNINSTALL"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lcom/smartisanos/launcher/ub;->Jh:Ljava/util/Map;

    const/16 v6, 0x800

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ON_UPDATE_APP"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lcom/smartisanos/launcher/ub;->Jh:Ljava/util/Map;

    const/16 v6, 0x1000

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ON_HAVE_APP_WAITING_UPDATE"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lcom/smartisanos/launcher/ub;->Jh:Ljava/util/Map;

    const/16 v6, 0x2000

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ON_CLICK_ANIMATION_RUNNING"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcom/smartisanos/launcher/ub;->Jh:Ljava/util/Map;

    const/16 v6, 0x4000

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ON_SETTING_BTN_ANIMATION"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/smartisanos/launcher/ub;->Jh:Ljava/util/Map;

    const v6, 0x8000

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ON_EDIT_MODEL"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/smartisanos/launcher/ub;->Jh:Ljava/util/Map;

    const/high16 v6, 0x10000

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ON_CELL_UNINSTALL_ANIMATION"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/smartisanos/launcher/ub;->Jh:Ljava/util/Map;

    const/high16 v6, 0x20000

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ON_UNLOCK_SCREEN_ANIMATION_RUNNING"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/smartisanos/launcher/ub;->Jh:Ljava/util/Map;

    const/high16 v6, 0x40000

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ON_UNLOCK_ANIM_PAGE_INIT"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/smartisanos/launcher/ub;->Jh:Ljava/util/Map;

    const/high16 v6, 0x80000

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ON_ICON_SORT_PREVIEW"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/smartisanos/launcher/ub;->Jh:Ljava/util/Map;

    const/high16 v6, 0x100000

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ON_ICON_SORT_RUNNING"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/smartisanos/launcher/ub;->Jh:Ljava/util/Map;

    const/high16 v6, 0x200000

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ON_SLIDE_DOCK_ANIMATION"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/smartisanos/launcher/ub;->Jh:Ljava/util/Map;

    const/high16 v6, 0x400000

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ON_PAGE_OR_DOCK_IS_UNSINK"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/smartisanos/launcher/ub;->Jh:Ljava/util/Map;

    const/high16 v6, 0x800000

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ON_LOCALE_CHANGED"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/smartisanos/launcher/ub;->Jh:Ljava/util/Map;

    const/high16 v6, 0x1000000

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ON_FOLDER_HAS_OPEN"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/smartisanos/launcher/ub;->Jh:Ljava/util/Map;

    const/high16 v6, 0x2000000

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ON_FOLDER_DOING_ANIM"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    sget-object v6, Lcom/smartisanos/launcher/ub;->Jh:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 31
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 32
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    or-int/2addr v6, v7

    goto :goto_0

    .line 33
    :cond_0
    sput v6, Lcom/smartisanos/launcher/ub;->Kh:I

    .line 34
    sget-object v0, Lcom/smartisanos/launcher/ub;->dj:Ljava/util/Map;

    const-string v7, "FLAG2_SIDEBAR_GET_FOLDER_RUNNING"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/smartisanos/launcher/ub;->dj:Ljava/util/Map;

    const-string v1, "FLAG2_UPDATE_THEME_PREVIEW_RES"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/smartisanos/launcher/ub;->dj:Ljava/util/Map;

    const-string v1, "FLAG2_LAUNCHPAD_ALIVE"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/smartisanos/launcher/ub;->dj:Ljava/util/Map;

    const-string v1, "FLAG2_LAUNCHPAD_CHANGE_DATA"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/smartisanos/launcher/ub;->dj:Ljava/util/Map;

    const-string v1, "FLAG2_DRAG_TO_DOCK"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/smartisanos/launcher/ub;->dj:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 40
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 41
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    or-int/2addr v6, v1

    goto :goto_1

    .line 42
    :cond_1
    sput v6, Lcom/smartisanos/launcher/ub;->ej:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/smartisanos/launcher/ub;->mPrivateFlags:I

    .line 3
    iput v0, p0, Lcom/smartisanos/launcher/ub;->mPrivateFlags2:I

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/ub;->Ih:Ljava/util/HashMap;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/ub;->cj:Ljava/util/HashMap;

    .line 6
    new-instance v0, Lcom/smartisanos/launcher/rb;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/rb;-><init>(Lcom/smartisanos/launcher/ub;)V

    sget v1, Lcom/smartisanos/launcher/ub;->Kh:I

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/ub;->a(Lcom/smartisanos/launcher/tb;I)V

    .line 7
    new-instance v0, Lcom/smartisanos/launcher/sb;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/sb;-><init>(Lcom/smartisanos/launcher/ub;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/ub;->a(Lcom/smartisanos/launcher/tb;I)V

    return-void
.end method

.method private a(Lcom/smartisanos/launcher/tb;ILjava/util/HashMap;)V
    .locals 0

    .line 2
    invoke-virtual {p3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p3, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/util/HashMap;I)V
    .locals 2

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p0

    if-lez p0, :cond_1

    .line 7
    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/tb;

    .line 9
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/2addr v1, p2

    if-ne v1, p2, :cond_0

    .line 10
    invoke-interface {v0, p2}, Lcom/smartisanos/launcher/tb;->i(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getInstance()Lcom/smartisanos/launcher/ub;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/ub;->fj:Lcom/smartisanos/launcher/ub;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/smartisanos/launcher/ub;

    invoke-direct {v0}, Lcom/smartisanos/launcher/ub;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/ub;->fj:Lcom/smartisanos/launcher/ub;

    .line 3
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/ub;->fj:Lcom/smartisanos/launcher/ub;

    return-object v0
.end method


# virtual methods
.method public Mc()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/r;->Hd()Z

    move-result v0

    xor-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3
    :goto_0
    iget p0, p0, Lcom/smartisanos/launcher/ub;->mPrivateFlags:I

    const v2, 0x366cdc

    and-int/2addr p0, v2

    if-nez p0, :cond_1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public Nc()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/ub;->mPrivateFlags:I

    const v0, 0x7f65df

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public Oc()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/ub;->mPrivateFlags:I

    const v0, 0x67683f

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public Pc()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/ub;->mPrivateFlags:I

    const v0, 0x38469f

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public Qc()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/ub;->mPrivateFlags:I

    const v0, 0x3946ff

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public R(I)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/ub;->mPrivateFlags2:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public Rc()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/ub;->mPrivateFlags:I

    const v0, 0x34401c

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public S(I)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/ub;->mPrivateFlags:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public Sc()V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/smartisanos/launcher/ub;->Jh:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, " is true"

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    sget-object v3, Lcom/smartisanos/launcher/ub;->Jh:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6
    sget-object v3, Lcom/smartisanos/launcher/ub;->log:Lcom/smartisanos/launcher/va;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "status error, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/smartisanos/launcher/ub;->dj:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 10
    sget-object v3, Lcom/smartisanos/launcher/ub;->dj:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 11
    sget-object v3, Lcom/smartisanos/launcher/ub;->log:Lcom/smartisanos/launcher/va;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "flag2 error, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public Tc()Ljava/lang/String;
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/ub;->mPrivateFlags:I

    invoke-static {p0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public Uc()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/ub;->mPrivateFlags:I

    return p0
.end method

.method public a(Lcom/smartisanos/launcher/tb;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/ub;->Ih:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p0, p0, Lcom/smartisanos/launcher/ub;->cj:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/smartisanos/launcher/tb;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/ub;->Ih:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, v0}, Lcom/smartisanos/launcher/ub;->a(Lcom/smartisanos/launcher/tb;ILjava/util/HashMap;)V

    return-void
.end method

.method public d(IZ)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/ub;->R(I)Z

    move-result v0

    if-ne v0, p2, :cond_0

    return-void

    .line 2
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Lcom/smartisanos/launcher/ub;->dj:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    sget-object v1, Lcom/smartisanos/launcher/ub;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFlag2 flag ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], value ["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 5
    iget p2, p0, Lcom/smartisanos/launcher/ub;->mPrivateFlags2:I

    or-int/2addr p2, p1

    iput p2, p0, Lcom/smartisanos/launcher/ub;->mPrivateFlags2:I

    goto :goto_0

    .line 6
    :cond_2
    iget p2, p0, Lcom/smartisanos/launcher/ub;->mPrivateFlags2:I

    not-int v0, p1

    and-int/2addr p2, v0

    iput p2, p0, Lcom/smartisanos/launcher/ub;->mPrivateFlags2:I

    .line 7
    :goto_0
    iget-object p2, p0, Lcom/smartisanos/launcher/ub;->cj:Ljava/util/HashMap;

    invoke-direct {p0, p2, p1}, Lcom/smartisanos/launcher/ub;->a(Ljava/util/HashMap;I)V

    return-void
.end method

.method public e(IZ)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-ne v0, p2, :cond_0

    return-void

    .line 2
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Lcom/smartisanos/launcher/ub;->Jh:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    sget-object v1, Lcom/smartisanos/launcher/ub;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLauncherStatus status ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], value ["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 5
    iget p2, p0, Lcom/smartisanos/launcher/ub;->mPrivateFlags:I

    or-int/2addr p2, p1

    iput p2, p0, Lcom/smartisanos/launcher/ub;->mPrivateFlags:I

    goto :goto_0

    .line 6
    :cond_2
    iget p2, p0, Lcom/smartisanos/launcher/ub;->mPrivateFlags:I

    not-int v0, p1

    and-int/2addr p2, v0

    iput p2, p0, Lcom/smartisanos/launcher/ub;->mPrivateFlags:I

    .line 7
    :goto_0
    iget-object p2, p0, Lcom/smartisanos/launcher/ub;->Ih:Ljava/util/HashMap;

    invoke-direct {p0, p2, p1}, Lcom/smartisanos/launcher/ub;->a(Ljava/util/HashMap;I)V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/smartisanos/launcher/ub;->mPrivateFlags:I

    .line 2
    iput v0, p0, Lcom/smartisanos/launcher/ub;->mPrivateFlags2:I

    return-void
.end method
