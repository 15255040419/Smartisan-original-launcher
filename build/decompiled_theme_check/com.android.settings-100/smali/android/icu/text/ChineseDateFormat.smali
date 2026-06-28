.class public Landroid/icu/text/ChineseDateFormat;
.super Landroid/icu/text/SimpleDateFormat;
.source "ChineseDateFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/ChineseDateFormat$Field;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final serialVersionUID:J = -0x3ffb141bc87c5a3bL


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, v0, p2}, Landroid/icu/text/ChineseDateFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 93
    new-instance v2, Landroid/icu/text/ChineseDateFormatSymbols;

    invoke-direct {v2, p3}, Landroid/icu/text/ChineseDateFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    new-instance v3, Landroid/icu/util/ChineseCalendar;

    .line 94
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-direct {v3, v0, p3}, Landroid/icu/util/ChineseCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v6, p2

    .line 93
    invoke-direct/range {v0 .. v6}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 64
    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/icu/text/ChineseDateFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    return-void
.end method


# virtual methods
.method protected patternCharToDateFormatField(C)Landroid/icu/text/DateFormat$Field;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 172
    invoke-super {p0, p1}, Landroid/icu/text/SimpleDateFormat;->patternCharToDateFormatField(C)Landroid/icu/text/DateFormat$Field;

    move-result-object p0

    return-object p0
.end method

.method protected subFormat(Ljava/lang/StringBuffer;CIIILandroid/icu/text/DisplayContext;Ljava/text/FieldPosition;Landroid/icu/util/Calendar;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 136
    invoke-super/range {p0 .. p8}, Landroid/icu/text/SimpleDateFormat;->subFormat(Ljava/lang/StringBuffer;CIIILandroid/icu/text/DisplayContext;Ljava/text/FieldPosition;Landroid/icu/util/Calendar;)V

    return-void
.end method

.method protected subParse(Ljava/lang/String;ICIZZ[ZLandroid/icu/util/Calendar;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 160
    invoke-super/range {p0 .. p8}, Landroid/icu/text/SimpleDateFormat;->subParse(Ljava/lang/String;ICIZZ[ZLandroid/icu/util/Calendar;)I

    move-result p0

    return p0
.end method
