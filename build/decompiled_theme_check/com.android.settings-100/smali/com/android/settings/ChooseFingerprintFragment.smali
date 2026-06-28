.class public Lcom/android/settings/ChooseFingerprintFragment;
.super Lcom/android/settings/SupportFragment;
.source "ChooseFingerprintFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final EXTRA_PKG:Ljava/lang/String; = "extra_pkg"


# instance fields
.field private mChooseFpTipsView:Landroid/view/View;

.field private mCurrentSetupFpId:I

.field private mFingerprintList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation
.end field

.field private mFingerprintManageContainer:Landroid/widget/LinearLayout;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mTargetPkg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/android/settings/SupportFragment;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/android/settings/ChooseFingerprintFragment;->mCurrentSetupFpId:I

    return-void
.end method

.method private getQuickAppOfFingerprintId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/ChooseFingerprintFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    iget-object p0, p0, Lcom/android/settings/ChooseFingerprintFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getQuickAppOfFingerprintId, key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " , value = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private updateFingerprintManageView()V
    .locals 13

    .line 95
    iget-object v0, p0, Lcom/android/settings/ChooseFingerprintFragment;->mFingerprintManageContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 97
    iget-object v0, p0, Lcom/android/settings/ChooseFingerprintFragment;->_mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    const v2, 0x7f0d0168

    invoke-static {v0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0a04a4

    .line 98
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lsmartisanos/widget/SettingItemCheck;

    const v5, 0x7f121596

    .line 99
    invoke-virtual {v4, v5}, Lsmartisanos/widget/SettingItemCheck;->setTitle(I)V

    const/4 v5, 0x0

    .line 100
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lsmartisanos/widget/SettingItemCheck;->setTag(Ljava/lang/Object;)V

    .line 101
    iget v6, p0, Lcom/android/settings/ChooseFingerprintFragment;->mCurrentSetupFpId:I

    const/4 v7, 0x1

    if-nez v6, :cond_0

    move v6, v7

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    invoke-virtual {v4, v6}, Lsmartisanos/widget/SettingItemCheck;->setChecked(Z)V

    .line 102
    invoke-virtual {v4, p0}, Lsmartisanos/widget/SettingItemCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v6, p0, Lcom/android/settings/ChooseFingerprintFragment;->mFingerprintList:Ljava/util/List;

    if-nez v6, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    :goto_1
    add-int/lit8 v8, v6, 0x1

    .line 105
    invoke-static {v4, v8, v5}, Lcom/android/settings/Utils;->setItemBgStyle(Lsmartisanos/widget/ListContentItem;II)V

    .line 106
    iget-object v4, p0, Lcom/android/settings/ChooseFingerprintFragment;->mFingerprintManageContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move v0, v5

    :goto_2
    if-ge v0, v6, :cond_5

    .line 109
    iget-object v4, p0, Lcom/android/settings/ChooseFingerprintFragment;->mFingerprintList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/Fingerprint;

    .line 110
    iget-object v9, p0, Lcom/android/settings/ChooseFingerprintFragment;->_mActivity:Landroid/app/Activity;

    invoke-static {v9, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 111
    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lsmartisanos/widget/SettingItemCheck;

    .line 112
    invoke-static {v4}, Lcom/android/settings/InvisibleApi;->getFingerId(Landroid/hardware/fingerprint/Fingerprint;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lsmartisanos/widget/SettingItemCheck;->setTag(Ljava/lang/Object;)V

    .line 113
    invoke-virtual {v4}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Lsmartisanos/widget/SettingItemCheck;->setTitle(Ljava/lang/CharSequence;)V

    .line 114
    invoke-static {v4}, Lcom/android/settings/InvisibleApi;->getFingerId(Landroid/hardware/fingerprint/Fingerprint;)I

    move-result v11

    iget v12, p0, Lcom/android/settings/ChooseFingerprintFragment;->mCurrentSetupFpId:I

    if-ne v11, v12, :cond_2

    move v11, v7

    goto :goto_3

    :cond_2
    move v11, v5

    :goto_3
    invoke-virtual {v10, v11}, Lsmartisanos/widget/SettingItemCheck;->setChecked(Z)V

    .line 116
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "quick_app_via_fingerprint_id_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/settings/InvisibleApi;->getFingerId(Landroid/hardware/fingerprint/Fingerprint;)I

    move-result v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 117
    invoke-direct {p0, v4}, Lcom/android/settings/ChooseFingerprintFragment;->getQuickAppOfFingerprintId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 119
    iget-object v11, p0, Lcom/android/settings/ChooseFingerprintFragment;->mTargetPkg:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 120
    invoke-virtual {v10, v5}, Lsmartisanos/widget/SettingItemCheck;->setEnabled(Z)V

    const-string v11, "com.eg.android.AlipayGphone"

    .line 121
    invoke-virtual {v4, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    const v4, 0x7f120e52

    .line 122
    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseFingerprintFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Lsmartisanos/widget/SettingItemCheck;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_3
    const-string v11, "com.tencent.mm"

    .line 123
    invoke-virtual {v4, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const v4, 0x7f120e53

    .line 124
    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseFingerprintFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Lsmartisanos/widget/SettingItemCheck;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 128
    invoke-static {v10, v8, v0}, Lcom/android/settings/Utils;->setItemBgStyle(Lsmartisanos/widget/ListContentItem;II)V

    .line 129
    invoke-virtual {v10, p0}, Lsmartisanos/widget/SettingItemCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v4, p0, Lcom/android/settings/ChooseFingerprintFragment;->mFingerprintManageContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 133
    :cond_5
    iget-object p0, p0, Lcom/android/settings/ChooseFingerprintFragment;->mFingerprintManageContainer:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lcom/android/settings/Utils;->inflateGapView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private updateTipsView()V
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/android/settings/ChooseFingerprintFragment;->mTargetPkg:Ljava/lang/String;

    const-string v1, "com.tencent.mm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/ChooseFingerprintFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v0

    .line 68
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 69
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    .line 74
    :goto_0
    iget-object p0, p0, Lcom/android/settings/ChooseFingerprintFragment;->mChooseFpTipsView:Landroid/view/View;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 81
    iget-object v0, p0, Lcom/android/settings/ChooseFingerprintFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "click tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget v0, p0, Lcom/android/settings/ChooseFingerprintFragment;->mCurrentSetupFpId:I

    const-string/jumbo v1, "quick_app_via_fingerprint_id_"

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/ChooseFingerprintFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/settings/ChooseFingerprintFragment;->mCurrentSetupFpId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    if-eqz p1, :cond_1

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/ChooseFingerprintFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "payment/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/ChooseFingerprintFragment;->mTargetPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ChooseFingerprintFragment;->finish()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0088

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ChooseFingerprintFragment;->mRootView:Landroid/view/View;

    const-string p1, "fingerprint"

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/settings/ChooseFingerprintFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p1, p0, Lcom/android/settings/ChooseFingerprintFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const p1, 0x7f0a02ec

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/settings/ChooseFingerprintFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/settings/ChooseFingerprintFragment;->mFingerprintManageContainer:Landroid/widget/LinearLayout;

    const p1, 0x7f0a01a4

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/settings/ChooseFingerprintFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ChooseFingerprintFragment;->mChooseFpTipsView:Landroid/view/View;

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/ChooseFingerprintFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "extra_pkg"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ChooseFingerprintFragment;->mTargetPkg:Ljava/lang/String;

    .line 41
    iget-object p1, p0, Lcom/android/settings/ChooseFingerprintFragment;->mTargetPkg:Ljava/lang/String;

    const-string p2, "com.eg.android.AlipayGphone"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/ChooseFingerprintFragment;->mTargetPkg:Ljava/lang/String;

    const-string p2, "com.tencent.mm"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/ChooseFingerprintFragment;->finish()V

    .line 45
    :cond_0
    iget-object p0, p0, Lcom/android/settings/ChooseFingerprintFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public onSupportVisible()V
    .locals 4

    .line 50
    invoke-super {p0}, Lcom/android/settings/SupportFragment;->onSupportVisible()V

    .line 52
    invoke-direct {p0}, Lcom/android/settings/ChooseFingerprintFragment;->updateTipsView()V

    .line 53
    iget-object v0, p0, Lcom/android/settings/ChooseFingerprintFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ChooseFingerprintFragment;->mFingerprintList:Ljava/util/List;

    .line 54
    iget-object v0, p0, Lcom/android/settings/ChooseFingerprintFragment;->mFingerprintList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "quick_app_via_fingerprint_id_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/settings/InvisibleApi;->getFingerId(Landroid/hardware/fingerprint/Fingerprint;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-direct {p0, v2}, Lcom/android/settings/ChooseFingerprintFragment;->getQuickAppOfFingerprintId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 57
    iget-object v3, p0, Lcom/android/settings/ChooseFingerprintFragment;->mTargetPkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    invoke-static {v1}, Lcom/android/settings/InvisibleApi;->getFingerId(Landroid/hardware/fingerprint/Fingerprint;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseFingerprintFragment;->mCurrentSetupFpId:I

    goto :goto_0

    .line 61
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/ChooseFingerprintFragment;->updateFingerprintManageView()V

    return-void
.end method
