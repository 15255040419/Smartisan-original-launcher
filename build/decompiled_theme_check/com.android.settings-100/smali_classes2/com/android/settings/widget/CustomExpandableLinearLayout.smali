.class public Lcom/android/settings/widget/CustomExpandableLinearLayout;
.super Landroid/widget/LinearLayout;
.source "CustomExpandableLinearLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/CustomExpandableLinearLayout$LauncherIntentBuildTask;,
        Lcom/android/settings/widget/CustomExpandableLinearLayout$AppQueryTask;,
        Lcom/android/settings/widget/CustomExpandableLinearLayout$AppSessionCallback;,
        Lcom/android/settings/widget/CustomExpandableLinearLayout$ValueStoreListener;,
        Lcom/android/settings/widget/CustomExpandableLinearLayout$ClearCheckListener;
    }
.end annotation


# static fields
.field private static final EXPAND_TYPE_ASYNC_APP_LIST:I = 0x2

.field private static final EXPAND_TYPE_TOOL:I = 0x1

.field private static final ITEM_COUNT_SHOW_MAX:I = 0x5

.field private static final TAG:Ljava/lang/String; = "CustomExpandableLinearL"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAppCallback:Lcom/android/settings/widget/CustomExpandableLinearLayout$AppSessionCallback;

.field private mAppComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

.field private mAppsPackageNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckListener:Lcom/android/settings/widget/CustomExpandableLinearLayout$ClearCheckListener;

.field private mDefaultItemContainer:Landroid/widget/LinearLayout;

.field private mExpandType:I

.field private mIsReleased:Z

.field private mItemClickListener:Landroid/view/View$OnClickListener;

.field private mItemEntryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mItemExpandableContainer:Lcom/android/settings/widget/InnerExpandableLayout;

.field private mItemIconDefaultHeight:I

.field private mItemIconDefaultWidth:I

.field private mItemMoreOrLess:Landroid/widget/TextView;

.field private mItemShowingCount:I

.field private mItemTitleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOtherKeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mQueryAppName:Ljava/lang/String;

.field private mQueryItemTitle:Ljava/lang/String;

.field private mSelectedKey:Ljava/lang/String;

.field private mSession:Lcom/android/settings/applications/ApplicationsState$Session;

.field private mStoreListener:Lcom/android/settings/widget/CustomExpandableLinearLayout$ValueStoreListener;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/CustomExpandableLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/CustomExpandableLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mItemTitleList:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mItemEntryList:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mOtherKeyList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mItemIconDefaultWidth:I

    .line 81
    iput v0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mItemIconDefaultHeight:I

    .line 387
    new-instance v1, Lcom/android/settings/widget/CustomExpandableLinearLayout$2;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/CustomExpandableLinearLayout$2;-><init>(Lcom/android/settings/widget/CustomExpandableLinearLayout;)V

    iput-object v1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mItemClickListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x1

    .line 93
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->setOrientation(I)V

    const v2, 0x7f080075

    .line 94
    invoke-virtual {p0, v2}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->setBackgroundResource(I)V

    .line 95
    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 96
    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    iput-object v2, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mActivity:Landroid/app/Activity;

    .line 98
    :cond_0
    sget-object v2, Lcom/android/settings/R$styleable;->CustomExpandableLinearLayout:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 99
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 100
    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    .line 101
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d00b5

    invoke-virtual {p1, p2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f0a0601

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mDefaultItemContainer:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0602

    .line 105
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/InnerExpandableLayout;

    iput-object p1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mItemExpandableContainer:Lcom/android/settings/widget/InnerExpandableLayout;

    const p1, 0x7f0a09b8

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mItemMoreOrLess:Landroid/widget/TextView;

    const p1, 0x7f0a09b5

    .line 107
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mTitle:Landroid/widget/TextView;

    .line 108
    iget-object p1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mItemMoreOrLess:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iput v0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mExpandType:I

    .line 111
    iget-object p1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 112
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 113
    iget-object p1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :cond_1
    iget p1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mExpandType:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 117
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mAppsPackageNames:Ljava/util/ArrayList;

    .line 118
    new-instance p1, Lcom/android/settings/widget/CustomExpandableLinearLayout$AppSessionCallback;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/settings/widget/CustomExpandableLinearLayout$AppSessionCallback;-><init>(Lcom/android/settings/widget/CustomExpandableLinearLayout;Lcom/android/settings/widget/CustomExpandableLinearLayout$1;)V

    iput-object p1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mAppCallback:Lcom/android/settings/widget/CustomExpandableLinearLayout$AppSessionCallback;

    .line 119
    sget-object p1, Lcom/android/settings/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    iput-object p1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mAppComparator:Ljava/util/Comparator;

    :cond_2
    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/widget/CustomExpandableLinearLayout;)Ljava/util/Comparator;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mAppComparator:Ljava/util/Comparator;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/settings/widget/CustomExpandableLinearLayout;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mQueryAppName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings/widget/CustomExpandableLinearLayout;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mIsReleased:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/android/settings/widget/CustomExpandableLinearLayout;)Ljava/util/ArrayList;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mItemTitleList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/android/settings/widget/CustomExpandableLinearLayout;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mItemTitleList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/settings/widget/CustomExpandableLinearLayout;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/settings/widget/CustomExpandableLinearLayout;)Landroid/content/Context;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/android/settings/widget/CustomExpandableLinearLayout;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mAppsPackageNames:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/android/settings/widget/CustomExpandableLinearLayout;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mItemEntryList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/settings/widget/CustomExpandableLinearLayout;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->initDefaultItems(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings/widget/CustomExpandableLinearLayout;)Lcom/android/settings/widget/InnerExpandableLayout;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mItemExpandableContainer:Lcom/android/settings/widget/InnerExpandableLayout;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/settings/widget/CustomExpandableLinearLayout;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mQueryItemTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/widget/CustomExpandableLinearLayout;)Landroid/content/Context;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/widget/CustomExpandableLinearLayout;)Landroid/content/Context;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/widget/CustomExpandableLinearLayout;)Lcom/android/settings/widget/CustomExpandableLinearLayout$ClearCheckListener;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mCheckListener:Lcom/android/settings/widget/CustomExpandableLinearLayout$ClearCheckListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/settings/widget/CustomExpandableLinearLayout;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->saveSelectedValue(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/widget/CustomExpandableLinearLayout;)Lcom/android/settings/applications/ApplicationsState;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/settings/widget/CustomExpandableLinearLayout;)Lcom/android/settings/applications/ApplicationsState$Session;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mSession:Lcom/android/settings/applications/ApplicationsState$Session;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/settings/widget/CustomExpandableLinearLayout;Lcom/android/settings/applications/ApplicationsState$Session;)Lcom/android/settings/applications/ApplicationsState$Session;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mSession:Lcom/android/settings/applications/ApplicationsState$Session;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/settings/widget/CustomExpandableLinearLayout;)Lcom/android/settings/widget/CustomExpandableLinearLayout$AppSessionCallback;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mAppCallback:Lcom/android/settings/widget/CustomExpandableLinearLayout$AppSessionCallback;

    return-object p0
.end method

.method private getAppName(I)Ljava/lang/String;
    .locals 1

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0300c7

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x5

    .line 245
    aget-object p1, p0, p1

    :pswitch_2
    const/4 p1, 0x6

    .line 247
    aget-object p0, p0, p1

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x4

    .line 242
    aget-object p0, p0, p1

    goto :goto_0

    :pswitch_4
    const/4 p1, 0x3

    .line 239
    aget-object p0, p0, p1

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x2

    .line 235
    aget-object p0, p0, p1

    goto :goto_0

    :pswitch_6
    const/4 p1, 0x1

    .line 231
    aget-object p0, p0, p1

    goto :goto_0

    :pswitch_7
    const/4 p1, 0x0

    .line 228
    aget-object p0, p0, p1

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleToolItems(Lsmartisanos/widget/SettingItemCheck;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 266
    iget-object v3, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/android/settings/Utils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120e77

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 269
    invoke-virtual {p1, v2}, Lsmartisanos/widget/SettingItemCheck;->setTitle(Ljava/lang/CharSequence;)V

    .line 271
    invoke-direct {p0, p1, v1, p2, p3}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->likeDisable(Lsmartisanos/widget/SettingItemCheck;ZLjava/lang/String;Ljava/lang/String;)V

    move-object v4, v2

    move v2, v0

    goto :goto_0

    :cond_0
    move v3, v0

    :cond_1
    move-object v4, v2

    move v2, v1

    :goto_0
    if-eqz v3, :cond_4

    if-eqz p2, :cond_3

    if-nez p4, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    .line 275
    :cond_3
    :goto_1
    invoke-virtual {p1, v0}, Lsmartisanos/widget/SettingItemCheck;->setEnabled(Z)V

    if-eqz p4, :cond_5

    .line 277
    invoke-virtual {p1, v1}, Lsmartisanos/widget/SettingItemCheck;->setEnabled(Z)V

    const p2, 0x7f120e9c

    .line 279
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    :cond_4
    move-object p3, v4

    .line 284
    :cond_5
    :goto_2
    invoke-virtual {p1, p3}, Lsmartisanos/widget/SettingItemCheck;->setTitle(Ljava/lang/CharSequence;)V

    return v2
.end method

.method private initDefaultItems(I)V
    .locals 4

    .line 609
    iget-object v0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mDefaultItemContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 610
    iget-object v0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mItemExpandableContainer:Lcom/android/settings/widget/InnerExpandableLayout;

    invoke-virtual {v0}, Lcom/android/settings/widget/InnerExpandableLayout;->removeAllViews()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    if-ge v0, p1, :cond_0

    .line 613
    new-instance v2, Lsmartisanos/widget/SettingItemCheck;

    iget-object v3, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lsmartisanos/widget/SettingItemCheck;-><init>(Landroid/content/Context;)V

    .line 614
    invoke-direct {p0, v2, v0}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->initValueForItems(Lsmartisanos/widget/SettingItemCheck;I)V

    .line 615
    iget-object v3, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mDefaultItemContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 618
    :cond_0
    iput v1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mItemShowingCount:I

    :goto_1
    if-ge v1, p1, :cond_1

    .line 620
    new-instance v0, Lsmartisanos/widget/SettingItemCheck;

    iget-object v2, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lsmartisanos/widget/SettingItemCheck;-><init>(Landroid/content/Context;)V

    .line 621
    invoke-direct {p0, v0, v1}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->initValueForItems(Lsmartisanos/widget/SettingItemCheck;I)V

    .line 622
    iget-object v2, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mItemExpandableContainer:Lcom/android/settings/widget/InnerExpandableLayout;

    invoke-virtual {v2, v0}, Lcom/android/settings/widget/InnerExpandableLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private initDefaultItems(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 177
    iput v0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mItemShowingCount:I

    .line 178
    iget-object v1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mDefaultItemContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 179
    iget-object v1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mItemExpandableContainer:Lcom/android/settings/widget/InnerExpandableLayout;

    invoke-virtual {v1}, Lcom/android/settings/widget/InnerExpandableLayout;->removeAllViews()V

    .line 180
    iput-object p1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mItemTitleList:Ljava/util/ArrayList;

    .line 181
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    if-ge v0, p1, :cond_0

    .line 183
    new-instance v1, Lsmartisanos/widget/SettingItemCheck;

    iget-object v2, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lsmartisanos/widget/SettingItemCheck;-><init>(Landroid/content/Context;)V

    .line 184
    invoke-direct {p0, v1, v0}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->initValueForItems(Lsmartisanos/widget/SettingItemCheck;I)V

    .line 185
    iget-object v2, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mDefaultItemContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 186
    iget v1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mItemShowingCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mItemShowingCount:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    :cond_0
    iget v0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mItemShowingCount:I

    :goto_1
    if-ge v0, p1, :cond_1

    .line 189
    new-instance v1, Lsmartisanos/widget/SettingItemCheck;

    iget-object v2, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lsmartisanos/widget/SettingItemCheck;-><init>(Landroid/content/Context;)V

    .line 190
    invoke-direct {p0, v1, v0}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->initValueForItems(Lsmartisanos/widget/SettingItemCheck;I)V

    .line 191
    iget-object v2, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mItemExpandableContainer:Lcom/android/settings/widget/InnerExpandableLayout;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/InnerExpandableLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private initValueForItems(Lsmartisanos/widget/SettingItemCheck;I)V
    .locals 8

    .line 196
    iget-object v0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mItemTitleList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 197
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x10

    .line 198
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 199
    invoke-virtual {p1, v0}, Lsmartisanos/widget/SettingItemCheck;->setTitle(Ljava/lang/CharSequence;)V

    .line 200
    invoke-virtual {p1, p2}, Lsmartisanos/widget/SettingItemCheck;->setId(I)V

    .line 201
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Lsmartisanos/widget/SettingItemCheck;->setTag(Ljava/lang/Object;)V

    .line 202
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->setItemsBackground(Landroid/view/View;I)V

    .line 203
    invoke-direct {p0, p2}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->isItemSelectByCurrentKey(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 204
    invoke-virtual {p1, v3}, Lsmartisanos/widget/SettingItemCheck;->setChecked(Z)V

    .line 206
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->isItemSelectByOther(I)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 208
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f120e9c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lsmartisanos/widget/SettingItemCheck;->setTitle(Ljava/lang/CharSequence;)V

    .line 209
    invoke-virtual {p1, v4}, Lsmartisanos/widget/SettingItemCheck;->setEnabled(Z)V

    .line 212
    :cond_1
    iget v5, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mExpandType:I

    if-ne v5, v3, :cond_2

    .line 213
    invoke-direct {p0, p2}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->getAppName(I)Ljava/lang/String;

    move-result-object p2

    .line 214
    invoke-direct {p0, p1, p2, v0, v2}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->handleToolItems(Lsmartisanos/widget/SettingItemCheck;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    .line 216
    :cond_2
    invoke-virtual {p1, v1}, Lsmartisanos/widget/SettingItemCheck;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-nez v4, :cond_3

    .line 218
    iget-object p0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/SettingItemCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method private initViews([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mItemTitleList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 153
    iget-object p1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mItemEntryList:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 154
    iget-object p1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mItemTitleList:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mItemEntryList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->initViews(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method private isItemSelectByCurrentKey(I)Z
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mSelectedKey:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 364
    iget-object p0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mItemEntryList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isItemSelectByOther(I)Z
    .locals 3

    .line 369
    iget-object v0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mOtherKeyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 370
    iget-object v2, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 371
    iget-object v2, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mItemEntryList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private likeDisable(Lsmartisanos/widget/SettingItemCheck;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    xor-int/lit8 v0, p2, 0x1

    .line 289
    invoke-virtual {p1, v0}, Lsmartisanos/widget/SettingItemCheck;->setCheckedIconLight(Z)V

    .line 291
    invoke-virtual {p1}, Lsmartisanos/widget/SettingItemCheck;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e99999a    # 0.3f

    if-eqz p2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 292
    invoke-virtual {p1}, Lsmartisanos/widget/SettingItemCheck;->getIcon()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 293
    invoke-virtual {p1}, Lsmartisanos/widget/SettingItemCheck;->getIcon()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 294
    new-instance p2, Lcom/android/settings/widget/CustomExpandableLinearLayout$1;

    invoke-direct {p2, p0, p3, p4}, Lcom/android/settings/widget/CustomExpandableLinearLayout$1;-><init>(Lcom/android/settings/widget/CustomExpandableLinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lsmartisanos/widget/SettingItemCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private saveSelectedValue(I)V
    .locals 8

    .line 406
    iget-object v0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mItemEntryList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save: intentString:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomExpandableLinearL"

    invoke-static {v1, v0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mStoreListener:Lcom/android/settings/widget/CustomExpandableLinearLayout$ValueStoreListener;

    if-eqz v0, :cond_1

    .line 410
    iget v0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mExpandType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 411
    iget-object v0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mAppsPackageNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    .line 413
    iget-object v1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mStoreListener:Lcom/android/settings/widget/CustomExpandableLinearLayout$ValueStoreListener;

    iget-object v3, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mSelectedKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mItemTitleList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    move-object v2, p0

    move v7, p1

    invoke-interface/range {v1 .. v7}, Lcom/android/settings/widget/CustomExpandableLinearLayout$ValueStoreListener;->onSave(Lcom/android/settings/widget/CustomExpandableLinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method private setItemsBackground(Landroid/view/View;I)V
    .locals 0

    if-nez p2, :cond_0

    const p0, 0x7f08046f

    .line 255
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const p0, 0x7f08046c

    .line 257
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method private showItemsAll()V
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mItemMoreOrLess:Landroid/widget/TextView;

    const v1, 0x7f120e9f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 359
    iget-object p0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mItemExpandableContainer:Lcom/android/settings/widget/InnerExpandableLayout;

    invoke-virtual {p0}, Lcom/android/settings/widget/InnerExpandableLayout;->doExpand()V

    return-void
.end method

.method private showItemsDefault()V
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mItemMoreOrLess:Landroid/widget/TextView;

    const v1, 0x7f120ea0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 354
    iget-object p0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mItemExpandableContainer:Lcom/android/settings/widget/InnerExpandableLayout;

    invoke-virtual {p0}, Lcom/android/settings/widget/InnerExpandableLayout;->doCollapse()V

    return-void
.end method

.method private showListExtras()V
    .locals 1

    .line 342
    invoke-virtual {p0}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->hasExtra()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mItemExpandableContainer:Lcom/android/settings/widget/InnerExpandableLayout;

    invoke-virtual {v0}, Lcom/android/settings/widget/InnerExpandableLayout;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mItemExpandableContainer:Lcom/android/settings/widget/InnerExpandableLayout;

    invoke-virtual {v0}, Lcom/android/settings/widget/InnerExpandableLayout;->isExpand()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    invoke-direct {p0}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->showItemsDefault()V

    goto :goto_0

    .line 348
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->showItemsAll()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public clearChecks()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 331
    :goto_0
    iget-object v2, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mDefaultItemContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 332
    iget-object v2, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mDefaultItemContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lsmartisanos/widget/SettingItemCheck;

    .line 333
    invoke-virtual {v2, v0}, Lsmartisanos/widget/SettingItemCheck;->setChecked(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 335
    :goto_1
    iget-object v2, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mItemExpandableContainer:Lcom/android/settings/widget/InnerExpandableLayout;

    invoke-virtual {v2}, Lcom/android/settings/widget/InnerExpandableLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 336
    iget-object v2, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mItemExpandableContainer:Lcom/android/settings/widget/InnerExpandableLayout;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/InnerExpandableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lsmartisanos/widget/SettingItemCheck;

    .line 337
    invoke-virtual {v2, v0}, Lsmartisanos/widget/SettingItemCheck;->setChecked(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public hasExtra()Z
    .locals 1

    .line 313
    iget v0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mItemShowingCount:I

    iget-object p0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mItemEntryList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public initViews(II)V
    .locals 1

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->initViews([Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public initViews(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 164
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 165
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initViews: length: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " vs "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CustomExpandableLinearL"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 168
    :cond_0
    iget p2, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mExpandType:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mActivity:Landroid/app/Activity;

    if-eqz p2, :cond_1

    .line 169
    invoke-virtual {p2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/settings/applications/ApplicationsState;->getInstance(Landroid/app/Application;Z)Lcom/android/settings/applications/ApplicationsState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    .line 170
    new-instance p1, Lcom/android/settings/widget/CustomExpandableLinearLayout$AppQueryTask;

    iget-object p2, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    invoke-direct {p1, p0, p2}, Lcom/android/settings/widget/CustomExpandableLinearLayout$AppQueryTask;-><init>(Lcom/android/settings/widget/CustomExpandableLinearLayout;Lcom/android/settings/applications/ApplicationsState;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/CustomExpandableLinearLayout$AppQueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 172
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->initDefaultItems(Ljava/util/ArrayList;)V

    :goto_0
    return-void
.end method

.method public initViews([Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mItemTitleList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 159
    iput-object p2, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mItemEntryList:Ljava/util/ArrayList;

    .line 160
    iget-object p1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mItemTitleList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->initViews(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 380
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a09b8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 382
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->showListExtras()V

    :goto_0
    return-void
.end method

.method public rebuild()V
    .locals 4

    .line 475
    iget-object v0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mItemExpandableContainer:Lcom/android/settings/widget/InnerExpandableLayout;

    invoke-virtual {v0}, Lcom/android/settings/widget/InnerExpandableLayout;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 476
    new-instance v0, Lcom/android/settings/widget/CustomExpandableLinearLayout$AppQueryTask;

    iget-object v1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/widget/CustomExpandableLinearLayout$AppQueryTask;-><init>(Lcom/android/settings/widget/CustomExpandableLinearLayout;Lcom/android/settings/applications/ApplicationsState;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/CustomExpandableLinearLayout$AppQueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 478
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/widget/CustomExpandableLinearLayout$3;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/CustomExpandableLinearLayout$3;-><init>(Lcom/android/settings/widget/CustomExpandableLinearLayout;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mSession:Lcom/android/settings/applications/ApplicationsState$Session;

    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState$Session;->release()V

    :cond_0
    const/4 v0, 0x1

    .line 471
    iput-boolean v0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mIsReleased:Z

    return-void
.end method

.method public setCheckListener(Lcom/android/settings/widget/CustomExpandableLinearLayout$ClearCheckListener;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mCheckListener:Lcom/android/settings/widget/CustomExpandableLinearLayout$ClearCheckListener;

    return-void
.end method

.method public setSmartKey(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 317
    iput-object p1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mSelectedKey:Ljava/lang/String;

    .line 318
    iget-object p1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mOtherKeyList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 319
    iget-object p1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mOtherKeyList:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setStoreListener(Lcom/android/settings/widget/CustomExpandableLinearLayout$ValueStoreListener;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mStoreListener:Lcom/android/settings/widget/CustomExpandableLinearLayout$ValueStoreListener;

    return-void
.end method

.method public setTitle(I)V
    .locals 0

    .line 309
    iget-object p0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public updateView(ILjava/lang/String;)V
    .locals 1

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 126
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 127
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mQueryAppName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 128
    iget-object p1, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mQueryItemTitle:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->saveSelectedValue(I)V

    .line 130
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->updateView(Ljava/util/ArrayList;)V

    return-void
.end method

.method public updateView(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 134
    iget v0, p0, Lcom/android/settings/widget/CustomExpandableLinearLayout;->mExpandType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->rebuild()V

    goto :goto_0

    .line 136
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/widget/CustomExpandableLinearLayout;->initDefaultItems(Ljava/util/ArrayList;)V

    :goto_0
    return-void
.end method
