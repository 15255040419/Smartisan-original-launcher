.class public Landroid/icu/util/DangiCalendar;
.super Landroid/icu/util/ChineseCalendar;
.source "DangiCalendar.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DANGI_EPOCH_YEAR:I = -0x91c

.field private static final KOREA_ZONE:Landroid/icu/util/TimeZone;

.field private static final serialVersionUID:J = 0x7130fd50087bac21L


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 66
    new-instance v0, Landroid/icu/util/InitialTimeZoneRule;

    const/4 v1, 0x0

    const-string v2, "GMT+8"

    const v3, 0x1b77400

    invoke-direct {v0, v2, v3, v1}, Landroid/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    const/4 v2, 0x1

    new-array v7, v2, [J

    const-wide v3, -0x21801858c00L

    aput-wide v3, v7, v1

    new-array v12, v2, [J

    const-wide v3, -0x210a9d46000L

    aput-wide v3, v12, v1

    new-array v2, v2, [J

    const-wide v3, -0x1a9de23f800L

    aput-wide v3, v2, v1

    .line 70
    new-instance v1, Landroid/icu/util/TimeArrayTimeZoneRule;

    const-string v4, "Korean 1897"

    const v5, 0x1808580

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Landroid/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V

    .line 72
    new-instance v3, Landroid/icu/util/TimeArrayTimeZoneRule;

    const-string v9, "Korean 1898-1911"

    const v10, 0x1b77400

    const/4 v11, 0x0

    const/4 v13, 0x1

    move-object v8, v3

    invoke-direct/range {v8 .. v13}, Landroid/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V

    .line 74
    new-instance v4, Landroid/icu/util/TimeArrayTimeZoneRule;

    const-string v14, "Korean 1912-"

    const v15, 0x1ee6280

    const/16 v16, 0x0

    const/16 v18, 0x1

    move-object v13, v4

    move-object/from16 v17, v2

    invoke-direct/range {v13 .. v18}, Landroid/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V

    .line 77
    new-instance v2, Landroid/icu/util/RuleBasedTimeZone;

    const-string v5, "KOREA_ZONE"

    invoke-direct {v2, v5, v0}, Landroid/icu/util/RuleBasedTimeZone;-><init>(Ljava/lang/String;Landroid/icu/util/InitialTimeZoneRule;)V

    .line 78
    invoke-virtual {v2, v1}, Landroid/icu/util/RuleBasedTimeZone;->addTransitionRule(Landroid/icu/util/TimeZoneRule;)V

    .line 79
    invoke-virtual {v2, v3}, Landroid/icu/util/RuleBasedTimeZone;->addTransitionRule(Landroid/icu/util/TimeZoneRule;)V

    .line 80
    invoke-virtual {v2, v4}, Landroid/icu/util/RuleBasedTimeZone;->addTransitionRule(Landroid/icu/util/TimeZoneRule;)V

    .line 81
    invoke-virtual {v2}, Landroid/icu/util/RuleBasedTimeZone;->freeze()Landroid/icu/util/TimeZone;

    .line 82
    sput-object v2, Landroid/icu/util/DangiCalendar;->KOREA_ZONE:Landroid/icu/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 93
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/DangiCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 121
    sget-object v0, Landroid/icu/util/DangiCalendar;->KOREA_ZONE:Landroid/icu/util/TimeZone;

    const/16 v1, -0x91c

    invoke-direct {p0, p1, p2, v1, v0}, Landroid/icu/util/ChineseCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;ILandroid/icu/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 106
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/DangiCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 107
    invoke-virtual {p0, p1}, Landroid/icu/util/DangiCalendar;->setTime(Ljava/util/Date;)V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string p0, "dangi"

    return-object p0
.end method
