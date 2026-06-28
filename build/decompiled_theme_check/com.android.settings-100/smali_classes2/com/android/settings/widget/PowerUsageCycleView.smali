.class public Lcom/android/settings/widget/PowerUsageCycleView;
.super Landroid/widget/RadioGroup;
.source "PowerUsageCycleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/PowerUsageCycleView$onCycleViewChanged;
    }
.end annotation


# static fields
.field private static final POWER_USAGE_CYCLE_INDEX:Ljava/lang/String; = "power_usage_cycle_index"


# instance fields
.field private final POWER_USAGE_CYCLE_MONTH:I

.field private final POWER_USAGE_CYCLE_TODAY:I

.field private final POWER_USAGE_CYCLE_WEEK:I

.field private mCycleMonth:Landroid/widget/TextView;

.field private mCycleToday:Landroid/widget/TextView;

.field private mCycleWeek:Landroid/widget/TextView;

.field private mListener:Lcom/android/settings/widget/PowerUsageCycleView$onCycleViewChanged;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/android/settings/widget/PowerUsageCycleView;->POWER_USAGE_CYCLE_TODAY:I

    const/4 p1, 0x1

    .line 22
    iput p1, p0, Lcom/android/settings/widget/PowerUsageCycleView;->POWER_USAGE_CYCLE_WEEK:I

    const/4 p1, 0x2

    .line 23
    iput p1, p0, Lcom/android/settings/widget/PowerUsageCycleView;->POWER_USAGE_CYCLE_MONTH:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/android/settings/widget/PowerUsageCycleView;->POWER_USAGE_CYCLE_TODAY:I

    const/4 p1, 0x1

    .line 22
    iput p1, p0, Lcom/android/settings/widget/PowerUsageCycleView;->POWER_USAGE_CYCLE_WEEK:I

    const/4 p1, 0x2

    .line 23
    iput p1, p0, Lcom/android/settings/widget/PowerUsageCycleView;->POWER_USAGE_CYCLE_MONTH:I

    return-void
.end method


# virtual methods
.method public initView()V
    .locals 1

    const v0, 0x7f0a0721

    .line 36
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/PowerUsageCycleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/widget/PowerUsageCycleView;->mCycleToday:Landroid/widget/TextView;

    .line 37
    iget-object v0, p0, Lcom/android/settings/widget/PowerUsageCycleView;->mCycleToday:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0722

    .line 38
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/PowerUsageCycleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/widget/PowerUsageCycleView;->mCycleWeek:Landroid/widget/TextView;

    .line 39
    iget-object v0, p0, Lcom/android/settings/widget/PowerUsageCycleView;->mCycleWeek:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a071e

    .line 40
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/PowerUsageCycleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/widget/PowerUsageCycleView;->mCycleMonth:Landroid/widget/TextView;

    .line 41
    iget-object v0, p0, Lcom/android/settings/widget/PowerUsageCycleView;->mCycleMonth:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 66
    iget-object v0, p0, Lcom/android/settings/widget/PowerUsageCycleView;->mCycleToday:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/widget/PowerUsageCycleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    iget-object v0, p0, Lcom/android/settings/widget/PowerUsageCycleView;->mCycleWeek:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/widget/PowerUsageCycleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    iget-object v0, p0, Lcom/android/settings/widget/PowerUsageCycleView;->mCycleMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/widget/PowerUsageCycleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f080377

    const v1, 0x7f080376

    const v2, 0x7f080375

    const/4 v3, 0x0

    const v4, 0x7f06010d

    const-string v5, "power_usage_cycle_index"

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 79
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/widget/PowerUsageCycleView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/PreferenceMgr;->getInstance(Landroid/content/Context;)Lcom/android/settings/PreferenceMgr;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v5, v1}, Lcom/android/settings/PreferenceMgr;->putInt(Ljava/lang/String;I)V

    .line 80
    iget-object p1, p0, Lcom/android/settings/widget/PowerUsageCycleView;->mCycleToday:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 81
    iget-object p1, p0, Lcom/android/settings/widget/PowerUsageCycleView;->mCycleWeek:Landroid/widget/TextView;

    const v1, 0x7f080379

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 82
    iget-object p1, p0, Lcom/android/settings/widget/PowerUsageCycleView;->mCycleMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 83
    iget-object p1, p0, Lcom/android/settings/widget/PowerUsageCycleView;->mCycleWeek:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/widget/PowerUsageCycleView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    iget-object p1, p0, Lcom/android/settings/widget/PowerUsageCycleView;->mCycleWeek:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/PowerUsageCycleView;->check(I)V

    goto :goto_0

    .line 71
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/widget/PowerUsageCycleView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/PreferenceMgr;->getInstance(Landroid/content/Context;)Lcom/android/settings/PreferenceMgr;

    move-result-object p1

    invoke-virtual {p1, v5, v3}, Lcom/android/settings/PreferenceMgr;->putInt(Ljava/lang/String;I)V

    .line 72
    iget-object p1, p0, Lcom/android/settings/widget/PowerUsageCycleView;->mCycleToday:Landroid/widget/TextView;

    const v2, 0x7f080378

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 73
    iget-object p1, p0, Lcom/android/settings/widget/PowerUsageCycleView;->mCycleWeek:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 74
    iget-object p1, p0, Lcom/android/settings/widget/PowerUsageCycleView;->mCycleMonth:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 75
    iget-object p1, p0, Lcom/android/settings/widget/PowerUsageCycleView;->mCycleToday:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/widget/PowerUsageCycleView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    iget-object p1, p0, Lcom/android/settings/widget/PowerUsageCycleView;->mCycleToday:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/PowerUsageCycleView;->check(I)V

    goto :goto_0

    .line 87
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings/widget/PowerUsageCycleView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/PreferenceMgr;->getInstance(Landroid/content/Context;)Lcom/android/settings/PreferenceMgr;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v5, v0}, Lcom/android/settings/PreferenceMgr;->putInt(Ljava/lang/String;I)V

    .line 88
    iget-object p1, p0, Lcom/android/settings/widget/PowerUsageCycleView;->mCycleToday:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 89
    iget-object p1, p0, Lcom/android/settings/widget/PowerUsageCycleView;->mCycleWeek:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 90
    iget-object p1, p0, Lcom/android/settings/widget/PowerUsageCycleView;->mCycleMonth:Landroid/widget/TextView;

    const v0, 0x7f08037a

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 91
    iget-object p1, p0, Lcom/android/settings/widget/PowerUsageCycleView;->mCycleMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/widget/PowerUsageCycleView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    iget-object p1, p0, Lcom/android/settings/widget/PowerUsageCycleView;->mCycleMonth:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/PowerUsageCycleView;->check(I)V

    .line 95
    :goto_0
    iget-object p1, p0, Lcom/android/settings/widget/PowerUsageCycleView;->mListener:Lcom/android/settings/widget/PowerUsageCycleView$onCycleViewChanged;

    invoke-virtual {p0}, Lcom/android/settings/widget/PowerUsageCycleView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/PreferenceMgr;->getInstance(Landroid/content/Context;)Lcom/android/settings/PreferenceMgr;

    move-result-object p0

    invoke-virtual {p0, v5, v3}, Lcom/android/settings/PreferenceMgr;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/settings/widget/PowerUsageCycleView$onCycleViewChanged;->onChanged(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a071e
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setListener(Lcom/android/settings/widget/PowerUsageCycleView$onCycleViewChanged;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/android/settings/widget/PowerUsageCycleView;->mListener:Lcom/android/settings/widget/PowerUsageCycleView$onCycleViewChanged;

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

    .line 57
    :cond_0
    iget-object p1, p0, Lcom/android/settings/widget/PowerUsageCycleView;->mCycleMonth:Landroid/widget/TextView;

    const v1, 0x7f08037a

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 58
    iget-object p1, p0, Lcom/android/settings/widget/PowerUsageCycleView;->mCycleMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/widget/PowerUsageCycleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    iget-object p1, p0, Lcom/android/settings/widget/PowerUsageCycleView;->mCycleMonth:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/PowerUsageCycleView;->check(I)V

    goto :goto_0

    .line 52
    :cond_1
    iget-object p1, p0, Lcom/android/settings/widget/PowerUsageCycleView;->mCycleWeek:Landroid/widget/TextView;

    const v1, 0x7f080379

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 53
    iget-object p1, p0, Lcom/android/settings/widget/PowerUsageCycleView;->mCycleWeek:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/widget/PowerUsageCycleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    iget-object p1, p0, Lcom/android/settings/widget/PowerUsageCycleView;->mCycleWeek:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/PowerUsageCycleView;->check(I)V

    goto :goto_0

    .line 47
    :cond_2
    iget-object p1, p0, Lcom/android/settings/widget/PowerUsageCycleView;->mCycleToday:Landroid/widget/TextView;

    const v1, 0x7f080378

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 48
    iget-object p1, p0, Lcom/android/settings/widget/PowerUsageCycleView;->mCycleToday:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/widget/PowerUsageCycleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    iget-object p1, p0, Lcom/android/settings/widget/PowerUsageCycleView;->mCycleToday:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/PowerUsageCycleView;->check(I)V

    :goto_0
    return-void
.end method
