.class public Lcom/android/settings/AccountItem;
.super Landroid/widget/RelativeLayout;
.source "AccountItem.java"


# static fields
.field public static final SYNC_DISABLED:I = 0x1

.field public static final SYNC_ENABLED:I = 0x0

.field public static final SYNC_ERROR:I = 0x2

.field public static final SYNC_IN_PROGRESS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AccountItem"


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mAuthorities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mShowTypeIcon:Z

.field private mStatus:I

.field private final mSubTitle:Landroid/widget/TextView;

.field private final mSyncStatusIcon:Landroid/widget/ImageView;

.field private final mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;Z)V
    .locals 2
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

    .line 67
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x1

    const v1, 0x7f0d0283

    invoke-virtual {p1, v1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f0a057f

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/settings/AccountItem;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/AccountItem;->mTitle:Landroid/widget/TextView;

    const p1, 0x7f0a0564

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/settings/AccountItem;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/AccountItem;->mSubTitle:Landroid/widget/TextView;

    const p1, 0x7f0a04cd

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/settings/AccountItem;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/AccountItem;->mSyncStatusIcon:Landroid/widget/ImageView;

    .line 74
    iput-object p2, p0, Lcom/android/settings/AccountItem;->mAccount:Landroid/accounts/Account;

    .line 75
    iput-object p4, p0, Lcom/android/settings/AccountItem;->mAuthorities:Ljava/util/ArrayList;

    .line 76
    iput-boolean p5, p0, Lcom/android/settings/AccountItem;->mShowTypeIcon:Z

    if-eqz p5, :cond_0

    .line 79
    invoke-virtual {p0, p3}, Lcom/android/settings/AccountItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 81
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/settings/AccountItem;->getSyncStatusIcon(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/AccountItem;->setIcon(I)V

    .line 84
    :goto_0
    iget-object p1, p0, Lcom/android/settings/AccountItem;->mAccount:Landroid/accounts/Account;

    iget-object p1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/AccountItem;->setTitle(Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lcom/android/settings/AccountItem;->mAccount:Landroid/accounts/Account;

    iget-object p1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/AccountItem;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 86
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/AccountItem;->setSyncStatus(IZ)V

    return-void
.end method

.method private getSyncContentDescription(I)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    const v1, 0x7f120093

    if-eq p1, v0, :cond_0

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sync status: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AccountItem"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/AccountItem;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/AccountItem;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 178
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/AccountItem;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f120091

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 176
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/AccountItem;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f120092

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSyncStatusIcon(I)I
    .locals 2

    const p0, 0x7f08023b

    const v0, 0x7f080240

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    .line 168
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown sync status: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AccountItem"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move p0, v0

    goto :goto_0

    :cond_1
    const p0, 0x7f08023d

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

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown sync status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AccountItem"

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

    .line 110
    iget-object p0, p0, Lcom/android/settings/AccountItem;->mAccount:Landroid/accounts/Account;

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

    .line 114
    iget-object p0, p0, Lcom/android/settings/AccountItem;->mAuthorities:Ljava/util/ArrayList;

    return-object p0
.end method

.method public setIcon(I)V
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/settings/AccountItem;->mSyncStatusIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/settings/AccountItem;->mSyncStatusIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSummary(I)V
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/settings/AccountItem;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/android/settings/AccountItem;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSyncStatus(IZ)V
    .locals 2

    .line 118
    iput p1, p0, Lcom/android/settings/AccountItem;->mStatus:I

    .line 119
    iget-boolean v0, p0, Lcom/android/settings/AccountItem;->mShowTypeIcon:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/AccountItem;->mSyncStatusIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 120
    invoke-direct {p0, p1}, Lcom/android/settings/AccountItem;->getSyncStatusIcon(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    iget-object v0, p0, Lcom/android/settings/AccountItem;->mSyncStatusIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings/AccountItem;->mStatus:I

    invoke-direct {p0, v1}, Lcom/android/settings/AccountItem;->getSyncContentDescription(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 125
    invoke-direct {p0, p1}, Lcom/android/settings/AccountItem;->getSyncStatusMessage(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/AccountItem;->setSummary(I)V

    :cond_1
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/settings/AccountItem;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
