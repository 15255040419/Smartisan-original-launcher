.class public abstract Landroid/icu/text/UFormat;
.super Ljava/text/Format;
.source "UFormat.java"


# static fields
.field private static final serialVersionUID:J = -0x44e50edf26f8a240L


# instance fields
.field private actualLocale:Landroid/icu/util/ULocale;

.field private validLocale:Landroid/icu/util/ULocale;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;
    .locals 1

    .line 60
    sget-object v0, Landroid/icu/util/ULocale;->ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type;

    if-ne p1, v0, :cond_0

    .line 61
    iget-object p0, p0, Landroid/icu/text/UFormat;->actualLocale:Landroid/icu/util/ULocale;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/icu/text/UFormat;->validLocale:Landroid/icu/util/ULocale;

    :goto_0
    return-object p0
.end method

.method final setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-ne v2, v0, :cond_2

    .line 89
    iput-object p1, p0, Landroid/icu/text/UFormat;->validLocale:Landroid/icu/util/ULocale;

    .line 90
    iput-object p2, p0, Landroid/icu/text/UFormat;->actualLocale:Landroid/icu/util/ULocale;

    return-void

    .line 84
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
