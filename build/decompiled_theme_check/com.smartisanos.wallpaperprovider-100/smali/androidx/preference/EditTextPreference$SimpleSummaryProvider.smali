.class public final Landroidx/preference/EditTextPreference$SimpleSummaryProvider;
.super Ljava/lang/Object;
.source "EditTextPreference.java"

# interfaces
.implements Landroidx/preference/Preference$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/EditTextPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SimpleSummaryProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/preference/Preference$SummaryProvider<",
        "Landroidx/preference/EditTextPreference;",
        ">;"
    }
.end annotation


# static fields
.field private static sSimpleSummaryProvider:Landroidx/preference/EditTextPreference$SimpleSummaryProvider;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroidx/preference/EditTextPreference$SimpleSummaryProvider;
    .locals 1

    .line 231
    sget-object v0, Landroidx/preference/EditTextPreference$SimpleSummaryProvider;->sSimpleSummaryProvider:Landroidx/preference/EditTextPreference$SimpleSummaryProvider;

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Landroidx/preference/EditTextPreference$SimpleSummaryProvider;

    invoke-direct {v0}, Landroidx/preference/EditTextPreference$SimpleSummaryProvider;-><init>()V

    sput-object v0, Landroidx/preference/EditTextPreference$SimpleSummaryProvider;->sSimpleSummaryProvider:Landroidx/preference/EditTextPreference$SimpleSummaryProvider;

    .line 234
    :cond_0
    sget-object v0, Landroidx/preference/EditTextPreference$SimpleSummaryProvider;->sSimpleSummaryProvider:Landroidx/preference/EditTextPreference$SimpleSummaryProvider;

    return-object v0
.end method


# virtual methods
.method public provideSummary(Landroidx/preference/EditTextPreference;)Ljava/lang/CharSequence;
    .locals 0

    .line 239
    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 240
    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Landroidx/preference/R$string;->not_set:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 242
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic provideSummary(Landroidx/preference/Preference;)Ljava/lang/CharSequence;
    .locals 0

    .line 217
    check-cast p1, Landroidx/preference/EditTextPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/EditTextPreference$SimpleSummaryProvider;->provideSummary(Landroidx/preference/EditTextPreference;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
