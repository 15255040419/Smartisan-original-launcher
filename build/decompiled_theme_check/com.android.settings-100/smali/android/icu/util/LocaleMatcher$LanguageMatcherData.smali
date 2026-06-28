.class public Landroid/icu/util/LocaleMatcher$LanguageMatcherData;
.super Ljava/lang/Object;
.source "LocaleMatcher.java"

# interfaces
.implements Landroid/icu/util/Freezable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/LocaleMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LanguageMatcherData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/icu/util/Freezable<",
        "Landroid/icu/util/LocaleMatcher$LanguageMatcherData;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private volatile frozen:Z

.field private languageScores:Landroid/icu/util/LocaleMatcher$ScoreData;

.field private matchingLanguages:Landroid/icu/impl/Relation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/Relation<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private regionScores:Landroid/icu/util/LocaleMatcher$ScoreData;

.field private scriptScores:Landroid/icu/util/LocaleMatcher$ScoreData;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 615
    new-instance v0, Landroid/icu/util/LocaleMatcher$ScoreData;

    sget-object v1, Landroid/icu/util/LocaleMatcher$Level;->language:Landroid/icu/util/LocaleMatcher$Level;

    invoke-direct {v0, v1}, Landroid/icu/util/LocaleMatcher$ScoreData;-><init>(Landroid/icu/util/LocaleMatcher$Level;)V

    iput-object v0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->languageScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    .line 616
    new-instance v0, Landroid/icu/util/LocaleMatcher$ScoreData;

    sget-object v1, Landroid/icu/util/LocaleMatcher$Level;->script:Landroid/icu/util/LocaleMatcher$Level;

    invoke-direct {v0, v1}, Landroid/icu/util/LocaleMatcher$ScoreData;-><init>(Landroid/icu/util/LocaleMatcher$Level;)V

    iput-object v0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->scriptScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    .line 617
    new-instance v0, Landroid/icu/util/LocaleMatcher$ScoreData;

    sget-object v1, Landroid/icu/util/LocaleMatcher$Level;->region:Landroid/icu/util/LocaleMatcher$Level;

    invoke-direct {v0, v1}, Landroid/icu/util/LocaleMatcher$ScoreData;-><init>(Landroid/icu/util/LocaleMatcher$Level;)V

    iput-object v0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->regionScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    const/4 v0, 0x0

    .line 619
    iput-boolean v0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->frozen:Z

    return-void
.end method

.method private addDistance(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)Landroid/icu/util/LocaleMatcher$LanguageMatcherData;
    .locals 4

    int-to-double v0, p3

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    .line 713
    new-instance p3, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;

    invoke-direct {p3, p1}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;-><init>(Ljava/lang/String;)V

    .line 714
    invoke-virtual {p3}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->getLevel()Landroid/icu/util/LocaleMatcher$Level;

    move-result-object p5

    .line 715
    new-instance v0, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;

    invoke-direct {v0, p2}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;-><init>(Ljava/lang/String;)V

    .line 716
    invoke-virtual {v0}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->getLevel()Landroid/icu/util/LocaleMatcher$Level;

    move-result-object v1

    if-ne p5, v1, :cond_5

    .line 720
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p3, v0, p1}, Landroid/icu/impl/Row;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/icu/impl/Row$R3;

    move-result-object p1

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 721
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {v0, p3, p2}, Landroid/icu/impl/Row;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/icu/impl/Row$R3;

    move-result-object p2

    .line 722
    :goto_0
    invoke-virtual {p3, v0}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 723
    sget-object v2, Landroid/icu/util/LocaleMatcher$1;->$SwitchMap$android$icu$util$LocaleMatcher$Level:[I

    invoke-virtual {p5}, Landroid/icu/util/LocaleMatcher$Level;->ordinal()I

    move-result p5

    aget p5, v2, p5

    const/4 v2, 0x1

    if-eq p5, v2, :cond_3

    const/4 v2, 0x2

    if-eq p5, v2, :cond_2

    const/4 v2, 0x3

    if-eq p5, v2, :cond_1

    goto :goto_1

    .line 741
    :cond_1
    invoke-virtual {p3}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->getRegion()Ljava/lang/String;

    move-result-object p3

    .line 742
    invoke-virtual {v0}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->getRegion()Ljava/lang/String;

    move-result-object p5

    .line 743
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->regionScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    invoke-virtual {v0, p3, p5, p1}, Landroid/icu/util/LocaleMatcher$ScoreData;->addDataToScores(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/Row$R3;)V

    if-nez p4, :cond_4

    if-nez v1, :cond_4

    .line 745
    iget-object p1, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->regionScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    invoke-virtual {p1, p5, p3, p2}, Landroid/icu/util/LocaleMatcher$ScoreData;->addDataToScores(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/Row$R3;)V

    goto :goto_1

    .line 733
    :cond_2
    invoke-virtual {p3}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->getScript()Ljava/lang/String;

    move-result-object p3

    .line 734
    invoke-virtual {v0}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->getScript()Ljava/lang/String;

    move-result-object p5

    .line 735
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->scriptScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    invoke-virtual {v0, p3, p5, p1}, Landroid/icu/util/LocaleMatcher$ScoreData;->addDataToScores(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/Row$R3;)V

    if-nez p4, :cond_4

    if-nez v1, :cond_4

    .line 737
    iget-object p1, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->scriptScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    invoke-virtual {p1, p5, p3, p2}, Landroid/icu/util/LocaleMatcher$ScoreData;->addDataToScores(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/Row$R3;)V

    goto :goto_1

    .line 725
    :cond_3
    invoke-virtual {p3}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->getLanguage()Ljava/lang/String;

    move-result-object p3

    .line 726
    invoke-virtual {v0}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->getLanguage()Ljava/lang/String;

    move-result-object p5

    .line 727
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->languageScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    invoke-virtual {v0, p3, p5, p1}, Landroid/icu/util/LocaleMatcher$ScoreData;->addDataToScores(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/Row$R3;)V

    if-nez p4, :cond_4

    if-nez v1, :cond_4

    .line 729
    iget-object p1, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->languageScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    invoke-virtual {p1, p5, p3, p2}, Landroid/icu/util/LocaleMatcher$ScoreData;->addDataToScores(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/Row$R3;)V

    :cond_4
    :goto_1
    return-object p0

    .line 718
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Lengths unequal: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addDistance(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/icu/util/LocaleMatcher$LanguageMatcherData;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    .line 683
    invoke-direct/range {v0 .. v5}, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->addDistance(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    move-result-object p0

    return-object p0
.end method

.method public addDistance(Ljava/lang/String;Ljava/lang/String;IZ)Landroid/icu/util/LocaleMatcher$LanguageMatcherData;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 691
    invoke-direct/range {v0 .. v5}, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->addDistance(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    move-result-object p0

    return-object p0
.end method

.method public cloneAsThawed()Landroid/icu/util/LocaleMatcher$LanguageMatcherData;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 762
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    .line 763
    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->languageScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    invoke-virtual {v1}, Landroid/icu/util/LocaleMatcher$ScoreData;->cloneAsThawed()Landroid/icu/util/LocaleMatcher$ScoreData;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->languageScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    .line 764
    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->scriptScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    invoke-virtual {v1}, Landroid/icu/util/LocaleMatcher$ScoreData;->cloneAsThawed()Landroid/icu/util/LocaleMatcher$ScoreData;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->scriptScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    .line 765
    iget-object p0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->regionScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    invoke-virtual {p0}, Landroid/icu/util/LocaleMatcher$ScoreData;->cloneAsThawed()Landroid/icu/util/LocaleMatcher$ScoreData;

    move-result-object p0

    iput-object p0, v0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->regionScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    const/4 p0, 0x0

    .line 766
    iput-boolean p0, v0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->frozen:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 769
    new-instance v0, Landroid/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v0, p0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 613
    invoke-virtual {p0}, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->cloneAsThawed()Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    move-result-object p0

    return-object p0
.end method

.method public freeze()Landroid/icu/util/LocaleMatcher$LanguageMatcherData;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 781
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->languageScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    invoke-virtual {v0}, Landroid/icu/util/LocaleMatcher$ScoreData;->freeze()Landroid/icu/util/LocaleMatcher$ScoreData;

    .line 782
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->regionScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    invoke-virtual {v0}, Landroid/icu/util/LocaleMatcher$ScoreData;->freeze()Landroid/icu/util/LocaleMatcher$ScoreData;

    .line 783
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->scriptScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    invoke-virtual {v0}, Landroid/icu/util/LocaleMatcher$ScoreData;->freeze()Landroid/icu/util/LocaleMatcher$ScoreData;

    .line 784
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->languageScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    invoke-virtual {v0}, Landroid/icu/util/LocaleMatcher$ScoreData;->getMatchingLanguages()Landroid/icu/impl/Relation;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->matchingLanguages:Landroid/icu/impl/Relation;

    const/4 v0, 0x1

    .line 785
    iput-boolean v0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->frozen:Z

    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 613
    invoke-virtual {p0}, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->freeze()Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    move-result-object p0

    return-object p0
.end method

.method public isFrozen()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 797
    iget-boolean p0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->frozen:Z

    return p0
.end method

.method public match(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)D
    .locals 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    .line 656
    iget-object v1, v0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->languageScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p4 .. p4}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    move-object v2, p2

    move-object/from16 v5, p4

    invoke-virtual/range {v1 .. v7}, Landroid/icu/util/LocaleMatcher$ScoreData;->getScore(Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    add-double/2addr v1, v3

    const-wide v5, 0x3feff7ced916872bL    # 0.999

    cmpl-double v5, v1, v5

    if-lez v5, :cond_0

    return-wide v3

    .line 660
    :cond_0
    iget-object v6, v0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->scriptScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p3 .. p3}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p4 .. p4}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v12

    move-object v7, p2

    move-object/from16 v10, p4

    invoke-virtual/range {v6 .. v12}, Landroid/icu/util/LocaleMatcher$ScoreData;->getScore(Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v5

    add-double/2addr v1, v5

    .line 661
    iget-object v5, v0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->regionScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p3 .. p3}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p4 .. p4}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v11

    move-object v6, p2

    move-object/from16 v9, p4

    invoke-virtual/range {v5 .. v11}, Landroid/icu/util/LocaleMatcher$ScoreData;->getScore(Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v5

    add-double/2addr v1, v5

    .line 663
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-wide v5, 0x3f847ae147ae147bL    # 0.01

    add-double/2addr v1, v5

    :cond_1
    cmpg-double v0, v1, v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    if-gez v0, :cond_2

    move-wide v1, v3

    goto :goto_0

    :cond_2
    cmpl-double v0, v1, v5

    if-lez v0, :cond_3

    move-wide v1, v5

    :cond_3
    :goto_0
    sub-double/2addr v5, v1

    return-wide v5
.end method

.method public matchingLanguages()Landroid/icu/impl/Relation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/icu/impl/Relation<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 636
    iget-object p0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->matchingLanguages:Landroid/icu/impl/Relation;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->languageScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->scriptScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->regionScores:Landroid/icu/util/LocaleMatcher$ScoreData;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
