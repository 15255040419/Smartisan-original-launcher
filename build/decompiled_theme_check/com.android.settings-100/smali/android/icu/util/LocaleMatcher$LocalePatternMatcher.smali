.class Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;
.super Ljava/lang/Object;
.source "LocaleMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/LocaleMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalePatternMatcher"
.end annotation


# static fields
.field static pattern:Ljava/util/regex/Pattern;


# instance fields
.field private lang:Ljava/lang/String;

.field private level:Landroid/icu/util/LocaleMatcher$Level;

.field private region:Ljava/lang/String;

.field private script:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "([a-z]{1,8}|\\*)(?:[_-]([A-Z][a-z]{3}|\\*))?(?:[_-]([A-Z]{2}|[0-9]{3}|\\*))?"

    .line 389
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    sget-object v0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 396
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 p1, 0x1

    .line 399
    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->lang:Ljava/lang/String;

    const/4 p1, 0x2

    .line 400
    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->script:Ljava/lang/String;

    const/4 p1, 0x3

    .line 401
    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->region:Ljava/lang/String;

    .line 402
    iget-object p1, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->region:Ljava/lang/String;

    if-eqz p1, :cond_0

    sget-object p1, Landroid/icu/util/LocaleMatcher$Level;->region:Landroid/icu/util/LocaleMatcher$Level;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->script:Ljava/lang/String;

    if-eqz p1, :cond_1

    sget-object p1, Landroid/icu/util/LocaleMatcher$Level;->script:Landroid/icu/util/LocaleMatcher$Level;

    goto :goto_0

    :cond_1
    sget-object p1, Landroid/icu/util/LocaleMatcher$Level;->language:Landroid/icu/util/LocaleMatcher$Level;

    :goto_0
    iput-object p1, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->level:Landroid/icu/util/LocaleMatcher$Level;

    .line 404
    iget-object p1, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->lang:Ljava/lang/String;

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 405
    iput-object v1, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->lang:Ljava/lang/String;

    .line 407
    :cond_2
    iget-object p1, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->script:Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 408
    iput-object v1, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->script:Ljava/lang/String;

    .line 410
    :cond_3
    iget-object p1, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->region:Ljava/lang/String;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 411
    iput-object v1, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->region:Ljava/lang/String;

    :cond_4
    return-void

    .line 397
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad pattern: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$100(Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;)Ljava/lang/String;
    .locals 0

    .line 383
    iget-object p0, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->lang:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 464
    instance-of v2, p1, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;

    if-nez v2, :cond_1

    goto :goto_1

    .line 467
    :cond_1
    check-cast p1, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;

    .line 468
    iget-object v2, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->level:Landroid/icu/util/LocaleMatcher$Level;

    iget-object v3, p1, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->level:Landroid/icu/util/LocaleMatcher$Level;

    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->lang:Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->lang:Ljava/lang/String;

    .line 469
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->script:Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->script:Ljava/lang/String;

    .line 470
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->region:Ljava/lang/String;

    iget-object p1, p1, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->region:Ljava/lang/String;

    .line 471
    invoke-static {p0, p1}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 0

    .line 433
    iget-object p0, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->lang:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, "*"

    :cond_0
    return-object p0
.end method

.method public getLevel()Landroid/icu/util/LocaleMatcher$Level;
    .locals 0

    .line 429
    iget-object p0, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->level:Landroid/icu/util/LocaleMatcher$Level;

    return-object p0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 0

    .line 441
    iget-object p0, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->region:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, "*"

    :cond_0
    return-object p0
.end method

.method public getScript()Ljava/lang/String;
    .locals 0

    .line 437
    iget-object p0, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->script:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, "*"

    :cond_0
    return-object p0
.end method

.method public hashCode()I
    .locals 3

    .line 479
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->level:Landroid/icu/util/LocaleMatcher$Level;

    invoke-virtual {v0}, Landroid/icu/util/LocaleMatcher$Level;->ordinal()I

    move-result v0

    .line 480
    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->lang:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    xor-int/2addr v0, v1

    .line 481
    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->script:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    .line 482
    iget-object p0, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->region:Ljava/lang/String;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    xor-int p0, v0, v2

    return p0
.end method

.method matches(Landroid/icu/util/ULocale;)Z
    .locals 3

    .line 416
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->lang:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 419
    :cond_0
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->script:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 422
    :cond_1
    iget-object p0, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->region:Ljava/lang/String;

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 446
    invoke-virtual {p0}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 447
    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->level:Landroid/icu/util/LocaleMatcher$Level;

    sget-object v2, Landroid/icu/util/LocaleMatcher$Level;->language:Landroid/icu/util/LocaleMatcher$Level;

    if-eq v1, v2, :cond_1

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->getScript()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 449
    iget-object v2, p0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->level:Landroid/icu/util/LocaleMatcher$Level;

    sget-object v3, Landroid/icu/util/LocaleMatcher$Level;->script:Landroid/icu/util/LocaleMatcher$Level;

    if-eq v2, v3, :cond_0

    .line 450
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->getRegion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0
.end method
