.class public Lcom/android/settings/BandMode;
.super Landroid/app/Activity;
.source "BandMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/BandMode$BandListItem;
    }
.end annotation


# static fields
.field private static final BAND_NAMES:[Ljava/lang/String;

.field private static final DBG:Z = false

.field private static final EVENT_BAND_SCAN_COMPLETED:I = 0x64

.field private static final EVENT_BAND_SELECTION_DONE:I = 0xc8

.field private static final LOG_TAG:Ljava/lang/String; = "phone"


# instance fields
.field private mBandList:Landroid/widget/ListView;

.field private mBandListAdapter:Landroid/widget/ArrayAdapter;

.field private mBandSelectionHandler:Landroid/widget/AdapterView$OnItemClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mProgressPanel:Landroid/content/DialogInterface;

.field private mTargetBand:Lcom/android/settings/BandMode$BandListItem;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    const-string v0, "Automatic"

    const-string v1, "Europe"

    const-string v2, "United States"

    const-string v3, "Japan"

    const-string v4, "Australia"

    const-string v5, "Australia 2"

    const-string v6, "Cellular 800"

    const-string v7, "PCS"

    const-string v8, "Class 3 (JTACS)"

    const-string v9, "Class 4 (Korea-PCS)"

    const-string v10, "Class 5"

    const-string v11, "Class 6 (IMT2000)"

    const-string v12, "Class 7 (700Mhz-Upper)"

    const-string v13, "Class 8 (1800Mhz-Upper)"

    const-string v14, "Class 9 (900Mhz)"

    const-string v15, "Class 10 (800Mhz-Secondary)"

    const-string v16, "Class 11 (Europe PAMR 400Mhz)"

    const-string v17, "Class 15 (US-AWS)"

    const-string v18, "Class 16 (US-2500Mhz)"

    .line 46
    filled-new-array/range {v0 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/BandMode;->BAND_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/android/settings/BandMode;->mTargetBand:Lcom/android/settings/BandMode$BandListItem;

    .line 73
    iput-object v0, p0, Lcom/android/settings/BandMode;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 98
    new-instance v0, Lcom/android/settings/BandMode$1;

    invoke-direct {v0, p0}, Lcom/android/settings/BandMode$1;-><init>(Lcom/android/settings/BandMode;)V

    iput-object v0, p0, Lcom/android/settings/BandMode;->mBandSelectionHandler:Landroid/widget/AdapterView$OnItemClickListener;

    .line 217
    new-instance v0, Lcom/android/settings/BandMode$2;

    invoke-direct {v0, p0}, Lcom/android/settings/BandMode$2;-><init>(Lcom/android/settings/BandMode;)V

    iput-object v0, p0, Lcom/android/settings/BandMode;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/BandMode;)Lcom/android/settings/BandMode$BandListItem;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settings/BandMode;->mTargetBand:Lcom/android/settings/BandMode$BandListItem;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/settings/BandMode;Lcom/android/settings/BandMode$BandListItem;)Lcom/android/settings/BandMode$BandListItem;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/android/settings/BandMode;->mTargetBand:Lcom/android/settings/BandMode$BandListItem;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/BandMode;)Landroid/os/Handler;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settings/BandMode;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/BandMode;)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settings/BandMode;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lcom/android/settings/BandMode;->BAND_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/BandMode;Landroid/os/AsyncResult;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/BandMode;->bandListLoaded(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/BandMode;Ljava/lang/Throwable;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/BandMode;->displayBandSelectionResult(Ljava/lang/Throwable;)V

    return-void
.end method

.method private bandListLoaded(Landroid/os/AsyncResult;)V
    .locals 6

    .line 153
    iget-object v0, p0, Lcom/android/settings/BandMode;->mProgressPanel:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 155
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/BandMode;->clearList()V

    .line 160
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 161
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    check-cast p1, [I

    .line 163
    array-length v0, p1

    if-nez v0, :cond_1

    const-string/jumbo p0, "phone"

    const-string p1, "No Supported Band Modes"

    .line 164
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 168
    :cond_1
    aget v0, p1, v1

    if-lez v0, :cond_2

    move v3, v2

    :goto_0
    if-gt v3, v0, :cond_3

    .line 172
    new-instance v4, Lcom/android/settings/BandMode$BandListItem;

    aget v5, p1, v3

    invoke-direct {v4, v5}, Lcom/android/settings/BandMode$BandListItem;-><init>(I)V

    .line 173
    iget-object v5, p0, Lcom/android/settings/BandMode;->mBandListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    :cond_3
    if-nez v2, :cond_4

    :goto_1
    const/16 p1, 0x13

    if-ge v1, p1, :cond_4

    .line 183
    new-instance p1, Lcom/android/settings/BandMode$BandListItem;

    invoke-direct {p1, v1}, Lcom/android/settings/BandMode$BandListItem;-><init>(I)V

    .line 184
    iget-object v0, p0, Lcom/android/settings/BandMode;->mBandListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 188
    :cond_4
    iget-object p0, p0, Lcom/android/settings/BandMode;->mBandList:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/widget/ListView;->requestFocus()Z

    return-void
.end method

.method private clearList()V
    .locals 2

    .line 207
    :goto_0
    iget-object v0, p0, Lcom/android/settings/BandMode;->mBandListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/settings/BandMode;->mBandListAdapter:Landroid/widget/ArrayAdapter;

    const/4 v1, 0x0

    .line 209
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 208
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private displayBandSelectionResult(Ljava/lang/Throwable;)V
    .locals 3

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f120246

    invoke-virtual {p0, v1}, Lcom/android/settings/BandMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/BandMode;->mTargetBand:Lcom/android/settings/BandMode$BandListItem;

    .line 193
    invoke-virtual {v1}, Lcom/android/settings/BandMode$BandListItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 196
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f120244

    invoke-virtual {p0, v0}, Lcom/android/settings/BandMode;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 198
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f120247

    invoke-virtual {p0, v0}, Lcom/android/settings/BandMode;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 201
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/BandMode;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 202
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    const/4 v1, 0x0

    .line 203
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/BandMode;->mProgressPanel:Landroid/content/DialogInterface;

    return-void
.end method

.method private loadBandList()V
    .locals 4

    const v0, 0x7f120245

    .line 135
    invoke-virtual {p0, v0}, Lcom/android/settings/BandMode;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 141
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/BandMode;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-direct {v1, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 142
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/BandMode;->mProgressPanel:Landroid/content/DialogInterface;

    .line 145
    iget-object v0, p0, Lcom/android/settings/BandMode;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 146
    iget-object p0, p0, Lcom/android/settings/BandMode;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Phone;->queryAvailableBandMode(Landroid/os/Message;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    .line 214
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[BandsList] "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "phone"

    invoke-static {p1, p0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x5

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/settings/BandMode;->requestWindowFeature(I)Z

    const p1, 0x7f0d0060

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/settings/BandMode;->setContentView(I)V

    const p1, 0x7f120248

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/settings/BandMode;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/BandMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/BandMode;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 87
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/BandMode;->mPhone:Lcom/android/internal/telephony/Phone;

    const p1, 0x7f0a00dd

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/settings/BandMode;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/android/settings/BandMode;->mBandList:Landroid/widget/ListView;

    .line 90
    new-instance p1, Landroid/widget/ArrayAdapter;

    const v0, 0x1090003

    invoke-direct {p1, p0, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/settings/BandMode;->mBandListAdapter:Landroid/widget/ArrayAdapter;

    .line 92
    iget-object p1, p0, Lcom/android/settings/BandMode;->mBandList:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/settings/BandMode;->mBandListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 93
    iget-object p1, p0, Lcom/android/settings/BandMode;->mBandList:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/settings/BandMode;->mBandSelectionHandler:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 95
    invoke-direct {p0}, Lcom/android/settings/BandMode;->loadBandList()V

    return-void
.end method
