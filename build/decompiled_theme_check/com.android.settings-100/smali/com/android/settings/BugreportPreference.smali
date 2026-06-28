.class public Lcom/android/settings/BugreportPreference;
.super Lcom/android/settings/CustomDialogPreference;
.source "BugreportPreference.java"


# static fields
.field private static final BUGREPORT_DELAY_SECONDS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BugreportPreference"


# instance fields
.field private mFullSummary:Landroid/widget/TextView;

.field private mFullTitle:Landroid/widget/CheckedTextView;

.field private mInteractiveSummary:Landroid/widget/TextView;

.field private mInteractiveTitle:Landroid/widget/CheckedTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/settings/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/BugreportPreference;)Landroid/widget/CheckedTextView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settings/BugreportPreference;->mFullTitle:Landroid/widget/CheckedTextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/BugreportPreference;)Landroid/widget/TextView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settings/BugreportPreference;->mFullSummary:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/BugreportPreference;)Landroid/widget/CheckedTextView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settings/BugreportPreference;->mInteractiveTitle:Landroid/widget/CheckedTextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/BugreportPreference;)Landroid/widget/TextView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settings/BugreportPreference;->mInteractiveSummary:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/BugreportPreference;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/BugreportPreference;->takeBugreport(I)V

    return-void
.end method

.method private takeBugreport(I)V
    .locals 2

    .line 113
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/app/IActivityManager;->requestBugReport(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error taking bugreport (bugreportType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BugreportPreference"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method protected onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/BugreportPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 89
    iget-object p2, p0, Lcom/android/settings/BugreportPreference;->mFullTitle:Landroid/widget/CheckedTextView;

    invoke-virtual {p2}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p2

    const/4 v0, 0x0

    const-string v1, "BugreportPreference"

    if-eqz p2, :cond_0

    const-string p1, "Taking full bugreport right away"

    .line 90
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-direct {p0, v0}, Lcom/android/settings/BugreportPreference;->takeBugreport(I)V

    goto :goto_0

    :cond_0
    const-string p2, "Taking interactive bugreport in 3s"

    .line 93
    invoke-static {v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x1150001

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x3

    .line 98
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v0

    .line 97
    invoke-virtual {p2, v2, v4, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 99
    invoke-static {v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 101
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/android/settings/BugreportPreference$2;

    invoke-direct {p2, p0}, Lcom/android/settings/BugreportPreference$2;-><init>(Lcom/android/settings/BugreportPreference;)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    .line 54
    invoke-super {p0, p1, p2}, Lcom/android/settings/CustomDialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/BugreportPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d007f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0159

    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    iput-object v1, p0, Lcom/android/settings/BugreportPreference;->mInteractiveTitle:Landroid/widget/CheckedTextView;

    const v1, 0x7f0a0158

    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/BugreportPreference;->mInteractiveSummary:Landroid/widget/TextView;

    const v1, 0x7f0a0157

    .line 59
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    iput-object v1, p0, Lcom/android/settings/BugreportPreference;->mFullTitle:Landroid/widget/CheckedTextView;

    const v1, 0x7f0a0156

    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/BugreportPreference;->mFullSummary:Landroid/widget/TextView;

    .line 61
    new-instance v1, Lcom/android/settings/BugreportPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/BugreportPreference$1;-><init>(Lcom/android/settings/BugreportPreference;)V

    .line 75
    iget-object v2, p0, Lcom/android/settings/BugreportPreference;->mInteractiveTitle:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, v1}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v2, p0, Lcom/android/settings/BugreportPreference;->mFullTitle:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, v1}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v2, p0, Lcom/android/settings/BugreportPreference;->mInteractiveSummary:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object p0, p0, Lcom/android/settings/BugreportPreference;->mFullSummary:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p0, 0x1040697

    .line 80
    invoke-virtual {p1, p0, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 81
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    return-void
.end method
