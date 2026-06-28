.class public Lcom/android/settings/AppPickerActivity$AppListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AppPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AppPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/android/settings/AppPickerActivity$MyApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mIconSize:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mPackageInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/AppPickerActivity$MyApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/AppPickerActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/AppPickerActivity;Landroid/content/Context;)V
    .locals 9

    .line 87
    iput-object p1, p0, Lcom/android/settings/AppPickerActivity$AppListAdapter;->this$0:Lcom/android/settings/AppPickerActivity;

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/AppPickerActivity$AppListAdapter;->mPackageInfoList:Ljava/util/List;

    .line 89
    invoke-virtual {p1}, Lcom/android/settings/AppPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/AppPickerActivity$AppListAdapter;->mIconSize:I

    const-string v1, "layout_inflater"

    .line 90
    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/settings/AppPickerActivity$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 91
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    move v2, v0

    .line 92
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 93
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 94
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_0

    goto :goto_3

    .line 98
    :cond_0
    invoke-static {p1}, Lcom/android/settings/AppPickerActivity;->access$000(Lcom/android/settings/AppPickerActivity;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 102
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_1

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v5, "user"

    .line 103
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_3

    .line 109
    :cond_1
    invoke-static {p1}, Lcom/android/settings/AppPickerActivity;->access$100(Lcom/android/settings/AppPickerActivity;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 112
    :try_start_0
    invoke-virtual {p1}, Lcom/android/settings/AppPickerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v6, 0x1000

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 114
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v5, :cond_2

    goto :goto_3

    .line 117
    :cond_2
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v5, v4

    move v6, v0

    :goto_1
    if-ge v6, v5, :cond_4

    aget-object v7, v4, v6

    .line 118
    invoke-static {p1}, Lcom/android/settings/AppPickerActivity;->access$100(Lcom/android/settings/AppPickerActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    move v4, v0

    :goto_2
    if-nez v4, :cond_5

    goto :goto_3

    .line 131
    :cond_5
    new-instance v4, Lcom/android/settings/AppPickerActivity$MyApplicationInfo;

    invoke-direct {v4, p1}, Lcom/android/settings/AppPickerActivity$MyApplicationInfo;-><init>(Lcom/android/settings/AppPickerActivity;)V

    .line 132
    iput-object v3, v4, Lcom/android/settings/AppPickerActivity$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    .line 133
    iget-object v3, v4, Lcom/android/settings/AppPickerActivity$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Lcom/android/settings/AppPickerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/android/settings/AppPickerActivity$MyApplicationInfo;->label:Ljava/lang/CharSequence;

    .line 134
    iget-object v3, p0, Lcom/android/settings/AppPickerActivity$AppListAdapter;->mPackageInfoList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :catch_0
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    :cond_6
    iget-object v1, p0, Lcom/android/settings/AppPickerActivity$AppListAdapter;->mPackageInfoList:Ljava/util/List;

    invoke-static {}, Lcom/android/settings/AppPickerActivity;->access$200()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 137
    new-instance v1, Lcom/android/settings/AppPickerActivity$MyApplicationInfo;

    invoke-direct {v1, p1}, Lcom/android/settings/AppPickerActivity$MyApplicationInfo;-><init>(Lcom/android/settings/AppPickerActivity;)V

    const p1, 0x7f120d53

    .line 138
    invoke-virtual {p2, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v1, Lcom/android/settings/AppPickerActivity$MyApplicationInfo;->label:Ljava/lang/CharSequence;

    .line 139
    iget-object p1, p0, Lcom/android/settings/AppPickerActivity$AppListAdapter;->mPackageInfoList:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 140
    iget-object p1, p0, Lcom/android/settings/AppPickerActivity$AppListAdapter;->mPackageInfoList:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings/AppPickerActivity$AppListAdapter;->addAll(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 147
    iget-object p2, p0, Lcom/android/settings/AppPickerActivity$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0168

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0a04a4

    .line 148
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lsmartisanos/widget/SettingItemCheck;

    .line 149
    iget v1, p0, Lcom/android/settings/AppPickerActivity$AppListAdapter;->mIconSize:I

    invoke-static {p3, v1, v1}, Lcom/android/settings/Utils;->setItemIconSize(Lsmartisanos/widget/ListContentItem;II)V

    .line 150
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lsmartisanos/widget/SettingItemCheck;

    .line 154
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/AppPickerActivity$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/AppPickerActivity$MyApplicationInfo;

    .line 155
    iget-object v2, v1, Lcom/android/settings/AppPickerActivity$MyApplicationInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {p3, v2}, Lsmartisanos/widget/SettingItemCheck;->setTitle(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v2, v1, Lcom/android/settings/AppPickerActivity$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_1

    .line 157
    iget-object v0, v1, Lcom/android/settings/AppPickerActivity$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/android/settings/AppPickerActivity$AppListAdapter;->this$0:Lcom/android/settings/AppPickerActivity;

    invoke-virtual {v2}, Lcom/android/settings/AppPickerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3, v0}, Lsmartisanos/widget/SettingItemCheck;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 158
    iget-object v0, v1, Lcom/android/settings/AppPickerActivity$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lsmartisanos/widget/SettingItemCheck;->setSummary(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, v1, Lcom/android/settings/AppPickerActivity$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/AppPickerActivity$AppListAdapter;->this$0:Lcom/android/settings/AppPickerActivity;

    invoke-static {v1}, Lcom/android/settings/AppPickerActivity;->access$300(Lcom/android/settings/AppPickerActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p3, v0}, Lsmartisanos/widget/SettingItemCheck;->setChecked(Z)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 161
    invoke-virtual {p3, v1}, Lsmartisanos/widget/SettingItemCheck;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 162
    invoke-virtual {p3, v1}, Lsmartisanos/widget/SettingItemCheck;->setSummary(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v1, p0, Lcom/android/settings/AppPickerActivity$AppListAdapter;->this$0:Lcom/android/settings/AppPickerActivity;

    invoke-static {v1}, Lcom/android/settings/AppPickerActivity;->access$300(Lcom/android/settings/AppPickerActivity;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {p3, v0}, Lsmartisanos/widget/SettingItemCheck;->setChecked(Z)V

    .line 165
    :goto_1
    iget-object p0, p0, Lcom/android/settings/AppPickerActivity$AppListAdapter;->mPackageInfoList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p3, p0, p1}, Lcom/android/settings/Utils;->setItemBgStyle(Lsmartisanos/widget/ListContentItem;II)V

    return-object p2
.end method
