.class Landroid/icu/impl/number/Parse$AffixHolder;
.super Ljava/lang/Object;
.source "Parse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/number/Parse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AffixHolder"
.end annotation


# static fields
.field static final EMPTY_NEGATIVE:Landroid/icu/impl/number/Parse$AffixHolder;

.field static final EMPTY_POSITIVE:Landroid/icu/impl/number/Parse$AffixHolder;


# instance fields
.field final negative:Z

.field final p:Ljava/lang/String;

.field final s:Ljava/lang/String;

.field final strings:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 683
    new-instance v0, Landroid/icu/impl/number/Parse$AffixHolder;

    const/4 v1, 0x1

    const-string v2, ""

    const/4 v3, 0x0

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/icu/impl/number/Parse$AffixHolder;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Landroid/icu/impl/number/Parse$AffixHolder;->EMPTY_POSITIVE:Landroid/icu/impl/number/Parse$AffixHolder;

    .line 684
    new-instance v0, Landroid/icu/impl/number/Parse$AffixHolder;

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/icu/impl/number/Parse$AffixHolder;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Landroid/icu/impl/number/Parse$AffixHolder;->EMPTY_NEGATIVE:Landroid/icu/impl/number/Parse$AffixHolder;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .line 757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 758
    iput-object p1, p0, Landroid/icu/impl/number/Parse$AffixHolder;->p:Ljava/lang/String;

    .line 759
    iput-object p2, p0, Landroid/icu/impl/number/Parse$AffixHolder;->s:Ljava/lang/String;

    .line 760
    iput-boolean p3, p0, Landroid/icu/impl/number/Parse$AffixHolder;->strings:Z

    .line 761
    iput-boolean p4, p0, Landroid/icu/impl/number/Parse$AffixHolder;->negative:Z

    return-void
.end method

.method static addToState(Landroid/icu/impl/number/Parse$ParserState;Landroid/icu/impl/number/DecimalFormatProperties;)V
    .locals 4

    .line 687
    invoke-static {p1}, Landroid/icu/impl/number/Parse$AffixHolder;->fromPropertiesPositivePattern(Landroid/icu/impl/number/DecimalFormatProperties;)Landroid/icu/impl/number/Parse$AffixHolder;

    move-result-object v0

    .line 688
    invoke-static {p1}, Landroid/icu/impl/number/Parse$AffixHolder;->fromPropertiesNegativePattern(Landroid/icu/impl/number/DecimalFormatProperties;)Landroid/icu/impl/number/Parse$AffixHolder;

    move-result-object v1

    .line 689
    invoke-static {p1}, Landroid/icu/impl/number/Parse$AffixHolder;->fromPropertiesPositiveString(Landroid/icu/impl/number/DecimalFormatProperties;)Landroid/icu/impl/number/Parse$AffixHolder;

    move-result-object v2

    .line 690
    invoke-static {p1}, Landroid/icu/impl/number/Parse$AffixHolder;->fromPropertiesNegativeString(Landroid/icu/impl/number/DecimalFormatProperties;)Landroid/icu/impl/number/Parse$AffixHolder;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 691
    iget-object v3, p0, Landroid/icu/impl/number/Parse$ParserState;->affixHolders:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz v2, :cond_1

    .line 692
    iget-object v0, p0, Landroid/icu/impl/number/Parse$ParserState;->affixHolders:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v1, :cond_2

    .line 693
    iget-object v0, p0, Landroid/icu/impl/number/Parse$ParserState;->affixHolders:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p1, :cond_3

    .line 694
    iget-object p0, p0, Landroid/icu/impl/number/Parse$ParserState;->affixHolders:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method static fromPropertiesNegativePattern(Landroid/icu/impl/number/DecimalFormatProperties;)Landroid/icu/impl/number/Parse$AffixHolder;
    .locals 3

    .line 721
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getNegativePrefixPattern()Ljava/lang/String;

    move-result-object v0

    .line 722
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getNegativeSuffixPattern()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 724
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getPositivePrefixPattern()Ljava/lang/String;

    move-result-object v0

    .line 725
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getPositiveSuffixPattern()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    .line 729
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    const/4 v2, 0x1

    .line 732
    invoke-static {v0, v1, p0, v2}, Landroid/icu/impl/number/Parse$AffixHolder;->getInstance(Ljava/lang/String;Ljava/lang/String;ZZ)Landroid/icu/impl/number/Parse$AffixHolder;

    move-result-object p0

    return-object p0
.end method

.method static fromPropertiesNegativeString(Landroid/icu/impl/number/DecimalFormatProperties;)Landroid/icu/impl/number/Parse$AffixHolder;
    .locals 2

    .line 743
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getNegativePrefix()Ljava/lang/String;

    move-result-object v0

    .line 744
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getNegativeSuffix()Ljava/lang/String;

    move-result-object p0

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v1, 0x1

    .line 746
    invoke-static {v0, p0, v1, v1}, Landroid/icu/impl/number/Parse$AffixHolder;->getInstance(Ljava/lang/String;Ljava/lang/String;ZZ)Landroid/icu/impl/number/Parse$AffixHolder;

    move-result-object p0

    return-object p0
.end method

.method static fromPropertiesPositivePattern(Landroid/icu/impl/number/DecimalFormatProperties;)Landroid/icu/impl/number/Parse$AffixHolder;
    .locals 8

    .line 698
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getPositivePrefixPattern()Ljava/lang/String;

    move-result-object v0

    .line 699
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getPositiveSuffixPattern()Ljava/lang/String;

    move-result-object v1

    .line 700
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getSignAlwaysShown()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 703
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getNegativePrefixPattern()Ljava/lang/String;

    move-result-object v2

    .line 704
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getNegativeSuffixPattern()Ljava/lang/String;

    move-result-object p0

    const/4 v4, -0x1

    .line 705
    invoke-static {v2, v4}, Landroid/icu/impl/number/AffixUtils;->containsType(Ljava/lang/CharSequence;I)Z

    move-result v5

    const/16 v6, 0x2b

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    .line 707
    invoke-static {v2, v4, v6}, Landroid/icu/impl/number/AffixUtils;->replaceType(Ljava/lang/CharSequence;IC)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move v0, v7

    goto :goto_0

    :cond_0
    move-object v2, v0

    move v0, v3

    .line 709
    :goto_0
    invoke-static {p0, v4}, Landroid/icu/impl/number/AffixUtils;->containsType(Ljava/lang/CharSequence;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 711
    invoke-static {p0, v4, v6}, Landroid/icu/impl/number/AffixUtils;->replaceType(Ljava/lang/CharSequence;IC)Ljava/lang/String;

    move-result-object v1

    move v0, v7

    :cond_1
    if-nez v0, :cond_2

    .line 714
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 717
    :cond_3
    :goto_1
    invoke-static {v0, v1, v3, v3}, Landroid/icu/impl/number/Parse$AffixHolder;->getInstance(Ljava/lang/String;Ljava/lang/String;ZZ)Landroid/icu/impl/number/Parse$AffixHolder;

    move-result-object p0

    return-object p0
.end method

.method static fromPropertiesPositiveString(Landroid/icu/impl/number/DecimalFormatProperties;)Landroid/icu/impl/number/Parse$AffixHolder;
    .locals 3

    .line 736
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getPositivePrefix()Ljava/lang/String;

    move-result-object v0

    .line 737
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getPositiveSuffix()Ljava/lang/String;

    move-result-object p0

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 739
    invoke-static {v0, p0, v1, v2}, Landroid/icu/impl/number/Parse$AffixHolder;->getInstance(Ljava/lang/String;Ljava/lang/String;ZZ)Landroid/icu/impl/number/Parse$AffixHolder;

    move-result-object p0

    return-object p0
.end method

.method static getInstance(Ljava/lang/String;Ljava/lang/String;ZZ)Landroid/icu/impl/number/Parse$AffixHolder;
    .locals 1

    if-nez p0, :cond_1

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    .line 750
    sget-object p0, Landroid/icu/impl/number/Parse$AffixHolder;->EMPTY_NEGATIVE:Landroid/icu/impl/number/Parse$AffixHolder;

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/icu/impl/number/Parse$AffixHolder;->EMPTY_POSITIVE:Landroid/icu/impl/number/Parse$AffixHolder;

    :goto_0
    return-object p0

    :cond_1
    const-string v0, ""

    if-nez p0, :cond_2

    move-object p0, v0

    :cond_2
    if-nez p1, :cond_3

    move-object p1, v0

    .line 753
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    if-eqz p3, :cond_4

    sget-object p0, Landroid/icu/impl/number/Parse$AffixHolder;->EMPTY_NEGATIVE:Landroid/icu/impl/number/Parse$AffixHolder;

    goto :goto_1

    :cond_4
    sget-object p0, Landroid/icu/impl/number/Parse$AffixHolder;->EMPTY_POSITIVE:Landroid/icu/impl/number/Parse$AffixHolder;

    :goto_1
    return-object p0

    .line 754
    :cond_5
    new-instance v0, Landroid/icu/impl/number/Parse$AffixHolder;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/icu/impl/number/Parse$AffixHolder;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 768
    :cond_1
    instance-of v2, p1, Landroid/icu/impl/number/Parse$AffixHolder;

    if-nez v2, :cond_2

    return v0

    .line 769
    :cond_2
    check-cast p1, Landroid/icu/impl/number/Parse$AffixHolder;

    .line 770
    iget-object v2, p0, Landroid/icu/impl/number/Parse$AffixHolder;->p:Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/impl/number/Parse$AffixHolder;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v0

    .line 771
    :cond_3
    iget-object v2, p0, Landroid/icu/impl/number/Parse$AffixHolder;->s:Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/impl/number/Parse$AffixHolder;->s:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v0

    .line 772
    :cond_4
    iget-boolean v2, p0, Landroid/icu/impl/number/Parse$AffixHolder;->strings:Z

    iget-boolean v3, p1, Landroid/icu/impl/number/Parse$AffixHolder;->strings:Z

    if-eq v2, v3, :cond_5

    return v0

    .line 773
    :cond_5
    iget-boolean p0, p0, Landroid/icu/impl/number/Parse$AffixHolder;->negative:Z

    iget-boolean p1, p1, Landroid/icu/impl/number/Parse$AffixHolder;->negative:Z

    if-eq p0, p1, :cond_6

    return v0

    :cond_6
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 779
    iget-object v0, p0, Landroid/icu/impl/number/Parse$AffixHolder;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object p0, p0, Landroid/icu/impl/number/Parse$AffixHolder;->s:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 785
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    iget-object v1, p0, Landroid/icu/impl/number/Parse$AffixHolder;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    .line 787
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    iget-object v2, p0, Landroid/icu/impl/number/Parse$AffixHolder;->s:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    iget-boolean p0, p0, Landroid/icu/impl/number/Parse$AffixHolder;->strings:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x53

    goto :goto_0

    :cond_0
    const/16 p0, 0x50

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    .line 791
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
