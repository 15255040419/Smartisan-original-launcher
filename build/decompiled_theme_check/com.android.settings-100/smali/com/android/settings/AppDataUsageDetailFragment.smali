.class public Lcom/android/settings/AppDataUsageDetailFragment;
.super Lcom/android/settings/SupportFragment;
.source "AppDataUsageDetailFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAllowMobileDataSwitch:Lsmartisanos/widget/ListContentItemSwitch;

.field private mAllowNetBgSwitch:Lsmartisanos/widget/ListContentItemSwitch;

.field private mAppUid:I

.field private mDataUsageStatHelper:Lcom/android/settings/utils/DataUsageStatHelper;

.field private mMonthUsageView:Landroid/widget/TextView;

.field private mNpm:Landroid/net/NetworkPolicyManager;

.field private mPackageName:Ljava/lang/String;

.field private mPermSettingsContainer:Landroid/view/View;

.field private mToadyUsageView:Landroid/widget/TextView;

.field private mWeekUsageView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/android/settings/SupportFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AppDataUsageDetailFragment;Lcom/android/settings/utils/DataUsageStatHelper$AppDataUsageInfo;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/android/settings/AppDataUsageDetailFragment;->refreshDataUsageSummary(Lcom/android/settings/utils/DataUsageStatHelper$AppDataUsageInfo;)V

    return-void
.end method

.method private isPermManagerEnable()Z
    .locals 1

    .line 125
    invoke-static {}, Lsmartisanos/api/SmtOpsManagerSmt;->getInstance()Lsmartisanos/api/SmtOpsManagerSmt;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lsmartisanos/api/SmtOpsManagerSmt;->getEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private refreshDataUsageAsync()V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mDataUsageStatHelper:Lcom/android/settings/utils/DataUsageStatHelper;

    iget v1, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mAppUid:I

    new-instance v2, Lcom/android/settings/AppDataUsageDetailFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings/AppDataUsageDetailFragment$1;-><init>(Lcom/android/settings/AppDataUsageDetailFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/utils/DataUsageStatHelper;->forceUpdateAsync(ILcom/android/settings/utils/DataUsageStatHelper$Callback;)V

    return-void
.end method

.method private refreshDataUsageSummary(Lcom/android/settings/utils/DataUsageStatHelper$AppDataUsageInfo;)V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mContext:Landroid/content/Context;

    iget-wide v1, p1, Lcom/android/settings/utils/DataUsageStatHelper$AppDataUsageInfo;->todayTotal:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mToadyUsageView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mContext:Landroid/content/Context;

    iget-wide v1, p1, Lcom/android/settings/utils/DataUsageStatHelper$AppDataUsageInfo;->weekTotal:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mWeekUsageView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mContext:Landroid/content/Context;

    iget-wide v1, p1, Lcom/android/settings/utils/DataUsageStatHelper$AppDataUsageInfo;->monthTotal:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    .line 121
    iget-object p0, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mMonthUsageView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private refreshUi()V
    .locals 5

    .line 71
    invoke-static {}, Lsmartisanos/api/SmtOpsManagerSmt;->getInstance()Lsmartisanos/api/SmtOpsManagerSmt;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mAppUid:I

    iget-object v3, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mPackageName:Ljava/lang/String;

    const/16 v4, 0x10

    invoke-virtual {v0, v1, v4, v2, v3}, Lsmartisanos/api/SmtOpsManagerSmt;->checkOp(Landroid/content/Context;IILjava/lang/String;)I

    move-result v0

    .line 72
    iget-object v1, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mAllowMobileDataSwitch:Lsmartisanos/widget/ListContentItemSwitch;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {v1, v0}, Lsmartisanos/widget/ListContentItemSwitch;->setChecked(Z)V

    .line 74
    iget-object v0, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mNpm:Landroid/net/NetworkPolicyManager;

    iget v1, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mAppUid:I

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    .line 75
    :goto_1
    iget-object v1, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mAllowNetBgSwitch:Lsmartisanos/widget/ListContentItemSwitch;

    xor-int/2addr v0, v3

    invoke-virtual {v1, v0}, Lsmartisanos/widget/ListContentItemSwitch;->setChecked(Z)V

    .line 76
    invoke-direct {p0}, Lcom/android/settings/AppDataUsageDetailFragment;->isPermManagerEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    iget-object v0, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mAllowMobileDataSwitch:Lsmartisanos/widget/ListContentItemSwitch;

    invoke-virtual {v0, v3}, Lsmartisanos/widget/ListContentItemSwitch;->setEnabled(Z)V

    .line 78
    iget-object v0, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mAllowNetBgSwitch:Lsmartisanos/widget/ListContentItemSwitch;

    invoke-virtual {v0, v3}, Lsmartisanos/widget/ListContentItemSwitch;->setEnabled(Z)V

    goto :goto_2

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mAllowMobileDataSwitch:Lsmartisanos/widget/ListContentItemSwitch;

    invoke-virtual {v0, v2}, Lsmartisanos/widget/ListContentItemSwitch;->setEnabled(Z)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mAllowNetBgSwitch:Lsmartisanos/widget/ListContentItemSwitch;

    invoke-virtual {v0, v2}, Lsmartisanos/widget/ListContentItemSwitch;->setEnabled(Z)V

    .line 84
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/AppDataUsageDetailFragment;->refreshDataUsageAsync()V

    return-void
.end method

.method private retrieveAppEntry()V
    .locals 3

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/AppDataUsageDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "package"

    .line 89
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mPackageName:Ljava/lang/String;

    .line 90
    iget-object v1, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mPackageName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/AppDataUsageDetailFragment;->finish()V

    return-void

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->getAppUid(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string v2, "UID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mAppUid:I

    .line 95
    iget v0, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mAppUid:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/AppDataUsageDetailFragment;->finish()V

    :cond_1
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7

    .line 130
    iget-object v0, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mAllowMobileDataSwitch:Lsmartisanos/widget/ListContentItemSwitch;

    invoke-virtual {v0}, Lsmartisanos/widget/ListContentItemSwitch;->getSwitch()Lsmartisanos/widget/SwitchEx;

    move-result-object v0

    if-ne v0, p1, :cond_0

    xor-int/lit8 p2, p2, 0x1

    .line 132
    invoke-static {}, Lsmartisanos/api/SmtOpsManagerSmt;->getInstance()Lsmartisanos/api/SmtOpsManagerSmt;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x10

    iget v3, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mAppUid:I

    iget-object v4, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lsmartisanos/api/SmtOpsManagerSmt;->checkOp(Landroid/content/Context;IILjava/lang/String;)I

    move-result v0

    if-eq p2, v0, :cond_2

    .line 134
    invoke-static {}, Lsmartisanos/api/SmtOpsManagerSmt;->getInstance()Lsmartisanos/api/SmtOpsManagerSmt;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x10

    iget v4, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mAppUid:I

    iget-object v5, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mPackageName:Ljava/lang/String;

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lsmartisanos/api/SmtOpsManagerSmt;->setMode(Landroid/content/Context;IILjava/lang/String;I)V

    .line 136
    iget-object p1, p0, Lcom/android/settings/AppDataUsageDetailFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CurrentUid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mAppUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "CurrentPackName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "mode :"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mAllowNetBgSwitch:Lsmartisanos/widget/ListContentItemSwitch;

    invoke-virtual {v0}, Lsmartisanos/widget/ListContentItemSwitch;->getSwitch()Lsmartisanos/widget/SwitchEx;

    move-result-object v0

    if-ne v0, p1, :cond_2

    if-eqz p2, :cond_1

    .line 140
    iget-object p1, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mNpm:Landroid/net/NetworkPolicyManager;

    iget p0, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mAppUid:I

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    goto :goto_0

    .line 142
    :cond_1
    iget-object p1, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mNpm:Landroid/net/NetworkPolicyManager;

    iget p0, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mAppUid:I

    const/4 p2, 0x4

    invoke-virtual {p1, p0, p2}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0041

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mRootView:Landroid/view/View;

    .line 39
    iget-object p1, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mNpm:Landroid/net/NetworkPolicyManager;

    .line 41
    iget-object p1, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/utils/DataUsageStatHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/utils/DataUsageStatHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mDataUsageStatHelper:Lcom/android/settings/utils/DataUsageStatHelper;

    const p1, 0x7f0a03aa

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/settings/AppDataUsageDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mToadyUsageView:Landroid/widget/TextView;

    const p1, 0x7f0a03ab

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/settings/AppDataUsageDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mWeekUsageView:Landroid/widget/TextView;

    const p1, 0x7f0a03a9

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/settings/AppDataUsageDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mMonthUsageView:Landroid/widget/TextView;

    const p1, 0x7f0a0400

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/settings/AppDataUsageDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mPermSettingsContainer:Landroid/view/View;

    const p1, 0x7f0a03ac

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/settings/AppDataUsageDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/ListContentItemSwitch;

    iput-object p1, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mAllowMobileDataSwitch:Lsmartisanos/widget/ListContentItemSwitch;

    .line 47
    iget-object p1, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mAllowMobileDataSwitch:Lsmartisanos/widget/ListContentItemSwitch;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/ListContentItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const p1, 0x7f0a0451

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/settings/AppDataUsageDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/ListContentItemSwitch;

    iput-object p1, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mAllowNetBgSwitch:Lsmartisanos/widget/ListContentItemSwitch;

    .line 49
    iget-object p1, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mAllowNetBgSwitch:Lsmartisanos/widget/ListContentItemSwitch;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/ListContentItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 51
    invoke-direct {p0}, Lcom/android/settings/AppDataUsageDetailFragment;->retrieveAppEntry()V

    .line 52
    iget-object p1, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mRootView:Landroid/view/View;

    iget-object p2, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mPackageName:Ljava/lang/String;

    iget p3, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mAppUid:I

    invoke-static {p1, p2, p3}, Lcom/android/settings/Utils;->setAppLabelAndIconViews(Landroid/view/View;Ljava/lang/String;I)V

    .line 54
    iget-object p1, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mPackageName:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/android/settings/Utils;->isSystemPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 55
    iget-object p1, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mPermSettingsContainer:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 57
    :cond_0
    iget-object p0, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public onSupportVisible()V
    .locals 2

    .line 62
    invoke-super {p0}, Lcom/android/settings/SupportFragment;->onSupportVisible()V

    .line 63
    iget-object v0, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/AppDataUsageDetailFragment;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/android/settings/AppDataUsageDetailFragment;->refreshUi()V

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/AppDataUsageDetailFragment;->finish()V

    :goto_0
    return-void
.end method
