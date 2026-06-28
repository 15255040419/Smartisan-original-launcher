.class public Landroid/icu/util/HebrewHoliday;
.super Landroid/icu/util/Holiday;
.source "HebrewHoliday.java"


# static fields
.field public static ESTHER:Landroid/icu/util/HebrewHoliday;

.field public static GEDALIAH:Landroid/icu/util/HebrewHoliday;

.field public static HANUKKAH:Landroid/icu/util/HebrewHoliday;

.field public static HOSHANAH_RABBAH:Landroid/icu/util/HebrewHoliday;

.field public static LAG_BOMER:Landroid/icu/util/HebrewHoliday;

.field public static PASSOVER:Landroid/icu/util/HebrewHoliday;

.field public static PESACH_SHEINI:Landroid/icu/util/HebrewHoliday;

.field public static PURIM:Landroid/icu/util/HebrewHoliday;

.field public static ROSH_HASHANAH:Landroid/icu/util/HebrewHoliday;

.field public static SELIHOT:Landroid/icu/util/HebrewHoliday;

.field public static SHAVUOT:Landroid/icu/util/HebrewHoliday;

.field public static SHEMINI_ATZERET:Landroid/icu/util/HebrewHoliday;

.field public static SHUSHAN_PURIM:Landroid/icu/util/HebrewHoliday;

.field public static SIMCHAT_TORAH:Landroid/icu/util/HebrewHoliday;

.field public static SUKKOT:Landroid/icu/util/HebrewHoliday;

.field public static TAMMUZ_17:Landroid/icu/util/HebrewHoliday;

.field public static TEVET_10:Landroid/icu/util/HebrewHoliday;

.field public static TISHA_BAV:Landroid/icu/util/HebrewHoliday;

.field public static TU_BSHEVAT:Landroid/icu/util/HebrewHoliday;

.field public static YOM_HAATZMAUT:Landroid/icu/util/HebrewHoliday;

.field public static YOM_HASHOAH:Landroid/icu/util/HebrewHoliday;

.field public static YOM_HAZIKARON:Landroid/icu/util/HebrewHoliday;

.field public static YOM_KIPPUR:Landroid/icu/util/HebrewHoliday;

.field public static YOM_YERUSHALAYIM:Landroid/icu/util/HebrewHoliday;

.field private static final gCalendar:Landroid/icu/util/HebrewCalendar;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 22
    new-instance v0, Landroid/icu/util/HebrewCalendar;

    invoke-direct {v0}, Landroid/icu/util/HebrewCalendar;-><init>()V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->gCalendar:Landroid/icu/util/HebrewCalendar;

    .line 46
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "Rosh Hashanah"

    invoke-direct {v0, v2, v3, v1, v4}, Landroid/icu/util/HebrewHoliday;-><init>(IIILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->ROSH_HASHANAH:Landroid/icu/util/HebrewHoliday;

    .line 51
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const/4 v3, 0x3

    const-string v4, "Fast of Gedaliah"

    invoke-direct {v0, v2, v3, v4}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->GEDALIAH:Landroid/icu/util/HebrewHoliday;

    .line 56
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const/16 v4, 0xa

    const-string v5, "Yom Kippur"

    invoke-direct {v0, v2, v4, v5}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->YOM_KIPPUR:Landroid/icu/util/HebrewHoliday;

    .line 61
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const/16 v5, 0xf

    const/4 v6, 0x6

    const-string v7, "Sukkot"

    invoke-direct {v0, v2, v5, v6, v7}, Landroid/icu/util/HebrewHoliday;-><init>(IIILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->SUKKOT:Landroid/icu/util/HebrewHoliday;

    .line 66
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const/16 v7, 0x15

    const-string v8, "Hoshanah Rabbah"

    invoke-direct {v0, v2, v7, v8}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->HOSHANAH_RABBAH:Landroid/icu/util/HebrewHoliday;

    .line 71
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const/16 v8, 0x16

    const-string v9, "Shemini Atzeret"

    invoke-direct {v0, v2, v8, v9}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->SHEMINI_ATZERET:Landroid/icu/util/HebrewHoliday;

    .line 76
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const/16 v8, 0x17

    const-string v9, "Simchat Torah"

    invoke-direct {v0, v2, v8, v9}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->SIMCHAT_TORAH:Landroid/icu/util/HebrewHoliday;

    .line 81
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const/16 v2, 0x19

    const-string v8, "Hanukkah"

    invoke-direct {v0, v1, v2, v8}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->HANUKKAH:Landroid/icu/util/HebrewHoliday;

    .line 86
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const-string v2, "Fast of Tevet 10"

    invoke-direct {v0, v3, v4, v2}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->TEVET_10:Landroid/icu/util/HebrewHoliday;

    .line 91
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const/4 v2, 0x4

    const-string v3, "Tu B\'Shevat"

    invoke-direct {v0, v2, v5, v3}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->TU_BSHEVAT:Landroid/icu/util/HebrewHoliday;

    .line 96
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const/16 v3, 0xd

    const-string v8, "Fast of Esther"

    invoke-direct {v0, v6, v3, v8}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->ESTHER:Landroid/icu/util/HebrewHoliday;

    .line 101
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const/16 v3, 0xe

    const-string v8, "Purim"

    invoke-direct {v0, v6, v3, v8}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->PURIM:Landroid/icu/util/HebrewHoliday;

    .line 106
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const-string v8, "Shushan Purim"

    invoke-direct {v0, v6, v5, v8}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->SHUSHAN_PURIM:Landroid/icu/util/HebrewHoliday;

    .line 111
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const/4 v8, 0x7

    const/16 v9, 0x8

    const-string v10, "Passover"

    invoke-direct {v0, v8, v5, v9, v10}, Landroid/icu/util/HebrewHoliday;-><init>(IIILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->PASSOVER:Landroid/icu/util/HebrewHoliday;

    .line 116
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const/16 v5, 0x1b

    const-string v10, "Yom Hashoah"

    invoke-direct {v0, v8, v5, v10}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->YOM_HASHOAH:Landroid/icu/util/HebrewHoliday;

    .line 121
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const-string v5, "Yom Hazikaron"

    invoke-direct {v0, v9, v2, v5}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->YOM_HAZIKARON:Landroid/icu/util/HebrewHoliday;

    .line 126
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const/4 v2, 0x5

    const-string v5, "Yom Ha\'Atzmaut"

    invoke-direct {v0, v9, v2, v5}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->YOM_HAATZMAUT:Landroid/icu/util/HebrewHoliday;

    .line 131
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const-string v2, "Pesach Sheini"

    invoke-direct {v0, v9, v3, v2}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->PESACH_SHEINI:Landroid/icu/util/HebrewHoliday;

    .line 136
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const/16 v2, 0x12

    const-string v3, "Lab B\'Omer"

    invoke-direct {v0, v9, v2, v3}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->LAG_BOMER:Landroid/icu/util/HebrewHoliday;

    .line 141
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const/16 v2, 0x1c

    const-string v3, "Yom Yerushalayim"

    invoke-direct {v0, v9, v2, v3}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->YOM_YERUSHALAYIM:Landroid/icu/util/HebrewHoliday;

    .line 146
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const/16 v2, 0x9

    const-string v3, "Shavuot"

    invoke-direct {v0, v2, v6, v1, v3}, Landroid/icu/util/HebrewHoliday;-><init>(IIILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->SHAVUOT:Landroid/icu/util/HebrewHoliday;

    .line 151
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const/16 v1, 0x11

    const-string v3, "Fast of Tammuz 17"

    invoke-direct {v0, v4, v1, v3}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->TAMMUZ_17:Landroid/icu/util/HebrewHoliday;

    .line 156
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const/16 v1, 0xb

    const-string v3, "Fast of Tisha B\'Av"

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->TISHA_BAV:Landroid/icu/util/HebrewHoliday;

    .line 161
    new-instance v0, Landroid/icu/util/HebrewHoliday;

    const/16 v1, 0xc

    const-string v2, "Selihot"

    invoke-direct {v0, v1, v7, v2}, Landroid/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/HebrewHoliday;->SELIHOT:Landroid/icu/util/HebrewHoliday;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 1

    .line 40
    new-instance p3, Landroid/icu/util/SimpleDateRule;

    sget-object v0, Landroid/icu/util/HebrewHoliday;->gCalendar:Landroid/icu/util/HebrewCalendar;

    invoke-direct {p3, p1, p2, v0}, Landroid/icu/util/SimpleDateRule;-><init>(IILandroid/icu/util/Calendar;)V

    invoke-direct {p0, p4, p3}, Landroid/icu/util/Holiday;-><init>(Ljava/lang/String;Landroid/icu/util/DateRule;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 32
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/icu/util/HebrewHoliday;-><init>(IIILjava/lang/String;)V

    return-void
.end method
