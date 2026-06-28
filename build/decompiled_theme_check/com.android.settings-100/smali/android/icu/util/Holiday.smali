.class public abstract Landroid/icu/util/Holiday;
.super Ljava/lang/Object;
.source "Holiday.java"

# interfaces
.implements Landroid/icu/util/DateRule;


# static fields
.field private static noHolidays:[Landroid/icu/util/Holiday;


# instance fields
.field private name:Ljava/lang/String;

.field private rule:Landroid/icu/util/DateRule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/icu/util/Holiday;

    .line 207
    sput-object v0, Landroid/icu/util/Holiday;->noHolidays:[Landroid/icu/util/Holiday;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/icu/util/DateRule;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Landroid/icu/util/Holiday;->name:Ljava/lang/String;

    .line 138
    iput-object p2, p0, Landroid/icu/util/Holiday;->rule:Landroid/icu/util/DateRule;

    return-void
.end method

.method public static getHolidays()[Landroid/icu/util/Holiday;
    .locals 1

    .line 35
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/Holiday;->getHolidays(Landroid/icu/util/ULocale;)[Landroid/icu/util/Holiday;

    move-result-object v0

    return-object v0
.end method

.method public static getHolidays(Landroid/icu/util/ULocale;)[Landroid/icu/util/Holiday;
    .locals 2

    .line 51
    sget-object v0, Landroid/icu/util/Holiday;->noHolidays:[Landroid/icu/util/Holiday;

    :try_start_0
    const-string v1, "android.icu.impl.data.HolidayBundle"

    .line 54
    invoke-static {v1, p0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    const-string v1, "holidays"

    .line 56
    invoke-virtual {p0, v1}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/icu/util/Holiday;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static getHolidays(Ljava/util/Locale;)[Landroid/icu/util/Holiday;
    .locals 0

    .line 43
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p0

    invoke-static {p0}, Landroid/icu/util/Holiday;->getHolidays(Landroid/icu/util/ULocale;)[Landroid/icu/util/Holiday;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public firstAfter(Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .line 76
    iget-object p0, p0, Landroid/icu/util/Holiday;->rule:Landroid/icu/util/DateRule;

    invoke-interface {p0, p1}, Landroid/icu/util/DateRule;->firstAfter(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .line 94
    iget-object p0, p0, Landroid/icu/util/Holiday;->rule:Landroid/icu/util/DateRule;

    invoke-interface {p0, p1, p2}, Landroid/icu/util/DateRule;->firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 147
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/util/Holiday;->getDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 2

    .line 179
    iget-object v0, p0, Landroid/icu/util/Holiday;->name:Ljava/lang/String;

    :try_start_0
    const-string v1, "android.icu.impl.data.HolidayBundle"

    .line 182
    invoke-static {v1, p1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object p1

    .line 183
    iget-object p0, p0, Landroid/icu/util/Holiday;->name:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 163
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/icu/util/Holiday;->getDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRule()Landroid/icu/util/DateRule;
    .locals 0

    .line 194
    iget-object p0, p0, Landroid/icu/util/Holiday;->rule:Landroid/icu/util/DateRule;

    return-object p0
.end method

.method public isBetween(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 0

    .line 119
    iget-object p0, p0, Landroid/icu/util/Holiday;->rule:Landroid/icu/util/DateRule;

    invoke-interface {p0, p1, p2}, Landroid/icu/util/DateRule;->isBetween(Ljava/util/Date;Ljava/util/Date;)Z

    move-result p0

    return p0
.end method

.method public isOn(Ljava/util/Date;)Z
    .locals 0

    .line 109
    iget-object p0, p0, Landroid/icu/util/Holiday;->rule:Landroid/icu/util/DateRule;

    invoke-interface {p0, p1}, Landroid/icu/util/DateRule;->isOn(Ljava/util/Date;)Z

    move-result p0

    return p0
.end method

.method public setRule(Landroid/icu/util/DateRule;)V
    .locals 0

    .line 201
    iput-object p1, p0, Landroid/icu/util/Holiday;->rule:Landroid/icu/util/DateRule;

    return-void
.end method
