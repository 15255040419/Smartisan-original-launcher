.class public Lcom/android/settings/widget/DataUsageCycleView;
.super Landroid/widget/RadioGroup;
.source "DataUsageCycleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/DataUsageCycleView$onCycleViewChanged;
    }
.end annotation


# static fields
.field private static final POWER_USAGE_CYCLE_INDEX:Ljava/lang/String; = "power_usage_cycle_index"


# instance fields
.field private final POWER_USAGE_CYCLE_MONTH:I

.field private final POWER_USAGE_CYCLE_TODAY:I

.field private final POWER_USAGE_CYCLE_WEEK:I

.field private final SUB1:I

.field private mCurrentSlot:I

.field private mCycleMonth:Landroid/widget/TextView;

.field private mCycleToday:Landroid/widget/TextView;

.field private mCycleWeek:Landroid/widget/TextView;

.field private mListener:Lcom/android/settings/widget/DataUsageCycleView$onCycleViewChanged;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/android/settings/widget/DataUsageCycleView;->POWER_USAGE_CYCLE_TODAY:I

    const/4 v0, 0x1

    .line 22
    iput v0, p0, Lcom/android/settings/widget/DataUsageCycleView;->POWER_USAGE_CYCLE_WEEK:I

    const/4 v0, 0x2

    .line 23
    iput v0, p0, Lcom/android/settings/widget/DataUsageCycleView;->POWER_USAGE_CYCLE_MONTH:I

    .line 26
    iput p1, p0, Lcom/android/settings/widget/DataUsageCycleView;->mCurrentSlot:I

    .line 27
    iput p1, p0, Lcom/android/settings/widget/DataUsageCycleView;->SUB1:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/android/settings/widget/DataUsageCycleView;->POWER_USAGE_CYCLE_TODAY:I

    const/4 p2, 0x1

    .line 22
    iput p2, p0, Lcom/android/settings/widget/DataUsageCycleView;->POWER_USAGE_CYCLE_WEEK:I

    const/4 p2, 0x2

    .line 23
    iput p2, p0, Lcom/android/settings/widget/DataUsageCycleView;->POWER_USAGE_CYCLE_MONTH:I

    .line 26
    iput p1, p0, Lcom/android/settings/widget/DataUsageCycleView;->mCurrentSlot:I

    .line 27
    iput p1, p0, Lcom/android/settings/widget/DataUsageCycleView;->SUB1:I

    return-void
.end method

.method private saveCfgToDB(I)V
    .locals 2

    .line 114
    iget v0, p0, Lcom/android/settings/widget/DataUsageCycleView;->mCurrentSlot:I

    if-nez v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/widget/DataUsageCycleView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_usage_cycle"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/widget/DataUsageCycleView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_usage_cycle_sub2"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 121
    :goto_0
    iget-object p0, p0, Lcom/android/settings/widget/DataUsageCycleView;->mListener:Lcom/android/settings/widget/DataUsageCycleView$onCycleViewChanged;

    invoke-interface {p0, p1}, Lcom/android/settings/widget/DataUsageCycleView$onCycleViewChanged;->onChanged(I)V

    return-void
.end method


# virtual methods
.method public initView()V
    .locals 1

    const v0, 0x7f0a0721

    .line 38
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/DataUsageCycleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/widget/DataUsageCycleView;->mCycleToday:Landroid/widget/TextView;

    .line 39
    iget-object v0, p0, Lcom/android/settings/widget/DataUsageCycleView;->mCycleToday:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0722

    .line 40
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/DataUsageCycleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/widget/DataUsageCycleView;->mCycleWeek:Landroid/widget/TextView;

    .line 41
    iget-object v0, p0, Lcom/android/settings/widget/DataUsageCycleView;->mCycleWeek:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a071e

    .line 42
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/DataUsageCycleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/widget/DataUsageCycleView;->mCycleMonth:Landroid/widget/TextView;

    .line 43
    iget-object v0, p0, Lcom/android/settings/widget/DataUsageCycleView;->mCycleMonth:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/android/settings/widget/DataUsageCycleView;->mCycleToday:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/widget/DataUsageCycleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    iget-object v0, p0, Lcom/android/settings/widget/DataUsageCycleView;->mCycleWeek:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/widget/DataUsageCycleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    iget-object v0, p0, Lcom/android/settings/widget/DataUsageCycleView;->mCycleMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/widget/DataUsageCycleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f080377

    const v1, 0x7f080376

    const v2, 0x7f080375

    const v3, 0x7f06010d

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    const/4 p1, 0x1

    .line 86
    invoke-direct {p0, p1}, Lcom/android/settings/widget/DataUsageCycleView;->saveCfgToDB(I)V

    .line 87
    iget-object p1, p0, Lcom/android/settings/widget/DataUsageCycleView;->mCycleToday:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 88
    iget-object p1, p0, Lcom/android/settings/widget/DataUsageCycleView;->mCycleWeek:Landroid/widget/TextView;

    const v1, 0x7f080379

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 89
    iget-object p1, p0, Lcom/android/settings/widget/DataUsageCycleView;->mCycleMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 90
    iget-object p1, p0, Lcom/android/settings/widget/DataUsageCycleView;->mCycleWeek:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/widget/DataUsageCycleView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    iget-object p1, p0, Lcom/android/settings/widget/DataUsageCycleView;->mCycleWeek:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/DataUsageCycleView;->check(I)V

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x0

    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings/widget/DataUsageCycleView;->saveCfgToDB(I)V

    .line 79
    iget-object p1, p0, Lcom/android/settings/widget/DataUsageCycleView;->mCycleToday:Landroid/widget/TextView;

    const v2, 0x7f080378

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 80
    iget-object p1, p0, Lcom/android/settings/widget/DataUsageCycleView;->mCycleWeek:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 81
    iget-object p1, p0, Lcom/android/settings/widget/DataUsageCycleView;->mCycleMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 82
    iget-object p1, p0, Lcom/android/settings/widget/DataUsageCycleView;->mCycleToday:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/widget/DataUsageCycleView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    iget-object p1, p0, Lcom/android/settings/widget/DataUsageCycleView;->mCycleToday:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/DataUsageCycleView;->check(I)V

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x2

    .line 94
    invoke-direct {p0, p1}, Lcom/android/settings/widget/DataUsageCycleView;->saveCfgToDB(I)V

    .line 95
    iget-object p1, p0, Lcom/android/settings/widget/DataUsageCycleView;->mCycleToday:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 96
    iget-object p1, p0, Lcom/android/settings/widget/DataUsageCycleView;->mCycleWeek:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 97
    iget-object p1, p0, Lcom/android/settings/widget/DataUsageCycleView;->mCycleMonth:Landroid/widget/TextView;

    const v0, 0x7f08037a

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 98
    iget-object p1, p0, Lcom/android/settings/widget/DataUsageCycleView;->mCycleMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/widget/DataUsageCycleView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    iget-object p1, p0, Lcom/android/settings/widget/DataUsageCycleView;->mCycleMonth:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/DataUsageCycleView;->check(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a071e
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setCurrentSlot(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/android/settings/widget/DataUsageCycleView;->mCurrentSlot:I

    return-void
.end method

.method public setListener(Lcom/android/settings/widget/DataUsageCycleView$onCycleViewChanged;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/android/settings/widget/DataUsageCycleView;->mListener:Lcom/android/settings/widget/DataUsageCycleView$onCycleViewChanged;

    return-void
.end method

.method public setTextViewBackground(I)V
    .locals 2

    const v0, 0x7f06010d

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/android/settings/widget/DataUsageCycleView;->mCycleMonth:Landroid/widget/TextView;

    const v1, 0x7f08037a

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 64
    iget-object p1, p0, Lcom/android/settings/widget/DataUsageCycleView;->mCycleMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/widget/DataUsageCycleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    iget-object p1, p0, Lcom/android/settings/widget/DataUsageCycleView;->mCycleMonth:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/DataUsageCycleView;->check(I)V

    goto :goto_0

    .line 58
    :cond_1
    iget-object p1, p0, Lcom/android/settings/widget/DataUsageCycleView;->mCycleWeek:Landroid/widget/TextView;

    const v1, 0x7f080379

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 59
    iget-object p1, p0, Lcom/android/settings/widget/DataUsageCycleView;->mCycleWeek:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/widget/DataUsageCycleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    iget-object p1, p0, Lcom/android/settings/widget/DataUsageCycleView;->mCycleWeek:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/DataUsageCycleView;->check(I)V

    goto :goto_0

    .line 53
    :cond_2
    iget-object p1, p0, Lcom/android/settings/widget/DataUsageCycleView;->mCycleToday:Landroid/widget/TextView;

    const v1, 0x7f080378

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 54
    iget-object p1, p0, Lcom/android/settings/widget/DataUsageCycleView;->mCycleToday:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/widget/DataUsageCycleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    iget-object p1, p0, Lcom/android/settings/widget/DataUsageCycleView;->mCycleToday:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/DataUsageCycleView;->check(I)V

    :goto_0
    return-void
.end method
