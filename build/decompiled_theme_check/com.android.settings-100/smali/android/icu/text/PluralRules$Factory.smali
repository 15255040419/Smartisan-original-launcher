.class public abstract Landroid/icu/text/PluralRules$Factory;
.super Ljava/lang/Object;
.source "PluralRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Factory"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultFactory()Landroid/icu/impl/PluralRulesLoader;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 285
    sget-object v0, Landroid/icu/impl/PluralRulesLoader;->loader:Landroid/icu/impl/PluralRulesLoader;

    return-object v0
.end method


# virtual methods
.method public final forLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/PluralRules;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 244
    sget-object v0, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/PluralRules$Factory;->forLocale(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)Landroid/icu/text/PluralRules;

    move-result-object p0

    return-object p0
.end method

.method public abstract forLocale(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)Landroid/icu/text/PluralRules;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getAvailableULocales()[Landroid/icu/util/ULocale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getFunctionalEquivalent(Landroid/icu/util/ULocale;[Z)Landroid/icu/util/ULocale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract hasOverride(Landroid/icu/util/ULocale;)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
