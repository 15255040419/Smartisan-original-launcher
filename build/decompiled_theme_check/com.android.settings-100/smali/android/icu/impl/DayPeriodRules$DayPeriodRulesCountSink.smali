.class Landroid/icu/impl/DayPeriodRules$DayPeriodRulesCountSink;
.super Landroid/icu/impl/UResource$Sink;
.source "DayPeriodRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/DayPeriodRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DayPeriodRulesCountSink"
.end annotation


# instance fields
.field private data:Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;


# direct methods
.method private constructor <init>(Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;)V
    .locals 0

    .line 214
    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    .line 215
    iput-object p1, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesCountSink;->data:Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;Landroid/icu/impl/DayPeriodRules$1;)V
    .locals 0

    .line 211
    invoke-direct {p0, p1}, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesCountSink;-><init>(Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;)V

    return-void
.end method


# virtual methods
.method public put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .locals 3

    .line 220
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object p3

    const/4 v0, 0x0

    .line 221
    :goto_0
    invoke-interface {p3, v0, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/impl/DayPeriodRules;->access$000(Ljava/lang/String;)I

    move-result v1

    .line 223
    iget-object v2, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesCountSink;->data:Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;

    iget v2, v2, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;->maxRuleSetNum:I

    if-le v1, v2, :cond_0

    .line 224
    iget-object v2, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesCountSink;->data:Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;

    iput v1, v2, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;->maxRuleSetNum:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
