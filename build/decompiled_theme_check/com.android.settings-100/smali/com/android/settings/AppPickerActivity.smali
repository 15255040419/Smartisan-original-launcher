.class public Lcom/android/settings/AppPickerActivity;
.super Lcom/android/settings/BaseActivity;
.source "AppPickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AppPickerActivity$AppListAdapter;,
        Lcom/android/settings/AppPickerActivity$MyApplicationInfo;
    }
.end annotation


# static fields
.field public static final EXTRA_DEBUGGABLE:Ljava/lang/String; = "com.android.settings.extra.DEBUGGABLE"

.field public static final EXTRA_REQUESTIING_PERMISSION:Ljava/lang/String; = "com.android.settings.extra.REQUESTIING_PERMISSION"

.field public static final SELECTED_APP:Ljava/lang/String; = "com.android.settings.extra.SELECTED_APP"

.field private static final sDisplayNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/AppPickerActivity$MyApplicationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapter:Lcom/android/settings/AppPickerActivity$AppListAdapter;

.field private mDebugPackage:Ljava/lang/String;

.field private mDebuggableOnly:Z

.field private mListView:Landroid/widget/ListView;

.field private mPermissionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 170
    new-instance v0, Lcom/android/settings/AppPickerActivity$1;

    invoke-direct {v0}, Lcom/android/settings/AppPickerActivity$1;-><init>()V

    sput-object v0, Lcom/android/settings/AppPickerActivity;->sDisplayNameComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/settings/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AppPickerActivity;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/android/settings/AppPickerActivity;->mDebuggableOnly:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings/AppPickerActivity;)Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/settings/AppPickerActivity;->mPermissionName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200()Ljava/util/Comparator;
    .locals 1

    .line 43
    sget-object v0, Lcom/android/settings/AppPickerActivity;->sDisplayNameComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/AppPickerActivity;)Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/settings/AppPickerActivity;->mDebugPackage:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0050

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/settings/AppPickerActivity;->setContentView(I)V

    const p1, 0x7f0a05f7

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/settings/AppPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/android/settings/AppPickerActivity;->mListView:Landroid/widget/ListView;

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/AppPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.android.settings.extra.SELECTED_APP"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/AppPickerActivity;->mDebugPackage:Ljava/lang/String;

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/AppPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.android.settings.extra.REQUESTIING_PERMISSION"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/AppPickerActivity;->mPermissionName:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/AppPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.android.settings.extra.DEBUGGABLE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/AppPickerActivity;->mDebuggableOnly:Z

    .line 65
    new-instance p1, Lcom/android/settings/AppPickerActivity$AppListAdapter;

    invoke-direct {p1, p0, p0}, Lcom/android/settings/AppPickerActivity$AppListAdapter;-><init>(Lcom/android/settings/AppPickerActivity;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/AppPickerActivity;->mAdapter:Lcom/android/settings/AppPickerActivity$AppListAdapter;

    .line 66
    iget-object p1, p0, Lcom/android/settings/AppPickerActivity;->mAdapter:Lcom/android/settings/AppPickerActivity$AppListAdapter;

    invoke-virtual {p1}, Lcom/android/settings/AppPickerActivity$AppListAdapter;->getCount()I

    move-result p1

    if-gtz p1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/AppPickerActivity;->finish()V

    goto :goto_0

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/android/settings/AppPickerActivity;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/settings/AppPickerActivity;->mAdapter:Lcom/android/settings/AppPickerActivity$AppListAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 72
    :goto_0
    iget-object p1, p0, Lcom/android/settings/AppPickerActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 73
    iget-object p1, p0, Lcom/android/settings/AppPickerActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, p1}, Lcom/android/settings/AppPickerActivity;->addTransparentHeaderFooter(Landroid/widget/ListView;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/AppPickerActivity;->setupBackBtnOnTitle()Lsmartisanos/widget/TitleBar;

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-wide/16 v0, -0x1

    cmp-long p2, p4, v0

    if-nez p2, :cond_0

    return-void

    .line 185
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/AppPickerActivity$MyApplicationInfo;

    .line 186
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 187
    iget-object p3, p1, Lcom/android/settings/AppPickerActivity$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz p3, :cond_1

    .line 188
    iget-object p1, p1, Lcom/android/settings/AppPickerActivity$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const/4 p1, -0x1

    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/AppPickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/AppPickerActivity;->finish()V

    return-void
.end method
