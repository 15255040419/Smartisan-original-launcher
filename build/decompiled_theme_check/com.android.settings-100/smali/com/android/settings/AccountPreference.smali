.class public Lcom/android/settings/AccountPreference;
.super Landroid/preference/Preference;
.source "AccountPreference.java"


# static fields
.field public static final SYNC_DISABLED:I = 0x1

.field public static final SYNC_ENABLED:I = 0x0

.field public static final SYNC_ERROR:I = 0x2

.field public static final SYNC_IN_PROGRESS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AccountPreference"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAuthorities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBgId:I

.field private mShowTypeIcon:Z

.field private mStatus:I

.field private mSyncStatusIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/accounts/Account;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 56
    iput-object p2, p0, Lcom/android/settings/AccountPreference;->mAccount:Landroid/accounts/Account;

    .line 57
    iput-object p4, p0, Lcom/android/settings/AccountPreference;->mAuthorities:Ljava/util/ArrayList;

    .line 58
    iput-boolean p5, p0, Lcom/android/settings/AccountPreference;->mShowTypeIcon:Z

    const/4 p1, 0x1

    if-eqz p5, :cond_0

    .line 60
    invoke-virtual {p0, p3}, Lcom/android/settings/AccountPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 62
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/AccountPreference;->getSyncStatusIcon(I)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/settings/AccountPreference;->setIcon(I)V

    .line 64
    :goto_0
    iget-object p2, p0, Lcom/android/settings/AccountPreference;->mAccount:Landroid/accounts/Account;

    iget-object p2, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/android/settings/AccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    const-string p2, ""

    .line 65
    invoke-virtual {p0, p2}, Lcom/android/settings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    .line 66
    invoke-virtual {p0, p2}, Lcom/android/settings/AccountPreference;->setPersistent(Z)V

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/AccountPreference;->setSyncStatus(IZ)V

    return-void
.end method

.method private getSyncContentDescription(I)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    const v1, 0x7f120093

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sync status: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AccountPreference"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f120094

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 164
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 162
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f120091

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 160
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f120092

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSyncStatusIcon(I)I
    .locals 2

    const p0, 0x7f080241

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown sync status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AccountPreference"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const p0, 0x7f08023e

    goto :goto_0

    :cond_1
    const p0, 0x7f08023c

    :cond_2
    :goto_0
    return p0
.end method

.method private getSyncStatusMessage(I)I
    .locals 2

    const p0, 0x7f121465

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown sync status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AccountPreference"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const p0, 0x7f121468

    goto :goto_0

    :cond_1
    const p0, 0x7f121463

    goto :goto_0

    :cond_2
    const p0, 0x7f121464

    :cond_3
    :goto_0
    return p0
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/settings/AccountPreference;->mAccount:Landroid/accounts/Account;

    return-object p0
.end method

.method public getAuthorities()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object p0, p0, Lcom/android/settings/AccountPreference;->mAuthorities:Ljava/util/ArrayList;

    return-object p0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3

    .line 89
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f0a0576

    .line 90
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/SettingItemText;

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/AccountPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lsmartisanos/widget/SettingItemText;->setTitle(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/AccountPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lsmartisanos/widget/SettingItemText;->setSummary(Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 94
    invoke-static {}, Lsmartisanos/api/TextViewSmt;->getInstance()Lsmartisanos/api/TextViewSmt;

    move-result-object v1

    invoke-virtual {p1}, Lsmartisanos/widget/SettingItemText;->getSummaryView()Landroid/widget/TextView;

    move-result-object v2

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Lsmartisanos/api/TextViewSmt;->setMaxTextSize(Landroid/widget/TextView;F)V

    .line 95
    iget-boolean v0, p0, Lcom/android/settings/AccountPreference;->mShowTypeIcon:Z

    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p1}, Lsmartisanos/widget/SettingItemText;->getIconView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    .line 97
    iget v0, p0, Lcom/android/settings/AccountPreference;->mStatus:I

    invoke-direct {p0, v0}, Lcom/android/settings/AccountPreference;->getSyncStatusIcon(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lsmartisanos/widget/SettingItemText;->setIcon(I)V

    .line 98
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings/AccountPreference;->mStatus:I

    invoke-direct {p0, v1}, Lcom/android/settings/AccountPreference;->getSyncContentDescription(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 100
    :cond_0
    iget v0, p0, Lcom/android/settings/AccountPreference;->mBgId:I

    invoke-virtual {p1, v0}, Lsmartisanos/widget/SettingItemText;->setBackgroundStyle(I)V

    .line 101
    iget p0, p0, Lcom/android/settings/AccountPreference;->mBgId:I

    invoke-static {p1, p0}, Lcom/android/settings/Utils;->setItemBottomPaddingGap(Lsmartisanos/widget/ListContentItem;I)V

    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0d016e

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public setBackgroundId(I)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/android/settings/AccountPreference;->mBgId:I

    return-void
.end method

.method public setSyncStatus(IZ)V
    .locals 2

    .line 105
    iput p1, p0, Lcom/android/settings/AccountPreference;->mStatus:I

    .line 106
    iget-boolean v0, p0, Lcom/android/settings/AccountPreference;->mShowTypeIcon:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 107
    invoke-direct {p0, p1}, Lcom/android/settings/AccountPreference;->getSyncStatusIcon(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings/AccountPreference;->mStatus:I

    invoke-direct {p0, v1}, Lcom/android/settings/AccountPreference;->getSyncContentDescription(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 111
    invoke-direct {p0, p1}, Lcom/android/settings/AccountPreference;->getSyncStatusMessage(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/AccountPreference;->setSummary(I)V

    :cond_1
    return-void
.end method
