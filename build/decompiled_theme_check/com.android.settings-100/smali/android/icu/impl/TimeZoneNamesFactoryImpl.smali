.class public Landroid/icu/impl/TimeZoneNamesFactoryImpl;
.super Landroid/icu/text/TimeZoneNames$Factory;
.source "TimeZoneNamesFactoryImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/icu/text/TimeZoneNames$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public getTimeZoneNames(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneNames;
    .locals 0

    .line 27
    new-instance p0, Landroid/icu/impl/TimeZoneNamesImpl;

    invoke-direct {p0, p1}, Landroid/icu/impl/TimeZoneNamesImpl;-><init>(Landroid/icu/util/ULocale;)V

    return-object p0
.end method
