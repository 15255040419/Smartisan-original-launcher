.class Landroid/icu/impl/duration/BasicDurationFormatterFactory;
.super Ljava/lang/Object;
.source "BasicDurationFormatterFactory.java"

# interfaces
.implements Landroid/icu/impl/duration/DurationFormatterFactory;


# instance fields
.field private builder:Landroid/icu/impl/duration/PeriodBuilder;

.field private f:Landroid/icu/impl/duration/BasicDurationFormatter;

.field private fallback:Landroid/icu/impl/duration/DateFormatter;

.field private fallbackLimit:J

.field private formatter:Landroid/icu/impl/duration/PeriodFormatter;

.field private localeName:Ljava/lang/String;

.field private ps:Landroid/icu/impl/duration/BasicPeriodFormatterService;

.field private timeZone:Ljava/util/TimeZone;


# direct methods
.method constructor <init>(Landroid/icu/impl/duration/BasicPeriodFormatterService;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->ps:Landroid/icu/impl/duration/BasicPeriodFormatterService;

    .line 41
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->localeName:Ljava/lang/String;

    .line 42
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->timeZone:Ljava/util/TimeZone;

    return-void
.end method


# virtual methods
.method protected createFormatter()Landroid/icu/impl/duration/BasicDurationFormatter;
    .locals 9

    .line 243
    new-instance v8, Landroid/icu/impl/duration/BasicDurationFormatter;

    iget-object v1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    iget-object v2, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    iget-object v3, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->fallback:Landroid/icu/impl/duration/DateFormatter;

    iget-wide v4, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->fallbackLimit:J

    iget-object v6, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->localeName:Ljava/lang/String;

    iget-object v7, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->timeZone:Ljava/util/TimeZone;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/icu/impl/duration/BasicDurationFormatter;-><init>(Landroid/icu/impl/duration/PeriodFormatter;Landroid/icu/impl/duration/PeriodBuilder;Landroid/icu/impl/duration/DateFormatter;JLjava/lang/String;Ljava/util/TimeZone;)V

    return-object v8
.end method

.method public getFallback()Landroid/icu/impl/duration/DateFormatter;
    .locals 0

    .line 209
    iget-object p0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->fallback:Landroid/icu/impl/duration/DateFormatter;

    return-object p0
.end method

.method public getFallbackLimit()J
    .locals 2

    .line 218
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->fallback:Landroid/icu/impl/duration/DateFormatter;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->fallbackLimit:J

    :goto_0
    return-wide v0
.end method

.method public getFormatter()Landroid/icu/impl/duration/DurationFormatter;
    .locals 2

    .line 161
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->f:Landroid/icu/impl/duration/BasicDurationFormatter;

    if-nez v0, :cond_1

    .line 162
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->fallback:Landroid/icu/impl/duration/DateFormatter;

    if-eqz v0, :cond_0

    .line 163
    iget-object v1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->localeName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/icu/impl/duration/DateFormatter;->withLocale(Ljava/lang/String;)Landroid/icu/impl/duration/DateFormatter;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->timeZone:Ljava/util/TimeZone;

    invoke-interface {v0, v1}, Landroid/icu/impl/duration/DateFormatter;->withTimeZone(Ljava/util/TimeZone;)Landroid/icu/impl/duration/DateFormatter;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->fallback:Landroid/icu/impl/duration/DateFormatter;

    .line 165
    :cond_0
    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->getPeriodFormatter()Landroid/icu/impl/duration/PeriodFormatter;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    .line 166
    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->getPeriodBuilder()Landroid/icu/impl/duration/PeriodBuilder;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    .line 168
    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->createFormatter()Landroid/icu/impl/duration/BasicDurationFormatter;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->f:Landroid/icu/impl/duration/BasicDurationFormatter;

    .line 170
    :cond_1
    iget-object p0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->f:Landroid/icu/impl/duration/BasicDurationFormatter;

    return-object p0
.end method

.method public getLocaleName()Ljava/lang/String;
    .locals 0

    .line 227
    iget-object p0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->localeName:Ljava/lang/String;

    return-object p0
.end method

.method public getPeriodBuilder()Landroid/icu/impl/duration/PeriodBuilder;
    .locals 2

    .line 193
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->ps:Landroid/icu/impl/duration/BasicPeriodFormatterService;

    invoke-virtual {v0}, Landroid/icu/impl/duration/BasicPeriodFormatterService;->newPeriodBuilderFactory()Landroid/icu/impl/duration/PeriodBuilderFactory;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->localeName:Ljava/lang/String;

    .line 195
    invoke-interface {v0, v1}, Landroid/icu/impl/duration/PeriodBuilderFactory;->setLocale(Ljava/lang/String;)Landroid/icu/impl/duration/PeriodBuilderFactory;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->timeZone:Ljava/util/TimeZone;

    .line 196
    invoke-interface {v0, v1}, Landroid/icu/impl/duration/PeriodBuilderFactory;->setTimeZone(Ljava/util/TimeZone;)Landroid/icu/impl/duration/PeriodBuilderFactory;

    move-result-object v0

    .line 197
    invoke-interface {v0}, Landroid/icu/impl/duration/PeriodBuilderFactory;->getSingleUnitBuilder()Landroid/icu/impl/duration/PeriodBuilder;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    .line 199
    :cond_0
    iget-object p0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    return-object p0
.end method

.method public getPeriodFormatter()Landroid/icu/impl/duration/PeriodFormatter;
    .locals 2

    .line 179
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->ps:Landroid/icu/impl/duration/BasicPeriodFormatterService;

    invoke-virtual {v0}, Landroid/icu/impl/duration/BasicPeriodFormatterService;->newPeriodFormatterFactory()Landroid/icu/impl/duration/PeriodFormatterFactory;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->localeName:Ljava/lang/String;

    .line 181
    invoke-interface {v0, v1}, Landroid/icu/impl/duration/PeriodFormatterFactory;->setLocale(Ljava/lang/String;)Landroid/icu/impl/duration/PeriodFormatterFactory;

    move-result-object v0

    .line 182
    invoke-interface {v0}, Landroid/icu/impl/duration/PeriodFormatterFactory;->getFormatter()Landroid/icu/impl/duration/PeriodFormatter;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    .line 184
    :cond_0
    iget-object p0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    return-object p0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 0

    .line 236
    iget-object p0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->timeZone:Ljava/util/TimeZone;

    return-object p0
.end method

.method protected reset()V
    .locals 1

    const/4 v0, 0x0

    .line 254
    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->f:Landroid/icu/impl/duration/BasicDurationFormatter;

    return-void
.end method

.method public setFallback(Landroid/icu/impl/duration/DateFormatter;)Landroid/icu/impl/duration/DurationFormatterFactory;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 86
    iget-object v2, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->fallback:Landroid/icu/impl/duration/DateFormatter;

    if-eqz v2, :cond_1

    goto :goto_0

    .line 87
    :cond_0
    iget-object v2, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->fallback:Landroid/icu/impl/duration/DateFormatter;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 89
    iput-object p1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->fallback:Landroid/icu/impl/duration/DateFormatter;

    .line 90
    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->reset()V

    :cond_2
    return-object p0
.end method

.method public setFallbackLimit(J)Landroid/icu/impl/duration/DurationFormatterFactory;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 106
    :cond_0
    iget-wide v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->fallbackLimit:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    .line 107
    iput-wide p1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->fallbackLimit:J

    .line 108
    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->reset()V

    :cond_1
    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Landroid/icu/impl/duration/DurationFormatterFactory;
    .locals 1

    .line 122
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->localeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 123
    iput-object p1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->localeName:Ljava/lang/String;

    .line 124
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    if-eqz v0, :cond_0

    .line 125
    invoke-interface {v0, p1}, Landroid/icu/impl/duration/PeriodBuilder;->withLocale(Ljava/lang/String;)Landroid/icu/impl/duration/PeriodBuilder;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    .line 127
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    if-eqz v0, :cond_1

    .line 128
    invoke-interface {v0, p1}, Landroid/icu/impl/duration/PeriodFormatter;->withLocale(Ljava/lang/String;)Landroid/icu/impl/duration/PeriodFormatter;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    .line 130
    :cond_1
    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->reset()V

    :cond_2
    return-object p0
.end method

.method public setPeriodBuilder(Landroid/icu/impl/duration/PeriodBuilder;)Landroid/icu/impl/duration/DurationFormatterFactory;
    .locals 1

    .line 70
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    if-eq p1, v0, :cond_0

    .line 71
    iput-object p1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    .line 72
    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->reset()V

    :cond_0
    return-object p0
.end method

.method public setPeriodFormatter(Landroid/icu/impl/duration/PeriodFormatter;)Landroid/icu/impl/duration/DurationFormatterFactory;
    .locals 1

    .line 54
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    if-eq p1, v0, :cond_0

    .line 55
    iput-object p1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->formatter:Landroid/icu/impl/duration/PeriodFormatter;

    .line 56
    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->reset()V

    :cond_0
    return-object p0
.end method

.method public setTimeZone(Ljava/util/TimeZone;)Landroid/icu/impl/duration/DurationFormatterFactory;
    .locals 1

    .line 144
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    iput-object p1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->timeZone:Ljava/util/TimeZone;

    .line 146
    iget-object v0, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    if-eqz v0, :cond_0

    .line 147
    invoke-interface {v0, p1}, Landroid/icu/impl/duration/PeriodBuilder;->withTimeZone(Ljava/util/TimeZone;)Landroid/icu/impl/duration/PeriodBuilder;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->builder:Landroid/icu/impl/duration/PeriodBuilder;

    .line 149
    :cond_0
    invoke-virtual {p0}, Landroid/icu/impl/duration/BasicDurationFormatterFactory;->reset()V

    :cond_1
    return-object p0
.end method
