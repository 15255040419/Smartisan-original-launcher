.class public final enum Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
.super Ljava/lang/Enum;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RelativeDateTimeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RelativeUnit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

.field public static final enum DAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

.field public static final enum HOURS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

.field public static final enum MINUTES:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

.field public static final enum MONTHS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

.field public static final enum QUARTERS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum SECONDS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

.field public static final enum WEEKS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

.field public static final enum YEARS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 109
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    const/4 v1, 0x0

    const-string v2, "SECONDS"

    invoke-direct {v0, v2, v1}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->SECONDS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    .line 114
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    const/4 v2, 0x1

    const-string v3, "MINUTES"

    invoke-direct {v0, v3, v2}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->MINUTES:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    .line 119
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    const/4 v3, 0x2

    const-string v4, "HOURS"

    invoke-direct {v0, v4, v3}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->HOURS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    .line 124
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    const/4 v4, 0x3

    const-string v5, "DAYS"

    invoke-direct {v0, v5, v4}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->DAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    .line 129
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    const/4 v5, 0x4

    const-string v6, "WEEKS"

    invoke-direct {v0, v6, v5}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->WEEKS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    .line 134
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    const/4 v6, 0x5

    const-string v7, "MONTHS"

    invoke-direct {v0, v7, v6}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->MONTHS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    .line 139
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    const/4 v7, 0x6

    const-string v8, "YEARS"

    invoke-direct {v0, v8, v7}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->YEARS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    .line 146
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    const/4 v8, 0x7

    const-string v9, "QUARTERS"

    invoke-direct {v0, v9, v8}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->QUARTERS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    const/16 v0, 0x8

    new-array v0, v0, [Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    .line 104
    sget-object v9, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->SECONDS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    aput-object v9, v0, v1

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->MINUTES:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->HOURS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->DAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->WEEKS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->MONTHS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    aput-object v1, v0, v6

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->YEARS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    aput-object v1, v0, v7

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->QUARTERS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    aput-object v1, v0, v8

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->$VALUES:[Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    .locals 1

    .line 104
    const-class v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    return-object p0
.end method

.method public static values()[Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    .locals 1

    .line 104
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->$VALUES:[Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    invoke-virtual {v0}, [Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    return-object v0
.end method
