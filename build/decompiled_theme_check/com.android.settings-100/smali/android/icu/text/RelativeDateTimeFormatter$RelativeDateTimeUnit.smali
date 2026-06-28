.class public final enum Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;
.super Ljava/lang/Enum;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RelativeDateTimeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RelativeDateTimeUnit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

.field public static final enum DAY:Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

.field public static final enum FRIDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

.field public static final enum HOUR:Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

.field public static final enum MINUTE:Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

.field public static final enum MONDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

.field public static final enum MONTH:Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

.field public static final enum QUARTER:Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

.field public static final enum SATURDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

.field public static final enum SECOND:Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

.field public static final enum SUNDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

.field public static final enum THURSDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

.field public static final enum TUESDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

.field public static final enum WEDNESDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

.field public static final enum WEEK:Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

.field public static final enum YEAR:Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 269
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    const/4 v1, 0x0

    const-string v2, "YEAR"

    invoke-direct {v0, v2, v1}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->YEAR:Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    .line 274
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    const/4 v2, 0x1

    const-string v3, "QUARTER"

    invoke-direct {v0, v3, v2}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->QUARTER:Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    .line 279
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    const/4 v3, 0x2

    const-string v4, "MONTH"

    invoke-direct {v0, v4, v3}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->MONTH:Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    .line 284
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    const/4 v4, 0x3

    const-string v5, "WEEK"

    invoke-direct {v0, v5, v4}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->WEEK:Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    .line 289
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    const/4 v5, 0x4

    const-string v6, "DAY"

    invoke-direct {v0, v6, v5}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->DAY:Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    .line 294
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    const/4 v6, 0x5

    const-string v7, "HOUR"

    invoke-direct {v0, v7, v6}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->HOUR:Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    .line 299
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    const/4 v7, 0x6

    const-string v8, "MINUTE"

    invoke-direct {v0, v8, v7}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->MINUTE:Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    .line 304
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    const/4 v8, 0x7

    const-string v9, "SECOND"

    invoke-direct {v0, v9, v8}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->SECOND:Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    .line 309
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    const/16 v9, 0x8

    const-string v10, "SUNDAY"

    invoke-direct {v0, v10, v9}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->SUNDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    .line 314
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    const/16 v10, 0x9

    const-string v11, "MONDAY"

    invoke-direct {v0, v11, v10}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->MONDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    .line 319
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    const/16 v11, 0xa

    const-string v12, "TUESDAY"

    invoke-direct {v0, v12, v11}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->TUESDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    .line 324
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    const/16 v12, 0xb

    const-string v13, "WEDNESDAY"

    invoke-direct {v0, v13, v12}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->WEDNESDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    .line 329
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    const/16 v13, 0xc

    const-string v14, "THURSDAY"

    invoke-direct {v0, v14, v13}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->THURSDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    .line 334
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    const/16 v14, 0xd

    const-string v15, "FRIDAY"

    invoke-direct {v0, v15, v14}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->FRIDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    .line 339
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    const/16 v15, 0xe

    const-string v14, "SATURDAY"

    invoke-direct {v0, v14, v15}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->SATURDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    const/16 v0, 0xf

    new-array v0, v0, [Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    .line 264
    sget-object v14, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->YEAR:Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    aput-object v14, v0, v1

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->QUARTER:Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->MONTH:Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->WEEK:Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->DAY:Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->HOUR:Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    aput-object v1, v0, v6

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->MINUTE:Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    aput-object v1, v0, v7

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->SECOND:Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    aput-object v1, v0, v8

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->SUNDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    aput-object v1, v0, v9

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->MONDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    aput-object v1, v0, v10

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->TUESDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    aput-object v1, v0, v11

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->WEDNESDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    aput-object v1, v0, v12

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->THURSDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    aput-object v1, v0, v13

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->FRIDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->SATURDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    aput-object v1, v0, v15

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->$VALUES:[Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 264
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;
    .locals 1

    .line 264
    const-class v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    return-object p0
.end method

.method public static values()[Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;
    .locals 1

    .line 264
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->$VALUES:[Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    invoke-virtual {v0}, [Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    return-object v0
.end method
