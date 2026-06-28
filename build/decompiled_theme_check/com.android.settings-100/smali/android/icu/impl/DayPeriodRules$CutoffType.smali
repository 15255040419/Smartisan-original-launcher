.class final enum Landroid/icu/impl/DayPeriodRules$CutoffType;
.super Ljava/lang/Enum;
.source "DayPeriodRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/DayPeriodRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CutoffType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/impl/DayPeriodRules$CutoffType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/impl/DayPeriodRules$CutoffType;

.field public static final enum AFTER:Landroid/icu/impl/DayPeriodRules$CutoffType;

.field public static final enum AT:Landroid/icu/impl/DayPeriodRules$CutoffType;

.field public static final enum BEFORE:Landroid/icu/impl/DayPeriodRules$CutoffType;

.field public static final enum FROM:Landroid/icu/impl/DayPeriodRules$CutoffType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 57
    new-instance v0, Landroid/icu/impl/DayPeriodRules$CutoffType;

    const/4 v1, 0x0

    const-string v2, "BEFORE"

    invoke-direct {v0, v2, v1}, Landroid/icu/impl/DayPeriodRules$CutoffType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/DayPeriodRules$CutoffType;->BEFORE:Landroid/icu/impl/DayPeriodRules$CutoffType;

    .line 58
    new-instance v0, Landroid/icu/impl/DayPeriodRules$CutoffType;

    const/4 v2, 0x1

    const-string v3, "AFTER"

    invoke-direct {v0, v3, v2}, Landroid/icu/impl/DayPeriodRules$CutoffType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/DayPeriodRules$CutoffType;->AFTER:Landroid/icu/impl/DayPeriodRules$CutoffType;

    .line 59
    new-instance v0, Landroid/icu/impl/DayPeriodRules$CutoffType;

    const/4 v3, 0x2

    const-string v4, "FROM"

    invoke-direct {v0, v4, v3}, Landroid/icu/impl/DayPeriodRules$CutoffType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/DayPeriodRules$CutoffType;->FROM:Landroid/icu/impl/DayPeriodRules$CutoffType;

    .line 60
    new-instance v0, Landroid/icu/impl/DayPeriodRules$CutoffType;

    const/4 v4, 0x3

    const-string v5, "AT"

    invoke-direct {v0, v5, v4}, Landroid/icu/impl/DayPeriodRules$CutoffType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/DayPeriodRules$CutoffType;->AT:Landroid/icu/impl/DayPeriodRules$CutoffType;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/icu/impl/DayPeriodRules$CutoffType;

    .line 56
    sget-object v5, Landroid/icu/impl/DayPeriodRules$CutoffType;->BEFORE:Landroid/icu/impl/DayPeriodRules$CutoffType;

    aput-object v5, v0, v1

    sget-object v1, Landroid/icu/impl/DayPeriodRules$CutoffType;->AFTER:Landroid/icu/impl/DayPeriodRules$CutoffType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/impl/DayPeriodRules$CutoffType;->FROM:Landroid/icu/impl/DayPeriodRules$CutoffType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/impl/DayPeriodRules$CutoffType;->AT:Landroid/icu/impl/DayPeriodRules$CutoffType;

    aput-object v1, v0, v4

    sput-object v0, Landroid/icu/impl/DayPeriodRules$CutoffType;->$VALUES:[Landroid/icu/impl/DayPeriodRules$CutoffType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/CharSequence;)Landroid/icu/impl/DayPeriodRules$CutoffType;
    .locals 0

    .line 56
    invoke-static {p0}, Landroid/icu/impl/DayPeriodRules$CutoffType;->fromStringOrNull(Ljava/lang/CharSequence;)Landroid/icu/impl/DayPeriodRules$CutoffType;

    move-result-object p0

    return-object p0
.end method

.method private static fromStringOrNull(Ljava/lang/CharSequence;)Landroid/icu/impl/DayPeriodRules$CutoffType;
    .locals 1

    const-string v0, "from"

    .line 63
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Landroid/icu/impl/DayPeriodRules$CutoffType;->FROM:Landroid/icu/impl/DayPeriodRules$CutoffType;

    return-object p0

    :cond_0
    const-string v0, "before"

    .line 64
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Landroid/icu/impl/DayPeriodRules$CutoffType;->BEFORE:Landroid/icu/impl/DayPeriodRules$CutoffType;

    return-object p0

    :cond_1
    const-string v0, "after"

    .line 65
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Landroid/icu/impl/DayPeriodRules$CutoffType;->AFTER:Landroid/icu/impl/DayPeriodRules$CutoffType;

    return-object p0

    :cond_2
    const-string v0, "at"

    .line 66
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Landroid/icu/impl/DayPeriodRules$CutoffType;->AT:Landroid/icu/impl/DayPeriodRules$CutoffType;

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/impl/DayPeriodRules$CutoffType;
    .locals 1

    .line 56
    const-class v0, Landroid/icu/impl/DayPeriodRules$CutoffType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/DayPeriodRules$CutoffType;

    return-object p0
.end method

.method public static values()[Landroid/icu/impl/DayPeriodRules$CutoffType;
    .locals 1

    .line 56
    sget-object v0, Landroid/icu/impl/DayPeriodRules$CutoffType;->$VALUES:[Landroid/icu/impl/DayPeriodRules$CutoffType;

    invoke-virtual {v0}, [Landroid/icu/impl/DayPeriodRules$CutoffType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/impl/DayPeriodRules$CutoffType;

    return-object v0
.end method
