.class public abstract Landroid/icu/text/CaseMap;
.super Ljava/lang/Object;
.source "CaseMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/CaseMap$Fold;,
        Landroid/icu/text/CaseMap$Title;,
        Landroid/icu/text/CaseMap$Upper;,
        Landroid/icu/text/CaseMap$Lower;
    }
.end annotation


# instance fields
.field protected internalOptions:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/icu/text/CaseMap;->internalOptions:I

    return-void
.end method

.method synthetic constructor <init>(ILandroid/icu/text/CaseMap$1;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Landroid/icu/text/CaseMap;-><init>(I)V

    return-void
.end method

.method static synthetic access$500(Ljava/util/Locale;)I
    .locals 0

    .line 22
    invoke-static {p0}, Landroid/icu/text/CaseMap;->getCaseLocale(Ljava/util/Locale;)I

    move-result p0

    return p0
.end method

.method public static fold()Landroid/icu/text/CaseMap$Fold;
    .locals 1

    .line 58
    invoke-static {}, Landroid/icu/text/CaseMap$Fold;->access$300()Landroid/icu/text/CaseMap$Fold;

    move-result-object v0

    return-object v0
.end method

.method private static getCaseLocale(Ljava/util/Locale;)I
    .locals 0

    if-nez p0, :cond_0

    .line 34
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    .line 36
    :cond_0
    invoke-static {p0}, Landroid/icu/impl/UCaseProps;->getCaseLocale(Ljava/util/Locale;)I

    move-result p0

    return p0
.end method

.method public static toLower()Landroid/icu/text/CaseMap$Lower;
    .locals 1

    .line 43
    invoke-static {}, Landroid/icu/text/CaseMap$Lower;->access$000()Landroid/icu/text/CaseMap$Lower;

    move-result-object v0

    return-object v0
.end method

.method public static toTitle()Landroid/icu/text/CaseMap$Title;
    .locals 1

    .line 53
    invoke-static {}, Landroid/icu/text/CaseMap$Title;->access$200()Landroid/icu/text/CaseMap$Title;

    move-result-object v0

    return-object v0
.end method

.method public static toUpper()Landroid/icu/text/CaseMap$Upper;
    .locals 1

    .line 48
    invoke-static {}, Landroid/icu/text/CaseMap$Upper;->access$100()Landroid/icu/text/CaseMap$Upper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract omitUnchangedText()Landroid/icu/text/CaseMap;
.end method
