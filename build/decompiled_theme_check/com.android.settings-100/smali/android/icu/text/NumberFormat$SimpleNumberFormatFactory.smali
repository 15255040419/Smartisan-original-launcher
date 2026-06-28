.class public abstract Landroid/icu/text/NumberFormat$SimpleNumberFormatFactory;
.super Landroid/icu/text/NumberFormat$NumberFormatFactory;
.source "NumberFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/NumberFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleNumberFormatFactory"
.end annotation


# instance fields
.field final localeNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final visible:Z


# direct methods
.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 1

    const/4 v0, 0x1

    .line 863
    invoke-direct {p0, p1, v0}, Landroid/icu/text/NumberFormat$SimpleNumberFormatFactory;-><init>(Landroid/icu/util/ULocale;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;Z)V
    .locals 0

    .line 870
    invoke-direct {p0}, Landroid/icu/text/NumberFormat$NumberFormatFactory;-><init>()V

    .line 871
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/NumberFormat$SimpleNumberFormatFactory;->localeNames:Ljava/util/Set;

    .line 872
    iput-boolean p2, p0, Landroid/icu/text/NumberFormat$SimpleNumberFormatFactory;->visible:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1

    const/4 v0, 0x1

    .line 847
    invoke-direct {p0, p1, v0}, Landroid/icu/text/NumberFormat$SimpleNumberFormatFactory;-><init>(Ljava/util/Locale;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Z)V
    .locals 0

    .line 854
    invoke-direct {p0}, Landroid/icu/text/NumberFormat$NumberFormatFactory;-><init>()V

    .line 855
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p1

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/NumberFormat$SimpleNumberFormatFactory;->localeNames:Ljava/util/Set;

    .line 856
    iput-boolean p2, p0, Landroid/icu/text/NumberFormat$SimpleNumberFormatFactory;->visible:Z

    return-void
.end method


# virtual methods
.method public final getSupportedLocaleNames()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 888
    iget-object p0, p0, Landroid/icu/text/NumberFormat$SimpleNumberFormatFactory;->localeNames:Ljava/util/Set;

    return-object p0
.end method

.method public final visible()Z
    .locals 0

    .line 880
    iget-boolean p0, p0, Landroid/icu/text/NumberFormat$SimpleNumberFormatFactory;->visible:Z

    return p0
.end method
