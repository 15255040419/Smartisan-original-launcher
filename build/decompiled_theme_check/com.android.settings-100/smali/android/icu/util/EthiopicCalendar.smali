.class public final Landroid/icu/util/EthiopicCalendar;
.super Landroid/icu/util/CECalendar;
.source "EthiopicCalendar.java"


# static fields
.field private static final AMETE_ALEM:I = 0x0

.field private static final AMETE_ALEM_ERA:I = 0x1

.field private static final AMETE_MIHRET:I = 0x1

.field private static final AMETE_MIHRET_DELTA:I = 0x157c

.field private static final AMETE_MIHRET_ERA:I = 0x0

.field public static final GENBOT:I = 0x8

.field public static final HAMLE:I = 0xa

.field public static final HEDAR:I = 0x2

.field private static final JD_EPOCH_OFFSET_AMETE_MIHRET:I = 0x1a4dd0

.field public static final MEGABIT:I = 0x6

.field public static final MESKEREM:I = 0x0

.field public static final MIAZIA:I = 0x7

.field public static final NEHASSE:I = 0xb

.field public static final PAGUMEN:I = 0xc

.field public static final SENE:I = 0x9

.field public static final TAHSAS:I = 0x3

.field public static final TEKEMT:I = 0x1

.field public static final TER:I = 0x4

.field public static final YEKATIT:I = 0x5

.field private static final serialVersionUID:J = -0x21d746fbfcf8d998L


# instance fields
.field private eraType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 144
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/EthiopicCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 210
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/util/CECalendar;-><init>(III)V

    const/4 p1, 0x0

    .line 137
    iput p1, p0, Landroid/icu/util/EthiopicCalendar;->eraType:I

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0

    .line 238
    invoke-direct/range {p0 .. p6}, Landroid/icu/util/CECalendar;-><init>(IIIIII)V

    const/4 p1, 0x0

    .line 137
    iput p1, p0, Landroid/icu/util/EthiopicCalendar;->eraType:I

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;)V
    .locals 1

    .line 154
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/icu/util/EthiopicCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V
    .locals 0

    .line 196
    invoke-direct {p0, p1, p2}, Landroid/icu/util/CECalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    const/4 p1, 0x0

    .line 137
    iput p1, p0, Landroid/icu/util/EthiopicCalendar;->eraType:I

    .line 197
    invoke-direct {p0, p2}, Landroid/icu/util/EthiopicCalendar;->setCalcTypeForLocale(Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V
    .locals 0

    .line 185
    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/icu/util/EthiopicCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 1

    .line 174
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/icu/util/EthiopicCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 0

    .line 220
    invoke-direct {p0, p1}, Landroid/icu/util/CECalendar;-><init>(Ljava/util/Date;)V

    const/4 p1, 0x0

    .line 137
    iput p1, p0, Landroid/icu/util/EthiopicCalendar;->eraType:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1

    .line 164
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/icu/util/EthiopicCalendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    return-void
.end method

.method public static EthiopicToJD(JII)I
    .locals 1

    const v0, 0x1a4dd0

    .line 369
    invoke-static {p0, p1, p2, p3, v0}, Landroid/icu/util/EthiopicCalendar;->ceToJD(JIII)I

    move-result p0

    return p0
.end method

.method private setCalcTypeForLocale(Landroid/icu/util/ULocale;)V
    .locals 1

    .line 376
    invoke-static {p1}, Landroid/icu/impl/CalendarUtil;->getCalendarType(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ethiopic-amete-alem"

    .line 377
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 378
    invoke-virtual {p0, p1}, Landroid/icu/util/EthiopicCalendar;->setAmeteAlemEra(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 380
    invoke-virtual {p0, p1}, Landroid/icu/util/EthiopicCalendar;->setAmeteAlemEra(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected getJDEpochOffset()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const p0, 0x1a4dd0

    return p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    .line 245
    invoke-virtual {p0}, Landroid/icu/util/EthiopicCalendar;->isAmeteAlemEra()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "ethiopic-amete-alem"

    return-object p0

    :cond_0
    const-string p0, "ethiopic"

    return-object p0
.end method

.method protected handleComputeFields(I)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 305
    invoke-virtual {p0}, Landroid/icu/util/EthiopicCalendar;->getJDEpochOffset()I

    move-result v1

    invoke-static {p1, v1, v0}, Landroid/icu/util/EthiopicCalendar;->jdToCE(II[I)V

    .line 311
    invoke-virtual {p0}, Landroid/icu/util/EthiopicCalendar;->isAmeteAlemEra()Z

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 313
    aget p1, v0, v2

    :goto_0
    add-int/lit16 p1, p1, 0x157c

    move v3, p1

    move p1, v2

    goto :goto_1

    .line 315
    :cond_0
    aget p1, v0, v2

    if-lez p1, :cond_1

    .line 317
    aget p1, v0, v2

    move v3, p1

    move p1, v1

    goto :goto_1

    .line 320
    :cond_1
    aget p1, v0, v2

    goto :goto_0

    :goto_1
    const/16 v4, 0x13

    .line 324
    aget v5, v0, v2

    invoke-virtual {p0, v4, v5}, Landroid/icu/util/EthiopicCalendar;->internalSet(II)V

    .line 325
    invoke-virtual {p0, v2, p1}, Landroid/icu/util/EthiopicCalendar;->internalSet(II)V

    .line 326
    invoke-virtual {p0, v1, v3}, Landroid/icu/util/EthiopicCalendar;->internalSet(II)V

    .line 327
    aget p1, v0, v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Landroid/icu/util/EthiopicCalendar;->internalSet(II)V

    const/4 p1, 0x5

    .line 328
    aget v3, v0, v2

    invoke-virtual {p0, p1, v3}, Landroid/icu/util/EthiopicCalendar;->internalSet(II)V

    const/4 p1, 0x6

    .line 329
    aget v1, v0, v1

    mul-int/lit8 v1, v1, 0x1e

    aget v0, v0, v2

    add-int/2addr v1, v0

    invoke-virtual {p0, p1, v1}, Landroid/icu/util/EthiopicCalendar;->internalSet(II)V

    return-void
.end method

.method protected handleGetExtendedYear()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x13

    const/4 v1, 0x1

    .line 279
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/EthiopicCalendar;->newerField(II)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 280
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/EthiopicCalendar;->internalGet(II)I

    move-result p0

    goto :goto_1

    .line 281
    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/EthiopicCalendar;->isAmeteAlemEra()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x157d

    .line 282
    invoke-virtual {p0, v1, v0}, Landroid/icu/util/EthiopicCalendar;->internalGet(II)I

    move-result p0

    :goto_0
    add-int/lit16 p0, p0, -0x157c

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 286
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/EthiopicCalendar;->internalGet(II)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 288
    invoke-virtual {p0, v1, v1}, Landroid/icu/util/EthiopicCalendar;->internalGet(II)I

    move-result p0

    goto :goto_1

    .line 290
    :cond_2
    invoke-virtual {p0, v1, v1}, Landroid/icu/util/EthiopicCalendar;->internalGet(II)I

    move-result p0

    goto :goto_0

    :goto_1
    return p0
.end method

.method protected handleGetLimit(II)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 339
    invoke-virtual {p0}, Landroid/icu/util/EthiopicCalendar;->isAmeteAlemEra()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 342
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/icu/util/CECalendar;->handleGetLimit(II)I

    move-result p0

    return p0
.end method

.method public isAmeteAlemEra()Z
    .locals 1

    .line 266
    iget p0, p0, Landroid/icu/util/EthiopicCalendar;->eraType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAmeteAlemEra(Z)V
    .locals 0

    .line 257
    iput p1, p0, Landroid/icu/util/EthiopicCalendar;->eraType:I

    return-void
.end method
