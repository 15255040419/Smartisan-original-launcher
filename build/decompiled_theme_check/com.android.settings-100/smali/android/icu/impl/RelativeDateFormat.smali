.class public Landroid/icu/impl/RelativeDateFormat;
.super Landroid/icu/text/DateFormat;
.source "RelativeDateFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/RelativeDateFormat$RelDateFmtDataSink;,
        Landroid/icu/impl/RelativeDateFormat$URelativeString;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xfb59e5457c57c3bL


# instance fields
.field private transient capitalizationBrkIter:Landroid/icu/text/BreakIterator;

.field private capitalizationInfoIsSet:Z

.field private capitalizationOfRelativeUnitsForListOrMenu:Z

.field private capitalizationOfRelativeUnitsForStandAlone:Z

.field private combinedFormatHasDateAtStart:Z

.field private fCombinedFormat:Landroid/icu/text/MessageFormat;

.field private fDateFormat:Landroid/icu/text/DateFormat;

.field private fDatePattern:Ljava/lang/String;

.field fDateStyle:I

.field private fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

.field private transient fDates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/impl/RelativeDateFormat$URelativeString;",
            ">;"
        }
    .end annotation
.end field

.field fLocale:Landroid/icu/util/ULocale;

.field private fTimeFormat:Landroid/icu/text/DateFormat;

.field private fTimePattern:Ljava/lang/String;

.field fTimeStyle:I


# direct methods
.method public constructor <init>(IILandroid/icu/util/ULocale;Landroid/icu/util/Calendar;)V
    .locals 2

    .line 61
    invoke-direct {p0}, Landroid/icu/text/DateFormat;-><init>()V

    const/4 v0, 0x0

    .line 216
    iput-object v0, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    .line 217
    iput-object v0, p0, Landroid/icu/impl/RelativeDateFormat;->fDatePattern:Ljava/lang/String;

    .line 218
    iput-object v0, p0, Landroid/icu/impl/RelativeDateFormat;->fTimePattern:Ljava/lang/String;

    .line 224
    iput-object v0, p0, Landroid/icu/impl/RelativeDateFormat;->fDates:Ljava/util/List;

    const/4 v1, 0x0

    .line 226
    iput-boolean v1, p0, Landroid/icu/impl/RelativeDateFormat;->combinedFormatHasDateAtStart:Z

    .line 227
    iput-boolean v1, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationInfoIsSet:Z

    .line 228
    iput-boolean v1, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationOfRelativeUnitsForListOrMenu:Z

    .line 229
    iput-boolean v1, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationOfRelativeUnitsForStandAlone:Z

    .line 230
    iput-object v0, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    .line 62
    iput-object p4, p0, Landroid/icu/impl/RelativeDateFormat;->calendar:Landroid/icu/util/Calendar;

    .line 64
    iput-object p3, p0, Landroid/icu/impl/RelativeDateFormat;->fLocale:Landroid/icu/util/ULocale;

    .line 65
    iput p1, p0, Landroid/icu/impl/RelativeDateFormat;->fTimeStyle:I

    .line 66
    iput p2, p0, Landroid/icu/impl/RelativeDateFormat;->fDateStyle:I

    .line 68
    iget p1, p0, Landroid/icu/impl/RelativeDateFormat;->fDateStyle:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    and-int/lit16 p1, p1, -0x81

    .line 70
    invoke-static {p1, p3}, Landroid/icu/text/DateFormat;->getDateInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object p1

    .line 71
    instance-of p4, p1, Landroid/icu/text/SimpleDateFormat;

    if-eqz p4, :cond_0

    .line 72
    check-cast p1, Landroid/icu/text/SimpleDateFormat;

    iput-object p1, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    .line 76
    iget-object p1, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {p1}, Landroid/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/RelativeDateFormat;->fDatePattern:Ljava/lang/String;

    .line 77
    iget p1, p0, Landroid/icu/impl/RelativeDateFormat;->fTimeStyle:I

    if-eq p1, p2, :cond_2

    and-int/lit16 p1, p1, -0x81

    .line 79
    invoke-static {p1, p3}, Landroid/icu/text/DateFormat;->getTimeInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object p1

    .line 80
    instance-of p2, p1, Landroid/icu/text/SimpleDateFormat;

    if-eqz p2, :cond_2

    .line 81
    check-cast p1, Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {p1}, Landroid/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/RelativeDateFormat;->fTimePattern:Ljava/lang/String;

    goto :goto_0

    .line 74
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t create SimpleDateFormat for date style"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 86
    :cond_1
    iget p1, p0, Landroid/icu/impl/RelativeDateFormat;->fTimeStyle:I

    and-int/lit16 p1, p1, -0x81

    .line 87
    invoke-static {p1, p3}, Landroid/icu/text/DateFormat;->getTimeInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object p1

    .line 88
    instance-of p2, p1, Landroid/icu/text/SimpleDateFormat;

    if-eqz p2, :cond_3

    .line 89
    check-cast p1, Landroid/icu/text/SimpleDateFormat;

    iput-object p1, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    .line 93
    iget-object p1, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {p1}, Landroid/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/RelativeDateFormat;->fTimePattern:Ljava/lang/String;

    .line 96
    :cond_2
    :goto_0
    iget-object p1, p0, Landroid/icu/impl/RelativeDateFormat;->fLocale:Landroid/icu/util/ULocale;

    invoke-direct {p0, v0, p1}, Landroid/icu/impl/RelativeDateFormat;->initializeCalendar(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    .line 97
    invoke-direct {p0}, Landroid/icu/impl/RelativeDateFormat;->loadDates()V

    .line 98
    iget-object p1, p0, Landroid/icu/impl/RelativeDateFormat;->calendar:Landroid/icu/util/Calendar;

    iget-object p2, p0, Landroid/icu/impl/RelativeDateFormat;->fLocale:Landroid/icu/util/ULocale;

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/RelativeDateFormat;->initializeCombinedFormat(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;)Landroid/icu/text/MessageFormat;

    return-void

    .line 91
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t create SimpleDateFormat for time style"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$000(Landroid/icu/impl/RelativeDateFormat;I)Ljava/lang/String;
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Landroid/icu/impl/RelativeDateFormat;->getStringForDay(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Landroid/icu/impl/RelativeDateFormat;)Ljava/util/List;
    .locals 0

    .line 34
    iget-object p0, p0, Landroid/icu/impl/RelativeDateFormat;->fDates:Ljava/util/List;

    return-object p0
.end method

.method private static dayDifference(Landroid/icu/util/Calendar;)I
    .locals 4

    .line 311
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Calendar;

    .line 312
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 313
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->clear()V

    .line 314
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v1, 0x14

    .line 315
    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr p0, v0

    return p0
.end method

.method private getStringForDay(I)Ljava/lang/String;
    .locals 2

    .line 238
    iget-object v0, p0, Landroid/icu/impl/RelativeDateFormat;->fDates:Ljava/util/List;

    if-nez v0, :cond_0

    .line 239
    invoke-direct {p0}, Landroid/icu/impl/RelativeDateFormat;->loadDates()V

    .line 241
    :cond_0
    iget-object p0, p0, Landroid/icu/impl/RelativeDateFormat;->fDates:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/RelativeDateFormat$URelativeString;

    .line 242
    iget v1, v0, Landroid/icu/impl/RelativeDateFormat$URelativeString;->offset:I

    if-ne v1, p1, :cond_1

    .line 243
    iget-object p0, v0, Landroid/icu/impl/RelativeDateFormat$URelativeString;->string:Ljava/lang/String;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private initCapitalizationContextInfo(Landroid/icu/util/ULocale;)V
    .locals 3

    const-string v0, "android/icu/impl/data/icudt60b"

    .line 294
    invoke-static {v0, p1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object p1

    check-cast p1, Landroid/icu/impl/ICUResourceBundle;

    :try_start_0
    const-string v0, "contextTransforms/relative"

    .line 296
    invoke-virtual {p1, v0}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object p1

    .line 297
    invoke-virtual {p1}, Landroid/icu/impl/ICUResourceBundle;->getIntVector()[I

    move-result-object p1

    .line 298
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    .line 299
    aget v1, p1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationOfRelativeUnitsForListOrMenu:Z

    .line 300
    aget p1, p1, v2

    if-eqz p1, :cond_1

    move v0, v2

    :cond_1
    iput-boolean v0, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationOfRelativeUnitsForStandAlone:Z
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method private initializeCalendar(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;
    .locals 1

    .line 327
    iget-object v0, p0, Landroid/icu/impl/RelativeDateFormat;->calendar:Landroid/icu/util/Calendar;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    .line 329
    invoke-static {p2}, Landroid/icu/util/Calendar;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/RelativeDateFormat;->calendar:Landroid/icu/util/Calendar;

    goto :goto_0

    .line 331
    :cond_0
    invoke-static {p1, p2}, Landroid/icu/util/Calendar;->getInstance(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/RelativeDateFormat;->calendar:Landroid/icu/util/Calendar;

    .line 334
    :cond_1
    :goto_0
    iget-object p0, p0, Landroid/icu/impl/RelativeDateFormat;->calendar:Landroid/icu/util/Calendar;

    return-object p0
.end method

.method private initializeCombinedFormat(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;)Landroid/icu/text/MessageFormat;
    .locals 4

    const-string v0, "android/icu/impl/data/icudt60b"

    .line 339
    invoke-static {v0, p2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calendar/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/DateTimePatterns"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 342
    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v1

    if-nez v1, :cond_0

    .line 343
    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v2, "gregorian"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "calendar/gregorian/DateTimePatterns"

    .line 345
    invoke-virtual {v0, p1}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_5

    .line 348
    invoke-virtual {v1}, Landroid/icu/impl/ICUResourceBundle;->getSize()I

    move-result p1

    const/16 v0, 0x9

    if-ge p1, v0, :cond_1

    goto :goto_2

    .line 353
    :cond_1
    invoke-virtual {v1}, Landroid/icu/impl/ICUResourceBundle;->getSize()I

    move-result p1

    const/16 v0, 0xd

    const/16 v2, 0x8

    if-lt p1, v0, :cond_3

    .line 354
    iget p1, p0, Landroid/icu/impl/RelativeDateFormat;->fDateStyle:I

    if-ltz p1, :cond_2

    const/4 v0, 0x3

    if-gt p1, v0, :cond_2

    add-int/lit8 p1, p1, 0x1

    :goto_0
    add-int/2addr p1, v2

    goto :goto_1

    .line 357
    :cond_2
    iget p1, p0, Landroid/icu/impl/RelativeDateFormat;->fDateStyle:I

    const/16 v0, 0x80

    if-lt p1, v0, :cond_3

    const/16 v3, 0x83

    if-gt p1, v3, :cond_3

    add-int/lit8 p1, p1, 0x1

    sub-int/2addr p1, v0

    goto :goto_0

    :cond_3
    move p1, v2

    .line 362
    :goto_1
    invoke-virtual {v1, p1}, Landroid/icu/impl/ICUResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getType()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 364
    invoke-virtual {v1, p1}, Landroid/icu/impl/ICUResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 366
    :cond_4
    invoke-virtual {v1, p1}, Landroid/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_5
    :goto_2
    const-string/jumbo p1, "{1} {0}"

    :goto_3
    const-string/jumbo v0, "{1}"

    .line 369
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/icu/impl/RelativeDateFormat;->combinedFormatHasDateAtStart:Z

    .line 370
    new-instance v0, Landroid/icu/text/MessageFormat;

    invoke-direct {v0, p1, p2}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    iput-object v0, p0, Landroid/icu/impl/RelativeDateFormat;->fCombinedFormat:Landroid/icu/text/MessageFormat;

    .line 371
    iget-object p0, p0, Landroid/icu/impl/RelativeDateFormat;->fCombinedFormat:Landroid/icu/text/MessageFormat;

    return-object p0
.end method

.method private declared-synchronized loadDates()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "android/icu/impl/data/icudt60b"

    .line 282
    iget-object v1, p0, Landroid/icu/impl/RelativeDateFormat;->fLocale:Landroid/icu/util/ULocale;

    invoke-static {v0, v1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    .line 285
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/icu/impl/RelativeDateFormat;->fDates:Ljava/util/List;

    .line 286
    new-instance v1, Landroid/icu/impl/RelativeDateFormat$RelDateFmtDataSink;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/icu/impl/RelativeDateFormat$RelDateFmtDataSink;-><init>(Landroid/icu/impl/RelativeDateFormat;Landroid/icu/impl/RelativeDateFormat$1;)V

    const-string v2, "fields/day/relative"

    .line 287
    invoke-virtual {v0, v2, v1}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 6

    .line 114
    sget-object v0, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    invoke-virtual {p0, v0}, Landroid/icu/impl/RelativeDateFormat;->getContext(Landroid/icu/text/DisplayContext$Type;)Landroid/icu/text/DisplayContext;

    move-result-object v0

    .line 116
    iget v1, p0, Landroid/icu/impl/RelativeDateFormat;->fDateStyle:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 118
    invoke-static {p1}, Landroid/icu/impl/RelativeDateFormat;->dayDifference(Landroid/icu/util/Calendar;)I

    move-result v1

    .line 121
    invoke-direct {p0, v1}, Landroid/icu/impl/RelativeDateFormat;->getStringForDay(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 124
    :goto_0
    iget-object v2, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 125
    iget-object v2, p0, Landroid/icu/impl/RelativeDateFormat;->fDatePattern:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/icu/impl/RelativeDateFormat;->fTimePattern:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/icu/impl/RelativeDateFormat;->fCombinedFormat:Landroid/icu/text/MessageFormat;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/icu/impl/RelativeDateFormat;->combinedFormatHasDateAtStart:Z

    if-eqz v2, :cond_6

    .line 128
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {v1, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/icu/lang/UCharacter;->isLowerCase(I)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    if-eq v0, v2, :cond_3

    sget-object v2, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    if-ne v0, v2, :cond_2

    iget-boolean v2, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationOfRelativeUnitsForListOrMenu:Z

    if-nez v2, :cond_3

    :cond_2
    sget-object v2, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    if-ne v0, v2, :cond_5

    iget-boolean v0, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationOfRelativeUnitsForStandAlone:Z

    if-eqz v0, :cond_5

    .line 132
    :cond_3
    iget-object v0, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    if-nez v0, :cond_4

    .line 134
    iget-object v0, p0, Landroid/icu/impl/RelativeDateFormat;->fLocale:Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    .line 136
    :cond_4
    iget-object v0, p0, Landroid/icu/impl/RelativeDateFormat;->fLocale:Landroid/icu/util/ULocale;

    iget-object v2, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    const/16 v4, 0x300

    invoke-static {v0, v1, v2, v4}, Landroid/icu/lang/UCharacter;->toTitleCase(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/BreakIterator;I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 139
    :cond_5
    iget-object v0, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    sget-object v2, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    invoke-virtual {v0, v2}, Landroid/icu/text/SimpleDateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    goto :goto_1

    .line 142
    :cond_6
    iget-object v2, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v2, v0}, Landroid/icu/text/SimpleDateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    .line 146
    :cond_7
    :goto_1
    iget-object v0, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/icu/impl/RelativeDateFormat;->fDatePattern:Ljava/lang/String;

    if-nez v0, :cond_8

    iget-object v0, p0, Landroid/icu/impl/RelativeDateFormat;->fTimePattern:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 148
    :cond_8
    iget-object v0, p0, Landroid/icu/impl/RelativeDateFormat;->fDatePattern:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 150
    iget-object v0, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    iget-object v1, p0, Landroid/icu/impl/RelativeDateFormat;->fTimePattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 151
    iget-object p0, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 152
    :cond_9
    iget-object v2, p0, Landroid/icu/impl/RelativeDateFormat;->fTimePattern:Ljava/lang/String;

    if-nez v2, :cond_b

    if-eqz v1, :cond_a

    .line 155
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 157
    :cond_a
    iget-object v1, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Landroid/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 158
    iget-object p0, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_b
    if-eqz v1, :cond_c

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'\'"

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    :cond_c
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 167
    iget-object v2, p0, Landroid/icu/impl/RelativeDateFormat;->fCombinedFormat:Landroid/icu/text/MessageFormat;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Landroid/icu/impl/RelativeDateFormat;->fTimePattern:Ljava/lang/String;

    aput-object v5, v4, v3

    const/4 v5, 0x1

    aput-object v0, v4, v5

    new-instance v0, Ljava/text/FieldPosition;

    invoke-direct {v0, v3}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {v2, v4, v1, v0}, Landroid/icu/text/MessageFormat;->format([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 168
    iget-object v0, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 169
    iget-object p0, p0, Landroid/icu/impl/RelativeDateFormat;->fDateTimeFormat:Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 171
    :cond_d
    iget-object p0, p0, Landroid/icu/impl/RelativeDateFormat;->fDateFormat:Landroid/icu/text/DateFormat;

    if-eqz p0, :cond_f

    if-eqz v1, :cond_e

    .line 175
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 177
    :cond_e
    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/text/DateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    :cond_f
    :goto_2
    return-object p2
.end method

.method public parse(Ljava/lang/String;Landroid/icu/util/Calendar;Ljava/text/ParsePosition;)V
    .locals 0

    .line 189
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Relative Date parse is not implemented yet"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setContext(Landroid/icu/text/DisplayContext;)V
    .locals 1

    .line 199
    invoke-super {p0, p1}, Landroid/icu/text/DateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    .line 200
    iget-boolean v0, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationInfoIsSet:Z

    if-nez v0, :cond_1

    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    if-ne p1, v0, :cond_1

    .line 202
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/RelativeDateFormat;->fLocale:Landroid/icu/util/ULocale;

    invoke-direct {p0, v0}, Landroid/icu/impl/RelativeDateFormat;->initCapitalizationContextInfo(Landroid/icu/util/ULocale;)V

    const/4 v0, 0x1

    .line 203
    iput-boolean v0, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationInfoIsSet:Z

    .line 205
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    if-nez v0, :cond_4

    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    if-eq p1, v0, :cond_3

    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationOfRelativeUnitsForListOrMenu:Z

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    if-ne p1, v0, :cond_4

    iget-boolean p1, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationOfRelativeUnitsForStandAlone:Z

    if-eqz p1, :cond_4

    .line 208
    :cond_3
    iget-object p1, p0, Landroid/icu/impl/RelativeDateFormat;->fLocale:Landroid/icu/util/ULocale;

    invoke-static {p1}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/RelativeDateFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    :cond_4
    return-void
.end method
