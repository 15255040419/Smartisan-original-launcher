.class public final Landroidx/preference/ListPreference$SimpleSummaryProvider;
.super Ljava/lang/Object;
.source "ListPreference.java"

# interfaces
.implements Landroidx/preference/Preference$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/ListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SimpleSummaryProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/preference/Preference$SummaryProvider<",
        "Landroidx/preference/ListPreference;",
        ">;"
    }
.end annotation


# static fields
.field private static sSimpleSummaryProvider:Landroidx/preference/ListPreference$SimpleSummaryProvider;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroidx/preference/ListPreference$SimpleSummaryProvider;
    .locals 1

    .line 335
    sget-object v0, Landroidx/preference/ListPreference$SimpleSummaryProvider;->sSimpleSummaryProvider:Landroidx/preference/ListPreference$SimpleSummaryProvider;

    if-nez v0, :cond_0

    .line 336
    new-instance v0, Landroidx/preference/ListPreference$SimpleSummaryProvider;

    invoke-direct {v0}, Landroidx/preference/ListPreference$SimpleSummaryProvider;-><init>()V

    sput-object v0, Landroidx/preference/ListPreference$SimpleSummaryProvider;->sSimpleSummaryProvider:Landroidx/preference/ListPreference$SimpleSummaryProvider;

    .line 338
    :cond_0
    sget-object v0, Landroidx/preference/ListPreference$SimpleSummaryProvider;->sSimpleSummaryProvider:Landroidx/preference/ListPreference$SimpleSummaryProvider;

    return-object v0
.end method


# virtual methods
.method public provideSummary(Landroidx/preference/ListPreference;)Ljava/lang/CharSequence;
    .locals 0

    .line 343
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 344
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Landroidx/preference/R$string;->not_set:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 346
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic provideSummary(Landroidx/preference/Preference;)Ljava/lang/CharSequence;
    .locals 0

    .line 321
    check-cast p1, Landroidx/preference/ListPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference$SimpleSummaryProvider;->provideSummary(Landroidx/preference/ListPreference;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
