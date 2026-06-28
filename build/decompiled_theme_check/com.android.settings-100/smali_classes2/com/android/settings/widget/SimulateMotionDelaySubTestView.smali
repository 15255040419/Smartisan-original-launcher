.class public Lcom/android/settings/widget/SimulateMotionDelaySubTestView;
.super Landroid/widget/LinearLayout;
.source "SimulateMotionDelaySubTestView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/SimulateMotionDelaySubTestView$onSubTestViewListener;,
        Lcom/android/settings/widget/SimulateMotionDelaySubTestView$SubListView;,
        Lcom/android/settings/widget/SimulateMotionDelaySubTestView$BadCaseAdapter;,
        Lcom/android/settings/widget/SimulateMotionDelaySubTestView$FeelAdapter;
    }
.end annotation


# static fields
.field private static final BTN_TAG_CONFIRM:I = 0x0

.field private static final BTN_TAG_TEST_AGAIN:I = 0x1

.field private static final BTN_TAG_TEST_START:I = 0x2

.field private static final COUNTDOWN_INTERVAL:J = 0x3e8L

.field private static final COUNTDOWN_TIME:J = 0x1d4c0L

.field private static final DEFAULT_BC_SELECTED_VALUE:I = 0x0

.field private static final DEFAULT_FEEL_SELECTED_VALUE:I = -0x1

.field private static final LAST_COUNTDOWN_TIME:J = 0xea60L

.field private static final TAG:Ljava/lang/String; = "SmdSubTestView"


# instance fields
.field private mBadCaseAdapter:Landroid/widget/BaseAdapter;

.field private mBadCaseList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBadCaseListView:Lcom/android/settings/widget/SimulateMotionDelaySubTestView$SubListView;

.field private mBadCaseSelected:Z

.field private mBadCaseSelectedIndex:I

.field private mBtnConfirm:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mCountdownTime:J

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mCurIndex:I

.field private mCurrentCountText:Landroid/widget/TextView;

.field private mFeelAdapter:Landroid/widget/BaseAdapter;

.field private mFeelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFeelListView:Lcom/android/settings/widget/SimulateMotionDelaySubTestView$SubListView;

.field private mFeelSelected:Z

.field private mFeelSelectedIndex:I

.field private mFirstTestFinished:Z

.field private mIsCountingDown:Z

.field private mSubResultView:Landroid/view/View;

.field private mSubTestViewListener:Lcom/android/settings/widget/SimulateMotionDelaySubTestView$onSubTestViewListener;

.field private mSubTitleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTestIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/32 p2, 0x1d4c0

    .line 48
    iput-wide p2, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mCountdownTime:J

    .line 49
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mSubTitleList:Ljava/util/ArrayList;

    .line 50
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mFeelList:Ljava/util/ArrayList;

    .line 51
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mBadCaseList:Ljava/util/ArrayList;

    const/4 p2, -0x1

    .line 56
    iput p2, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mFeelSelectedIndex:I

    const/4 p2, 0x0

    .line 57
    iput p2, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mBadCaseSelectedIndex:I

    .line 58
    iput-boolean p2, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mFeelSelected:Z

    .line 59
    iput-boolean p2, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mBadCaseSelected:Z

    .line 60
    iput-boolean p2, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mIsCountingDown:Z

    .line 61
    iput-boolean p2, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mFirstTestFinished:Z

    .line 75
    iput-object p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mContext:Landroid/content/Context;

    .line 76
    invoke-direct {p0}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->initStringLists()V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mFirstTestFinished:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;)Landroid/widget/BaseAdapter;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mFeelAdapter:Landroid/widget/BaseAdapter;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mFeelSelected:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;)Landroid/widget/BaseAdapter;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mBadCaseAdapter:Landroid/widget/BaseAdapter;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mBadCaseSelected:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;J)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->refreshStateText(J)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->showResultView()V

    return-void
.end method

.method static synthetic access$1702(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mIsCountingDown:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;)Ljava/util/ArrayList;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mFeelList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;)Landroid/content/Context;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mCurIndex:I

    return p0
.end method

.method static synthetic access$2000(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;)Lcom/android/settings/widget/SimulateMotionDelaySubTestView$SubListView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mFeelListView:Lcom/android/settings/widget/SimulateMotionDelaySubTestView$SubListView;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;)Ljava/util/ArrayList;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mBadCaseList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;)Lcom/android/settings/widget/SimulateMotionDelaySubTestView$SubListView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mBadCaseListView:Lcom/android/settings/widget/SimulateMotionDelaySubTestView$SubListView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mTestIndex:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mFeelSelectedIndex:I

    return p0
.end method

.method static synthetic access$402(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;I)I
    .locals 0

    .line 32
    iput p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mFeelSelectedIndex:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mBadCaseSelectedIndex:I

    return p0
.end method

.method static synthetic access$502(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;I)I
    .locals 0

    .line 32
    iput p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mBadCaseSelectedIndex:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;I)Ljava/lang/String;
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->transformBadCaseToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;)Lcom/android/settings/widget/SimulateMotionDelaySubTestView$onSubTestViewListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mSubTestViewListener:Lcom/android/settings/widget/SimulateMotionDelaySubTestView$onSubTestViewListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;)Landroid/widget/Button;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mBtnConfirm:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;Z)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->enableLists(Z)V

    return-void
.end method

.method private enableLists(Z)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mFeelListView:Lcom/android/settings/widget/SimulateMotionDelaySubTestView$SubListView;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$SubListView;->setEnabled(Z)V

    .line 159
    iget-object v0, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mFeelAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 160
    iget-object v0, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mBadCaseListView:Lcom/android/settings/widget/SimulateMotionDelaySubTestView$SubListView;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$SubListView;->setEnabled(Z)V

    .line 161
    iget-object p0, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mBadCaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private initStringLists()V
    .locals 4

    const-string v0, "SmdSubTestView"

    const-string v1, "Init string lists."

    .line 80
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0300ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0300ee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0300ed

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 85
    iget-object v3, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mSubTitleList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 86
    iget-object v3, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mFeelList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 87
    iget-object v3, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mBadCaseList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 88
    iget-object v3, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mSubTitleList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 89
    iget-object v0, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mFeelList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 90
    iget-object p0, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mBadCaseList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private refreshStateText(J)V
    .locals 2

    long-to-double p1, p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    mul-double/2addr p1, v0

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v0

    .line 263
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-double p1, p1

    .line 264
    invoke-static {p1, p2}, Ljava/lang/Math;->rint(D)D

    move-result-wide p1

    double-to-int p1, p1

    .line 265
    iget-object p2, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mCurrentCountText:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const p1, 0x7f120c88

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showResultView()V
    .locals 2

    const-string v0, "SmdSubTestView"

    const-string v1, "Show result view."

    .line 269
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v0, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mCurrentCountText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mSubResultView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mBtnConfirm:Landroid/widget/Button;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 273
    iget-object v0, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mBtnConfirm:Landroid/widget/Button;

    const v1, 0x7f120e0e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    const/4 v0, 0x1

    .line 274
    invoke-direct {p0, v0}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->enableLists(Z)V

    return-void
.end method

.method private startCountdown()V
    .locals 7

    const-string v0, "SmdSubTestView"

    const-string v1, "Start countdown."

    .line 212
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->stopCountdown()V

    .line 216
    :cond_0
    new-instance v0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$2;

    iget-wide v3, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mCountdownTime:J

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$2;-><init>(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;JJ)V

    .line 230
    invoke-virtual {v0}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$2;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mCountdownTimer:Landroid/os/CountDownTimer;

    const/4 v0, 0x1

    .line 231
    iput-boolean v0, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mIsCountingDown:Z

    return-void
.end method

.method private transformBadCaseToString(I)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    const/4 v1, 0x0

    .line 279
    :goto_0
    iget-object v2, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mBadCaseList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x1

    shl-int/2addr v2, v1

    and-int/2addr v2, p1

    if-eqz v2, :cond_1

    .line 282
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v1, 0x1

    .line 283
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 285
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public disableEverything()V
    .locals 1

    const/4 v0, 0x0

    .line 165
    invoke-direct {p0, v0}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->enableLists(Z)V

    .line 166
    iget-object p0, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mBtnConfirm:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public initViews(IILcom/android/settings/widget/SimulateMotionDelaySubTestView$onSubTestViewListener;ZZ)V
    .locals 3

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Init views curIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", testIndex : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", should start : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", is last test : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmdSubTestView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iput p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mCurIndex:I

    .line 97
    iput p2, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mTestIndex:I

    .line 98
    iput-object p3, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mSubTestViewListener:Lcom/android/settings/widget/SimulateMotionDelaySubTestView$onSubTestViewListener;

    const p1, 0x7f0a08c1

    .line 99
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mCurrentCountText:Landroid/widget/TextView;

    if-eqz p5, :cond_0

    const-wide/32 p1, 0xea60

    goto :goto_0

    :cond_0
    const-wide/32 p1, 0x1d4c0

    .line 100
    :goto_0
    iput-wide p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mCountdownTime:J

    .line 101
    iget-wide p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mCountdownTime:J

    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->refreshStateText(J)V

    const p1, 0x7f0a08c0

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mSubResultView:Landroid/view/View;

    const p1, 0x7f0a08c2

    .line 103
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 104
    iget-object p2, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mContext:Landroid/content/Context;

    const p3, 0x7f120c89

    const/4 p5, 0x1

    new-array v0, p5, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mSubTitleList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mCurIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p2, p3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a06de

    .line 105
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$SubListView;

    iput-object p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mFeelListView:Lcom/android/settings/widget/SimulateMotionDelaySubTestView$SubListView;

    .line 106
    iget-object p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mFeelListView:Lcom/android/settings/widget/SimulateMotionDelaySubTestView$SubListView;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$SubListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 107
    new-instance p1, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$FeelAdapter;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$FeelAdapter;-><init>(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;Lcom/android/settings/widget/SimulateMotionDelaySubTestView$1;)V

    iput-object p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mFeelAdapter:Landroid/widget/BaseAdapter;

    .line 108
    iget-object p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mFeelListView:Lcom/android/settings/widget/SimulateMotionDelaySubTestView$SubListView;

    iget-object p3, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mFeelAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p1, p3}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$SubListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const p1, 0x7f0a00db

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$SubListView;

    iput-object p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mBadCaseListView:Lcom/android/settings/widget/SimulateMotionDelaySubTestView$SubListView;

    .line 110
    iget-object p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mBadCaseListView:Lcom/android/settings/widget/SimulateMotionDelaySubTestView$SubListView;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$SubListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 111
    new-instance p1, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$BadCaseAdapter;

    invoke-direct {p1, p0, p2}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$BadCaseAdapter;-><init>(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;Lcom/android/settings/widget/SimulateMotionDelaySubTestView$1;)V

    iput-object p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mBadCaseAdapter:Landroid/widget/BaseAdapter;

    .line 112
    iget-object p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mBadCaseListView:Lcom/android/settings/widget/SimulateMotionDelaySubTestView$SubListView;

    iget-object p2, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mBadCaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$SubListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const p1, 0x7f0a0153

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mBtnConfirm:Landroid/widget/Button;

    if-eqz p4, :cond_1

    .line 115
    iget-object p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mBtnConfirm:Landroid/widget/Button;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 116
    iget-object p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mBtnConfirm:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 117
    iget-object p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mBtnConfirm:Landroid/widget/Button;

    const p2, 0x7f120e0e

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 119
    :cond_1
    iget-object p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mBtnConfirm:Landroid/widget/Button;

    const/4 p2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 120
    iget-object p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mBtnConfirm:Landroid/widget/Button;

    invoke-virtual {p1, p5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 121
    iget-object p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mBtnConfirm:Landroid/widget/Button;

    const p2, 0x7f120c77

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    .line 123
    :goto_1
    iget-object p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mBtnConfirm:Landroid/widget/Button;

    new-instance p2, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$1;

    invoke-direct {p2, p0}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$1;-><init>(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public isCountingDown()Z
    .locals 2

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Is countdown going : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mIsCountingDown:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmdSubTestView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-boolean p0, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mIsCountingDown:Z

    return p0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 171
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result p1

    const p2, 0x7f0a00db

    const/4 p4, 0x0

    const-string p5, "SmdSubTestView"

    const/4 v0, 0x1

    if-eq p1, p2, :cond_1

    const p2, 0x7f0a06de

    if-eq p1, p2, :cond_0

    goto/16 :goto_3

    .line 173
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "On feel list item clicked, id :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p3, :cond_5

    .line 174
    iget-object p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mFeelAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result p1

    if-ge p3, p1, :cond_5

    .line 175
    iput p3, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mFeelSelectedIndex:I

    .line 176
    iget-object p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mFeelAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 177
    iput-boolean v0, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mFeelSelected:Z

    goto :goto_3

    .line 181
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "On bad case list item clicked, id : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p3, :cond_5

    .line 182
    iget-object p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mBadCaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result p1

    if-ge p3, p1, :cond_5

    .line 183
    iget-object p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mBadCaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result p1

    sub-int/2addr p1, v0

    shl-int p1, v0, p1

    .line 184
    iget-object p2, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mBadCaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->getCount()I

    move-result p2

    sub-int/2addr p2, v0

    if-ne p3, p2, :cond_2

    .line 185
    iput p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mBadCaseSelectedIndex:I

    goto :goto_1

    .line 187
    :cond_2
    iget p2, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mBadCaseSelectedIndex:I

    if-ge p2, p1, :cond_3

    shl-int p1, v0, p3

    xor-int/2addr p1, p2

    goto :goto_0

    :cond_3
    shl-int p1, v0, p3

    :goto_0
    iput p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mBadCaseSelectedIndex:I

    .line 189
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mBadCaseSelectedIndex \uff1a "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mBadCaseSelectedIndex:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mBadCaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 191
    iget p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mBadCaseSelectedIndex:I

    if-eqz p1, :cond_4

    move p1, v0

    goto :goto_2

    :cond_4
    move p1, p4

    :goto_2
    iput-boolean p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mBadCaseSelected:Z

    .line 197
    :cond_5
    :goto_3
    iget-boolean p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mFeelSelected:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mBadCaseSelected:Z

    if-eqz p1, :cond_6

    const-string p1, "All result selected, enable confirm button."

    .line 198
    invoke-static {p5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object p0, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mBtnConfirm:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_4

    .line 200
    :cond_6
    iget-object p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mBtnConfirm:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 201
    iget-object p0, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mBtnConfirm:Landroid/widget/Button;

    invoke-virtual {p0, p4}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_7
    :goto_4
    return-void
.end method

.method public startSubTest()V
    .locals 2

    const-string v0, "SmdSubTestView"

    const-string v1, "Start sub test."

    .line 206
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-direct {p0}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->startCountdown()V

    const p0, 0x7f120c84

    .line 208
    invoke-static {p0}, Lcom/android/settings/ToastUtils;->show(I)V

    return-void
.end method

.method public stopCountdown()V
    .locals 2

    const-string v0, "SmdSubTestView"

    const-string v1, "Stop countdown."

    .line 235
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 238
    iput-object v0, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mCountdownTimer:Landroid/os/CountDownTimer;

    :cond_0
    const/4 v0, 0x0

    .line 240
    iput-boolean v0, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mIsCountingDown:Z

    .line 241
    iget-wide v0, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mCountdownTime:J

    invoke-direct {p0, v0, v1}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->refreshStateText(J)V

    return-void
.end method

.method public stopTest()V
    .locals 3

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stop test, index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mCurIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmdSubTestView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->isCountingDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->stopCountdown()V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mBtnConfirm:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 255
    iget-boolean v0, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mFirstTestFinished:Z

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mBtnConfirm:Landroid/widget/Button;

    const v2, 0x7f120c87

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 257
    iget-object v0, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->mBtnConfirm:Landroid/widget/Button;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    .line 259
    invoke-direct {p0, v0}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->enableLists(Z)V

    return-void
.end method
