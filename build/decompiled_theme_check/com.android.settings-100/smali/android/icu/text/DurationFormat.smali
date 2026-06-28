.class public abstract Landroid/icu/text/DurationFormat;
.super Landroid/icu/text/UFormat;
.source "DurationFormat.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1cd2d9e4c38cc84aL


# direct methods
.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 52
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    .line 62
    invoke-virtual {p0, p1, p1}, Landroid/icu/text/DurationFormat;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public static getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DurationFormat;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 42
    invoke-static {p0}, Landroid/icu/impl/duration/BasicDurationFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/impl/duration/BasicDurationFormat;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract formatDurationFrom(JJ)Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract formatDurationFromNow(J)Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract formatDurationFromNowTo(Ljava/util/Date;)Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 86
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
