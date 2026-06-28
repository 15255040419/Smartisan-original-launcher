.class public Lcom/android/settingslib/drawer/SettingsDrawerActivity;
.super Landroid/app/Activity;
.source "SettingsDrawerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/drawer/SettingsDrawerActivity$PackageReceiver;,
        Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdateTask;,
        Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field protected static final DEBUG_TIMING:Z = false

.field public static final EXTRA_SHOW_MENU:Ljava/lang/String; = "show_drawer_menu"

.field private static final TAG:Ljava/lang/String; = "SettingsDrawerActivity"

.field private static sTileBlacklist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCategoryListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContentHeaderContainer:Landroid/widget/FrameLayout;

.field private final mPackageReceiver:Lcom/android/settingslib/drawer/SettingsDrawerActivity$PackageReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "SettingsDrawerActivity"

    const/4 v1, 0x3

    .line 49
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->DEBUG:Z

    .line 55
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sTileBlacklist:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    new-instance v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity$PackageReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity$PackageReceiver;-><init>(Lcom/android/settingslib/drawer/SettingsDrawerActivity;Lcom/android/settingslib/drawer/SettingsDrawerActivity$1;)V

    iput-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mPackageReceiver:Lcom/android/settingslib/drawer/SettingsDrawerActivity$PackageReceiver;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mCategoryListeners:Ljava/util/List;

    return-void
.end method

.method static synthetic access$100()Landroid/util/ArraySet;
    .locals 1

    .line 45
    sget-object v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sTileBlacklist:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settingslib/drawer/SettingsDrawerActivity;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onCategoriesChanged()V

    return-void
.end method

.method private onCategoriesChanged()V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mCategoryListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 146
    iget-object v2, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mCategoryListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;

    invoke-interface {v2}, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;->onCategoriesChanged()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addCategoryListener(Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;)V
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mCategoryListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getSettingPkg()Ljava/lang/String;
    .locals 0

    const-string p0, "com.android.settings"

    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 68
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Landroid/R$styleable;->Theme:[I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    const/16 v1, 0x26

    .line 69
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, -0x80000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    const/4 v2, 0x1

    .line 71
    invoke-virtual {p0, v2}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->requestWindowFeature(I)Z

    .line 73
    :cond_0
    sget v2, Lcom/android/settingslib/R$layout;->settings_with_drawer:I

    invoke-super {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 74
    sget v2, Lcom/android/settingslib/R$id;->content_header_container:I

    invoke-virtual {p0, v2}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mContentHeaderContainer:Landroid/widget/FrameLayout;

    .line 76
    sget v2, Lcom/android/settingslib/R$id;->action_bar:I

    invoke-virtual {p0, v2}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Toolbar;

    .line 77
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p0, 0x8

    .line 78
    invoke-virtual {v2, p0}, Landroid/widget/Toolbar;->setVisibility(I)V

    return-void

    .line 81
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->setActionBar(Landroid/widget/Toolbar;)V

    return-void
.end method

.method public onNavigateUp()Z
    .locals 1

    .line 91
    invoke-super {p0}, Landroid/app/Activity;->onNavigateUp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->finish()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method protected onPause()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mPackageReceiver:Lcom/android/settingslib/drawer/SettingsDrawerActivity$PackageReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 113
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 99
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 100
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 101
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 102
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 103
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 104
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mPackageReceiver:Lcom/android/settingslib/drawer/SettingsDrawerActivity$PackageReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 107
    new-instance v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdateTask;

    invoke-direct {v0, p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdateTask;-><init>(Lcom/android/settingslib/drawer/SettingsDrawerActivity;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public remCategoryListener(Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoryListener;)V
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->mCategoryListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .line 126
    sget v0, Lcom/android/settingslib/R$id;->content_frame:I

    invoke-virtual {p0, v0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 130
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 135
    sget v0, Lcom/android/settingslib/R$id;->content_frame:I

    invoke-virtual {p0, v0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 140
    sget v0, Lcom/android/settingslib/R$id;->content_frame:I

    invoke-virtual {p0, v0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTileEnabled(Landroid/content/ComponentName;Z)Z
    .locals 4

    .line 154
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 155
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-ne v3, p2, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    return v1

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    .line 159
    sget-object v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sTileBlacklist:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 161
    :cond_3
    sget-object v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->sTileBlacklist:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_2
    if-eqz p2, :cond_4

    move p2, v2

    goto :goto_3

    :cond_4
    const/4 p2, 0x2

    .line 163
    :goto_3
    invoke-virtual {p0, p1, p2, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return v2
.end method

.method public updateCategories()V
    .locals 1

    .line 176
    new-instance v0, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdateTask;

    invoke-direct {v0, p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdateTask;-><init>(Lcom/android/settingslib/drawer/SettingsDrawerActivity;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
