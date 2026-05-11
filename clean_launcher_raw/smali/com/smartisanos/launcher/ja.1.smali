.class public Lcom/smartisanos/launcher/ja;
.super Ljava/lang/Object;
.source "ApplicationProxy.java"


# static fields
.field public static volatile Bh:Z

.field private static final Ch:Ljava/util/ArrayList;

.field private static Dh:Lcom/smartisanos/launcher/ja;

.field public static Eh:F

.field private static Fh:Z

.field public static volatile PROC_ID:I

.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field private Ah:Landroid/app/admin/DevicePolicyManager;

.field private volatile Fg:Z

.field private Gg:Z

.field public volatile Hg:Lcom/smartisanos/smengine/n;

.field private Ig:Z

.field private Jg:Landroid/app/Application;

.field private final Kg:I

.field private Lg:Z

.field private Mg:Landroid/database/ContentObserver;

.field private Ng:Landroid/database/ContentObserver;

.field private Og:Landroid/database/ContentObserver;

.field private Pg:Landroid/database/ContentObserver;

.field private Qg:Landroid/database/ContentObserver;

.field private Rg:Landroid/database/ContentObserver;

.field private Sg:Landroid/database/ContentObserver;

.field private Tg:Landroid/database/ContentObserver;

.field private Ug:Landroid/database/ContentObserver;

.field private Vg:Landroid/database/ContentObserver;

.field private Wg:Landroid/database/ContentObserver;

.field private Xg:Landroid/database/ContentObserver;

.field private Yg:Landroid/database/ContentObserver;

.field private Zg:Landroid/database/ContentObserver;

.field private _g:Landroid/database/ContentObserver;

.field private ah:Landroid/database/ContentObserver;

.field private bh:Landroid/database/ContentObserver;

.field private ch:Landroid/database/ContentObserver;

.field private dh:Landroid/database/ContentObserver;

.field private eh:Landroid/database/ContentObserver;

.field private fh:Landroid/database/ContentObserver;

.field private gg:Landroid/content/Intent;

.field private gh:Landroid/database/ContentObserver;

.field private hg:Landroid/app/PendingIntent;

.field private hh:Landroid/database/ContentObserver;

.field private ih:Landroid/database/ContentObserver;

.field private jh:Z

.field private kh:Lcom/smartisanos/launcher/receiver/LauncherReceiver;

.field private lh:Lcom/smartisanos/launcher/receiver/DataDumpReceiver;

.field mH:Landroid/os/Handler;

.field private mHandler:Landroid/os/Handler;

.field private mh:Ljava/lang/String;

.field private final nh:Landroid/app/IActivityObserver$Stub;

.field private final oh:Landroid/content/BroadcastReceiver;

.field private ph:J

.field private qh:Z

.field private final rh:Landroid/content/BroadcastReceiver;

.field private final sh:Landroid/content/BroadcastReceiver;

.field private final th:Landroid/content/BroadcastReceiver;

.field private uh:Ljava/util/List;

.field public vh:Landroid/content/BroadcastReceiver;

.field public wh:Landroid/content/BroadcastReceiver;

.field private final xh:Landroid/content/BroadcastReceiver;

.field private final yh:Landroid/content/BroadcastReceiver;

.field private final zh:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/smartisanos/launcher/ja;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/ja;->log:Lcom/smartisanos/launcher/va;

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/smartisanos/launcher/ja;->Bh:Z

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/smartisanos/launcher/ja;->Ch:Ljava/util/ArrayList;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    sput v1, Lcom/smartisanos/launcher/ja;->Eh:F

    .line 5
    sput v0, Lcom/smartisanos/launcher/ja;->PROC_ID:I

    .line 6
    sput-boolean v0, Lcom/smartisanos/launcher/ja;->Fh:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/launcher/ja;->Fg:Z

    .line 3
    iput-boolean v0, p0, Lcom/smartisanos/launcher/ja;->Gg:Z

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/smartisanos/launcher/ja;->Hg:Lcom/smartisanos/smengine/n;

    .line 5
    iput-boolean v0, p0, Lcom/smartisanos/launcher/ja;->Ig:Z

    .line 6
    iput-object v1, p0, Lcom/smartisanos/launcher/ja;->Jg:Landroid/app/Application;

    .line 7
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/smartisanos/launcher/ja;->mH:Landroid/os/Handler;

    .line 8
    iput v0, p0, Lcom/smartisanos/launcher/ja;->Kg:I

    .line 9
    iput-boolean v0, p0, Lcom/smartisanos/launcher/ja;->Lg:Z

    .line 10
    new-instance v2, Lcom/smartisanos/launcher/Z;

    invoke-direct {v2, p0}, Lcom/smartisanos/launcher/Z;-><init>(Lcom/smartisanos/launcher/ja;)V

    iput-object v2, p0, Lcom/smartisanos/launcher/ja;->mHandler:Landroid/os/Handler;

    .line 11
    iput-boolean v0, p0, Lcom/smartisanos/launcher/ja;->jh:Z

    .line 12
    new-instance v0, Lcom/smartisanos/launcher/receiver/LauncherReceiver;

    invoke-direct {v0}, Lcom/smartisanos/launcher/receiver/LauncherReceiver;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/ja;->kh:Lcom/smartisanos/launcher/receiver/LauncherReceiver;

    .line 13
    new-instance v0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver;

    invoke-direct {v0}, Lcom/smartisanos/launcher/receiver/DataDumpReceiver;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/ja;->lh:Lcom/smartisanos/launcher/receiver/DataDumpReceiver;

    .line 14
    iput-object v1, p0, Lcom/smartisanos/launcher/ja;->mh:Ljava/lang/String;

    .line 15
    new-instance v0, Lcom/smartisanos/launcher/ha;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/ha;-><init>(Lcom/smartisanos/launcher/ja;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/ja;->nh:Landroid/app/IActivityObserver$Stub;

    .line 16
    new-instance v0, Lcom/smartisanos/launcher/ia;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/ia;-><init>(Lcom/smartisanos/launcher/ja;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/ja;->oh:Landroid/content/BroadcastReceiver;

    .line 17
    new-instance v0, Lcom/smartisanos/launcher/K;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/K;-><init>(Lcom/smartisanos/launcher/ja;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/ja;->rh:Landroid/content/BroadcastReceiver;

    .line 18
    new-instance v0, Lcom/smartisanos/launcher/L;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/L;-><init>(Lcom/smartisanos/launcher/ja;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/ja;->sh:Landroid/content/BroadcastReceiver;

    .line 19
    new-instance v0, Lcom/smartisanos/launcher/M;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/M;-><init>(Lcom/smartisanos/launcher/ja;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/ja;->th:Landroid/content/BroadcastReceiver;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/ja;->uh:Ljava/util/List;

    .line 21
    new-instance v0, Lcom/smartisanos/launcher/O;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/O;-><init>(Lcom/smartisanos/launcher/ja;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/ja;->vh:Landroid/content/BroadcastReceiver;

    .line 22
    new-instance v0, Lcom/smartisanos/launcher/P;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/P;-><init>(Lcom/smartisanos/launcher/ja;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/ja;->wh:Landroid/content/BroadcastReceiver;

    .line 23
    new-instance v0, Lcom/smartisanos/launcher/S;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/S;-><init>(Lcom/smartisanos/launcher/ja;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/ja;->xh:Landroid/content/BroadcastReceiver;

    .line 24
    new-instance v0, Lcom/smartisanos/launcher/T;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/T;-><init>(Lcom/smartisanos/launcher/ja;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/ja;->yh:Landroid/content/BroadcastReceiver;

    .line 25
    new-instance v0, Lcom/smartisanos/launcher/V;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/V;-><init>(Lcom/smartisanos/launcher/ja;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/ja;->zh:Landroid/content/BroadcastReceiver;

    .line 26
    iput-object v1, p0, Lcom/smartisanos/launcher/ja;->Ah:Landroid/app/admin/DevicePolicyManager;

    .line 27
    iput-object p1, p0, Lcom/smartisanos/launcher/ja;->Jg:Landroid/app/Application;

    .line 28
    sput-object p0, Lcom/smartisanos/launcher/ja;->Dh:Lcom/smartisanos/launcher/ja;

    return-void
.end method

.method private F(Ljava/lang/String;Ljava/lang/String;)Landroid/database/ContentObserver;
    .locals 3

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/Y;

    iget-object v1, p0, Lcom/smartisanos/launcher/ja;->mH:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, p1}, Lcom/smartisanos/launcher/Y;-><init>(Lcom/smartisanos/launcher/ja;Landroid/os/Handler;Ljava/lang/String;)V

    const-string v1, "Global"

    .line 2
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/ja;->ub(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v1, "System"

    .line 4
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/ja;->vb(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_1
    sget-object p2, Lcom/smartisanos/launcher/ja;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown type for config key ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 7
    iget-object p0, p0, Lcom/smartisanos/launcher/ja;->Jg:Landroid/app/Application;

    invoke-virtual {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_2
    return-object v0
.end method

.method private Mv()Lcom/smartisanos/smengine/n;
    .locals 2

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/fa;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/fa;-><init>(Lcom/smartisanos/launcher/ja;I)V

    return-object v0
.end method

.method private Nv()Lcom/smartisanos/smengine/n;
    .locals 2

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/da;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/da;-><init>(Lcom/smartisanos/launcher/ja;I)V

    return-object v0
.end method

.method private Ov()Lcom/smartisanos/smengine/n;
    .locals 2

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/ca;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/ca;-><init>(Lcom/smartisanos/launcher/ja;I)V

    const-string p0, "UnlockAnimationEvent"

    .line 2
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/n;->setName(Ljava/lang/String;)V

    return-object v0
.end method

.method private Pv()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method private Qv()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/ja;->Jg:Landroid/app/Application;

    invoke-static {v0}, Lsmartisanos/util/config/Features;->isFeatureDSDSEnabled(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/smartisanos/launcher/data/Constants;->IS_DSDS:Z

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/ja;->Jg:Landroid/app/Application;

    invoke-static {v0}, Lsmartisanos/util/config/Features;->isFeatureUSEnabled(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/smartisanos/launcher/data/Constants;->IS_US:Z

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/ja;->Jg:Landroid/app/Application;

    invoke-static {v0}, Lsmartisanos/util/config/Features;->isFeatureJPEnabled(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/smartisanos/launcher/data/Constants;->IS_JP:Z

    const/4 v0, 0x0

    .line 4
    sput-boolean v0, Lcom/smartisanos/launcher/data/Constants;->IS_FEATURE_TEST:Z

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/sa;->qb()Lcom/smartisanos/launcher/ra;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    .line 6
    sget-object v3, Lcom/smartisanos/launcher/sa;->OSBORN:Lcom/smartisanos/launcher/ra;

    if-ne v1, v3, :cond_0

    .line 7
    sput-boolean v2, Lcom/smartisanos/launcher/data/Constants;->IS_OSBORN_BOARD:Z

    goto :goto_0

    .line 8
    :cond_0
    sget-object v3, Lcom/smartisanos/launcher/sa;->OSCAR:Lcom/smartisanos/launcher/ra;

    if-ne v1, v3, :cond_1

    .line 9
    sput-boolean v2, Lcom/smartisanos/launcher/data/Constants;->IS_OSCAR_BOARD:Z

    goto :goto_0

    .line 10
    :cond_1
    sget-object v3, Lcom/smartisanos/launcher/sa;->U1:Lcom/smartisanos/launcher/ra;

    if-ne v1, v3, :cond_2

    .line 11
    sput-boolean v2, Lcom/smartisanos/launcher/data/Constants;->IS_U1_BOARD:Z

    goto :goto_0

    .line 12
    :cond_2
    sget-object v3, Lcom/smartisanos/launcher/sa;->TRIDENT:Lcom/smartisanos/launcher/ra;

    if-ne v1, v3, :cond_3

    .line 13
    sput-boolean v2, Lcom/smartisanos/launcher/data/Constants;->IS_TRIDENT_BOARD:Z

    goto :goto_0

    .line 14
    :cond_3
    sget-object v3, Lcom/smartisanos/launcher/sa;->Qh:Lcom/smartisanos/launcher/ra;

    if-ne v1, v3, :cond_4

    .line 15
    sput-boolean v2, Lcom/smartisanos/launcher/data/Constants;->IS_OXFORD_BOARD:Z

    goto :goto_0

    .line 16
    :cond_4
    sget-object v3, Lcom/smartisanos/launcher/sa;->OCEAN:Lcom/smartisanos/launcher/ra;

    if-ne v1, v3, :cond_5

    .line 17
    sput-boolean v2, Lcom/smartisanos/launcher/data/Constants;->IS_OCEAN_BOARD:Z

    .line 18
    :cond_5
    :goto_0
    invoke-static {v1}, Lcom/smartisanos/launcher/sa;->a(Lcom/smartisanos/launcher/ra;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 19
    sput-boolean v0, Lcom/smartisanos/launcher/data/Constants;->IS_18_9_DEVICES:Z

    .line 20
    :cond_6
    sput-boolean v0, Lcom/smartisanos/launcher/data/Constants;->IS_COPPER_RED_ODIN:Z

    .line 21
    iget-object v1, p0, Lcom/smartisanos/launcher/ja;->Jg:Landroid/app/Application;

    invoke-static {v1}, Lcom/smartisanos/launcher/ja;->sa(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    .line 22
    iget v1, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x3

    sput v1, Lcom/smartisanos/launcher/data/Constants;->ICON_CELL_SHOOTER_SURFACE_WIDTH:I

    .line 23
    sget v1, Lcom/smartisanos/launcher/data/Constants;->ICON_CELL_SHOOTER_SURFACE_WIDTH:I

    mul-int/lit8 v1, v1, 0x3

    sput v1, Lcom/smartisanos/launcher/data/Constants;->ICON_CELL_SHOOTER_SURFACE_HEIGHT:I

    .line 24
    sput-boolean v2, Lcom/smartisanos/launcher/data/Constants;->IS_SUPPORTED_FEATURE:Z

    .line 25
    iget-object v1, p0, Lcom/smartisanos/launcher/ja;->Jg:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 26
    invoke-static {}, Lcom/smartisanos/launcher/ua;->hasNavigationBar()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 27
    invoke-static {v1}, Lcom/smartisanos/launcher/ua;->h(Landroid/content/ContentResolver;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_1

    :cond_7
    move v2, v0

    :goto_1
    sput-boolean v2, Lcom/smartisanos/launcher/data/Constants;->IS_NAVIGATION_BAR:Z

    .line 28
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->IS_NAVIGATION_BAR:Z

    if-eqz v2, :cond_8

    .line 29
    invoke-static {v1}, Lcom/smartisanos/launcher/ua;->i(Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 30
    sput-boolean v0, Lcom/smartisanos/launcher/data/Constants;->IS_NAVIGATION_BAR:Z

    .line 31
    :cond_8
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->IS_NAVIGATION_BAR:Z

    if-eqz v2, :cond_9

    .line 32
    invoke-static {v1}, Lcom/smartisanos/launcher/ua;->g(Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 33
    sput-boolean v0, Lcom/smartisanos/launcher/data/Constants;->IS_NAVIGATION_BAR:Z

    .line 34
    :cond_9
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->IS_NAVIGATION_BAR:Z

    if-eqz v0, :cond_a

    .line 35
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/smartisanos/launcher/ja;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "### has navigation bar !!!!"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_2

    .line 36
    :cond_a
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/smartisanos/launcher/ja;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "### no navigation bar !!!!"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 37
    :cond_b
    :goto_2
    iget-object p0, p0, Lcom/smartisanos/launcher/ja;->Jg:Landroid/app/Application;

    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p0

    sput p0, Lcom/smartisanos/launcher/data/Constants;->TOUCH_SLOP:I

    .line 38
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_c

    sget-object p0, Lcom/smartisanos/launcher/ja;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "### TOUCH_SLOP = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/smartisanos/launcher/data/Constants;->TOUCH_SLOP:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 39
    :cond_c
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_d

    sget-object p0, Lcom/smartisanos/launcher/ja;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->IS_DSDS:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "], ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->IS_US:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->IS_JP:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method private Rv()V
    .locals 3

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/data/M;->LAUNCHER_HIDE_LABLE:Ljava/lang/String;

    const-string v1, "System"

    invoke-direct {p0, v0, v1}, Lcom/smartisanos/launcher/ja;->F(Ljava/lang/String;Ljava/lang/String;)Landroid/database/ContentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/ja;->Mg:Landroid/database/ContentObserver;

    .line 2
    sget-object v0, Lcom/smartisanos/launcher/data/M;->LAUNCHER_HIDE_BADGE:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/smartisanos/launcher/ja;->F(Ljava/lang/String;Ljava/lang/String;)Landroid/database/ContentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/ja;->Ng:Landroid/database/ContentObserver;

    .line 3
    sget-object v0, Lcom/smartisanos/launcher/data/M;->LAUNCHER_BADGE_SWIPE_CLEAN:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/smartisanos/launcher/ja;->F(Ljava/lang/String;Ljava/lang/String;)Landroid/database/ContentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/ja;->Og:Landroid/database/ContentObserver;

    .line 4
    sget-object v0, Lcom/smartisanos/launcher/data/M;->LOCKSCREEN_BACKGROUND:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/smartisanos/launcher/ja;->F(Ljava/lang/String;Ljava/lang/String;)Landroid/database/ContentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/ja;->Tg:Landroid/database/ContentObserver;

    .line 5
    sget-object v0, Lcom/smartisanos/launcher/data/M;->dr:Ljava/lang/String;

    const-string v2, "Global"

    invoke-direct {p0, v0, v2}, Lcom/smartisanos/launcher/ja;->F(Ljava/lang/String;Ljava/lang/String;)Landroid/database/ContentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/ja;->Qg:Landroid/database/ContentObserver;

    .line 6
    sget-object v0, Lcom/smartisanos/launcher/data/M;->er:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/smartisanos/launcher/ja;->F(Ljava/lang/String;Ljava/lang/String;)Landroid/database/ContentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/ja;->Rg:Landroid/database/ContentObserver;

    .line 7
    sget-object v0, Lcom/smartisanos/launcher/data/M;->br:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/smartisanos/launcher/ja;->F(Ljava/lang/String;Ljava/lang/String;)Landroid/database/ContentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/ja;->Pg:Landroid/database/ContentObserver;

    .line 8
    sget-object v0, Lcom/smartisanos/launcher/data/M;->cr:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/smartisanos/launcher/ja;->F(Ljava/lang/String;Ljava/lang/String;)Landroid/database/ContentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/ja;->Sg:Landroid/database/ContentObserver;

    const-string v0, "launcher_page_animation"

    .line 9
    invoke-direct {p0, v0, v2}, Lcom/smartisanos/launcher/ja;->F(Ljava/lang/String;Ljava/lang/String;)Landroid/database/ContentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/ja;->Ug:Landroid/database/ContentObserver;

    const-string v0, "launcher_switching_orientation"

    .line 10
    invoke-direct {p0, v0, v2}, Lcom/smartisanos/launcher/ja;->F(Ljava/lang/String;Ljava/lang/String;)Landroid/database/ContentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/ja;->Vg:Landroid/database/ContentObserver;

    const-string v0, "voice_assit_by_menu"

    .line 11
    invoke-direct {p0, v0, v2}, Lcom/smartisanos/launcher/ja;->F(Ljava/lang/String;Ljava/lang/String;)Landroid/database/ContentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/ja;->Wg:Landroid/database/ContentObserver;

    .line 12
    sget-object v0, Lcom/smartisanos/launcher/data/M;->TEMPERATURE_UNIT:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/smartisanos/launcher/ja;->F(Ljava/lang/String;Ljava/lang/String;)Landroid/database/ContentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/ja;->Xg:Landroid/database/ContentObserver;

    .line 13
    sget-object v0, Lcom/smartisanos/launcher/data/M;->USE_FINGERPRINT_IN_LAUNCHER:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/smartisanos/launcher/ja;->F(Ljava/lang/String;Ljava/lang/String;)Landroid/database/ContentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/ja;->Yg:Landroid/database/ContentObserver;

    .line 14
    sget-object v0, Lcom/smartisanos/launcher/data/M;->ORIGINAL_LAUNCHER_WALLPAPER_BLUR_ON:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/smartisanos/launcher/ja;->F(Ljava/lang/String;Ljava/lang/String;)Landroid/database/ContentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/ja;->Zg:Landroid/database/ContentObserver;

    .line 15
    sget-object v0, Lcom/smartisanos/launcher/data/M;->ir:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/smartisanos/launcher/ja;->F(Ljava/lang/String;Ljava/lang/String;)Landroid/database/ContentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/ja;->_g:Landroid/database/ContentObserver;

    .line 16
    sget-object v0, Lcom/smartisanos/launcher/data/M;->jr:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/smartisanos/launcher/ja;->F(Ljava/lang/String;Ljava/lang/String;)Landroid/database/ContentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/ja;->ah:Landroid/database/ContentObserver;

    .line 17
    sget-object v0, Lcom/smartisanos/launcher/data/M;->kr:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/smartisanos/launcher/ja;->F(Ljava/lang/String;Ljava/lang/String;)Landroid/database/ContentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/ja;->bh:Landroid/database/ContentObserver;

    .line 18
    sget-object v0, Lcom/smartisanos/launcher/data/M;->mr:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/smartisanos/launcher/ja;->F(Ljava/lang/String;Ljava/lang/String;)Landroid/database/ContentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/ja;->ch:Landroid/database/ContentObserver;

    .line 19
    sget-object v0, Lcom/smartisanos/launcher/data/M;->or:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/smartisanos/launcher/ja;->F(Ljava/lang/String;Ljava/lang/String;)Landroid/database/ContentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/ja;->dh:Landroid/database/ContentObserver;

    .line 20
    sget-object v0, Lcom/smartisanos/launcher/data/M;->pr:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/smartisanos/launcher/ja;->F(Ljava/lang/String;Ljava/lang/String;)Landroid/database/ContentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/ja;->eh:Landroid/database/ContentObserver;

    .line 21
    sget-object v0, Lcom/smartisanos/launcher/data/M;->qr:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/smartisanos/launcher/ja;->F(Ljava/lang/String;Ljava/lang/String;)Landroid/database/ContentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/ja;->fh:Landroid/database/ContentObserver;

    .line 22
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    const-string v0, "smartisanos_dock_height"

    .line 23
    invoke-direct {p0, v0, v2}, Lcom/smartisanos/launcher/ja;->F(Ljava/lang/String;Ljava/lang/String;)Landroid/database/ContentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/ja;->hh:Landroid/database/ContentObserver;

    .line 24
    iget-object v0, p0, Lcom/smartisanos/launcher/ja;->Jg:Landroid/app/Application;

    invoke-static {v0}, Lsmartisanos/app/wallpaper/TabletWallpaperHelper;->getInstance(Landroid/content/Context;)Lsmartisanos/app/wallpaper/TabletWallpaperHelper;

    move-result-object v0

    new-instance v1, Lcom/smartisanos/launcher/ba;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/ba;-><init>(Lcom/smartisanos/launcher/ja;)V

    invoke-virtual {v0, v1}, Lsmartisanos/app/wallpaper/TabletWallpaperHelper;->registerWallpaperChangeListener(Lsmartisanos/app/wallpaper/TabletWallpaperHelper$WallpaperChangeListener;)V

    goto :goto_0

    .line 25
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/data/M;->rr:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/smartisanos/launcher/ja;->F(Ljava/lang/String;Ljava/lang/String;)Landroid/database/ContentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/ja;->ih:Landroid/database/ContentObserver;

    .line 26
    :goto_0
    sget-object v0, Lcom/smartisanos/launcher/data/M;->ur:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/smartisanos/launcher/ja;->F(Ljava/lang/String;Ljava/lang/String;)Landroid/database/ContentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/ja;->gh:Landroid/database/ContentObserver;

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/smartisanos/launcher/ja;->Jg:Landroid/app/Application;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 28
    invoke-static {}, Lsmartisanos/api/ActivityManagerSmt;->getInstance()Lsmartisanos/api/ActivityManagerSmt;

    move-result-object v1

    iget-object p0, p0, Lcom/smartisanos/launcher/ja;->nh:Landroid/app/IActivityObserver$Stub;

    invoke-virtual {v1, v0, p0}, Lsmartisanos/api/ActivityManagerSmt;->registerActivityObserver(Landroid/app/ActivityManager;Landroid/app/IActivityObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private Sv()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/ja;->Jg:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/launcher/data/M;->USER_SETUP_COMPLETE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    .line 3
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    .line 4
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 6
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "package"

    .line 7
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 8
    iget-object v2, p0, Lcom/smartisanos/launcher/ja;->kh:Lcom/smartisanos/launcher/receiver/LauncherReceiver;

    invoke-direct {p0, v2, v0}, Lcom/smartisanos/launcher/ja;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 9
    iput-boolean v1, p0, Lcom/smartisanos/launcher/ja;->jh:Z

    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/ja;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "wizard is not finish register receiver"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 11
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "smt.action.preinstall_done"

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Lcom/smartisanos/launcher/ja;->Jg:Landroid/app/Application;

    iget-object v2, p0, Lcom/smartisanos/launcher/ja;->vh:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/smartisanos/launcher/ja;->mH:Landroid/os/Handler;

    const-string v4, "com.smartisanos.launcher.smt.action.preinstall_done"

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 14
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_PRESENT"

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "action_keyguard_to_dismiss"

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "action_keyguard_on"

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 18
    iget-object v1, p0, Lcom/smartisanos/launcher/ja;->oh:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1, v0}, Lcom/smartisanos/launcher/ja;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 19
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "CHANGE_LOCKSCREEN_WALLPAPER"

    .line 20
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    iget-object v1, p0, Lcom/smartisanos/launcher/ja;->sh:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1, v0}, Lcom/smartisanos/launcher/ja;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 22
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.WALLPAPER_CHANGED"

    .line 23
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 24
    iget-object v1, p0, Lcom/smartisanos/launcher/ja;->th:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1, v0}, Lcom/smartisanos/launcher/ja;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 25
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.smartisanos.launcher.new_message"

    .line 26
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27
    iget-object v1, p0, Lcom/smartisanos/launcher/ja;->wh:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1, v0}, Lcom/smartisanos/launcher/ja;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 28
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "smartisan.intent.action.update_calendar_date"

    .line 29
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DATE_CHANGED"

    .line 30
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 32
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lcom/smartisanos/launcher/ja;->xh:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1, v0}, Lcom/smartisanos/launcher/ja;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 34
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 35
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lcom/smartisanos/launcher/ja;->yh:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1, v0}, Lcom/smartisanos/launcher/ja;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 37
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.smartisanos.action.PRIVACY_SECURITY_DISABLED"

    .line 38
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    iget-object v1, p0, Lcom/smartisanos/launcher/ja;->Jg:Landroid/app/Application;

    iget-object v2, p0, Lcom/smartisanos/launcher/ja;->zh:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    const-string v4, "com.smartisanos.permission.SECURITY_CENTER"

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 40
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_1

    .line 41
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "launcher.dumpsurfaceview"

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lcom/smartisanos/launcher/ja;->lh:Lcom/smartisanos/launcher/receiver/DataDumpReceiver;

    invoke-direct {p0, v1, v0}, Lcom/smartisanos/launcher/ja;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 44
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.desktop.systemui.TRASH_SCALE"

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/smartisanos/launcher/ja;->rh:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1, v0}, Lcom/smartisanos/launcher/ja;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_1
    return-void
.end method

.method private Tv()V
    .locals 0

    .line 1
    sget-boolean p0, Lcom/smartisanos/launcher/ja;->Fh:Z

    if-eqz p0, :cond_0

    .line 2
    new-instance p0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 3
    invoke-virtual {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectCustomSlowCalls()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object p0

    .line 10
    invoke-static {p0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 11
    new-instance p0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {p0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 12
    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object p0

    .line 14
    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object p0

    .line 16
    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object p0

    .line 17
    invoke-static {p0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    :cond_0
    return-void
.end method

.method private Uv()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/ja;->Jg:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/ja;->Mg:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/ja;->Ng:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/ja;->Og:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 5
    iget-object v1, p0, Lcom/smartisanos/launcher/ja;->Pg:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 6
    iget-object v1, p0, Lcom/smartisanos/launcher/ja;->Qg:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 7
    iget-object v1, p0, Lcom/smartisanos/launcher/ja;->Rg:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 8
    iget-object v1, p0, Lcom/smartisanos/launcher/ja;->Sg:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 9
    iget-object v1, p0, Lcom/smartisanos/launcher/ja;->Tg:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 10
    iget-object v1, p0, Lcom/smartisanos/launcher/ja;->Ug:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 11
    iget-object v1, p0, Lcom/smartisanos/launcher/ja;->Vg:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 12
    iget-object v1, p0, Lcom/smartisanos/launcher/ja;->Wg:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 13
    iget-object v1, p0, Lcom/smartisanos/launcher/ja;->Xg:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 14
    iget-object v1, p0, Lcom/smartisanos/launcher/ja;->Yg:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 15
    iget-object v1, p0, Lcom/smartisanos/launcher/ja;->Zg:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 16
    iget-object v1, p0, Lcom/smartisanos/launcher/ja;->_g:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 17
    iget-object v1, p0, Lcom/smartisanos/launcher/ja;->ah:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 18
    iget-object v1, p0, Lcom/smartisanos/launcher/ja;->bh:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 19
    iget-object v1, p0, Lcom/smartisanos/launcher/ja;->ch:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 20
    iget-object v1, p0, Lcom/smartisanos/launcher/ja;->dh:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 21
    iget-object v1, p0, Lcom/smartisanos/launcher/ja;->eh:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 22
    iget-object v1, p0, Lcom/smartisanos/launcher/ja;->fh:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 23
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v1, :cond_0

    .line 24
    iget-object v1, p0, Lcom/smartisanos/launcher/ja;->hh:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 25
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/ja;->ih:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 26
    :goto_0
    iget-object p0, p0, Lcom/smartisanos/launcher/ja;->gh:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private Vv()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/ja;->oh:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/ja;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/ja;->sh:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/ja;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/ja;->wh:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/ja;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/ja;->xh:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/ja;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/ja;->th:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/ja;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/ja;->yh:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/ja;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 7
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/ja;->rh:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/ja;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/smartisanos/launcher/ja;->jh:Z

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/ja;->kh:Lcom/smartisanos/launcher/receiver/LauncherReceiver;

    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/ja;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method

.method private Wv()V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/ja;->Jg:Landroid/app/Application;

    invoke-virtual {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 2
    sget-object v0, Lcom/smartisanos/launcher/data/M;->dr:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3
    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->checkSingleMode(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    sget-object v2, Lcom/smartisanos/launcher/data/M;->er:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x0

    .line 5
    invoke-static {v0, v2}, Lcom/smartisanos/launcher/data/Constants;->checkMatch2(II)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x1

    .line 6
    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->getDefaultMultiMode(I)I

    move-result v1

    :cond_0
    if-eqz v3, :cond_2

    .line 7
    sget-object v0, Lcom/smartisanos/launcher/ja;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "multiMode error ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], need reset SETTINGS_KEY_LAUNCHER_COMPLEX_MODE to "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 8
    sget-object v0, Lcom/smartisanos/launcher/data/M;->er:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 9
    :cond_1
    sget-object v1, Lcom/smartisanos/launcher/ja;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/smartisanos/launcher/data/M;->dr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " value error by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 10
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/smartisanos/launcher/data/M;->dr:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    sget-object v0, Lcom/smartisanos/launcher/data/M;->dr:Ljava/lang/String;

    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getDefaultSingleMode()I

    move-result v1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 13
    sget-object v0, Lcom/smartisanos/launcher/data/M;->er:Ljava/lang/String;

    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getDefaultMultiMode()I

    move-result v1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/ja;J)J
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/smartisanos/launcher/ja;->ph:J

    return-wide p1
.end method

.method static synthetic a(Lcom/smartisanos/launcher/ja;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/smartisanos/launcher/ja;->mh:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/smartisanos/launcher/ja;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/ja;->Ig:Z

    return p0
.end method

.method static synthetic a(Lcom/smartisanos/launcher/ja;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/launcher/ja;->Lg:Z

    return p1
.end method

.method static synthetic access$200()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/ja;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method static synthetic b(Lcom/smartisanos/launcher/ja;)Lcom/smartisanos/smengine/n;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/ja;->Nv()Lcom/smartisanos/smengine/n;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Intent;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/ja;->Ch:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic b(Lcom/smartisanos/launcher/ja;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/launcher/ja;->qh:Z

    return p1
.end method

.method static synthetic c(Lcom/smartisanos/launcher/ja;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/ja;->uh:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lcom/smartisanos/launcher/ja;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/ja;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private di()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->di()V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/smartisanos/launcher/ja;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/ja;->mh:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/smartisanos/launcher/ja;)Lcom/smartisanos/smengine/n;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/ja;->Mv()Lcom/smartisanos/smengine/n;

    move-result-object p0

    return-object p0
.end method

.method static synthetic g(Lcom/smartisanos/launcher/ja;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/ja;->di()V

    return-void
.end method

.method public static gb()V
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/ja;->Ch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static getInstance()Lcom/smartisanos/launcher/ja;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/ja;->Dh:Lcom/smartisanos/launcher/ja;

    return-object v0
.end method

.method static synthetic h(Lcom/smartisanos/launcher/ja;)Landroid/app/Application;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/ja;->Jg:Landroid/app/Application;

    return-object p0
.end method

.method static synthetic i(Lcom/smartisanos/launcher/ja;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/launcher/ja;->ph:J

    return-wide v0
.end method

.method public static ib()Ljava/util/ArrayList;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/ja;->Ch:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static j(F)V
    .locals 0

    .line 2
    sput p0, Lcom/smartisanos/launcher/ja;->Eh:F

    return-void
.end method

.method static synthetic j(Lcom/smartisanos/launcher/ja;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/ja;->qh:Z

    return p0
.end method

.method public static jb()F
    .locals 1

    .line 1
    sget v0, Lcom/smartisanos/launcher/ja;->Eh:F

    return v0
.end method

.method static synthetic k(Lcom/smartisanos/launcher/ja;)Lcom/smartisanos/smengine/n;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/ja;->Ov()Lcom/smartisanos/smengine/n;

    move-result-object p0

    return-object p0
.end method

.method private registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/ja;->Jg:Landroid/app/Application;

    invoke-virtual {p0, p1, p2}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private static sa(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 1

    const-string v0, "window"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 2
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 3
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    return-object v0
.end method

.method private ub(Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/ja;->Jg:Landroid/app/Application;

    invoke-virtual {p0, p1}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private vb(Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public db()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/ja;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "setDateChangeIntent"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/ja;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    if-eqz v0, :cond_3

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/smartisanos/launcher/ja;->hg:Landroid/app/PendingIntent;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/ja;->hg:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 5
    iput-object v2, p0, Lcom/smartisanos/launcher/ja;->hg:Landroid/app/PendingIntent;

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/ja;->gg:Landroid/content/Intent;

    if-nez v1, :cond_2

    .line 7
    iput-object v2, p0, Lcom/smartisanos/launcher/ja;->gg:Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :catch_0
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "smartisan.intent.action.update_calendar_date"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/smartisanos/launcher/ja;->gg:Landroid/content/Intent;

    .line 9
    iget-object v1, p0, Lcom/smartisanos/launcher/ja;->gg:Landroid/content/Intent;

    const/4 v2, 0x2

    const-string v3, "ttt"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10
    invoke-virtual {p0}, Lcom/smartisanos/launcher/ja;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/launcher/ja;->gg:Landroid/content/Intent;

    const/high16 v3, 0x8000000

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/launcher/ja;->hg:Landroid/app/PendingIntent;

    .line 11
    invoke-static {}, Lcom/smartisanos/launcher/e/s;->xg()J

    move-result-wide v1

    iget-object p0, p0, Lcom/smartisanos/launcher/ja;->hg:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4, v1, v2, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_3
    return-void
.end method

.method public getApplication()Landroid/app/Application;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/ja;->Jg:Landroid/app/Application;

    return-object p0
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/ja;->Ah:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/ja;->Jg:Landroid/app/Application;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/smartisanos/launcher/ja;->Ah:Landroid/app/admin/DevicePolicyManager;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/ja;->Ah:Landroid/app/admin/DevicePolicyManager;

    return-object p0
.end method

.method public hb()Lcom/smartisanos/smengine/n;
    .locals 2

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/ja;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "UnlockAnim, createInitUnlockAnimationEvent"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->dt()Lcom/smartisanos/smengine/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/v;->rh()Z

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->ai()V

    .line 4
    new-instance v0, Lcom/smartisanos/launcher/ea;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/ea;-><init>(Lcom/smartisanos/launcher/ja;I)V

    return-object v0
.end method

.method public kb()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/ja;->uh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/ja;->getInstance()Lcom/smartisanos/launcher/ja;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/ja;->getApplication()Landroid/app/Application;

    move-result-object v1

    :goto_0
    if-lez v0, :cond_3

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/smartisanos/launcher/ja;->uh:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_2

    .line 5
    iget-object v2, p0, Lcom/smartisanos/launcher/ja;->wh:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v1, v0}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :catch_0
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/ja;->uh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 7
    :cond_3
    iget-object p0, p0, Lcom/smartisanos/launcher/ja;->uh:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public l(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/ja;->Jg:Landroid/app/Application;

    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/StatusBarManager;

    if-nez p1, :cond_0

    const/high16 p1, 0x80000

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/StatusBarManager;->disable(I)V

    const/high16 p1, 0x10000

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/StatusBarManager;->disable(I)V

    :goto_0
    return-void
.end method

.method public lb()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/ja;->Ig:Z

    return p0
.end method

.method public m(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/launcher/ja;->Lg:Z

    .line 2
    iget-boolean p1, p0, Lcom/smartisanos/launcher/ja;->Lg:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/ja;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public mb()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/ja;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "#### setLauncherFinishPowerOff"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/launcher/ja;->Fg:Z

    return-void
.end method

.method public nb()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/ja;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "#### setLauncherWillPreparePowerOff"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/launcher/ja;->Fg:Z

    return-void
.end method

.method public onCreate()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    .line 2
    sget v1, Lcom/smartisanos/launcher/ja;->PROC_ID:I

    if-eqz v1, :cond_0

    .line 3
    sget v1, Lcom/smartisanos/launcher/ja;->PROC_ID:I

    if-ne v0, v1, :cond_0

    .line 4
    sget-object p0, Lcom/smartisanos/launcher/ja;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "maybe is relaunch launcher ! kill launcher"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/ua;->dc()V

    return-void

    .line 6
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/smartisanos/launcher/ja;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "ApplicationProxy onCreate !"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/ja;->Jg:Landroid/app/Application;

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->initLargeScreenMode(Landroid/content/Context;)V

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/va;->lc()V

    .line 9
    invoke-direct {p0}, Lcom/smartisanos/launcher/ja;->Tv()V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/ja;->Jg:Landroid/app/Application;

    invoke-static {v0}, Lcom/smartisanos/launcher/yb;->init(Landroid/content/Context;)V

    .line 11
    invoke-direct {p0}, Lcom/smartisanos/launcher/ja;->Qv()V

    .line 12
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sLeftScreenEnabled:Z

    if-eqz v0, :cond_2

    .line 13
    invoke-direct {p0}, Lcom/smartisanos/launcher/ja;->Pv()I

    move-result v0

    sput v0, Lcom/smartisanos/launcher/data/Constants;->MAGIC_FLOW_UID:I

    .line 14
    invoke-static {}, Lcom/smartisanos/launcher/ua;->ec()V

    .line 15
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/data/N;->getInstance()Lcom/smartisanos/launcher/data/N;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/ja;->Jg:Landroid/app/Application;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/data/N;->R(Landroid/content/Context;)V

    .line 16
    iget-object v0, p0, Lcom/smartisanos/launcher/ja;->Jg:Landroid/app/Application;

    invoke-static {v0}, Lcom/smartisanos/launcher/Cb;->o(Landroid/content/Context;)V

    .line 17
    iget-object v0, p0, Lcom/smartisanos/launcher/ja;->Jg:Landroid/app/Application;

    invoke-static {v0}, Lcom/smartisanos/launcher/data/C;->init(Landroid/content/Context;)V

    .line 18
    iget-object v0, p0, Lcom/smartisanos/launcher/ja;->Jg:Landroid/app/Application;

    invoke-static {v0}, Lcom/smartisanos/launcher/data/T;->init(Landroid/content/Context;)V

    .line 19
    iget-object v0, p0, Lcom/smartisanos/launcher/ja;->Jg:Landroid/app/Application;

    invoke-static {v0}, Lcom/smartisanos/launcher/theme/X;->ca(Landroid/content/Context;)V

    .line 20
    invoke-static {}, Lcom/smartisanos/launcher/Da;->getInstance()Lcom/smartisanos/launcher/Da;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/ja;->Jg:Landroid/app/Application;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/Da;->init(Landroid/app/Application;)V

    .line 21
    invoke-direct {p0}, Lcom/smartisanos/launcher/ja;->Wv()V

    .line 22
    invoke-direct {p0}, Lcom/smartisanos/launcher/ja;->Sv()V

    .line 23
    iget-object v0, p0, Lcom/smartisanos/launcher/ja;->Jg:Landroid/app/Application;

    invoke-static {v0}, Lcom/smartisanos/launcher/d/j;->init(Landroid/content/Context;)V

    .line 24
    iget-object v0, p0, Lcom/smartisanos/launcher/ja;->Jg:Landroid/app/Application;

    invoke-static {v0}, Lcom/smartisanos/launcher/theme/X;->da(Landroid/content/Context;)V

    .line 25
    invoke-static {}, Lcom/smartisanos/launcher/data/N;->getInstance()Lcom/smartisanos/launcher/data/N;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/ja;->Jg:Landroid/app/Application;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/data/N;->init(Landroid/content/Context;)V

    .line 26
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->IS_COPPER_RED_ODIN:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 27
    invoke-static {}, Lcom/smartisanos/launcher/e/s;->Cg()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 28
    iget-object v0, p0, Lcom/smartisanos/launcher/ja;->Jg:Landroid/app/Application;

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/ua;->a(Landroid/content/Context;Z)V

    .line 29
    sput-boolean v2, Lcom/smartisanos/launcher/data/Constants;->isLoadSpecialAppIcon:Z

    goto :goto_0

    .line 30
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/ja;->Jg:Landroid/app/Application;

    invoke-static {v0, v2}, Lcom/smartisanos/launcher/ua;->a(Landroid/content/Context;Z)V

    .line 31
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/ja;->Jg:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v0, v3}, Lcom/smartisanos/launcher/data/N;->a(Landroid/content/Context;F)V

    .line 32
    invoke-direct {p0}, Lcom/smartisanos/launcher/ja;->Rv()V

    .line 33
    iput-boolean v2, p0, Lcom/smartisanos/launcher/ja;->Ig:Z

    .line 34
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    invoke-static {}, Lcom/smartisanos/smengine/Ra;->st()V

    .line 35
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0, v1, v1}, Lcom/smartisanos/smengine/Ra;->q(IZ)V

    return-void
.end method

.method public onTerminate()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/ja;->Uv()V

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/launcher/ja;->Vv()V

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/ja;->Jg:Landroid/app/Application;

    invoke-static {p0}, Lcom/smartisanos/launcher/Cb;->p(Landroid/content/Context;)V

    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    const-string v1, "=========================================="

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/ja;->log:Lcom/smartisanos/launcher/va;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/smartisanos/launcher/ja;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "| onConfigChanged begin, type == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 3
    :cond_1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/smartisanos/launcher/ja;->log:Lcom/smartisanos/launcher/va;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/ja;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 6
    sget-object v2, Lcom/smartisanos/launcher/data/M;->mr:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_3

    sget-object v2, Lcom/smartisanos/launcher/data/M;->or:Ljava/lang/String;

    .line 7
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/smartisanos/launcher/data/M;->pr:Ljava/lang/String;

    .line 8
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 9
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/ua;->hasNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 10
    invoke-static {v1}, Lcom/smartisanos/launcher/ua;->h(Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v4

    goto :goto_0

    :cond_4
    move v2, v3

    :goto_0
    if-eqz v2, :cond_5

    .line 11
    invoke-static {v1}, Lcom/smartisanos/launcher/ua;->i(Landroid/content/ContentResolver;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v2, v3

    :cond_5
    if-eqz v2, :cond_6

    .line 12
    invoke-static {v1}, Lcom/smartisanos/launcher/ua;->g(Landroid/content/ContentResolver;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v2, v3

    .line 13
    :cond_6
    sget-boolean v5, Lcom/smartisanos/launcher/data/Constants;->IS_NAVIGATION_BAR:Z

    if-eq v2, v5, :cond_7

    .line 14
    sput-boolean v4, Lcom/smartisanos/launcher/data/Constants;->NEED_REBOOT:Z

    goto :goto_1

    .line 15
    :cond_7
    sput-boolean v3, Lcom/smartisanos/launcher/data/Constants;->NEED_REBOOT:Z

    .line 16
    :cond_8
    :goto_1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v2

    if-nez v2, :cond_9

    .line 17
    sget-object p0, Lcom/smartisanos/launcher/ja;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "MainView.getInstance is null when onConfigChanged !"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 18
    :cond_9
    sget-object v2, Lcom/smartisanos/launcher/data/M;->LAUNCHER_HIDE_LABLE:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v5, 0x64

    if-eqz v2, :cond_b

    .line 19
    invoke-static {}, Lcom/smartisanos/launcher/data/N;->xf()Z

    move-result p1

    .line 20
    invoke-static {v0}, Lcom/smartisanos/launcher/data/N;->J(Landroid/content/Context;)Z

    move-result v0

    if-eq p1, v0, :cond_2f

    .line 21
    invoke-static {}, Lcom/smartisanos/launcher/data/N;->xf()Z

    move-result p1

    xor-int/2addr p1, v4

    sput-boolean p1, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    .line 22
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_a

    sget-object p1, Lcom/smartisanos/launcher/ja;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SHOW_APP_NAME ==> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 23
    :cond_a
    new-instance p1, Lcom/smartisanos/launcher/W;

    invoke-direct {p1, p0, v5}, Lcom/smartisanos/launcher/W;-><init>(Lcom/smartisanos/launcher/ja;I)V

    .line 24
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->ct()Lcom/smartisanos/smengine/p;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/p;->c(Lcom/smartisanos/smengine/n;)V

    goto/16 :goto_4

    .line 25
    :cond_b
    sget-object v2, Lcom/smartisanos/launcher/data/M;->LAUNCHER_HIDE_BADGE:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    sget-object v2, Lcom/smartisanos/launcher/data/M;->LAUNCHER_BADGE_SWIPE_CLEAN:Ljava/lang/String;

    .line 26
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto/16 :goto_3

    .line 27
    :cond_c
    sget-object p0, Lcom/smartisanos/launcher/data/M;->dr:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto/16 :goto_4

    .line 28
    :cond_d
    sget-object p0, Lcom/smartisanos/launcher/data/M;->er:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    .line 29
    invoke-static {v4}, Lcom/smartisanos/launcher/Aa;->p(Z)V

    goto/16 :goto_4

    .line 30
    :cond_e
    sget-object p0, Lcom/smartisanos/launcher/data/M;->br:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 31
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result p0

    if-eqz p0, :cond_2f

    .line 32
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 33
    invoke-static {p0}, Lcom/smartisanos/launcher/data/O;->W(Landroid/content/Context;)V

    .line 34
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    iput-boolean v4, p0, Lcom/smartisanos/launcher/J;->Xf:Z

    goto/16 :goto_4

    :cond_f
    const-string p0, "launcher_page_animation"

    .line 35
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 36
    invoke-static {v1, p0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/smartisanos/launcher/data/Constants;->SCROLL_ANIMATION_TYPE:I

    .line 37
    sget-boolean p0, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz p0, :cond_10

    .line 38
    sput v3, Lcom/smartisanos/launcher/data/Constants;->SCROLL_ANIMATION_TYPE:I

    .line 39
    :cond_10
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_11

    sget-object p0, Lcom/smartisanos/launcher/ja;->log:Lcom/smartisanos/launcher/va;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SCROLL_ANIMATION_TYPE = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/smartisanos/launcher/data/Constants;->SCROLL_ANIMATION_TYPE:I

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/a/n;->ea(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 40
    :cond_11
    invoke-static {}, Lcom/smartisanos/launcher/animations/a/n;->xe()V

    goto/16 :goto_4

    :cond_12
    const-string p0, "launcher_switching_orientation"

    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 42
    invoke-static {v1, p0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/smartisanos/launcher/data/Constants;->SLIDE_DOCK_ACTION_TYPE:I

    goto/16 :goto_4

    :cond_13
    const-string p0, "voice_assit_by_menu"

    .line 43
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 44
    invoke-static {v1, p0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/smartisanos/launcher/data/Constants;->VOICE_ASSIT_BY_MENU:I

    goto/16 :goto_4

    .line 45
    :cond_14
    sget-object p0, Lcom/smartisanos/launcher/data/M;->cr:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 46
    sget-object p0, Lcom/smartisanos/launcher/data/M;->cr:Ljava/lang/String;

    invoke-static {v1, p0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v4, :cond_15

    move v3, v4

    .line 47
    :cond_15
    sput-boolean v3, Lcom/smartisanos/launcher/data/Constants;->ENABLE_UNLOCK_ANIMATION:Z

    goto/16 :goto_4

    .line 48
    :cond_16
    sget-object p0, Lcom/smartisanos/launcher/data/M;->LOCKSCREEN_BACKGROUND:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 49
    invoke-static {v0}, Lcom/smartisanos/launcher/e/s;->ha(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 50
    sget-object p1, Lcom/smartisanos/launcher/data/Constants;->sWallpaperUri:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    goto :goto_2

    .line 51
    :cond_17
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result p1

    if-eqz p1, :cond_2f

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    if-eqz p1, :cond_2f

    .line 52
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_18

    .line 53
    sget-object p1, Lcom/smartisanos/launcher/ja;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigChanged uri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Constants.sWallpaperUri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/smartisanos/launcher/data/Constants;->sWallpaperUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 54
    :cond_18
    sput-object p0, Lcom/smartisanos/launcher/data/Constants;->sWallpaperUri:Ljava/lang/String;

    .line 55
    sget-boolean p0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz p0, :cond_2f

    sget-boolean p0, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-nez p0, :cond_2f

    .line 56
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->lh()V

    goto/16 :goto_4

    :cond_19
    :goto_2
    return-void

    .line 57
    :cond_1a
    sget-object p0, Lcom/smartisanos/launcher/data/M;->TEMPERATURE_UNIT:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    .line 58
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    sget-object p1, Lcom/smartisanos/launcher/view/activeicon/H;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/Eb;->sa(Ljava/lang/String;)Lcom/smartisanos/launcher/view/activeicon/a;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/view/activeicon/H;

    if-eqz p0, :cond_2f

    .line 59
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/activeicon/H;->yq()V

    goto/16 :goto_4

    .line 60
    :cond_1b
    sget-object p0, Lcom/smartisanos/launcher/data/M;->USE_FINGERPRINT_IN_LAUNCHER:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    .line 61
    sget-object p0, Lcom/smartisanos/launcher/data/M;->USE_FINGERPRINT_IN_LAUNCHER:Ljava/lang/String;

    invoke-static {v1, p0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v4, :cond_1c

    .line 62
    sput-boolean v4, Lcom/smartisanos/launcher/data/Constants;->USE_FINGER_PRINT:Z

    goto/16 :goto_4

    .line 63
    :cond_1c
    sput-boolean v3, Lcom/smartisanos/launcher/data/Constants;->USE_FINGER_PRINT:Z

    goto/16 :goto_4

    .line 64
    :cond_1d
    sget-object p0, Lcom/smartisanos/launcher/data/M;->ORIGINAL_LAUNCHER_WALLPAPER_BLUR_ON:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    .line 65
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result p0

    if-eqz p0, :cond_2f

    .line 66
    invoke-static {v0}, Lcom/smartisanos/launcher/ua;->i(Landroid/content/Context;)Z

    move-result p0

    .line 67
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->isTransWallpaperBlur:Z

    if-eq p1, p0, :cond_2f

    .line 68
    sput-boolean p0, Lcom/smartisanos/launcher/data/Constants;->isTransWallpaperBlur:Z

    .line 69
    sget-boolean p0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz p0, :cond_1e

    .line 70
    sput-boolean v4, Lcom/smartisanos/launcher/data/Constants;->isTransWallpaperBlur:Z

    .line 71
    :cond_1e
    sget-boolean p0, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz p0, :cond_2f

    .line 72
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    if-eqz p0, :cond_2f

    .line 73
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->lh()V

    goto/16 :goto_4

    .line 74
    :cond_1f
    sget-object p0, Lcom/smartisanos/launcher/data/M;->ir:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_20

    .line 75
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result p0

    if-eqz p0, :cond_2f

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    if-eqz p0, :cond_2f

    .line 76
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p0

    if-eqz p0, :cond_2f

    .line 77
    invoke-static {v1}, Lcom/smartisanos/launcher/ua;->c(Landroid/content/ContentResolver;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/V;->cK:Z

    .line 78
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_2f

    sget-object p1, Lcom/smartisanos/launcher/ja;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isInSaraArea dockView.mOpenSlideTouchIgnore = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/V;->cK:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 79
    :cond_20
    sget-object p0, Lcom/smartisanos/launcher/data/M;->jr:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    .line 80
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p0

    if-eqz p0, :cond_2f

    .line 81
    invoke-static {v1}, Lcom/smartisanos/launcher/ua;->d(Landroid/content/ContentResolver;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/V;->dK:Z

    .line 82
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_2f

    sget-object p1, Lcom/smartisanos/launcher/ja;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isInSaraArea dockView.mOpenVoiceInput = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/smartisanos/launcher/view/V;->dK:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 83
    :cond_21
    sget-object p0, Lcom/smartisanos/launcher/data/M;->kr:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_22

    .line 84
    invoke-static {v1}, Lcom/smartisanos/launcher/ua;->e(Landroid/content/ContentResolver;)Z

    move-result p0

    sput-boolean p0, Lcom/smartisanos/launcher/data/Constants;->FLING_DOWN_FOR_SEARCH:Z

    goto/16 :goto_4

    .line 85
    :cond_22
    sget-object p0, Lcom/smartisanos/launcher/data/M;->lr:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_23

    goto/16 :goto_4

    .line 86
    :cond_23
    sget-object p0, Lcom/smartisanos/launcher/data/M;->qr:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 87
    sget-object p0, Lcom/smartisanos/launcher/data/M;->qr:Ljava/lang/String;

    const/4 p1, -0x1

    invoke-static {v1, p0, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x4

    if-eqz p0, :cond_25

    if-eq p0, v4, :cond_24

    goto/16 :goto_4

    .line 88
    :cond_24
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    invoke-virtual {p0, p1, v4}, Lcom/smartisanos/launcher/ub;->d(IZ)V

    goto/16 :goto_4

    .line 89
    :cond_25
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    invoke-virtual {p0, p1, v3}, Lcom/smartisanos/launcher/ub;->d(IZ)V

    .line 90
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/ub;->R(I)Z

    move-result p0

    if-eqz p0, :cond_2f

    .line 91
    sget-object p0, Lcom/smartisanos/launcher/ja;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "launchpad died and data changed, reboot launcher"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/smartisanos/launcher/ua;->dc()V

    goto/16 :goto_4

    :cond_26
    const-string p0, "smartisanos_dock_height"

    .line 93
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 94
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 95
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz p1, :cond_2f

    .line 96
    invoke-static {v1, p0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 97
    sget p1, Lcom/smartisanos/launcher/data/Constants;->sLKP_launchpad_dock_height:I

    if-eq p0, p1, :cond_2f

    .line 98
    invoke-static {}, Lcom/smartisanos/launcher/ua;->dc()V

    goto/16 :goto_4

    .line 99
    :cond_27
    sget-object p0, Lcom/smartisanos/launcher/data/M;->tr:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_28

    .line 100
    sget-boolean p0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    return-void

    .line 101
    :cond_28
    sget-object p0, Lcom/smartisanos/launcher/data/M;->ur:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2a

    .line 102
    sget-object p0, Lcom/smartisanos/launcher/data/M;->ur:Ljava/lang/String;

    invoke-static {v1, p0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v4, :cond_29

    move v3, v4

    :cond_29
    sput-boolean v3, Lcom/smartisanos/launcher/data/Constants;->sLeftScreenEnabled:Z

    goto/16 :goto_4

    .line 103
    :cond_2a
    sget-object p0, Lcom/smartisanos/launcher/data/M;->rr:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2f

    .line 104
    sget-boolean p0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz p0, :cond_2b

    .line 105
    sput-boolean v3, Lcom/smartisanos/launcher/data/Constants;->SHOW_ICON_SHADOW_LIST:Z

    goto :goto_4

    .line 106
    :cond_2b
    sget-object p0, Lcom/smartisanos/launcher/data/M;->rr:Ljava/lang/String;

    invoke-static {v1, p0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v4, :cond_2c

    move v3, v4

    .line 107
    :cond_2c
    sget-boolean p0, Lcom/smartisanos/launcher/data/Constants;->SHOW_ICON_SHADOW_LIST:Z

    xor-int/2addr p0, v3

    if-eqz p0, :cond_2f

    .line 108
    invoke-static {}, Lcom/smartisanos/launcher/ua;->dc()V

    goto :goto_4

    .line 109
    :cond_2d
    :goto_3
    invoke-static {v0}, Lcom/smartisanos/launcher/data/N;->E(Landroid/content/Context;)Z

    .line 110
    invoke-static {}, Lcom/smartisanos/launcher/data/N;->yf()Z

    move-result p1

    .line 111
    invoke-static {v0}, Lcom/smartisanos/launcher/data/N;->K(Landroid/content/Context;)Z

    move-result v0

    if-eq p1, v0, :cond_2f

    .line 112
    invoke-static {}, Lcom/smartisanos/launcher/data/N;->uf()Z

    move-result p1

    sput-boolean p1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_SWEEP_MESSAGE_FLAG:Z

    .line 113
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_2e

    sget-object p1, Lcom/smartisanos/launcher/ja;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ENABLE_SWEEP_MESSAGE_FLAG ==> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_SWEEP_MESSAGE_FLAG:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 114
    :cond_2e
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->SHOW_MESSAGE_FLAG:Z

    invoke-static {}, Lcom/smartisanos/launcher/data/N;->yf()Z

    move-result v0

    xor-int/2addr v0, v4

    if-eq p1, v0, :cond_2f

    .line 115
    invoke-static {}, Lcom/smartisanos/launcher/data/N;->yf()Z

    move-result p1

    xor-int/2addr p1, v4

    sput-boolean p1, Lcom/smartisanos/launcher/data/Constants;->SHOW_MESSAGE_FLAG:Z

    .line 116
    new-instance p1, Lcom/smartisanos/launcher/X;

    invoke-direct {p1, p0, v5}, Lcom/smartisanos/launcher/X;-><init>(Lcom/smartisanos/launcher/ja;I)V

    .line 117
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->ct()Lcom/smartisanos/smengine/p;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/p;->c(Lcom/smartisanos/smengine/n;)V

    :cond_2f
    :goto_4
    return-void
.end method
