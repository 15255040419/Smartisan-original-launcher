.class public Landroid/icu/impl/locale/XLocaleMatcher$Builder;
.super Ljava/lang/Object;
.source "XLocaleMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/XLocaleMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private defaultLanguage:Landroid/icu/util/ULocale;

.field private demotionPerAdditionalDesiredLocale:I

.field private distanceOption:Landroid/icu/impl/locale/XLocaleDistance$DistanceOption;

.field private localeDistance:Landroid/icu/impl/locale/XLocaleDistance;

.field private supportedLanguagesList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation
.end field

.field private thresholdDistance:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Landroid/icu/impl/locale/XLocaleMatcher$Builder;->thresholdDistance:I

    .line 49
    iput v0, p0, Landroid/icu/impl/locale/XLocaleMatcher$Builder;->demotionPerAdditionalDesiredLocale:I

    return-void
.end method

.method static synthetic access$200(Landroid/icu/impl/locale/XLocaleMatcher$Builder;)Landroid/icu/impl/locale/XLocaleDistance;
    .locals 0

    .line 46
    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleMatcher$Builder;->localeDistance:Landroid/icu/impl/locale/XLocaleDistance;

    return-object p0
.end method

.method static synthetic access$300(Landroid/icu/impl/locale/XLocaleMatcher$Builder;)I
    .locals 0

    .line 46
    iget p0, p0, Landroid/icu/impl/locale/XLocaleMatcher$Builder;->thresholdDistance:I

    return p0
.end method

.method static synthetic access$400(Landroid/icu/impl/locale/XLocaleMatcher$Builder;)Ljava/util/Set;
    .locals 0

    .line 46
    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleMatcher$Builder;->supportedLanguagesList:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$500(Landroid/icu/impl/locale/XLocaleMatcher$Builder;)Landroid/icu/util/ULocale;
    .locals 0

    .line 46
    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleMatcher$Builder;->defaultLanguage:Landroid/icu/util/ULocale;

    return-object p0
.end method

.method static synthetic access$600(Landroid/icu/impl/locale/XLocaleMatcher$Builder;)I
    .locals 0

    .line 46
    iget p0, p0, Landroid/icu/impl/locale/XLocaleMatcher$Builder;->demotionPerAdditionalDesiredLocale:I

    return p0
.end method

.method static synthetic access$700(Landroid/icu/impl/locale/XLocaleMatcher$Builder;)Landroid/icu/impl/locale/XLocaleDistance$DistanceOption;
    .locals 0

    .line 46
    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleMatcher$Builder;->distanceOption:Landroid/icu/impl/locale/XLocaleDistance$DistanceOption;

    return-object p0
.end method


# virtual methods
.method public build()Landroid/icu/impl/locale/XLocaleMatcher;
    .locals 2

    .line 118
    new-instance v0, Landroid/icu/impl/locale/XLocaleMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/icu/impl/locale/XLocaleMatcher;-><init>(Landroid/icu/impl/locale/XLocaleMatcher$Builder;Landroid/icu/impl/locale/XLocaleMatcher$1;)V

    return-object v0
.end method

.method public setDefaultLanguage(Landroid/icu/util/ULocale;)Landroid/icu/impl/locale/XLocaleMatcher$Builder;
    .locals 0

    .line 102
    iput-object p1, p0, Landroid/icu/impl/locale/XLocaleMatcher$Builder;->defaultLanguage:Landroid/icu/util/ULocale;

    return-object p0
.end method

.method public setDemotionPerAdditionalDesiredLocale(I)Landroid/icu/impl/locale/XLocaleMatcher$Builder;
    .locals 0

    .line 83
    iput p1, p0, Landroid/icu/impl/locale/XLocaleMatcher$Builder;->demotionPerAdditionalDesiredLocale:I

    return-object p0
.end method

.method public setDistanceOption(Landroid/icu/impl/locale/XLocaleDistance$DistanceOption;)Landroid/icu/impl/locale/XLocaleMatcher$Builder;
    .locals 0

    .line 113
    iput-object p1, p0, Landroid/icu/impl/locale/XLocaleMatcher$Builder;->distanceOption:Landroid/icu/impl/locale/XLocaleDistance$DistanceOption;

    return-object p0
.end method

.method public setLocaleDistance(Landroid/icu/impl/locale/XLocaleDistance;)Landroid/icu/impl/locale/XLocaleMatcher$Builder;
    .locals 0

    .line 92
    iput-object p1, p0, Landroid/icu/impl/locale/XLocaleMatcher$Builder;->localeDistance:Landroid/icu/impl/locale/XLocaleDistance;

    return-object p0
.end method

.method public setSupportedLocales(Landroid/icu/util/LocalePriorityList;)Landroid/icu/impl/locale/XLocaleMatcher$Builder;
    .locals 0

    .line 62
    invoke-static {p1}, Landroid/icu/impl/locale/XLocaleMatcher;->access$000(Landroid/icu/util/LocalePriorityList;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/locale/XLocaleMatcher$Builder;->supportedLanguagesList:Ljava/util/Set;

    return-object p0
.end method

.method public setSupportedLocales(Ljava/lang/String;)Landroid/icu/impl/locale/XLocaleMatcher$Builder;
    .locals 0

    .line 58
    invoke-static {p1}, Landroid/icu/util/LocalePriorityList;->add(Ljava/lang/String;)Landroid/icu/util/LocalePriorityList$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/icu/util/LocalePriorityList$Builder;->build()Landroid/icu/util/LocalePriorityList;

    move-result-object p1

    invoke-static {p1}, Landroid/icu/impl/locale/XLocaleMatcher;->access$000(Landroid/icu/util/LocalePriorityList;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/locale/XLocaleMatcher$Builder;->supportedLanguagesList:Ljava/util/Set;

    return-object p0
.end method

.method public setSupportedLocales(Ljava/util/Set;)Landroid/icu/impl/locale/XLocaleMatcher$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/icu/util/ULocale;",
            ">;)",
            "Landroid/icu/impl/locale/XLocaleMatcher$Builder;"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Landroid/icu/impl/locale/XLocaleMatcher$Builder;->supportedLanguagesList:Ljava/util/Set;

    return-object p0
.end method

.method public setThresholdDistance(I)Landroid/icu/impl/locale/XLocaleMatcher$Builder;
    .locals 0

    .line 75
    iput p1, p0, Landroid/icu/impl/locale/XLocaleMatcher$Builder;->thresholdDistance:I

    return-object p0
.end method
