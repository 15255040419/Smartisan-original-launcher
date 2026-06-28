.class Landroid/icu/util/LocaleMatcher$ScoreData;
.super Ljava/lang/Object;
.source "LocaleMatcher.java"

# interfaces
.implements Landroid/icu/util/Freezable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/LocaleMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScoreData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/icu/util/Freezable<",
        "Landroid/icu/util/LocaleMatcher$ScoreData;",
        ">;"
    }
.end annotation


# static fields
.field private static final maxUnequal_changeD_sameS:D = 0.5

.field private static final maxUnequal_changeEqual:D = 0.75


# instance fields
.field private volatile frozen:Z

.field final level:Landroid/icu/util/LocaleMatcher$Level;

.field scores:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Landroid/icu/impl/Row$R3<",
            "Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;",
            "Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/icu/util/LocaleMatcher$Level;)V
    .locals 1

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 505
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroid/icu/util/LocaleMatcher$ScoreData;->scores:Ljava/util/LinkedHashSet;

    const/4 v0, 0x0

    .line 582
    iput-boolean v0, p0, Landroid/icu/util/LocaleMatcher$ScoreData;->frozen:Z

    .line 509
    iput-object p1, p0, Landroid/icu/util/LocaleMatcher$ScoreData;->level:Landroid/icu/util/LocaleMatcher$Level;

    return-void
.end method

.method private getRawScore(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)D
    .locals 3

    .line 543
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$ScoreData;->scores:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/Row$R3;

    .line 544
    invoke-virtual {v1}, Landroid/icu/impl/Row$R3;->get0()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;

    invoke-virtual {v2, p1}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->matches(Landroid/icu/util/ULocale;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 545
    invoke-virtual {v1}, Landroid/icu/impl/Row$R3;->get1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;

    invoke-virtual {v2, p2}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->matches(Landroid/icu/util/ULocale;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 549
    invoke-virtual {v1}, Landroid/icu/impl/Row$R3;->get2()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0

    .line 555
    :cond_1
    iget-object p0, p0, Landroid/icu/util/LocaleMatcher$ScoreData;->level:Landroid/icu/util/LocaleMatcher$Level;

    iget-wide p0, p0, Landroid/icu/util/LocaleMatcher$Level;->worst:D

    return-wide p0
.end method


# virtual methods
.method addDataToScores(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/Row$R3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/icu/impl/Row$R3<",
            "Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;",
            "Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 522
    iget-object p0, p0, Landroid/icu/util/LocaleMatcher$ScoreData;->scores:Ljava/util/LinkedHashSet;

    invoke-virtual {p0, p3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 524
    :cond_0
    new-instance p0, Landroid/icu/util/ICUException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "trying to add duplicate data: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public cloneAsThawed()Landroid/icu/util/LocaleMatcher$ScoreData;
    .locals 1

    .line 572
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/util/LocaleMatcher$ScoreData;

    .line 573
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher$ScoreData;->scores:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashSet;

    iput-object v0, p0, Landroid/icu/util/LocaleMatcher$ScoreData;->scores:Ljava/util/LinkedHashSet;

    const/4 v0, 0x0

    .line 574
    iput-boolean v0, p0, Landroid/icu/util/LocaleMatcher$ScoreData;->frozen:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 577
    new-instance v0, Landroid/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v0, p0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 0

    .line 498
    invoke-virtual {p0}, Landroid/icu/util/LocaleMatcher$ScoreData;->cloneAsThawed()Landroid/icu/util/LocaleMatcher$ScoreData;

    move-result-object p0

    return-object p0
.end method

.method public freeze()Landroid/icu/util/LocaleMatcher$ScoreData;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 0

    .line 498
    invoke-virtual {p0}, Landroid/icu/util/LocaleMatcher$ScoreData;->freeze()Landroid/icu/util/LocaleMatcher$ScoreData;

    move-result-object p0

    return-object p0
.end method

.method public getMatchingLanguages()Landroid/icu/impl/Relation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/icu/impl/Relation<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 595
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-class v1, Ljava/util/HashSet;

    invoke-static {v0, v1}, Landroid/icu/impl/Relation;->of(Ljava/util/Map;Ljava/lang/Class;)Landroid/icu/impl/Relation;

    move-result-object v0

    .line 596
    iget-object p0, p0, Landroid/icu/util/LocaleMatcher$ScoreData;->scores:Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/Row$R3;

    .line 597
    invoke-virtual {v1}, Landroid/icu/impl/Row$R3;->get0()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;

    .line 598
    invoke-virtual {v1}, Landroid/icu/impl/Row$R3;->get1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;

    .line 599
    invoke-static {v2}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->access$100(Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->access$100(Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 600
    invoke-static {v2}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->access$100(Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;->access$100(Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/icu/impl/Relation;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 603
    :cond_1
    invoke-virtual {v0}, Landroid/icu/impl/Relation;->freeze()Landroid/icu/impl/Relation;

    return-object v0
.end method

.method getScore(Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)D
    .locals 0

    .line 531
    invoke-virtual {p3, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 532
    invoke-direct {p0, p1, p4}, Landroid/icu/util/LocaleMatcher$ScoreData;->getRawScore(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)D

    move-result-wide p0

    goto :goto_0

    .line 533
    :cond_0
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-wide p0, 0x3f50624dd2f1a9fcL    # 0.001

    goto :goto_0

    :cond_1
    const-wide/16 p0, 0x0

    :goto_0
    return-wide p0
.end method

.method public isFrozen()Z
    .locals 0

    .line 591
    iget-boolean p0, p0, Landroid/icu/util/LocaleMatcher$ScoreData;->frozen:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/icu/util/LocaleMatcher$ScoreData;->level:Landroid/icu/util/LocaleMatcher$Level;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 561
    iget-object p0, p0, Landroid/icu/util/LocaleMatcher$ScoreData;->scores:Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/Row$R3;

    const-string v2, "\n\t\t"

    .line 562
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 564
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
