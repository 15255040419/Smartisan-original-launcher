.class public Lcom/android/settings/AppCompnentFragment$AppListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AppCompnentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AppCompnentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/android/settings/AppCompnentFragment$MyApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAppIconSize:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mPackageInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/AppCompnentFragment$MyApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/AppCompnentFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/AppCompnentFragment;Landroid/content/Context;)V
    .locals 6

    .line 77
    iput-object p1, p0, Lcom/android/settings/AppCompnentFragment$AppListAdapter;->this$0:Lcom/android/settings/AppCompnentFragment;

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/AppCompnentFragment$AppListAdapter;->mPackageInfoList:Ljava/util/List;

    .line 79
    invoke-virtual {p1}, Lcom/android/settings/AppCompnentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070062

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/AppCompnentFragment$AppListAdapter;->mAppIconSize:I

    const-string v1, "layout_inflater"

    .line 80
    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/settings/AppCompnentFragment$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 81
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const/16 v1, 0x80

    invoke-virtual {p2, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object p2

    move v1, v0

    .line 82
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 83
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    const/4 v3, 0x0

    .line 85
    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    .line 86
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v4, "smartisan_development_activity"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 88
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, "."

    .line 92
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 93
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 96
    :cond_2
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 98
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 99
    invoke-virtual {p1}, Lcom/android/settings/AppCompnentFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    if-nez v5, :cond_3

    .line 101
    iget-object v2, p1, Lcom/android/settings/AppCompnentFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not exists ComponentName: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lsmartisanos/util/LogTag;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 105
    :cond_3
    new-instance v4, Lcom/android/settings/AppCompnentFragment$MyApplicationInfo;

    invoke-direct {v4, p1}, Lcom/android/settings/AppCompnentFragment$MyApplicationInfo;-><init>(Lcom/android/settings/AppCompnentFragment;)V

    .line 106
    iput-object v2, v4, Lcom/android/settings/AppCompnentFragment$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    .line 107
    invoke-virtual {p1}, Lcom/android/settings/AppCompnentFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/android/settings/AppCompnentFragment$MyApplicationInfo;->label:Ljava/lang/CharSequence;

    .line 108
    iput-object v3, v4, Lcom/android/settings/AppCompnentFragment$MyApplicationInfo;->launchIntent:Landroid/content/Intent;

    .line 109
    iget-object v2, p0, Lcom/android/settings/AppCompnentFragment$AppListAdapter;->mPackageInfoList:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 111
    :cond_4
    iget-object p1, p0, Lcom/android/settings/AppCompnentFragment$AppListAdapter;->mPackageInfoList:Ljava/util/List;

    invoke-static {}, Lcom/android/settings/AppCompnentFragment;->access$000()Ljava/util/Comparator;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 112
    iget-object p1, p0, Lcom/android/settings/AppCompnentFragment$AppListAdapter;->mPackageInfoList:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings/AppCompnentFragment$AppListAdapter;->addAll(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    .line 119
    iget-object p2, p0, Lcom/android/settings/AppCompnentFragment$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d016e

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0a0576

    .line 120
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lsmartisanos/widget/SettingItemText;

    .line 121
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lsmartisanos/widget/SettingItemText;

    .line 125
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/AppCompnentFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/AppCompnentFragment$MyApplicationInfo;

    .line 126
    iget-object v1, v0, Lcom/android/settings/AppCompnentFragment$MyApplicationInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {p3, v1}, Lsmartisanos/widget/SettingItemText;->setTitle(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v1, v0, Lcom/android/settings/AppCompnentFragment$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/android/settings/AppCompnentFragment$AppListAdapter;->this$0:Lcom/android/settings/AppCompnentFragment;

    invoke-virtual {v2}, Lcom/android/settings/AppCompnentFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p3, v1}, Lsmartisanos/widget/SettingItemText;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 129
    iget v1, p0, Lcom/android/settings/AppCompnentFragment$AppListAdapter;->mAppIconSize:I

    invoke-static {p3, v1, v1}, Lcom/android/settings/Utils;->setItemIconSize(Lsmartisanos/widget/ListContentItem;II)V

    .line 130
    iget-object v0, v0, Lcom/android/settings/AppCompnentFragment$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lsmartisanos/widget/SettingItemText;->setSummary(Ljava/lang/CharSequence;)V

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/AppCompnentFragment$AppListAdapter;->getCount()I

    move-result p0

    invoke-static {p3, p0, p1}, Lcom/android/settings/Utils;->setItemBgStyle(Lsmartisanos/widget/ListContentItem;II)V

    return-object p2
.end method
