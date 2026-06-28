.class public Lcom/android/settingslib/notification/EnableZenModeDialog;
.super Ljava/lang/Object;
.source "EnableZenModeDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;
    }
.end annotation


# static fields
.field protected static final COUNTDOWN_ALARM_CONDITION_INDEX:I = 0x2

.field protected static final COUNTDOWN_CONDITION_INDEX:I = 0x1

.field private static final DEBUG:Z

.field private static final DEFAULT_BUCKET_INDEX:I

.field protected static final FOREVER_CONDITION_INDEX:I = 0x0

.field private static final MAX_BUCKET_MINUTES:I

.field private static final MINUTES_MS:I = 0xea60

.field private static final MINUTE_BUCKETS:[I

.field private static final MIN_BUCKET_MINUTES:I

.field private static final SECONDS_MS:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "EnableZenModeDialog"


# instance fields
.field private MAX_MANUAL_DND_OPTIONS:I

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAttached:Z

.field private mBucketIndex:I

.field protected mContext:Landroid/content/Context;

.field protected mForeverId:Landroid/net/Uri;

.field protected mLayoutInflater:Landroid/view/LayoutInflater;

.field protected mNotificationManager:Landroid/app/NotificationManager;

.field private mUserId:I

.field protected mZenAlarmWarning:Landroid/widget/TextView;

.field private mZenRadioGroup:Landroid/widget/RadioGroup;

.field protected mZenRadioGroupContent:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "EnableZenModeDialog"

    const/4 v1, 0x3

    .line 58
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->DEBUG:Z

    .line 60
    sget-object v0, Landroid/service/notification/ZenModeConfig;->MINUTE_BUCKETS:[I

    sput-object v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->MINUTE_BUCKETS:[I

    .line 61
    sget-object v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->MINUTE_BUCKETS:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    sput v1, Lcom/android/settingslib/notification/EnableZenModeDialog;->MIN_BUCKET_MINUTES:I

    .line 62
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v1, v0, v1

    sput v1, Lcom/android/settingslib/notification/EnableZenModeDialog;->MAX_BUCKET_MINUTES:I

    const/16 v1, 0x3c

    .line 63
    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    sput v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->DEFAULT_BUCKET_INDEX:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 77
    iput v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mBucketIndex:I

    const/4 v0, 0x3

    .line 93
    iput v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->MAX_MANUAL_DND_OPTIONS:I

    .line 99
    iput-object p1, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingslib/notification/EnableZenModeDialog;)Landroid/widget/RadioGroup;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenRadioGroup:Landroid/widget/RadioGroup;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settingslib/notification/EnableZenModeDialog;Landroid/service/notification/Condition;)Z
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->isForever(Landroid/service/notification/Condition;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/settingslib/notification/EnableZenModeDialog;Landroid/service/notification/Condition;)Landroid/net/Uri;
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->getRealConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 56
    sget-boolean v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->DEBUG:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/settingslib/notification/EnableZenModeDialog;Landroid/service/notification/Condition;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->updateAlarmWarningText(Landroid/service/notification/Condition;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settingslib/notification/EnableZenModeDialog;Landroid/view/View;Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;ZI)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/notification/EnableZenModeDialog;->onClickTimeButton(Landroid/view/View;Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;ZI)V

    return-void
.end method

.method private foreverSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const p0, 0x10407d9

    .line 286
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;
    .locals 0

    if-eqz p0, :cond_0

    .line 253
    iget-object p0, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getRealConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;
    .locals 0

    .line 282
    invoke-direct {p0, p1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->isForever(Landroid/service/notification/Condition;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private hideAllConditions()V
    .locals 4

    .line 149
    iget-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v0, :cond_0

    .line 151
    iget-object v3, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenAlarmWarning:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private isForever(Landroid/service/notification/Condition;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 278
    iget-object p0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mForeverId:Landroid/net/Uri;

    iget-object p1, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onClickTimeButton(Landroid/view/View;Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;ZI)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    .line 420
    iget-object v3, v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    const/16 v4, 0xa3

    invoke-static {v3, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 422
    sget-object v3, Lcom/android/settingslib/notification/EnableZenModeDialog;->MINUTE_BUCKETS:[I

    array-length v3, v3

    .line 423
    iget v4, v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mBucketIndex:I

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-ne v4, v6, :cond_5

    .line 425
    iget-object v4, v1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->condition:Landroid/service/notification/Condition;

    invoke-static {v4}, Lcom/android/settingslib/notification/EnableZenModeDialog;->getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v4

    .line 426
    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 427
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    :goto_0
    if-ge v5, v3, :cond_4

    if-eqz v2, :cond_0

    move v4, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v3, -0x1

    sub-int/2addr v4, v5

    .line 430
    :goto_1
    sget-object v6, Lcom/android/settingslib/notification/EnableZenModeDialog;->MINUTE_BUCKETS:[I

    aget v15, v6, v4

    const v6, 0xea60

    mul-int/2addr v6, v15

    int-to-long v12, v6

    add-long v13, v10, v12

    if-eqz v2, :cond_1

    cmp-long v6, v13, v8

    if-gtz v6, :cond_2

    :cond_1
    if-nez v2, :cond_3

    cmp-long v6, v13, v8

    if-gez v6, :cond_3

    .line 433
    :cond_2
    iput v4, v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mBucketIndex:I

    .line 434
    iget-object v12, v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    .line 435
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v16

    const/16 v17, 0x0

    .line 434
    invoke-static/range {v12 .. v17}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;JIIZ)Landroid/service/notification/Condition;

    move-result-object v2

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_7

    .line 441
    sget v2, Lcom/android/settingslib/notification/EnableZenModeDialog;->DEFAULT_BUCKET_INDEX:I

    iput v2, v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mBucketIndex:I

    .line 442
    iget-object v2, v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/settingslib/notification/EnableZenModeDialog;->MINUTE_BUCKETS:[I

    iget v4, v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mBucketIndex:I

    aget v3, v3, v4

    .line 443
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 442
    invoke-static {v2, v3, v4}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v2

    goto :goto_3

    :cond_5
    sub-int/2addr v3, v7

    if-eqz v2, :cond_6

    move v6, v7

    :cond_6
    add-int/2addr v4, v6

    .line 447
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mBucketIndex:I

    .line 448
    iget-object v2, v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/settingslib/notification/EnableZenModeDialog;->MINUTE_BUCKETS:[I

    iget v4, v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mBucketIndex:I

    aget v3, v3, v4

    .line 449
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 448
    invoke-static {v2, v3, v4}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v2

    :cond_7
    :goto_3
    move/from16 v3, p4

    move-object v4, v2

    move-object/from16 v2, p1

    .line 451
    invoke-virtual {v0, v4, v2, v3}, Lcom/android/settingslib/notification/EnableZenModeDialog;->bind(Landroid/service/notification/Condition;Landroid/view/View;I)V

    .line 452
    iget-object v2, v1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->condition:Landroid/service/notification/Condition;

    invoke-direct {v0, v2}, Lcom/android/settingslib/notification/EnableZenModeDialog;->updateAlarmWarningText(Landroid/service/notification/Condition;)V

    .line 453
    iget-object v0, v1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v0, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method

.method private static setToMidnight(Ljava/util/Calendar;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xb

    .line 290
    invoke-virtual {p0, v1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 291
    invoke-virtual {p0, v1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 292
    invoke-virtual {p0, v1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    .line 293
    invoke-virtual {p0, v1, v0}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method private updateAlarmWarningText(Landroid/service/notification/Condition;)V
    .locals 1

    .line 457
    invoke-virtual {p0, p1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->computeAlarmWarningText(Landroid/service/notification/Condition;)Ljava/lang/String;

    move-result-object p1

    .line 458
    iget-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenAlarmWarning:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    iget-object p0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenAlarmWarning:Landroid/widget/TextView;

    if-nez p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private updateUi(Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;Landroid/view/View;Landroid/service/notification/Condition;ZILandroid/net/Uri;)V
    .locals 6

    .line 329
    iget-object v0, p1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->lines:Landroid/view/View;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const v0, 0x1020002

    .line 330
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->lines:Landroid/view/View;

    .line 331
    iget-object v0, p1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->lines:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    .line 333
    :cond_0
    iget-object v0, p1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->line1:Landroid/widget/TextView;

    if-nez v0, :cond_1

    const v0, 0x1020014

    .line 334
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->line1:Landroid/widget/TextView;

    .line 337
    :cond_1
    iget-object v0, p1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->line2:Landroid/widget/TextView;

    if-nez v0, :cond_2

    const v0, 0x1020015

    .line 338
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->line2:Landroid/widget/TextView;

    .line 341
    :cond_2
    iget-object v0, p3, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p3, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v0, p3, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    .line 343
    :goto_0
    iget-object v2, p3, Landroid/service/notification/Condition;->line2:Ljava/lang/String;

    .line 344
    iget-object v3, p1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->line1:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    .line 346
    iget-object v0, p1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->line2:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 348
    :cond_4
    iget-object v0, p1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->line2:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 349
    iget-object v0, p1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->line2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    :goto_1
    iget-object v0, p1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->lines:Landroid/view/View;

    invoke-virtual {v0, p4}, Landroid/view/View;->setEnabled(Z)V

    .line 352
    iget-object v0, p1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->lines:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p4, :cond_5

    move p4, v2

    goto :goto_2

    :cond_5
    const p4, 0x3ecccccd    # 0.4f

    :goto_2
    invoke-virtual {v0, p4}, Landroid/view/View;->setAlpha(F)V

    .line 354
    iget-object p4, p1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->lines:Landroid/view/View;

    new-instance v0, Lcom/android/settingslib/notification/EnableZenModeDialog$3;

    invoke-direct {v0, p0, p1}, Lcom/android/settingslib/notification/EnableZenModeDialog$3;-><init>(Lcom/android/settingslib/notification/EnableZenModeDialog;Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;)V

    invoke-virtual {p4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p4, 0x1020019

    .line 362
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    .line 363
    new-instance v0, Lcom/android/settingslib/notification/EnableZenModeDialog$4;

    invoke-direct {v0, p0, p2, p1, p5}, Lcom/android/settingslib/notification/EnableZenModeDialog$4;-><init>(Lcom/android/settingslib/notification/EnableZenModeDialog;Landroid/view/View;Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;I)V

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x102001a

    .line 371
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 372
    new-instance v5, Lcom/android/settingslib/notification/EnableZenModeDialog$5;

    invoke-direct {v5, p0, p2, p1, p5}, Lcom/android/settingslib/notification/EnableZenModeDialog$5;-><init>(Lcom/android/settingslib/notification/EnableZenModeDialog;Landroid/view/View;Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;I)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    invoke-static {p6}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide p1

    if-ne p5, v1, :cond_c

    const-wide/16 p5, 0x0

    cmp-long p5, p1, p5

    if-lez p5, :cond_c

    .line 381
    invoke-virtual {p4, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 382
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 383
    iget p5, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mBucketIndex:I

    const/4 p6, -0x1

    if-le p5, p6, :cond_8

    if-lez p5, :cond_6

    move p1, v1

    goto :goto_3

    :cond_6
    move p1, v4

    .line 384
    :goto_3
    invoke-virtual {p4, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 385
    iget p0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mBucketIndex:I

    sget-object p1, Lcom/android/settingslib/notification/EnableZenModeDialog;->MINUTE_BUCKETS:[I

    array-length p1, p1

    sub-int/2addr p1, v1

    if-ge p0, p1, :cond_7

    goto :goto_4

    :cond_7
    move v1, v4

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_5

    .line 387
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p5

    sub-long/2addr p1, p5

    .line 388
    sget p5, Lcom/android/settingslib/notification/EnableZenModeDialog;->MIN_BUCKET_MINUTES:I

    const p6, 0xea60

    mul-int/2addr p5, p6

    int-to-long p5, p5

    cmp-long p1, p1, p5

    if-lez p1, :cond_9

    move v4, v1

    :cond_9
    invoke-virtual {p4, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 389
    iget-object p0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settingslib/notification/EnableZenModeDialog;->MAX_BUCKET_MINUTES:I

    .line 390
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p2

    .line 389
    invoke-static {p0, p1, p2}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object p0

    .line 391
    iget-object p1, p3, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    iget-object p0, p0, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v1

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 394
    :goto_5
    invoke-virtual {p4}, Landroid/widget/ImageView;->isEnabled()Z

    move-result p0

    const/high16 p1, 0x3f000000    # 0.5f

    if-eqz p0, :cond_a

    move p0, v2

    goto :goto_6

    :cond_a
    move p0, p1

    :goto_6
    invoke-virtual {p4, p0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 395
    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_b

    move p1, v2

    :cond_b
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_7

    .line 397
    :cond_c
    invoke-virtual {p4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 398
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_7
    return-void
.end method


# virtual methods
.method protected bind(Landroid/service/notification/Condition;Landroid/view/View;I)V
    .locals 10

    if-eqz p1, :cond_5

    .line 189
    iget v0, p1, Landroid/service/notification/Condition;->state:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v7, v2

    goto :goto_0

    :cond_0
    move v7, v1

    .line 190
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;

    invoke-direct {v0}, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;-><init>()V

    :goto_1
    move-object v4, v0

    .line 192
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 193
    iget-object v0, v4, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->rb:Landroid/widget/RadioButton;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v1

    .line 194
    :goto_2
    iget-object v0, v4, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->rb:Landroid/widget/RadioButton;

    if-nez v0, :cond_3

    .line 195
    iget-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p3}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, v4, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->rb:Landroid/widget/RadioButton;

    .line 197
    :cond_3
    iput-object p1, v4, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->condition:Landroid/service/notification/Condition;

    .line 198
    iget-object v0, v4, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->condition:Landroid/service/notification/Condition;

    invoke-static {v0}, Lcom/android/settingslib/notification/EnableZenModeDialog;->getConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v9

    .line 199
    sget-boolean v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->DEBUG:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bind i="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p2}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " first="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " condition="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "EnableZenModeDialog"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_4
    iget-object v0, v4, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {v0, v7}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 202
    iget-object v0, v4, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->rb:Landroid/widget/RadioButton;

    new-instance v2, Lcom/android/settingslib/notification/EnableZenModeDialog$2;

    invoke-direct {v2, p0, v4, v9}, Lcom/android/settingslib/notification/EnableZenModeDialog$2;-><init>(Lcom/android/settingslib/notification/EnableZenModeDialog;Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;Landroid/net/Uri;)V

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    move-object v3, p0

    move-object v5, p2

    move-object v6, p1

    move v8, p3

    .line 215
    invoke-direct/range {v3 .. v9}, Lcom/android/settingslib/notification/EnableZenModeDialog;->updateUi(Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;Landroid/view/View;Landroid/service/notification/Condition;ZILandroid/net/Uri;)V

    .line 216
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 187
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "condition must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected bindConditions(Landroid/service/notification/Condition;)V
    .locals 3

    .line 227
    invoke-virtual {p0}, Lcom/android/settingslib/notification/EnableZenModeDialog;->forever()Landroid/service/notification/Condition;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settingslib/notification/EnableZenModeDialog;->bind(Landroid/service/notification/Condition;Landroid/view/View;I)V

    if-nez p1, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/android/settingslib/notification/EnableZenModeDialog;->bindGenericCountdown()V

    .line 231
    invoke-virtual {p0}, Lcom/android/settingslib/notification/EnableZenModeDialog;->getTimeUntilNextAlarmCondition()Landroid/service/notification/Condition;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->bindNextAlarm(Landroid/service/notification/Condition;)V

    goto :goto_0

    .line 232
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->isForever(Landroid/service/notification/Condition;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 233
    invoke-virtual {p0, v2}, Lcom/android/settingslib/notification/EnableZenModeDialog;->getConditionTagAt(I)Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;

    move-result-object p1

    iget-object p1, p1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 234
    invoke-virtual {p0}, Lcom/android/settingslib/notification/EnableZenModeDialog;->bindGenericCountdown()V

    .line 235
    invoke-virtual {p0}, Lcom/android/settingslib/notification/EnableZenModeDialog;->getTimeUntilNextAlarmCondition()Landroid/service/notification/Condition;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->bindNextAlarm(Landroid/service/notification/Condition;)V

    goto :goto_0

    .line 237
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->isAlarm(Landroid/service/notification/Condition;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 238
    invoke-virtual {p0}, Lcom/android/settingslib/notification/EnableZenModeDialog;->bindGenericCountdown()V

    .line 239
    invoke-virtual {p0, p1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->bindNextAlarm(Landroid/service/notification/Condition;)V

    const/4 p1, 0x2

    .line 240
    invoke-virtual {p0, p1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->getConditionTagAt(I)Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;

    move-result-object p0

    iget-object p0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {p0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 241
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->isCountdown(Landroid/service/notification/Condition;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 242
    invoke-virtual {p0}, Lcom/android/settingslib/notification/EnableZenModeDialog;->getTimeUntilNextAlarmCondition()Landroid/service/notification/Condition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/notification/EnableZenModeDialog;->bindNextAlarm(Landroid/service/notification/Condition;)V

    .line 243
    iget-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->bind(Landroid/service/notification/Condition;Landroid/view/View;I)V

    .line 245
    invoke-virtual {p0, v1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->getConditionTagAt(I)Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;

    move-result-object p0

    iget-object p0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->rb:Landroid/widget/RadioButton;

    invoke-virtual {p0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 247
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid manual condition: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EnableZenModeDialog"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected bindGenericCountdown()V
    .locals 3

    .line 318
    sget v0, Lcom/android/settingslib/notification/EnableZenModeDialog;->DEFAULT_BUCKET_INDEX:I

    iput v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mBucketIndex:I

    .line 319
    iget-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/settingslib/notification/EnableZenModeDialog;->MINUTE_BUCKETS:[I

    iget v2, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mBucketIndex:I

    aget v1, v1, v2

    .line 320
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 319
    invoke-static {v0, v1, v2}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v0

    .line 321
    iget-boolean v1, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mAttached:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/settingslib/notification/EnableZenModeDialog;->getConditionTagAt(I)Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->condition:Landroid/service/notification/Condition;

    if-nez v1, :cond_1

    .line 322
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settingslib/notification/EnableZenModeDialog;->bind(Landroid/service/notification/Condition;Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method protected bindNextAlarm(Landroid/service/notification/Condition;)V
    .locals 4

    .line 404
    iget-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 405
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;

    if-eqz p1, :cond_1

    .line 407
    iget-boolean v3, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mAttached:Z

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->condition:Landroid/service/notification/Condition;

    if-nez v2, :cond_1

    .line 408
    :cond_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->bind(Landroid/service/notification/Condition;Landroid/view/View;I)V

    .line 412
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 413
    iget-object p1, p1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->condition:Landroid/service/notification/Condition;

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    move p1, v2

    .line 414
    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p0, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    const/16 v1, 0x8

    if-eqz p1, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_4

    move v1, v2

    .line 416
    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected computeAlarmWarningText(Landroid/service/notification/Condition;)Ljava/lang/String;
    .locals 10

    .line 464
    iget-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iget v0, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_1

    return-object v3

    .line 472
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 473
    invoke-virtual {p0}, Lcom/android/settingslib/notification/EnableZenModeDialog;->getNextAlarm()J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-gez v0, :cond_2

    return-object v3

    :cond_2
    if-eqz p1, :cond_5

    .line 478
    invoke-direct {p0, p1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->isForever(Landroid/service/notification/Condition;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 481
    :cond_3
    iget-object p1, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v8

    cmp-long p1, v8, v4

    if-lez p1, :cond_4

    cmp-long p1, v6, v8

    if-gez p1, :cond_4

    .line 483
    sget p1, Lcom/android/settingslib/R$string;->zen_alarm_warning:I

    goto :goto_2

    :cond_4
    move p1, v2

    goto :goto_2

    .line 479
    :cond_5
    :goto_1
    sget p1, Lcom/android/settingslib/R$string;->zen_alarm_warning_indef:I

    :goto_2
    if-nez p1, :cond_6

    return-object v3

    .line 490
    :cond_6
    iget-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v6, v7, v4, v5}, Lcom/android/settingslib/notification/EnableZenModeDialog;->getTime(JJ)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public createDialog()Landroid/app/Dialog;
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    .line 104
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mNotificationManager:Landroid/app/NotificationManager;

    .line 105
    iget-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/service/notification/Condition;->newId(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "forever"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mForeverId:Landroid/net/Uri;

    .line 106
    iget-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mAlarmManager:Landroid/app/AlarmManager;

    .line 107
    iget-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mUserId:I

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mAttached:Z

    .line 110
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settingslib/R$string;->zen_mode_settings_turn_on_dialog_title:I

    .line 111
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$string;->cancel:I

    const/4 v2, 0x0

    .line 112
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$string;->zen_mode_enable_dialog_turn_on:I

    new-instance v2, Lcom/android/settingslib/notification/EnableZenModeDialog$1;

    invoke-direct {v2, p0}, Lcom/android/settingslib/notification/EnableZenModeDialog$1;-><init>(Lcom/android/settingslib/notification/EnableZenModeDialog;)V

    .line 113
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 142
    invoke-virtual {p0}, Lcom/android/settingslib/notification/EnableZenModeDialog;->getContentView()Landroid/view/View;

    move-result-object v1

    .line 143
    invoke-virtual {p0}, Lcom/android/settingslib/notification/EnableZenModeDialog;->forever()Landroid/service/notification/Condition;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settingslib/notification/EnableZenModeDialog;->bindConditions(Landroid/service/notification/Condition;)V

    .line 144
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 145
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public forever()Landroid/service/notification/Condition;
    .locals 9

    .line 257
    iget-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/service/notification/Condition;->newId(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "forever"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 258
    new-instance v0, Landroid/service/notification/Condition;

    iget-object v1, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->foreverSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-object v0
.end method

.method protected getConditionTagAt(I)Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;

    return-object p0
.end method

.method protected getContentView()Landroid/view/View;
    .locals 6

    .line 158
    iget-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mLayoutInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/settingslib/R$layout;->zen_mode_turn_on_dialog_container:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 163
    sget v1, Lcom/android/settingslib/R$id;->container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    .line 165
    sget v2, Lcom/android/settingslib/R$id;->zen_radio_buttons:I

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenRadioGroup:Landroid/widget/RadioGroup;

    .line 166
    sget v2, Lcom/android/settingslib/R$id;->zen_radio_buttons_content:I

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    .line 167
    sget v2, Lcom/android/settingslib/R$id;->zen_alarm_warning:I

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenAlarmWarning:Landroid/widget/TextView;

    const/4 v1, 0x0

    move v2, v1

    .line 169
    :goto_0
    iget v3, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->MAX_MANUAL_DND_OPTIONS:I

    if-ge v2, v3, :cond_1

    .line 170
    iget-object v3, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v4, Lcom/android/settingslib/R$layout;->zen_mode_radio_button:I

    iget-object v5, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 172
    iget-object v4, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4, v3}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 173
    invoke-virtual {v3, v2}, Landroid/view/View;->setId(I)V

    .line 175
    iget-object v3, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v4, Lcom/android/settingslib/R$layout;->zen_mode_condition:I

    iget-object v5, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 177
    iget v4, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->MAX_MANUAL_DND_OPTIONS:I

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 178
    iget-object v4, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenRadioGroupContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 181
    :cond_1
    invoke-direct {p0}, Lcom/android/settingslib/notification/EnableZenModeDialog;->hideAllConditions()V

    return-object v0
.end method

.method public getNextAlarm()J
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mAlarmManager:Landroid/app/AlarmManager;

    iget p0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mUserId:I

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 264
    invoke-virtual {p0}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method protected getTime(JJ)Ljava/lang/String;
    .locals 3

    sub-long p3, p1, p3

    const-wide/32 v0, 0x5265c00

    cmp-long p3, p3, v0

    const/4 p4, 0x1

    const/4 v0, 0x0

    if-gez p3, :cond_0

    move p3, p4

    goto :goto_0

    :cond_0
    move p3, v0

    .line 496
    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v1

    if-eqz p3, :cond_2

    if-eqz v1, :cond_1

    const-string v1, "Hm"

    goto :goto_1

    :cond_1
    const-string v1, "hma"

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    const-string v1, "EEEHm"

    goto :goto_1

    :cond_3
    const-string v1, "EEEhma"

    .line 498
    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 499
    invoke-static {v1, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p3, :cond_4

    .line 500
    sget p2, Lcom/android/settingslib/R$string;->alarm_template:I

    goto :goto_2

    :cond_4
    sget p2, Lcom/android/settingslib/R$string;->alarm_template_far:I

    .line 501
    :goto_2
    iget-object p0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    new-array p3, p4, [Ljava/lang/Object;

    aput-object p1, p3, v0

    invoke-virtual {p0, p2, p3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getTimeUntilNextAlarmCondition()Landroid/service/notification/Condition;
    .locals 5

    .line 299
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 300
    invoke-static {v0}, Lcom/android/settingslib/notification/EnableZenModeDialog;->setToMidnight(Ljava/util/Calendar;)V

    const/4 v1, 0x5

    const/4 v2, 0x6

    .line 301
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->add(II)V

    .line 302
    invoke-virtual {p0}, Lcom/android/settingslib/notification/EnableZenModeDialog;->getNextAlarm()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 304
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    .line 305
    invoke-virtual {v3, v1, v2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 306
    invoke-static {v3}, Lcom/android/settingslib/notification/EnableZenModeDialog;->setToMidnight(Ljava/util/Calendar;)V

    .line 308
    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 309
    iget-object p0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mContext:Landroid/content/Context;

    .line 310
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 309
    invoke-static {p0, v1, v2, v0}, Landroid/service/notification/ZenModeConfig;->toNextAlarmCondition(Landroid/content/Context;JI)Landroid/service/notification/Condition;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected isAlarm(Landroid/service/notification/Condition;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 269
    iget-object p0, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->isValidCountdownToAlarmConditionId(Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isCountdown(Landroid/service/notification/Condition;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 274
    iget-object p0, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->isValidCountdownConditionId(Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
