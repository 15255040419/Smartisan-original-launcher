.class public Lcom/android/settings/BackCoverCalibration;
.super Lcom/android/settings/BaseActivity;
.source "BackCoverCalibration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/BackCoverCalibration$ViewHolder;,
        Lcom/android/settings/BackCoverCalibration$CoverAdapter;
    }
.end annotation


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAdapter:Lcom/android/settings/BackCoverCalibration$CoverAdapter;

.field private mConfiguration:Landroid/content/res/Configuration;

.field private mCurrentValue:I

.field private mDetectedValue:I

.field private mDisplayNameArray:[Ljava/lang/String;

.field private final mItemSelected:Landroid/widget/AdapterView$OnItemClickListener;

.field mLaunchedAuto:Z

.field private mListView:Landroid/widget/ListView;

.field private mValueArray:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/android/settings/BaseActivity;-><init>()V

    .line 81
    new-instance v0, Lcom/android/settings/BackCoverCalibration$1;

    invoke-direct {v0, p0}, Lcom/android/settings/BackCoverCalibration$1;-><init>(Lcom/android/settings/BackCoverCalibration;)V

    iput-object v0, p0, Lcom/android/settings/BackCoverCalibration;->mItemSelected:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/BackCoverCalibration;)Landroid/widget/ListView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/settings/BackCoverCalibration;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/BackCoverCalibration;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/android/settings/BackCoverCalibration;->mCurrentValue:I

    return p0
.end method

.method static synthetic access$102(Lcom/android/settings/BackCoverCalibration;I)I
    .locals 0

    .line 32
    iput p1, p0, Lcom/android/settings/BackCoverCalibration;->mCurrentValue:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/BackCoverCalibration;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/settings/BackCoverCalibration;->setCalibrateList()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/BackCoverCalibration;)Landroid/content/res/Configuration;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/settings/BackCoverCalibration;->mConfiguration:Landroid/content/res/Configuration;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/BackCoverCalibration;)Landroid/app/ActivityManager;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/settings/BackCoverCalibration;->mActivityManager:Landroid/app/ActivityManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/BackCoverCalibration;)[I
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/settings/BackCoverCalibration;->mValueArray:[I

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/settings/BackCoverCalibration;)[Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/settings/BackCoverCalibration;->mDisplayNameArray:[Ljava/lang/String;

    return-object p0
.end method

.method private addHeaderFooter()V
    .locals 4

    .line 97
    iget-object v0, p0, Lcom/android/settings/BackCoverCalibration;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/BackCoverCalibration;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d005c

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 100
    iget-object v1, p0, Lcom/android/settings/BackCoverCalibration;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 101
    iget-object v0, p0, Lcom/android/settings/BackCoverCalibration;->mListView:Landroid/widget/ListView;

    invoke-static {p0}, Lcom/android/settings/Utils;->inflateListTransparentHeader(Landroid/content/Context;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private getCalibrateList()Ljava/lang/String;
    .locals 1

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/BackCoverCalibration;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "rear_cover_color_final"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCurrentColor()I
    .locals 7

    .line 318
    invoke-direct {p0}, Lcom/android/settings/BackCoverCalibration;->getCalibrateList()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 319
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, ","

    .line 322
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 323
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    const/4 v5, 0x1

    .line 324
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 325
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget v6, p0, Lcom/android/settings/BackCoverCalibration;->mDetectedValue:I

    if-ne v5, v6, :cond_1

    const/4 p0, 0x2

    .line 326
    invoke-virtual {v4, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 329
    :cond_2
    iget p0, p0, Lcom/android/settings/BackCoverCalibration;->mDetectedValue:I

    return p0

    .line 320
    :cond_3
    :goto_1
    iget p0, p0, Lcom/android/settings/BackCoverCalibration;->mDetectedValue:I

    return p0
.end method

.method private getCurrentTheme()Ljava/lang/String;
    .locals 1

    .line 246
    invoke-static {}, Lsmartisanos/api/ConfigurationSmt;->getInstance()Lsmartisanos/api/ConfigurationSmt;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/BackCoverCalibration;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p0}, Lsmartisanos/api/ConfigurationSmt;->get_customTheme(Landroid/content/res/Configuration;)Landroid/content/res/CustomTheme;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 248
    invoke-virtual {p0}, Landroid/content/res/CustomTheme;->getThemeId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    invoke-virtual {p0}, Landroid/content/res/CustomTheme;->getThemeId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "SmartisanOSDefault"

    return-object p0
.end method

.method private getDetectedColor()I
    .locals 2

    .line 310
    invoke-virtual {p0}, Lcom/android/settings/BackCoverCalibration;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "rear_cover_color"

    const/4 v1, 0x7

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getDialogMsg()Ljava/lang/String;
    .locals 1

    .line 238
    iget v0, p0, Lcom/android/settings/BackCoverCalibration;->mCurrentValue:I

    if-nez v0, :cond_0

    const v0, 0x7f120681

    .line 240
    invoke-virtual {p0, v0}, Lcom/android/settings/BackCoverCalibration;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const v0, 0x7f120680

    .line 242
    invoke-virtual {p0, v0}, Lcom/android/settings/BackCoverCalibration;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getLauncherThemeFromValue()Ljava/lang/String;
    .locals 0

    .line 127
    iget p0, p0, Lcom/android/settings/BackCoverCalibration;->mCurrentValue:I

    packed-switch p0, :pswitch_data_0

    const-string/jumbo p0, "smartisan_theme_blue"

    return-object p0

    :pswitch_0
    const-string/jumbo p0, "smartisan_theme_green"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "smartisan_theme_light_blue"

    return-object p0

    :pswitch_2
    const-string/jumbo p0, "smartisan_theme_orange"

    return-object p0

    :pswitch_3
    const-string/jumbo p0, "smartisan_theme_purple"

    return-object p0

    :pswitch_4
    const-string/jumbo p0, "smartisan_theme_yellow"

    return-object p0

    :pswitch_5
    const-string/jumbo p0, "smartisan_theme_cyan"

    return-object p0

    :pswitch_6
    const-string/jumbo p0, "smartisan_theme_red"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setCalibrateList()V
    .locals 14

    .line 156
    invoke-direct {p0}, Lcom/android/settings/BackCoverCalibration;->getCalibrateList()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cover_color_calibrated"

    const-string v2, "_"

    const-string/jumbo v3, "rear_cover_color_final"

    const-string v4, ","

    if-nez v0, :cond_0

    .line 159
    iget v0, p0, Lcom/android/settings/BackCoverCalibration;->mDetectedValue:I

    iget v5, p0, Lcom/android/settings/BackCoverCalibration;->mCurrentValue:I

    if-eq v0, v5, :cond_6

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/BackCoverCalibration;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/android/settings/BackCoverCalibration;->mDetectedValue:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/BackCoverCalibration;->mCurrentValue:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/BackCoverCalibration;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget p0, p0, Lcom/android/settings/BackCoverCalibration;->mDetectedValue:I

    .line 166
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 164
    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_4

    .line 169
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 170
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    array-length v7, v0

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v7, :cond_2

    aget-object v10, v0, v9

    const/4 v11, 0x1

    .line 173
    invoke-virtual {v10, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 174
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iget v13, p0, Lcom/android/settings/BackCoverCalibration;->mDetectedValue:I

    if-ne v12, v13, :cond_1

    goto :goto_1

    .line 177
    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 180
    :cond_2
    iget v0, p0, Lcom/android/settings/BackCoverCalibration;->mDetectedValue:I

    iget v7, p0, Lcom/android/settings/BackCoverCalibration;->mCurrentValue:I

    if-eq v0, v7, :cond_3

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/android/settings/BackCoverCalibration;->mDetectedValue:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/BackCoverCalibration;->mCurrentValue:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/settings/BackCoverCalibration;->mDetectedValue:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/BackCoverCalibration;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 186
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_4

    move-object v2, v4

    goto :goto_2

    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 184
    :goto_2
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/BackCoverCalibration;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 189
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 187
    :goto_3
    invoke-static {p0, v1, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_6
    :goto_4
    return-void
.end method

.method private updateGlobalThemeIfNeeded()V
    .locals 3

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/BackCoverCalibration;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "launcher_theme"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-direct {p0}, Lcom/android/settings/BackCoverCalibration;->getCurrentTheme()Ljava/lang/String;

    move-result-object v1

    .line 197
    invoke-direct {p0}, Lcom/android/settings/BackCoverCalibration;->getLauncherThemeFromValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/BackCoverCalibration;->getThemeFromValue()Landroid/content/res/CustomTheme;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/CustomTheme;->getThemeId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 199
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120689

    .line 200
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 201
    invoke-direct {p0}, Lcom/android/settings/BackCoverCalibration;->getDialogMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120687

    .line 202
    invoke-virtual {p0, v1}, Lcom/android/settings/BackCoverCalibration;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/BackCoverCalibration$3;

    invoke-direct {v2, p0}, Lcom/android/settings/BackCoverCalibration$3;-><init>(Lcom/android/settings/BackCoverCalibration;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120688

    .line 210
    invoke-virtual {p0, v1}, Lcom/android/settings/BackCoverCalibration;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/BackCoverCalibration$2;

    invoke-direct {v2, p0}, Lcom/android/settings/BackCoverCalibration$2;-><init>(Lcom/android/settings/BackCoverCalibration;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 232
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 233
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :cond_1
    return-void
.end method


# virtual methods
.method protected getThemeFromValue()Landroid/content/res/CustomTheme;
    .locals 2

    .line 110
    iget p0, p0, Lcom/android/settings/BackCoverCalibration;->mCurrentValue:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    .line 122
    new-instance p0, Landroid/content/res/CustomTheme;

    const-string v0, "SmartisanOSDefault"

    const-string v1, "com.smartisanos.theme.default"

    invoke-direct {p0, v0, v1}, Landroid/content/res/CustomTheme;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 120
    :cond_0
    new-instance p0, Landroid/content/res/CustomTheme;

    const-string v0, "SmartisanOSGreen"

    const-string v1, "com.smartisanos.theme.green"

    invoke-direct {p0, v0, v1}, Landroid/content/res/CustomTheme;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 118
    :cond_1
    new-instance p0, Landroid/content/res/CustomTheme;

    const-string v0, "SmartisanOSOrange"

    const-string v1, "com.smartisanos.theme.orange"

    invoke-direct {p0, v0, v1}, Landroid/content/res/CustomTheme;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 116
    :cond_2
    new-instance p0, Landroid/content/res/CustomTheme;

    const-string v0, "SmartisanOSPurple"

    const-string v1, "com.smartisanos.theme.purple"

    invoke-direct {p0, v0, v1}, Landroid/content/res/CustomTheme;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 114
    :cond_3
    new-instance p0, Landroid/content/res/CustomTheme;

    const-string v0, "SmartisanOSYellow"

    const-string v1, "com.smartisanos.theme.yellow"

    invoke-direct {p0, v0, v1}, Landroid/content/res/CustomTheme;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 112
    :cond_4
    new-instance p0, Landroid/content/res/CustomTheme;

    const-string v0, "SmartisanOSCyan"

    const-string v1, "com.smartisanos.theme.cyan"

    invoke-direct {p0, v0, v1}, Landroid/content/res/CustomTheme;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method protected getValueFromPosition(I)I
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/settings/BackCoverCalibration;->mValueArray:[I

    aget p0, p0, p1

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 49
    invoke-super {p0, p1}, Lcom/android/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0159

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/settings/BackCoverCalibration;->setContentView(I)V

    const-string p1, "activity"

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/settings/BackCoverCalibration;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/android/settings/BackCoverCalibration;->mActivityManager:Landroid/app/ActivityManager;

    .line 54
    :try_start_0
    invoke-static {}, Lsmartisanos/api/ActivityManagerSmt;->getInstance()Lsmartisanos/api/ActivityManagerSmt;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/BackCoverCalibration;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {p1, v0}, Lsmartisanos/api/ActivityManagerSmt;->getConfiguration(Landroid/app/ActivityManager;)Landroid/content/res/Configuration;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/BackCoverCalibration;->mConfiguration:Landroid/content/res/Configuration;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 56
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 58
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/BackCoverCalibration;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030049

    .line 59
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/BackCoverCalibration;->mValueArray:[I

    const v0, 0x7f030012

    .line 60
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/BackCoverCalibration;->mDisplayNameArray:[Ljava/lang/String;

    .line 61
    invoke-static {p0}, Lcom/android/settings/Utils;->getDetectedColor(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/BackCoverCalibration;->mDetectedValue:I

    .line 62
    iget p1, p0, Lcom/android/settings/BackCoverCalibration;->mDetectedValue:I

    invoke-static {p0, p1}, Lcom/android/settings/Utils;->getCurrentColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/BackCoverCalibration;->mCurrentValue:I

    const p1, 0x102000a

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/settings/BackCoverCalibration;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/android/settings/BackCoverCalibration;->mListView:Landroid/widget/ListView;

    .line 65
    invoke-direct {p0}, Lcom/android/settings/BackCoverCalibration;->addHeaderFooter()V

    .line 66
    new-instance p1, Lcom/android/settings/BackCoverCalibration$CoverAdapter;

    invoke-direct {p1, p0, p0}, Lcom/android/settings/BackCoverCalibration$CoverAdapter;-><init>(Lcom/android/settings/BackCoverCalibration;Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/android/settings/BackCoverCalibration;->mAdapter:Lcom/android/settings/BackCoverCalibration$CoverAdapter;

    .line 67
    iget-object p1, p0, Lcom/android/settings/BackCoverCalibration;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/settings/BackCoverCalibration;->mAdapter:Lcom/android/settings/BackCoverCalibration$CoverAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    iget-object p1, p0, Lcom/android/settings/BackCoverCalibration;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/settings/BackCoverCalibration;->mItemSelected:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/BackCoverCalibration;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "launched_automatically"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/BackCoverCalibration;->mLaunchedAuto:Z

    .line 71
    iget-boolean p1, p0, Lcom/android/settings/BackCoverCalibration;->mLaunchedAuto:Z

    if-eqz p1, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/android/settings/BackCoverCalibration;->getDetectedColor()I

    move-result p1

    iput p1, p0, Lcom/android/settings/BackCoverCalibration;->mDetectedValue:I

    .line 73
    invoke-direct {p0}, Lcom/android/settings/BackCoverCalibration;->getCurrentColor()I

    move-result p1

    iput p1, p0, Lcom/android/settings/BackCoverCalibration;->mCurrentValue:I

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/BackCoverCalibration;->setupBackBtnOnTitle()Lsmartisanos/widget/TitleBar;

    const p1, 0x7f0a0a0b

    .line 78
    invoke-virtual {p0, p1}, Lcom/android/settings/BackCoverCalibration;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/TitleBar;

    const v0, 0x7f12022b

    invoke-virtual {p0, v0}, Lcom/android/settings/BackCoverCalibration;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lsmartisanos/widget/TitleBar;->setCenterText(Ljava/lang/String;)V

    return-void
.end method
