.class public Lcom/android/settings/wifi/WpsDialog;
.super Landroid/app/AlertDialog;
.source "WpsDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WpsDialog$DialogState;
    }
.end annotation


# static fields
.field private static final DIALOG_MSG_STRING:Ljava/lang/String; = "android:dialogMsg"

.field private static final DIALOG_STATE:Ljava/lang/String; = "android:dialogState"

.field private static final TAG:Ljava/lang/String; = "WpsDialog"

.field private static final WPS_TIMEOUT_S:I = 0x78


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field mDialogState:Lcom/android/settings/wifi/WpsDialog$DialogState;

.field private final mFilter:Landroid/content/IntentFilter;

.field private mHandler:Landroid/os/Handler;

.field private mMsgString:Ljava/lang/String;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTextView:Landroid/widget/TextView;

.field private mTimeoutBar:Landroid/widget/ProgressBar;

.field private mTimer:Ljava/util/Timer;

.field private mView:Landroid/view/View;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWpsListener:Landroid/net/wifi/WifiManager$WpsCallback;

.field private mWpsSetup:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mHandler:Landroid/os/Handler;

    const-string v0, ""

    .line 68
    iput-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mMsgString:Ljava/lang/String;

    .line 77
    sget-object v0, Lcom/android/settings/wifi/WpsDialog$DialogState;->WPS_INIT:Lcom/android/settings/wifi/WpsDialog$DialogState;

    iput-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mDialogState:Lcom/android/settings/wifi/WpsDialog$DialogState;

    .line 81
    iput-object p1, p0, Lcom/android/settings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    .line 82
    iput p2, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsSetup:I

    .line 124
    new-instance p1, Lcom/android/settings/wifi/WpsDialog$1WpsListener;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/WpsDialog$1WpsListener;-><init>(Lcom/android/settings/wifi/WpsDialog;)V

    iput-object p1, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsListener:Landroid/net/wifi/WifiManager$WpsCallback;

    .line 127
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/WpsDialog;->mFilter:Landroid/content/IntentFilter;

    .line 128
    iget-object p1, p0, Lcom/android/settings/wifi/WpsDialog;->mFilter:Landroid/content/IntentFilter;

    const-string p2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    new-instance p1, Lcom/android/settings/wifi/WpsDialog$1;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/WpsDialog$1;-><init>(Lcom/android/settings/wifi/WpsDialog;)V

    iput-object p1, p0, Lcom/android/settings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 p1, 0x0

    .line 135
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WpsDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WpsDialog;)Landroid/content/Context;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WpsDialog;Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WpsDialog;->updateDialog(Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WpsDialog;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WpsDialog;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WpsDialog;)Landroid/widget/ProgressBar;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/wifi/WpsDialog;->mTimeoutBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WpsDialog;)Landroid/os/Handler;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/wifi/WpsDialog;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WpsDialog;)Landroid/widget/ProgressBar;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/wifi/WpsDialog;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WpsDialog;)Landroid/widget/Button;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/wifi/WpsDialog;->mButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WpsDialog;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/settings/wifi/WpsDialog;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/android/settings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/WpsDialog;)Landroid/widget/TextView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/wifi/WpsDialog;->mTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 262
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 263
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "networkInfo"

    .line 264
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    .line 266
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    .line 267
    sget-object p2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/android/settings/wifi/WpsDialog;->mDialogState:Lcom/android/settings/wifi/WpsDialog$DialogState;

    sget-object p2, Lcom/android/settings/wifi/WpsDialog$DialogState;->WPS_COMPLETE:Lcom/android/settings/wifi/WpsDialog$DialogState;

    if-ne p1, p2, :cond_0

    .line 269
    iget-object p1, p0, Lcom/android/settings/wifi/WpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 271
    iget-object p2, p0, Lcom/android/settings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    const v0, 0x7f1218fc

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 272
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    .line 271
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 273
    sget-object p2, Lcom/android/settings/wifi/WpsDialog$DialogState;->CONNECTED:Lcom/android/settings/wifi/WpsDialog$DialogState;

    invoke-direct {p0, p2, p1}, Lcom/android/settings/wifi/WpsDialog;->updateDialog(Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateDialog(Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mDialogState:Lcom/android/settings/wifi/WpsDialog$DialogState;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WpsDialog$DialogState;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/settings/wifi/WpsDialog$DialogState;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    .line 234
    :cond_0
    iput-object p1, p0, Lcom/android/settings/wifi/WpsDialog;->mDialogState:Lcom/android/settings/wifi/WpsDialog$DialogState;

    .line 235
    iput-object p2, p0, Lcom/android/settings/wifi/WpsDialog;->mMsgString:Ljava/lang/String;

    .line 237
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/wifi/WpsDialog$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/wifi/WpsDialog$4;-><init>(Lcom/android/settings/wifi/WpsDialog;Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/wifi/WpsDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0367

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mView:Landroid/view/View;

    .line 160
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a0a64

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mTextView:Landroid/widget/TextView;

    .line 161
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f121906

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 163
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a0a66

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mTimeoutBar:Landroid/widget/ProgressBar;

    .line 164
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mTimeoutBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 165
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mTimeoutBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 167
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a0a65

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 168
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a0a63

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mButton:Landroid/widget/Button;

    .line 171
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mButton:Landroid/widget/Button;

    const v1, 0x7f121799

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 172
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/wifi/WpsDialog$2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WpsDialog$2;-><init>(Lcom/android/settings/wifi/WpsDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 181
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WpsDialog;->setView(Landroid/view/View;)V

    if-nez p1, :cond_0

    .line 183
    new-instance v0, Landroid/net/wifi/WpsInfo;

    invoke-direct {v0}, Landroid/net/wifi/WpsInfo;-><init>()V

    .line 184
    iget v1, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsSetup:I

    iput v1, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 185
    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsListener:Landroid/net/wifi/WifiManager$WpsCallback;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->startWps(Landroid/net/wifi/WpsInfo;Landroid/net/wifi/WifiManager$WpsCallback;)V

    .line 187
    :cond_0
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 149
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mDialogState:Lcom/android/settings/wifi/WpsDialog$DialogState;

    const-string v0, "android:dialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/WpsDialog$DialogState;->valueOf(Ljava/lang/String;)Lcom/android/settings/wifi/WpsDialog$DialogState;

    move-result-object v0

    const-string v1, "android:dialogMsg"

    .line 151
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 152
    invoke-direct {p0, v0, p1}, Lcom/android/settings/wifi/WpsDialog;->updateDialog(Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 140
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog;->mDialogState:Lcom/android/settings/wifi/WpsDialog$DialogState;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WpsDialog$DialogState;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android:dialogState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object p0, p0, Lcom/android/settings/wifi/WpsDialog;->mMsgString:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "android:dialogMsg"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected onStart()V
    .locals 8

    .line 195
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mTimer:Ljava/util/Timer;

    .line 196
    iget-object v2, p0, Lcom/android/settings/wifi/WpsDialog;->mTimer:Ljava/util/Timer;

    new-instance v3, Lcom/android/settings/wifi/WpsDialog$3;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WpsDialog$3;-><init>(Lcom/android/settings/wifi/WpsDialog;)V

    const-wide/16 v4, 0x3e8

    const-wide/16 v6, 0x3e8

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 209
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/android/settings/wifi/WpsDialog;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onStop()V
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mDialogState:Lcom/android/settings/wifi/WpsDialog$DialogState;

    sget-object v1, Lcom/android/settings/wifi/WpsDialog$DialogState;->WPS_COMPLETE:Lcom/android/settings/wifi/WpsDialog$DialogState;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->cancelWps(Landroid/net/wifi/WifiManager$WpsCallback;)V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 220
    iget-object v1, p0, Lcom/android/settings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 221
    iput-object v2, p0, Lcom/android/settings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 224
    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/WpsDialog;->mTimer:Ljava/util/Timer;

    if-eqz p0, :cond_2

    .line 225
    invoke-virtual {p0}, Ljava/util/Timer;->cancel()V

    :cond_2
    return-void
.end method
