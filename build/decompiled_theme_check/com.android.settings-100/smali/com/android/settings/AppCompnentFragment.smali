.class public Lcom/android/settings/AppCompnentFragment;
.super Lcom/android/settings/SupportFragment;
.source "AppCompnentFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AppCompnentFragment$AppListAdapter;,
        Lcom/android/settings/AppCompnentFragment$MyApplicationInfo;
    }
.end annotation


# static fields
.field private static final KEY_SMARTISAN_DEVELOPMENT_COMPONENT:Ljava/lang/String; = "smartisan_development_activity"

.field private static final sDisplayNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/AppCompnentFragment$MyApplicationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapter:Lcom/android/settings/AppCompnentFragment$AppListAdapter;

.field private mEmptyView:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 136
    new-instance v0, Lcom/android/settings/AppCompnentFragment$1;

    invoke-direct {v0}, Lcom/android/settings/AppCompnentFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/AppCompnentFragment;->sDisplayNameComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/settings/SupportFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Comparator;
    .locals 1

    .line 33
    sget-object v0, Lcom/android/settings/AppCompnentFragment;->sDisplayNameComparator:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 p3, 0x0

    const v0, 0x7f0d0043

    .line 43
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/AppCompnentFragment;->mRootView:Landroid/view/View;

    const p1, 0x7f0a05f7

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/settings/AppCompnentFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/android/settings/AppCompnentFragment;->mListView:Landroid/widget/ListView;

    const p1, 0x7f0a0a05

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/settings/AppCompnentFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/AppCompnentFragment;->mEmptyView:Landroid/view/View;

    .line 47
    new-instance p1, Lcom/android/settings/AppCompnentFragment$AppListAdapter;

    iget-object p2, p0, Lcom/android/settings/AppCompnentFragment;->_mActivity:Landroid/app/Activity;

    invoke-direct {p1, p0, p2}, Lcom/android/settings/AppCompnentFragment$AppListAdapter;-><init>(Lcom/android/settings/AppCompnentFragment;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/AppCompnentFragment;->mAdapter:Lcom/android/settings/AppCompnentFragment$AppListAdapter;

    .line 48
    iget-object p1, p0, Lcom/android/settings/AppCompnentFragment;->mAdapter:Lcom/android/settings/AppCompnentFragment$AppListAdapter;

    invoke-virtual {p1}, Lcom/android/settings/AppCompnentFragment$AppListAdapter;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 49
    iget-object p1, p0, Lcom/android/settings/AppCompnentFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 50
    iget-object p1, p0, Lcom/android/settings/AppCompnentFragment;->mListView:Landroid/widget/ListView;

    iget-object p2, p0, Lcom/android/settings/AppCompnentFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0

    .line 52
    :cond_0
    iget-object p1, p0, Lcom/android/settings/AppCompnentFragment;->mEmptyView:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 54
    :goto_0
    iget-object p1, p0, Lcom/android/settings/AppCompnentFragment;->mListView:Landroid/widget/ListView;

    iget-object p2, p0, Lcom/android/settings/AppCompnentFragment;->mAdapter:Lcom/android/settings/AppCompnentFragment$AppListAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 55
    iget-object p1, p0, Lcom/android/settings/AppCompnentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 56
    iget-object p1, p0, Lcom/android/settings/AppCompnentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, p1}, Lcom/android/settings/AppCompnentFragment;->addTransparentHeaderFooter(Landroid/widget/ListView;)V

    .line 57
    iget-object p0, p0, Lcom/android/settings/AppCompnentFragment;->mRootView:Landroid/view/View;

    return-object p0
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

    .line 151
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/AppCompnentFragment$MyApplicationInfo;

    .line 152
    iget-object p0, p0, Lcom/android/settings/AppCompnentFragment;->_mActivity:Landroid/app/Activity;

    iget-object p1, p1, Lcom/android/settings/AppCompnentFragment$MyApplicationInfo;->launchIntent:Landroid/content/Intent;

    invoke-static {p0, p1}, Lcom/android/settings/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 62
    invoke-super {p0, p1, p2}, Lcom/android/settings/SupportFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 63
    iget-object p0, p0, Lcom/android/settings/AppCompnentFragment;->mTitleView:Lsmartisanos/widget/TitleBar;

    const p1, 0x7f12063c

    invoke-virtual {p0, p1}, Lsmartisanos/widget/TitleBar;->setCenterText(I)V

    return-void
.end method
