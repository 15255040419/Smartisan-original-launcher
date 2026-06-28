.class public interface abstract Landroid/icu/impl/duration/PeriodFormatterService;
.super Ljava/lang/Object;
.source "PeriodFormatterService.java"


# virtual methods
.method public abstract getAvailableLocaleNames()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract newDurationFormatterFactory()Landroid/icu/impl/duration/DurationFormatterFactory;
.end method

.method public abstract newPeriodBuilderFactory()Landroid/icu/impl/duration/PeriodBuilderFactory;
.end method

.method public abstract newPeriodFormatterFactory()Landroid/icu/impl/duration/PeriodFormatterFactory;
.end method
