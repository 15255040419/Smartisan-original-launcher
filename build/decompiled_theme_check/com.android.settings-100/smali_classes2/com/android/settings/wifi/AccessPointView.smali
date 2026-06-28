.class public Lcom/android/settings/wifi/AccessPointView;
.super Landroid/widget/RelativeLayout;
.source "AccessPointView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final STATE_NONE:[I

.field static final STATE_SECURED:[I


# instance fields
.field private isUseStrictLockScreen:Z

.field private mApInfo:Lcom/android/settings/wifi/AccessPointInfo;

.field private mDetailArrowView:Landroid/widget/ImageView;

.field private mItemContainer:Lsmartisanos/widget/ListContentItemCustom;

.field private mSignalView:Landroid/widget/ImageView;

.field private mSummary:Landroid/widget/TextView;

.field private mSummaryVS:Landroid/view/ViewStub;

.field private mTitleView:Landroid/widget/TextView;

.field private mTrustedLabelStub:Landroid/view/ViewStub;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f040186

    aput v2, v0, v1

    .line 28
    sput-object v0, Lcom/android/settings/wifi/AccessPointView;->STATE_SECURED:[I

    new-array v0, v1, [I

    .line 33
    sput-object v0, Lcom/android/settings/wifi/AccessPointView;->STATE_NONE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/AccessPointView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/wifi/AccessPointView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0345

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x10

    .line 58
    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/AccessPointView;->setGravity(I)V

    const p2, 0x7f0a0097

    .line 59
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/settings/wifi/AccessPointView;->mTitleView:Landroid/widget/TextView;

    const p2, 0x7f0a08c9

    .line 60
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewStub;

    iput-object p2, p0, Lcom/android/settings/wifi/AccessPointView;->mSummaryVS:Landroid/view/ViewStub;

    const p2, 0x7f0a0843

    .line 61
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/settings/wifi/AccessPointView;->mSignalView:Landroid/widget/ImageView;

    const p2, 0x7f0a0091

    .line 63
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/settings/wifi/AccessPointView;->mDetailArrowView:Landroid/widget/ImageView;

    .line 64
    iget-object p2, p0, Lcom/android/settings/wifi/AccessPointView;->mDetailArrowView:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a09a3

    .line 65
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewStub;

    iput-object p2, p0, Lcom/android/settings/wifi/AccessPointView;->mTrustedLabelStub:Landroid/view/ViewStub;

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/Utils;->isUseStrictLockScreen(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settings/wifi/AccessPointView;->isUseStrictLockScreen:Z

    const p2, 0x7f0a05fc

    .line 69
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/ListContentItemCustom;

    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointView;->mItemContainer:Lsmartisanos/widget/ListContentItemCustom;

    return-void
.end method

.method private parseSummary()Ljava/lang/String;
    .locals 3

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointView;->mApInfo:Lcom/android/settings/wifi/AccessPointInfo;

    iget-object v1, v1, Lcom/android/settings/wifi/AccessPointInfo;->mState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v1, :cond_1

    .line 130
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointView;->mApInfo:Lcom/android/settings/wifi/AccessPointInfo;

    iget-object v1, v1, Lcom/android/settings/wifi/AccessPointInfo;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_0

    .line 131
    sget-object p0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v0, p0}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 133
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointView;->mApInfo:Lcom/android/settings/wifi/AccessPointInfo;

    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointInfo;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v0, p0}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointView;->mApInfo:Lcom/android/settings/wifi/AccessPointInfo;

    iget v1, v1, Lcom/android/settings/wifi/AccessPointInfo;->mRssi:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_2

    const p0, 0x7f121833

    .line 136
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 138
    :cond_2
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointView;->mApInfo:Lcom/android/settings/wifi/AccessPointInfo;

    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointInfo;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p0, :cond_3

    const p0, 0x7f121855

    .line 139
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private refresh()V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointView;->mApInfo:Lcom/android/settings/wifi/AccessPointInfo;

    if-nez v0, :cond_0

    return-void

    .line 105
    :cond_0
    iget-object v0, v0, Lcom/android/settings/wifi/AccessPointInfo;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPointView;->setTitle(Ljava/lang/CharSequence;)V

    .line 106
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointView;->parseSummary()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPointView;->setSummary(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointView;->mApInfo:Lcom/android/settings/wifi/AccessPointInfo;

    iget v0, v0, Lcom/android/settings/wifi/AccessPointInfo;->mRssi:I

    const v1, 0x7fffffff

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 109
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointView;->mSignalView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointView;->mSignalView:Landroid/widget/ImageView;

    const v1, 0x7f080642

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointView;->mSignalView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointView;->mApInfo:Lcom/android/settings/wifi/AccessPointInfo;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPointInfo;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 113
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointView;->mSignalView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointView;->mApInfo:Lcom/android/settings/wifi/AccessPointInfo;

    iget v1, v1, Lcom/android/settings/wifi/AccessPointInfo;->security:I

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/settings/wifi/AccessPointView;->STATE_SECURED:[I

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/settings/wifi/AccessPointView;->STATE_NONE:[I

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setImageState([IZ)V

    .line 116
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointView;->mApInfo:Lcom/android/settings/wifi/AccessPointInfo;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPointInfo;->mState:Landroid/net/NetworkInfo$DetailedState;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointView;->mApInfo:Lcom/android/settings/wifi/AccessPointInfo;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPointInfo;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v1

    .line 117
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointView;->mDetailArrowView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointView;->mTrustedLabelStub:Landroid/view/ViewStub;

    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointView;->mApInfo:Lcom/android/settings/wifi/AccessPointInfo;

    iget-boolean v2, v2, Lcom/android/settings/wifi/AccessPointInfo;->isTrusted:Z

    if-eqz v2, :cond_5

    iget-boolean p0, p0, Lcom/android/settings/wifi/AccessPointView;->isUseStrictLockScreen:Z

    if-nez p0, :cond_5

    goto :goto_3

    :cond_5
    const/16 v1, 0x8

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public bindData(Lcom/android/settings/wifi/AccessPointInfo;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointView;->mApInfo:Lcom/android/settings/wifi/AccessPointInfo;

    .line 74
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointView;->refresh()V

    return-void
.end method

.method public getSummaryView()Landroid/widget/TextView;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointView;->mSummary:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointView;->mSummaryVS:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointView;->mSummary:Landroid/widget/TextView;

    .line 85
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointView;->mSummary:Landroid/widget/TextView;

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0091

    if-ne p1, v0, :cond_1

    .line 148
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 149
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointView;->mApInfo:Lcom/android/settings/wifi/AccessPointInfo;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPointInfo;->mConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v1, "extra_wifi_configuration"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointView;->mApInfo:Lcom/android/settings/wifi/AccessPointInfo;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPointInfo;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    const-string v1, "extra_psk_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 151
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointView;->mApInfo:Lcom/android/settings/wifi/AccessPointInfo;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPointInfo;->mInfo:Landroid/net/wifi/WifiInfo;

    const-string v1, "extra_wifi_info"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 152
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointView;->mApInfo:Lcom/android/settings/wifi/AccessPointInfo;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPointInfo;->mState:Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "extra_detailed_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const v0, 0x7f121895

    const-string v1, "back_text_id"

    .line 153
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SupportActivity;

    if-eqz v0, :cond_0

    .line 155
    new-instance v0, Lcom/android/settings/wifi/AccessPointDetailFragment;

    invoke-direct {v0}, Lcom/android/settings/wifi/AccessPointDetailFragment;-><init>()V

    .line 156
    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/AccessPointDetailFragment;->setArguments(Landroid/os/Bundle;)V

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointView;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/settings/SupportActivity;

    invoke-virtual {p0, v0}, Lcom/android/settings/SupportActivity;->start(Lme/yokeyword/fragmentation/ISupportFragment;)V

    goto :goto_0

    .line 159
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/settings/Settings$AccessPointDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 161
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setBackgroundStyle(I)V
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointView;->mItemContainer:Lsmartisanos/widget/ListContentItemCustom;

    if-nez p0, :cond_0

    return-void

    .line 171
    :cond_0
    invoke-virtual {p0, p1}, Lsmartisanos/widget/ListContentItemCustom;->setBackgroundStyle(I)V

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 2

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointView;->getSummaryView()Landroid/widget/TextView;

    .line 90
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointView;->mSummary:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointView;->mSummary:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    :goto_0
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointView;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/settings/wifi/AccessPointView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
