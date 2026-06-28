.class public final Landroid/icu/impl/CalendarUtil;
.super Ljava/lang/Object;
.source "CalendarUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/CalendarUtil$CalendarPreferences;
    }
.end annotation


# static fields
.field private static final CALKEY:Ljava/lang/String; = "calendar"

.field private static final DEFCAL:Ljava/lang/String; = "gregorian"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCalendarType(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 2

    const-string v0, "calendar"

    .line 44
    invoke-virtual {p0, v0}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 48
    sget-object p0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 52
    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/icu/util/ULocale;->createCanonical(Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object p0

    .line 53
    invoke-virtual {p0, v0}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x1

    .line 60
    invoke-static {p0, v0}, Landroid/icu/util/ULocale;->getRegionForSupplementalData(Landroid/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object p0

    .line 61
    invoke-static {}, Landroid/icu/impl/CalendarUtil$CalendarPreferences;->access$000()Landroid/icu/impl/CalendarUtil$CalendarPreferences;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/icu/impl/CalendarUtil$CalendarPreferences;->getCalendarTypeForRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
