.class final enum Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;
.super Ljava/lang/Enum;
.source "DateFormatSymbols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateFormatSymbols$CalendarDataSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AliasType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

.field public static final enum DIFFERENT_CALENDAR:Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

.field public static final enum GREGORIAN:Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

.field public static final enum NONE:Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

.field public static final enum SAME_CALENDAR:Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1800
    new-instance v0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    const/4 v1, 0x0

    const-string v2, "SAME_CALENDAR"

    invoke-direct {v0, v2, v1}, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->SAME_CALENDAR:Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    .line 1801
    new-instance v0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    const/4 v2, 0x1

    const-string v3, "DIFFERENT_CALENDAR"

    invoke-direct {v0, v3, v2}, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->DIFFERENT_CALENDAR:Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    .line 1802
    new-instance v0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    const/4 v3, 0x2

    const-string v4, "GREGORIAN"

    invoke-direct {v0, v4, v3}, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->GREGORIAN:Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    .line 1803
    new-instance v0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    const/4 v4, 0x3

    const-string v5, "NONE"

    invoke-direct {v0, v5, v4}, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->NONE:Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    .line 1799
    sget-object v5, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->SAME_CALENDAR:Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    aput-object v5, v0, v1

    sget-object v1, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->DIFFERENT_CALENDAR:Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->GREGORIAN:Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->NONE:Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    aput-object v1, v0, v4

    sput-object v0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->$VALUES:[Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1799
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;
    .locals 1

    .line 1799
    const-class v0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    return-object p0
.end method

.method public static values()[Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;
    .locals 1

    .line 1799
    sget-object v0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->$VALUES:[Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    invoke-virtual {v0}, [Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/DateFormatSymbols$CalendarDataSink$AliasType;

    return-object v0
.end method
