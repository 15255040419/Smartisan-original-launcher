.class public final Lcom/smartisanos/launcher/theme/X;
.super Ljava/lang/Object;
.source "ThemeManager.java"


# static fields
.field private static Yt:Lcom/smartisanos/launcher/theme/v;

.field private static Zt:Lcom/smartisanos/launcher/theme/v;

.field private static _t:Lcom/smartisanos/launcher/theme/v;

.field public static final au:Ljava/util/Map;

.field public static final bu:Ljava/util/List;

.field public static final cu:Ljava/util/List;

.field private static du:Landroid/content/res/Resources;

.field private static eu:Ljava/lang/String;

.field public static fu:Ljava/util/List;

.field public static gu:Ljava/util/Map;

.field public static hu:Ljava/util/Map;

.field private static final iu:Ljava/util/Map;

.field public static ju:Z

.field private static final log:Lcom/smartisanos/launcher/va;

.field private static final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    const-class v0, Lcom/smartisanos/launcher/theme/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/theme/X;->log:Lcom/smartisanos/launcher/va;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/theme/X;->au:Ljava/util/Map;

    .line 3
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->au:Ljava/util/Map;

    const-string v1, "wallpaper_preview_1"

    const-string v2, "smartisan_theme_black"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->au:Ljava/util/Map;

    const-string v2, "smartisan_theme_blue"

    const-string v3, "wallpaper_preview_7"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->au:Ljava/util/Map;

    const-string v3, "smartisan_theme_dark_wood"

    const-string v4, "wallpaper_preview_dark_wood"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->au:Ljava/util/Map;

    const-string v3, "smartisan_theme_strip"

    const-string v4, "wallpaper_preview_rock"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->au:Ljava/util/Map;

    const-string v3, "smartisan_theme_light_blue"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->au:Ljava/util/Map;

    const-string v1, "smartisan_theme_cyan"

    const-string v4, "wallpaper_preview_6"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->au:Ljava/util/Map;

    const-string v4, "smartisan_theme_green"

    const-string v5, "wallpaper_preview_5"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->au:Ljava/util/Map;

    const-string v5, "smartisan_theme_orange"

    const-string v6, "wallpaper_preview_3"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->au:Ljava/util/Map;

    const-string v6, "smartisan_theme_purple"

    const-string v7, "wallpaper_preview_8"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->au:Ljava/util/Map;

    const-string v7, "smartisan_theme_red"

    const-string v8, "wallpaper_preview_2"

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->au:Ljava/util/Map;

    const-string v8, "smartisan_theme_yellow"

    const-string v9, "wallpaper_preview_4"

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->au:Ljava/util/Map;

    const-string v9, "smartisan_theme_light_wood"

    const-string v10, "wallpaper_preview_light_wood"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->au:Ljava/util/Map;

    const-string v9, "smartisan_theme_indigo"

    const-string v10, "wallpaper_preview_indigo"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->au:Ljava/util/Map;

    const-string v9, "smartisan_theme_leather"

    const-string v10, "wallpaper_preview_mocha"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->au:Ljava/util/Map;

    const-string v9, "smartisan_theme_wine_red"

    const-string v10, "wallpaper_preview_wine_red"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->au:Ljava/util/Map;

    const-string v9, "smartisan_theme_light_gold"

    const-string v10, "wallpaper_light_gold"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->au:Ljava/util/Map;

    const-string v9, "smartisan_theme_gintama"

    const/4 v10, 0x0

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->au:Ljava/util/Map;

    const-string v9, "smartisan_theme_blue_green"

    const-string v10, "wallpaper_preview_blue_green"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->au:Ljava/util/Map;

    const-string v9, "smartisan_theme_dark_gray"

    const-string v10, "wallpaper_preview_dark_gray"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->au:Ljava/util/Map;

    const-string v9, "smartisan_theme_deep_blue"

    const-string v10, "wallpaper_preview_deep_blue"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->au:Ljava/util/Map;

    const-string v9, "smartisan_theme_grid"

    const-string v10, "wallpaper_preview_grid"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->au:Ljava/util/Map;

    const-string v9, "smartisan_theme_leaf"

    const-string v10, "wallpaper_preview_leaf"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->au:Ljava/util/Map;

    const-string v9, "smartisan_theme_lake"

    const-string v10, "wallpaper_preview_lake"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->au:Ljava/util/Map;

    const-string v9, "smartisan_theme_bamboo"

    const-string v10, "wallpaper_preview_bamboo"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->au:Ljava/util/Map;

    const-string v9, "smartisan_theme_raven"

    const-string v10, "wallpaper_preview_raven"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->au:Ljava/util/Map;

    const-string v9, "smartisan_theme_fibre"

    const-string v10, "wallpaper_preview_fibre"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->au:Ljava/util/Map;

    const-string v9, "smartisan_theme_clay"

    const-string v10, "wallpaper_preview_clay"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->au:Ljava/util/Map;

    const-string v9, "LiteraryBrown"

    const-string v10, "wallpaper_preview_literary_brown"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->au:Ljava/util/Map;

    const-string v9, "LiteraryCyan"

    const-string v10, "wallpaper_preview_literary_cyan"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->au:Ljava/util/Map;

    const-string v9, "LiteraryRed"

    const-string v10, "wallpaper_preview_literary_red"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->au:Ljava/util/Map;

    const-string v9, "LiteraryYellow"

    const-string v10, "wallpaper_preview_literary_yellow"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->au:Ljava/util/Map;

    const-string v9, "LiteraryPurple"

    const-string v10, "wallpaper_preview_literary_purple"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->au:Ljava/util/Map;

    const-string v9, "LiteraryGreen"

    const-string v10, "wallpaper_preview_literary_green"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->au:Ljava/util/Map;

    const-string v9, "LiteraryPink"

    const-string v10, "wallpaper_preview_literary_pink"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->au:Ljava/util/Map;

    const-string v9, "LiteraryWhite"

    const-string v10, "wallpaper_preview_literary_white"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/theme/X;->bu:Ljava/util/List;

    .line 39
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->bu:Ljava/util/List;

    const-string v9, "smartisan_theme_aero"

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->bu:Ljava/util/List;

    const-string v9, "smartisan_theme_trans"

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->bu:Ljava/util/List;

    const-string v10, "smartisan_theme_glime"

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/theme/X;->cu:Ljava/util/List;

    .line 43
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->cu:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->cu:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/theme/X;->fu:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/theme/X;->gu:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/theme/X;->hu:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/theme/X;->mLock:Ljava/lang/Object;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/theme/X;->iu:Ljava/util/Map;

    .line 50
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->iu:Ljava/util/Map;

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->iu:Ljava/util/Map;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->iu:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->iu:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->iu:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->iu:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->iu:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->iu:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sput-boolean v9, Lcom/smartisanos/launcher/theme/X;->ju:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Jb(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->getInstance()Lcom/smartisanos/launcher/theme/ThemeChooserActivity;

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->getInstance()Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->getInstance()Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->o(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static X(Landroid/content/Context;)Lcom/smartisanos/launcher/theme/v;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.smartisanos.launcher"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->gu:Ljava/util/Map;

    const-string v1, "smartisan_theme_black"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/theme/v;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/smartisanos/launcher/theme/v;->mPackage:Ljava/lang/String;

    .line 4
    sget v1, Lcom/smartisanos/launcher/ob;->theme_default_name:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/smartisanos/launcher/theme/v;->mName:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iput-object p0, v0, Lcom/smartisanos/launcher/theme/v;->mResources:Landroid/content/res/Resources;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static Y(Landroid/content/Context;)Lcom/smartisanos/launcher/theme/v;
    .locals 3

    const-string v0, "com.smartisanos.launcher.theme.glime"

    .line 1
    :try_start_0
    new-instance v1, Lcom/smartisanos/launcher/theme/v;

    const-string v2, "smartisan_theme_glime"

    invoke-direct {v1, v2}, Lcom/smartisanos/launcher/theme/v;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object v0, v1, Lcom/smartisanos/launcher/theme/v;->mPackage:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    iput-object p0, v1, Lcom/smartisanos/launcher/theme/v;->mResources:Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static Z(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 8

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/sa;->DELTA:Lcom/smartisanos/launcher/ra;

    invoke-static {}, Lcom/smartisanos/launcher/sa;->qb()Lcom/smartisanos/launcher/ra;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    sget-object v0, Lcom/smartisanos/launcher/sa;->DARWIN:Lcom/smartisanos/launcher/ra;

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/sa;->qb()Lcom/smartisanos/launcher/ra;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/smartisanos/launcher/theme/X;->ba(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x1

    if-le v2, v0, :cond_1

    .line 4
    sget-object p0, Lcom/smartisanos/launcher/theme/X;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "theme list resource version not match, target [1], local ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-object v1

    .line 5
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/smartisanos/launcher/theme/X;->aa(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 6
    const-class v3, Landroid/content/res/AssetManager;

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/AssetManager;

    .line 7
    const-class v4, Landroid/content/res/AssetManager;

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "addAssetPath"

    :try_start_1
    invoke-virtual {v4, v6, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v7

    invoke-virtual {v4, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 9
    new-instance v0, Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-direct {v0, v3, v2, p0}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-object v1
.end method

.method public static a([Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;)Ljava/util/List;
    .locals 12

    const-string v0, "_PKG"

    const-string v1, "string"

    .line 35
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v2

    .line 36
    :cond_0
    array-length v3, p0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_4

    aget-object v6, p0, v5

    .line 37
    :try_start_0
    sget-object v7, Lcom/smartisanos/launcher/theme/X;->eu:Ljava/lang/String;

    invoke-virtual {p2, v6, v1, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 38
    invoke-virtual {p2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 39
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/smartisanos/launcher/theme/X;->eu:Ljava/lang/String;

    invoke-virtual {p2, v8, v1, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 40
    invoke-virtual {p2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 41
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_name"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/smartisanos/launcher/theme/X;->eu:Ljava/lang/String;

    invoke-virtual {p2, v9, v1, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 42
    invoke-virtual {p2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 43
    new-instance v10, Lcom/smartisanos/launcher/theme/v;

    invoke-direct {v10, v7}, Lcom/smartisanos/launcher/theme/v;-><init>(Ljava/lang/String;)V

    .line 44
    iput-object v8, v10, Lcom/smartisanos/launcher/theme/v;->mPackage:Ljava/lang/String;

    .line 45
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/smartisanos/launcher/theme/v;->Et:Ljava/lang/String;

    .line 46
    iput-object v9, v10, Lcom/smartisanos/launcher/theme/v;->mName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    :try_start_1
    invoke-virtual {p1, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    .line 48
    iput-object v8, v10, Lcom/smartisanos/launcher/theme/v;->mResources:Landroid/content/res/Resources;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 49
    :catch_0
    :try_start_2
    invoke-static {}, Lcom/smartisanos/launcher/sa;->qb()Lcom/smartisanos/launcher/ra;

    move-result-object v8

    sget-object v9, Lcom/smartisanos/launcher/sa;->U1:Lcom/smartisanos/launcher/ra;

    if-ne v8, v9, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    move v8, v4

    :goto_1
    if-eqz v8, :cond_2

    .line 50
    iget-object v8, v10, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 51
    invoke-static {v7}, Lcom/smartisanos/launcher/theme/X;->ha(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    .line 52
    :cond_2
    sget-boolean v7, Lcom/smartisanos/launcher/data/Constants;->IS_COPPER_RED_ODIN:Z

    if-nez v7, :cond_3

    .line 53
    iget-object v7, v10, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 54
    iget-object v7, v10, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    const-string v8, "smartisan_theme_copper_red"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    .line 55
    :cond_3
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v7

    .line 56
    sget-object v8, Lcom/smartisanos/launcher/theme/X;->log:Lcom/smartisanos/launcher/va;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "get value error by aliases ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_4
    return-object v2
.end method

.method private static a([Ljava/lang/String;Landroid/content/res/Resources;)Ljava/util/List;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 2
    :goto_0
    :try_start_0
    array-length v3, p0

    if-ge v2, v3, :cond_5

    .line 3
    aget-object v3, p0, v2

    const-string v4, "string"

    .line 4
    sget-object v5, Lcom/smartisanos/launcher/theme/X;->eu:Ljava/lang/String;

    invoke-virtual {p1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 5
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 6
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/sa;->qb()Lcom/smartisanos/launcher/ra;

    move-result-object v4

    sget-object v5, Lcom/smartisanos/launcher/sa;->U1:Lcom/smartisanos/launcher/ra;

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    if-eqz v4, :cond_1

    .line 8
    invoke-static {v3}, Lcom/smartisanos/launcher/theme/X;->ha(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    const-string v4, "smartisan_theme_gintama"

    .line 9
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 10
    invoke-static {}, Lcom/smartisanos/launcher/e/s;->Bg()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    .line 11
    :cond_2
    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->IS_COPPER_RED_ODIN:Z

    if-nez v4, :cond_3

    const-string v4, "smartisan_theme_copper_red"

    .line 12
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    .line 13
    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 6

    if-eqz p1, :cond_7

    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz p2, :cond_7

    .line 16
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 17
    :cond_1
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 18
    :try_start_0
    sget-object v1, Lcom/smartisanos/launcher/theme/X;->fu:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 19
    sget-object v1, Lcom/smartisanos/launcher/theme/X;->fu:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 20
    sget-object p1, Lcom/smartisanos/launcher/theme/X;->gu:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 21
    sget-object p1, Lcom/smartisanos/launcher/theme/X;->hu:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 22
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/smartisanos/launcher/theme/v;

    if-eqz p2, :cond_2

    .line 23
    sget-object v1, Lcom/smartisanos/launcher/theme/X;->gu:Ljava/util/Map;

    iget-object v2, p2, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v1, Lcom/smartisanos/launcher/theme/X;->hu:Ljava/util/Map;

    iget-object v2, p2, Lcom/smartisanos/launcher/theme/v;->mPackage:Ljava/lang/String;

    iget-object p2, p2, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 25
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    sget-object p1, Lcom/smartisanos/launcher/theme/X;->fu:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    move v0, p2

    :goto_1
    if-ge v0, p1, :cond_6

    .line 27
    sget-object v1, Lcom/smartisanos/launcher/theme/X;->fu:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 28
    sget-object v2, Lcom/smartisanos/launcher/theme/X;->gu:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/theme/v;

    if-nez v2, :cond_4

    .line 29
    sget-object v2, Lcom/smartisanos/launcher/theme/X;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "themeId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " theme is null!!!"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_2

    .line 30
    :cond_4
    iget-object v3, v2, Lcom/smartisanos/launcher/theme/v;->mPackage:Ljava/lang/String;

    invoke-static {v1, v3, p0}, Lcom/smartisanos/launcher/theme/X;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)[I

    move-result-object v3

    .line 31
    aget v4, v3, p2

    iput v4, v2, Lcom/smartisanos/launcher/theme/v;->status:I

    const/4 v4, 0x1

    .line 32
    aget v3, v3, v4

    iput v3, v2, Lcom/smartisanos/launcher/theme/v;->progress:I

    .line 33
    sget-boolean v3, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v3, :cond_5

    sget-object v3, Lcom/smartisanos/launcher/theme/X;->log:Lcom/smartisanos/launcher/va;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "support theme => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " status = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lcom/smartisanos/launcher/theme/v;->status:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " progress = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lcom/smartisanos/launcher/theme/v;->progress:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    return-void

    :catchall_0
    move-exception p0

    .line 34
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_7
    :goto_3
    return-void
.end method

.method public static a(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 69
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 70
    :cond_1
    invoke-static {p1}, Lcom/smartisanos/launcher/theme/X;->ga(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/v;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 71
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p0, 0x66

    .line 72
    iput p0, p1, Lcom/smartisanos/launcher/theme/v;->status:I

    goto :goto_0

    :cond_3
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 73
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/16 p0, 0x65

    .line 74
    iput p0, p1, Lcom/smartisanos/launcher/theme/v;->status:I

    .line 75
    :cond_4
    :goto_0
    iget-object p0, p1, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/X;->Jb(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;II)V
    .locals 7

    .line 58
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->gu:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/theme/v;

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    iget v1, v0, Lcom/smartisanos/launcher/theme/v;->status:I

    const/4 v2, 0x1

    const/16 v3, 0x67

    const/4 v4, 0x0

    if-ne v1, v3, :cond_1

    if-ne p1, v3, :cond_1

    move v5, v2

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    if-nez v5, :cond_2

    if-ne v1, p1, :cond_2

    .line 60
    sget-object p0, Lcom/smartisanos/launcher/theme/X;->log:Lcom/smartisanos/launcher/va;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateThemeStatus duplicate status ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    :cond_2
    const/16 v5, 0x6a

    if-ne v1, v5, :cond_3

    if-ne p1, v3, :cond_3

    .line 61
    sget-object p0, Lcom/smartisanos/launcher/theme/X;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "buttonUiStatus installing, status want to BUTTON_UI_DOWNLOADING"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 62
    :cond_3
    sget-object v1, Lcom/smartisanos/launcher/theme/v;->Gt:[I

    array-length v3, v1

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_5

    aget v6, v1, v5

    if-ne p1, v6, :cond_4

    move v2, v4

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 63
    :cond_5
    :goto_2
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/smartisanos/launcher/theme/X;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setButtonUiStatus ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_6
    if-eqz v2, :cond_7

    .line 64
    sget-object p0, Lcom/smartisanos/launcher/theme/X;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "setButtonUiStatus unknownStatus true"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    :cond_7
    const/16 v1, 0x68

    if-ne p1, v1, :cond_8

    .line 65
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_8

    sget-object v1, Lcom/smartisanos/launcher/theme/X;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "set status to [DOWNLOAD_PAUSED]"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 66
    :cond_8
    iput p1, v0, Lcom/smartisanos/launcher/theme/v;->status:I

    .line 67
    iput p2, v0, Lcom/smartisanos/launcher/theme/v;->progress:I

    .line 68
    invoke-static {p0}, Lcom/smartisanos/launcher/theme/X;->Jb(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)[I
    .locals 8

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 76
    fill-array-data v1, :array_0

    const/4 v2, 0x0

    .line 77
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 78
    invoke-virtual {v3, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    const/16 v3, 0x65

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-nez p1, :cond_2

    .line 79
    invoke-static {p0}, Lcom/smartisanos/launcher/data/a/b;->U(Ljava/lang/String;)Lcom/smartisanos/launcher/data/a/a;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 80
    iget-wide p0, p0, Lcom/smartisanos/launcher/data/a/a;->ns:J

    const-wide/16 v6, 0x0

    cmp-long v6, p0, v6

    if-lez v6, :cond_3

    .line 81
    invoke-static {p2, p0, p1}, Lcom/smartisanos/launcher/e/s;->a(Landroid/content/Context;J)Lcom/smartisanos/launcher/e/p;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 82
    iget p1, p0, Lcom/smartisanos/launcher/e/p;->status:I

    if-eq p1, v4, :cond_1

    if-eq p1, v0, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    const/16 p2, 0x8

    if-eq p1, p2, :cond_3

    const/16 p2, 0x10

    if-eq p1, p2, :cond_3

    .line 83
    sget-object p1, Lcom/smartisanos/launcher/theme/X;->log:Lcom/smartisanos/launcher/va;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown download status ["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/smartisanos/launcher/e/p;->status:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/16 v3, 0x68

    .line 84
    invoke-virtual {p0}, Lcom/smartisanos/launcher/e/p;->og()I

    move-result v5

    goto :goto_1

    :cond_1
    const/16 v3, 0x67

    .line 85
    invoke-virtual {p0}, Lcom/smartisanos/launcher/e/p;->og()I

    move-result v5

    goto :goto_1

    :cond_2
    const/16 v3, 0x66

    :cond_3
    :goto_1
    aput v3, v1, v2

    aput v5, v1, v4

    return-object v1

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public static aa(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "ThemePreviewRes.apk"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/theme/v;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->Zt:Lcom/smartisanos/launcher/theme/v;

    return-object v0
.end method

.method public static ba(Landroid/content/Context;)I
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/smartisanos/launcher/theme/X;->aa(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 6
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    return p0

    .line 7
    :cond_0
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/smartisanos/launcher/theme/X;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "getThemePreviewApkVersion packageInfo is null"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method private static c(Landroid/content/res/Resources;)[Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "theme_display_order"

    const-string v1, "array"

    .line 1
    sget-object v2, Lcom/smartisanos/launcher/theme/X;->eu:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static ca(Landroid/content/Context;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/smartisanos/launcher/theme/X;->hu:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 4
    sget-object v1, Lcom/smartisanos/launcher/theme/X;->gu:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 5
    sget-object v1, Lcom/smartisanos/launcher/theme/X;->fu:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 6
    invoke-static {p0}, Lcom/smartisanos/launcher/theme/X;->Y(Landroid/content/Context;)Lcom/smartisanos/launcher/theme/v;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 7
    sget-object v1, Lcom/smartisanos/launcher/theme/X;->gu:Ljava/util/Map;

    iget-object v2, p0, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v1, Lcom/smartisanos/launcher/theme/X;->fu:Ljava/util/List;

    iget-object v2, p0, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    sget-object v1, Lcom/smartisanos/launcher/theme/X;->hu:Ljava/util/Map;

    iget-object v2, p0, Lcom/smartisanos/launcher/theme/v;->mPackage:Ljava/lang/String;

    iget-object p0, p0, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    monitor-exit v0

    return-void

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "lose theme Glime"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 13
    :cond_1
    invoke-static {p0}, Lcom/smartisanos/launcher/theme/X;->Z(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "com.smartisanos.launcher.theme_preview_res"

    .line 14
    sput-object v1, Lcom/smartisanos/launcher/theme/X;->eu:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 15
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "initThemeOrder use local resources"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "com.smartisanos.launcher"

    .line 17
    sput-object v1, Lcom/smartisanos/launcher/theme/X;->eu:Ljava/lang/String;

    .line 18
    :cond_2
    sput-object v0, Lcom/smartisanos/launcher/theme/X;->du:Landroid/content/res/Resources;

    .line 19
    invoke-static {v0}, Lcom/smartisanos/launcher/theme/X;->c(Landroid/content/res/Resources;)[Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-static {v1, v0}, Lcom/smartisanos/launcher/theme/X;->a([Ljava/lang/String;Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v2

    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 22
    invoke-static {v1, v3, v0}, Lcom/smartisanos/launcher/theme/X;->a([Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v0

    .line 23
    invoke-static {p0, v2, v0}, Lcom/smartisanos/launcher/theme/X;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static da(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/smartisanos/launcher/theme/LauncherSettingBridge;->ensureTransparentThemeRegistered(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/X;->va(Landroid/content/Context;)Lcom/smartisanos/launcher/theme/v;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/smartisanos/launcher/theme/X;->k(Lcom/smartisanos/launcher/theme/v;)V

    .line 3
    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->setIconType(Lcom/smartisanos/launcher/theme/v;)V

    .line 4
    iget-object v1, v0, Lcom/smartisanos/launcher/theme/v;->mPath:Ljava/lang/String;

    sput-object v1, Lcom/smartisanos/launcher/data/Constants;->THEME_PATH:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v1

    iget-object v2, v0, Lcom/smartisanos/launcher/theme/v;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/Ra;->a(Landroid/content/res/AssetManager;)V

    .line 6
    invoke-static {v0}, Lcom/smartisanos/launcher/theme/X;->i(Lcom/smartisanos/launcher/theme/v;)Z

    move-result v1

    sput-boolean v1, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    .line 7
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-nez v1, :cond_0

    .line 8
    invoke-static {p0}, Lcom/smartisanos/launcher/e/s;->ha(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/smartisanos/launcher/data/Constants;->sWallpaperUri:Ljava/lang/String;

    .line 9
    :cond_0
    invoke-static {p0}, Lcom/smartisanos/launcher/data/Constants;->initGaussianDarkLight(Landroid/content/Context;)V

    .line 10
    sget-boolean p0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    const-string v1, ""

    if-eqz p0, :cond_3

    .line 11
    sget-object p0, Lcom/smartisanos/launcher/data/Constants;->sStatusbarColorSuffix:Ljava/lang/String;

    const-string v2, "_light"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 12
    invoke-static {v0, v2}, Lcom/smartisanos/launcher/e/s;->d(Lcom/smartisanos/launcher/theme/v;Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-static {v0}, Lcom/smartisanos/launcher/e/s;->n(Lcom/smartisanos/launcher/theme/v;)V

    .line 14
    :goto_0
    sget-object p0, Lcom/smartisanos/launcher/data/Constants;->sNaviBarLightOrDarkSuffix:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 15
    invoke-static {v0, v2}, Lcom/smartisanos/launcher/e/s;->c(Lcom/smartisanos/launcher/theme/v;Ljava/lang/String;)V

    goto :goto_1

    .line 16
    :cond_2
    invoke-static {v0, v1}, Lcom/smartisanos/launcher/e/s;->c(Lcom/smartisanos/launcher/theme/v;Ljava/lang/String;)V

    goto :goto_1

    .line 17
    :cond_3
    invoke-static {v0}, Lcom/smartisanos/launcher/e/s;->n(Lcom/smartisanos/launcher/theme/v;)V

    .line 18
    invoke-static {v0, v1}, Lcom/smartisanos/launcher/e/s;->c(Lcom/smartisanos/launcher/theme/v;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static ea(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->eu:Ljava/lang/String;

    const-string v1, "com.smartisanos.launcher"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->du:Landroid/content/res/Resources;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static declared-synchronized eg()Lcom/smartisanos/launcher/theme/v;
    .locals 7

    const-class v0, Lcom/smartisanos/launcher/theme/X;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/smartisanos/launcher/theme/X;->Zt:Lcom/smartisanos/launcher/theme/v;

    if-nez v1, :cond_2

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/ja;->getInstance()Lcom/smartisanos/launcher/ja;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/ja;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lcom/smartisanos/launcher/data/O;->j(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/theme/X;->gg()Ljava/util/List;

    move-result-object v2

    .line 6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 7
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/theme/v;

    .line 8
    iget-object v6, v5, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    .line 9
    sput-object v5, Lcom/smartisanos/launcher/theme/X;->Zt:Lcom/smartisanos/launcher/theme/v;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10
    :cond_1
    sget-object v1, Lcom/smartisanos/launcher/theme/X;->Zt:Lcom/smartisanos/launcher/theme/v;

    if-nez v1, :cond_2

    .line 11
    invoke-static {}, Lcom/smartisanos/launcher/theme/X;->getDefaultTheme()Lcom/smartisanos/launcher/theme/v;

    move-result-object v1

    sput-object v1, Lcom/smartisanos/launcher/theme/X;->Zt:Lcom/smartisanos/launcher/theme/v;

    .line 12
    :cond_2
    sget-object v1, Lcom/smartisanos/launcher/theme/X;->Zt:Lcom/smartisanos/launcher/theme/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static fa(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/v;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->gu:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/theme/v;

    return-object p0
.end method

.method public static fg()Ljava/lang/String;
    .locals 10

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    const-string v0, "smartisan_theme_glime"

    return-object v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/sa;->qb()Lcom/smartisanos/launcher/ra;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/e/s;->getDeviceColor()Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, v0, Lcom/smartisanos/launcher/ra;->name:Ljava/lang/String;

    const-string v3, "ODIN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "OCEAN"

    const-string v4, "TRIDENT"

    const-string v5, "OSBORN"

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/smartisanos/launcher/ra;->name:Ljava/lang/String;

    .line 5
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/smartisanos/launcher/ra;->name:Ljava/lang/String;

    const-string v6, "OSCAR"

    .line 6
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/smartisanos/launcher/ra;->name:Ljava/lang/String;

    const-string v6, "OXFORD"

    .line 7
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/smartisanos/launcher/ra;->name:Ljava/lang/String;

    .line 8
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/smartisanos/launcher/ra;->name:Ljava/lang/String;

    .line 9
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "smartisan_theme_black"

    goto :goto_1

    :cond_2
    :goto_0
    const-string v2, "smartisan_theme_strip"

    .line 10
    :goto_1
    iget-object v6, v0, Lcom/smartisanos/launcher/ra;->name:Ljava/lang/String;

    const-string v7, "DELTA"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v2, "smartisan_theme_raven"

    :cond_3
    const-string v6, "smartisan_theme_light_gold"

    if-eqz v1, :cond_9

    const/4 v8, -0x1

    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v9, "white"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v8, 0x4

    goto :goto_2

    :sswitch_1
    const-string v9, "beige"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v8, 0x3

    goto :goto_2

    :sswitch_2
    const-string v9, "gintama"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v8, 0x2

    goto :goto_2

    :sswitch_3
    const-string v9, "blue"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v8, 0x5

    goto :goto_2

    :sswitch_4
    const-string v9, "light-golden"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v8, 0x1

    goto :goto_2

    :sswitch_5
    const-string v9, "wine-red"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v8, 0x0

    goto :goto_2

    :sswitch_6
    const-string v9, "pine-green"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v8, 0x6

    :cond_4
    :goto_2
    packed-switch v8, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    const-string v2, "smartisan_theme_leaf"

    goto :goto_5

    :pswitch_1
    const-string v2, "smartisan_theme_indigo"

    goto :goto_5

    .line 12
    :pswitch_2
    iget-object v1, v0, Lcom/smartisanos/launcher/ra;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Lcom/smartisanos/launcher/ra;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    .line 13
    :cond_5
    iget-object v0, v0, Lcom/smartisanos/launcher/ra;->name:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v2, "smartisan_theme_bamboo"

    goto :goto_5

    :cond_6
    const-string v2, "smartisan_theme_light_blue"

    goto :goto_5

    :cond_7
    :goto_3
    const-string v2, "smartisan_theme_blue_green"

    goto :goto_5

    .line 14
    :pswitch_3
    iget-object v0, v0, Lcom/smartisanos/launcher/ra;->name:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    const-string v2, "LiteraryWhite"

    goto :goto_5

    :pswitch_4
    const-string v2, "smartisan_theme_gintama"

    goto :goto_5

    :goto_4
    :pswitch_5
    move-object v2, v6

    goto :goto_5

    :pswitch_6
    const-string v2, "smartisan_theme_wine_red"

    :cond_9
    :goto_5
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7b8b6f9a -> :sswitch_6
        -0x428b4f33 -> :sswitch_5
        -0x15549a60 -> :sswitch_4
        0x2e305a -> :sswitch_3
        0x212fe8d -> :sswitch_2
        0x5947fe4 -> :sswitch_1
        0x6bdcc29 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static ga(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/v;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->hu:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 2
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->gu:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smartisanos/launcher/theme/v;

    return-object p0
.end method

.method public static declared-synchronized getDefaultTheme()Lcom/smartisanos/launcher/theme/v;
    .locals 4

    const-class v0, Lcom/smartisanos/launcher/theme/X;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/smartisanos/launcher/ja;->getInstance()Lcom/smartisanos/launcher/ja;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/ja;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 2
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v2, :cond_0

    .line 3
    sget-object v2, Lcom/smartisanos/launcher/theme/X;->Yt:Lcom/smartisanos/launcher/theme/v;

    if-nez v2, :cond_2

    .line 4
    invoke-static {v1}, Lcom/smartisanos/launcher/theme/X;->Y(Landroid/content/Context;)Lcom/smartisanos/launcher/theme/v;

    move-result-object v1

    sput-object v1, Lcom/smartisanos/launcher/theme/X;->Yt:Lcom/smartisanos/launcher/theme/v;

    goto :goto_0

    .line 5
    :cond_0
    sget-object v2, Lcom/smartisanos/launcher/theme/X;->Yt:Lcom/smartisanos/launcher/theme/v;

    if-nez v2, :cond_1

    .line 6
    sget-object v2, Lcom/smartisanos/launcher/theme/X;->gu:Ljava/util/Map;

    const-string v3, "smartisan_theme_black"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/theme/v;

    sput-object v2, Lcom/smartisanos/launcher/theme/X;->Yt:Lcom/smartisanos/launcher/theme/v;

    .line 7
    sget-object v2, Lcom/smartisanos/launcher/theme/X;->Yt:Lcom/smartisanos/launcher/theme/v;

    sget v3, Lcom/smartisanos/launcher/ob;->theme_default_name:I

    invoke-virtual {v1, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/smartisanos/launcher/theme/v;->mName:Ljava/lang/String;

    .line 8
    sget-object v2, Lcom/smartisanos/launcher/theme/X;->Yt:Lcom/smartisanos/launcher/theme/v;

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, v2, Lcom/smartisanos/launcher/theme/v;->mResources:Landroid/content/res/Resources;

    .line 9
    sget-object v1, Lcom/smartisanos/launcher/theme/X;->Yt:Lcom/smartisanos/launcher/theme/v;

    const-string v2, ""

    iput-object v2, v1, Lcom/smartisanos/launcher/theme/v;->mPath:Ljava/lang/String;

    goto :goto_0

    .line 10
    :cond_1
    sget-object v2, Lcom/smartisanos/launcher/theme/X;->Yt:Lcom/smartisanos/launcher/theme/v;

    sget v3, Lcom/smartisanos/launcher/ob;->theme_default_name:I

    invoke-virtual {v1, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/smartisanos/launcher/theme/v;->mName:Ljava/lang/String;

    .line 11
    :cond_2
    :goto_0
    sget-object v1, Lcom/smartisanos/launcher/theme/X;->Yt:Lcom/smartisanos/launcher/theme/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static gg()Ljava/util/List;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    sget-object v1, Lcom/smartisanos/launcher/theme/X;->fu:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 3
    sget-object v4, Lcom/smartisanos/launcher/theme/X;->fu:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4
    sget-object v5, Lcom/smartisanos/launcher/theme/X;->gu:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/theme/v;

    .line 5
    iget-object v5, v4, Lcom/smartisanos/launcher/theme/v;->mPackage:Ljava/lang/String;

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/ja;->getInstance()Lcom/smartisanos/launcher/ja;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/ja;->getApplication()Landroid/app/Application;

    move-result-object v3

    .line 7
    invoke-virtual {v3}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 8
    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    .line 9
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 10
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 11
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 12
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/launcher/theme/v;

    if-eqz v7, :cond_1

    .line 13
    invoke-virtual {v7, v6, v3}, Lcom/smartisanos/launcher/theme/v;->a(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManager;)V

    .line 14
    iget-object v6, v7, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 15
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    if-ge v2, v1, :cond_4

    .line 16
    sget-object v3, Lcom/smartisanos/launcher/theme/X;->fu:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 17
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/theme/v;

    if-eqz v3, :cond_3

    .line 18
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method public static declared-synchronized h(Lcom/smartisanos/launcher/theme/v;)Z
    .locals 3

    const-class v0, Lcom/smartisanos/launcher/theme/X;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 1
    monitor-exit v0

    return v1

    .line 2
    :cond_0
    :try_start_0
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 3
    monitor-exit v0

    return v1

    .line 4
    :cond_1
    :try_start_1
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    invoke-static {}, Lcom/smartisanos/launcher/theme/X;->getDefaultTheme()Lcom/smartisanos/launcher/theme/v;

    move-result-object v2

    iget-object v2, v2, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    .line 5
    monitor-exit v0

    return p0

    .line 6
    :cond_2
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static ha(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->bu:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static declared-synchronized hg()Lcom/smartisanos/launcher/theme/v;
    .locals 2

    const-class v0, Lcom/smartisanos/launcher/theme/X;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/smartisanos/launcher/theme/X;->_t:Lcom/smartisanos/launcher/theme/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static i(Lcom/smartisanos/launcher/theme/v;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->bu:Ljava/util/List;

    iget-object p0, p0, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static ia(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->cu:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static ig()Ljava/util/List;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Lcom/smartisanos/launcher/theme/X;->fu:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 3
    sget-object v3, Lcom/smartisanos/launcher/theme/X;->fu:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4
    sget-object v4, Lcom/smartisanos/launcher/theme/X;->gu:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/theme/v;

    .line 5
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static j(Landroid/content/Context;Ljava/lang/String;)Lcom/smartisanos/launcher/theme/v;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/smartisanos/launcher/theme/X;->ga(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/v;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 5
    invoke-virtual {v0, v1, p0}, Lcom/smartisanos/launcher/theme/v;->a(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManager;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static j(Lcom/smartisanos/launcher/theme/v;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 7
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->cu:Ljava/util/List;

    iget-object p0, p0, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static declared-synchronized ja(Ljava/lang/String;)Z
    .locals 9

    const-class v0, Lcom/smartisanos/launcher/theme/X;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/smartisanos/launcher/theme/X;->gg()Ljava/util/List;

    move-result-object v1

    const-string v2, ":"

    .line 2
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v4, ":"

    .line 3
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    move v6, v3

    :goto_0
    if-ge v6, v4, :cond_1

    .line 5
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/launcher/theme/v;

    .line 6
    iget-object v8, v7, Lcom/smartisanos/launcher/theme/v;->mPackage:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, v7, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    invoke-virtual {v8, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_0

    .line 7
    sget-object p0, Lcom/smartisanos/launcher/theme/X;->Zt:Lcom/smartisanos/launcher/theme/v;

    sput-object p0, Lcom/smartisanos/launcher/theme/X;->_t:Lcom/smartisanos/launcher/theme/v;

    .line 8
    sput-object v7, Lcom/smartisanos/launcher/theme/X;->Zt:Lcom/smartisanos/launcher/theme/v;

    .line 9
    invoke-static {}, Lcom/smartisanos/launcher/Sa;->getHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance v1, Lcom/smartisanos/launcher/theme/W;

    invoke-direct {v1}, Lcom/smartisanos/launcher/theme/W;-><init>()V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit v0

    return v5

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 11
    :cond_1
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static jg()Landroid/content/res/Resources;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->du:Landroid/content/res/Resources;

    return-object v0
.end method

.method public static k(Landroid/content/Context;Ljava/lang/String;)Lcom/smartisanos/launcher/theme/v;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    invoke-static {p1}, Lcom/smartisanos/launcher/theme/X;->ga(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/v;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v2, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v1, v2, p0}, Lcom/smartisanos/launcher/theme/v;->a(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManager;)V

    :cond_0
    move-object v0, v1

    :cond_1
    if-nez v0, :cond_2

    .line 6
    sget-object p0, Lcom/smartisanos/launcher/theme/X;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getThemeByPackageName return null by pkg ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public static declared-synchronized k(Lcom/smartisanos/launcher/theme/v;)V
    .locals 2

    const-class v0, Lcom/smartisanos/launcher/theme/X;

    monitor-enter v0

    .line 7
    :try_start_0
    sget-object v1, Lcom/smartisanos/launcher/theme/X;->Zt:Lcom/smartisanos/launcher/theme/v;

    sput-object v1, Lcom/smartisanos/launcher/theme/X;->_t:Lcom/smartisanos/launcher/theme/v;

    .line 8
    sput-object p0, Lcom/smartisanos/launcher/theme/X;->Zt:Lcom/smartisanos/launcher/theme/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static kg()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->eu:Ljava/lang/String;

    return-object v0
.end method

.method public static la(I)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/theme/X;->iu:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static lg()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/ja;->getInstance()Lcom/smartisanos/launcher/ja;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/ja;->getApplication()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/smartisanos/launcher/theme/X;->fg()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v2}, Lcom/smartisanos/launcher/theme/X;->fa(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/v;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 4
    :try_start_1
    iget-object v3, v2, Lcom/smartisanos/launcher/theme/v;->mPackage:Ljava/lang/String;

    .line 5
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v2, v1

    :catch_1
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 6
    invoke-static {v0}, Lcom/smartisanos/launcher/theme/X;->X(Landroid/content/Context;)Lcom/smartisanos/launcher/theme/v;

    move-result-object v2

    .line 7
    :cond_1
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, v2, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/data/O;->a(Landroid/content/ContentResolver;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 8
    invoke-static {v2, v0}, Lcom/smartisanos/launcher/a/h;->a(Lcom/smartisanos/launcher/theme/v;Z)V

    return-void
.end method

.method public static p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "]"

    if-nez v1, :cond_1

    .line 3
    sget-object p1, Lcom/smartisanos/launcher/theme/X;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateThemePreviewResource return by file not exist ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5
    sget-object p0, Lcom/smartisanos/launcher/theme/X;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "updateThemePreviewResource return by is not file"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_2
    invoke-static {v0}, Lcom/smartisanos/launcher/e/s;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 8
    sget-object p0, Lcom/smartisanos/launcher/theme/X;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateThemePreviewResource return by md5 not match target ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], current ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/ub;->d(IZ)V

    .line 10
    invoke-static {}, Lcom/smartisanos/launcher/ja;->getInstance()Lcom/smartisanos/launcher/ja;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/ja;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/smartisanos/launcher/theme/X;->aa(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {p0, v1}, Lcom/smartisanos/launcher/e/s;->q(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 13
    invoke-static {v0}, Lcom/smartisanos/launcher/theme/X;->ca(Landroid/content/Context;)V

    const-string p0, "launcher_theme_preview_res"

    .line 14
    invoke-static {p0, p1}, Lcom/smartisanos/launcher/e/s;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_4
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v2, p1}, Lcom/smartisanos/launcher/ub;->d(IZ)V

    :cond_5
    :goto_0
    return-void
.end method

.method public static u(Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/theme/v;

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v1}, Lcom/smartisanos/launcher/theme/X;->j(Lcom/smartisanos/launcher/theme/v;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {p0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static v(Ljava/util/List;)Ljava/util/List;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/theme/v;

    .line 3
    iget-object v1, v1, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    sget-object v1, Lcom/smartisanos/launcher/theme/X;->fu:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    .line 6
    sget-object v3, Lcom/smartisanos/launcher/theme/X;->fu:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 7
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    .line 8
    :cond_1
    sget-object v4, Lcom/smartisanos/launcher/theme/X;->gu:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/theme/v;

    if-nez v3, :cond_2

    goto :goto_2

    .line 9
    :cond_2
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-object p0
.end method

.method private static va(Landroid/content/Context;)Lcom/smartisanos/launcher/theme/v;
    .locals 6

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    const-string v1, "smartisan_theme_aero"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    const-string v1, "smartisan_theme_glime"

    goto :goto_1

    .line 2
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz v0, :cond_3

    const-string v0, "smartisan_theme_trans"

    .line 3
    invoke-static {v0}, Lcom/smartisanos/launcher/theme/X;->fa(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/v;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 4
    iget-object v4, v4, Lcom/smartisanos/launcher/theme/v;->mPackage:Ljava/lang/String;

    invoke-static {p0, v4, v3}, Lcom/smartisanos/launcher/e/s;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 5
    sput-boolean v4, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    .line 6
    sget-object v4, Lcom/smartisanos/launcher/theme/X;->log:Lcom/smartisanos/launcher/va;

    const-string v5, "can\'t find theme THEME_ID_TRANS"

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 7
    invoke-static {v1}, Lcom/smartisanos/launcher/theme/X;->fa(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/v;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 8
    iget-object v4, v4, Lcom/smartisanos/launcher/theme/v;->mPackage:Ljava/lang/String;

    invoke-static {p0, v4, v3}, Lcom/smartisanos/launcher/e/s;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move-object v1, v0

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    if-nez v1, :cond_4

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/O;->j(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    .line 10
    :cond_4
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/smartisanos/launcher/theme/X;->log:Lcom/smartisanos/launcher/va;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initThemeWhenStartup get themeId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_5
    const-string v0, "smartisan_theme_fire"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v1, "smartisan_theme_orange"

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/data/O;->a(Landroid/content/ContentResolver;Ljava/lang/String;)V

    :cond_6
    if-nez v1, :cond_7

    .line 13
    invoke-static {}, Lcom/smartisanos/launcher/theme/X;->fg()Ljava/lang/String;

    move-result-object v1

    .line 14
    :cond_7
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz v0, :cond_8

    .line 15
    invoke-static {p0}, Lcom/smartisanos/launcher/e/s;->ja(Landroid/content/Context;)V

    .line 16
    :cond_8
    invoke-static {v1}, Lcom/smartisanos/launcher/theme/X;->fa(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/v;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 17
    iget-object v4, v0, Lcom/smartisanos/launcher/theme/v;->mPackage:Ljava/lang/String;

    invoke-static {p0, v4, v3}, Lcom/smartisanos/launcher/e/s;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_b

    .line 18
    :cond_9
    invoke-static {}, Lcom/smartisanos/launcher/theme/X;->fg()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-static {v1}, Lcom/smartisanos/launcher/theme/X;->fa(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/v;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 20
    iget-object v4, v0, Lcom/smartisanos/launcher/theme/v;->mPackage:Ljava/lang/String;

    invoke-static {p0, v4, v3}, Lcom/smartisanos/launcher/e/s;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_b

    :cond_a
    const-string v1, "smartisan_theme_black"

    .line 21
    :cond_b
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-nez v3, :cond_d

    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v3, :cond_d

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/smartisanos/launcher/data/O;->j(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 23
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 24
    :cond_c
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/smartisanos/launcher/data/O;->a(Landroid/content/ContentResolver;Ljava/lang/String;)V

    :cond_d
    if-nez v0, :cond_e

    .line 25
    invoke-static {v1}, Lcom/smartisanos/launcher/theme/X;->fa(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/v;

    move-result-object v0

    :cond_e
    if-eqz v0, :cond_f

    .line 26
    iget-object v0, v0, Lcom/smartisanos/launcher/theme/v;->mPackage:Ljava/lang/String;

    .line 27
    invoke-static {p0, v0}, Lcom/smartisanos/launcher/theme/X;->j(Landroid/content/Context;Ljava/lang/String;)Lcom/smartisanos/launcher/theme/v;

    move-result-object v2

    :cond_f
    if-nez v2, :cond_10

    .line 28
    sget-object p0, Lcom/smartisanos/launcher/theme/X;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lose theme ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], use default theme !!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/smartisanos/launcher/theme/X;->getDefaultTheme()Lcom/smartisanos/launcher/theme/v;

    move-result-object v2

    :cond_10
    return-object v2
.end method
