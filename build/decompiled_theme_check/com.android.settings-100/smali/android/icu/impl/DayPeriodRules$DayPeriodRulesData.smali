.class final Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;
.super Ljava/lang/Object;
.source "DayPeriodRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/DayPeriodRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DayPeriodRulesData"
.end annotation


# instance fields
.field localesToRuleSetNumMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field maxRuleSetNum:I

.field rules:[Landroid/icu/impl/DayPeriodRules;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;->localesToRuleSetNumMap:Ljava/util/Map;

    const/4 v0, -0x1

    .line 74
    iput v0, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;->maxRuleSetNum:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/DayPeriodRules$1;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;-><init>()V

    return-void
.end method
