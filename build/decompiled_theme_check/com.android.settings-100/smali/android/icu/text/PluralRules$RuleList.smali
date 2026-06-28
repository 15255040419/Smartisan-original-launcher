.class Landroid/icu/text/PluralRules$RuleList;
.super Ljava/lang/Object;
.source "PluralRules.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RuleList"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private hasExplicitBoundingInfo:Z

.field private final rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/text/PluralRules$Rule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1834
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1835
    iput-boolean v0, p0, Landroid/icu/text/PluralRules$RuleList;->hasExplicitBoundingInfo:Z

    .line 1837
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/PluralRules$1;)V
    .locals 0

    .line 1834
    invoke-direct {p0}, Landroid/icu/text/PluralRules$RuleList;-><init>()V

    return-void
.end method

.method static synthetic access$200(Landroid/icu/text/PluralRules$RuleList;)Z
    .locals 0

    .line 1834
    iget-boolean p0, p0, Landroid/icu/text/PluralRules$RuleList;->hasExplicitBoundingInfo:Z

    return p0
.end method

.method static synthetic access$276(Landroid/icu/text/PluralRules$RuleList;I)Z
    .locals 1

    .line 1834
    iget-boolean v0, p0, Landroid/icu/text/PluralRules$RuleList;->hasExplicitBoundingInfo:Z

    or-int/2addr p1, v0

    int-to-byte p1, p1

    iput-boolean p1, p0, Landroid/icu/text/PluralRules$RuleList;->hasExplicitBoundingInfo:Z

    return p1
.end method

.method private selectRule(Landroid/icu/text/PluralRules$IFixedDecimal;)Landroid/icu/text/PluralRules$Rule;
    .locals 2

    .line 1868
    iget-object p0, p0, Landroid/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/PluralRules$Rule;

    .line 1869
    invoke-virtual {v0, p1}, Landroid/icu/text/PluralRules$Rule;->appliesTo(Landroid/icu/text/PluralRules$IFixedDecimal;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public addRule(Landroid/icu/text/PluralRules$Rule;)Landroid/icu/text/PluralRules$RuleList;
    .locals 3

    .line 1840
    invoke-virtual {p1}, Landroid/icu/text/PluralRules$Rule;->getKeyword()Ljava/lang/String;

    move-result-object v0

    .line 1841
    iget-object v1, p0, Landroid/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/PluralRules$Rule;

    .line 1842
    invoke-virtual {v2}, Landroid/icu/text/PluralRules$Rule;->getKeyword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1843
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicate keyword: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1846
    :cond_1
    iget-object v0, p0, Landroid/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public computeLimited(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Z
    .locals 4

    .line 1907
    iget-object p0, p0, Landroid/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/PluralRules$Rule;

    .line 1908
    invoke-virtual {v2}, Landroid/icu/text/PluralRules$Rule;->getKeyword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1909
    invoke-virtual {v2, p2}, Landroid/icu/text/PluralRules$Rule;->isLimited(Landroid/icu/text/PluralRules$SampleType;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public finish()Landroid/icu/text/PluralRules$RuleList;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1853
    iget-object v0, p0, Landroid/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1854
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/PluralRules$Rule;

    .line 1855
    invoke-virtual {v2}, Landroid/icu/text/PluralRules$Rule;->getKeyword()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "other"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1857
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    move-object v1, v2

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const-string/jumbo v0, "other:"

    .line 1861
    invoke-static {v0}, Landroid/icu/text/PluralRules;->access$600(Ljava/lang/String;)Landroid/icu/text/PluralRules$Rule;

    move-result-object v1

    .line 1863
    :cond_2
    iget-object v0, p0, Landroid/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getDecimalSamples(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Landroid/icu/text/PluralRules$FixedDecimalSamples;
    .locals 2

    .line 1949
    iget-object p0, p0, Landroid/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/PluralRules$Rule;

    .line 1950
    invoke-virtual {v0}, Landroid/icu/text/PluralRules$Rule;->getKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1951
    sget-object p0, Landroid/icu/text/PluralRules$SampleType;->INTEGER:Landroid/icu/text/PluralRules$SampleType;

    if-ne p2, p0, :cond_1

    invoke-static {v0}, Landroid/icu/text/PluralRules$Rule;->access$300(Landroid/icu/text/PluralRules$Rule;)Landroid/icu/text/PluralRules$FixedDecimalSamples;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Landroid/icu/text/PluralRules$Rule;->access$400(Landroid/icu/text/PluralRules$Rule;)Landroid/icu/text/PluralRules$FixedDecimalSamples;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getKeywords()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1885
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1886
    iget-object p0, p0, Landroid/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/PluralRules$Rule;

    .line 1887
    invoke-virtual {v1}, Landroid/icu/text/PluralRules$Rule;->getKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getRules(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1931
    iget-object p0, p0, Landroid/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/PluralRules$Rule;

    .line 1932
    invoke-virtual {v0}, Landroid/icu/text/PluralRules$Rule;->getKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1933
    invoke-virtual {v0}, Landroid/icu/text/PluralRules$Rule;->getConstraint()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public isLimited(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Z
    .locals 1

    .line 1895
    iget-boolean v0, p0, Landroid/icu/text/PluralRules$RuleList;->hasExplicitBoundingInfo:Z

    if-eqz v0, :cond_1

    .line 1896
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/PluralRules$RuleList;->getDecimalSamples(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Landroid/icu/text/PluralRules$FixedDecimalSamples;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    .line 1897
    :cond_0
    iget-boolean p0, p0, Landroid/icu/text/PluralRules$FixedDecimalSamples;->bounded:Z

    :goto_0
    return p0

    .line 1900
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/PluralRules$RuleList;->computeLimited(Ljava/lang/String;Landroid/icu/text/PluralRules$SampleType;)Z

    move-result p0

    return p0
.end method

.method public select(Landroid/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;
    .locals 1

    .line 1877
    invoke-interface {p1}, Landroid/icu/text/PluralRules$IFixedDecimal;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Landroid/icu/text/PluralRules$IFixedDecimal;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1880
    :cond_0
    invoke-direct {p0, p1}, Landroid/icu/text/PluralRules$RuleList;->selectRule(Landroid/icu/text/PluralRules$IFixedDecimal;)Landroid/icu/text/PluralRules$Rule;

    move-result-object p0

    .line 1881
    invoke-virtual {p0}, Landroid/icu/text/PluralRules$Rule;->getKeyword()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string/jumbo p0, "other"

    return-object p0
.end method

.method public select(Landroid/icu/text/PluralRules$IFixedDecimal;Ljava/lang/String;)Z
    .locals 2

    .line 1940
    iget-object p0, p0, Landroid/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/PluralRules$Rule;

    .line 1941
    invoke-virtual {v0}, Landroid/icu/text/PluralRules$Rule;->getKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/icu/text/PluralRules$Rule;->appliesTo(Landroid/icu/text/PluralRules$IFixedDecimal;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1921
    iget-object p0, p0, Landroid/icu/text/PluralRules$RuleList;->rules:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/PluralRules$Rule;

    .line 1922
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ";  "

    .line 1923
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1925
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1927
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
