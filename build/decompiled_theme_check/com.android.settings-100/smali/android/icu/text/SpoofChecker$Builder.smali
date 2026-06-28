.class public Landroid/icu/text/SpoofChecker$Builder;
.super Ljava/lang/Object;
.source "SpoofChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/SpoofChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;
    }
.end annotation


# instance fields
.field final fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

.field final fAllowedLocales:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation
.end field

.field fChecks:I

.field private fRestrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

.field fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const/4 v1, 0x0

    const v2, 0x10ffff

    invoke-direct {v0, v1, v2}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    .line 436
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedLocales:Ljava/util/Set;

    const/4 v0, -0x1

    .line 445
    iput v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fChecks:I

    const/4 v0, 0x0

    .line 446
    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    .line 447
    sget-object v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;->HIGHLY_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fRestrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    return-void
.end method

.method public constructor <init>(Landroid/icu/text/SpoofChecker;)V
    .locals 3

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const/4 v1, 0x0

    const v2, 0x10ffff

    invoke-direct {v0, v1, v2}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    .line 436
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedLocales:Ljava/util/Set;

    .line 457
    invoke-static {p1}, Landroid/icu/text/SpoofChecker;->access$000(Landroid/icu/text/SpoofChecker;)I

    move-result v0

    iput v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fChecks:I

    .line 458
    invoke-static {p1}, Landroid/icu/text/SpoofChecker;->access$100(Landroid/icu/text/SpoofChecker;)Landroid/icu/text/SpoofChecker$SpoofData;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    .line 462
    iget-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    invoke-static {p1}, Landroid/icu/text/SpoofChecker;->access$200(Landroid/icu/text/SpoofChecker;)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->set(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 463
    iget-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedLocales:Ljava/util/Set;

    invoke-static {p1}, Landroid/icu/text/SpoofChecker;->access$300(Landroid/icu/text/SpoofChecker;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 464
    invoke-static {p1}, Landroid/icu/text/SpoofChecker;->access$400(Landroid/icu/text/SpoofChecker;)Landroid/icu/text/SpoofChecker$RestrictionLevel;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/SpoofChecker$Builder;->fRestrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    return-void
.end method

.method private addScriptChars(Landroid/icu/util/ULocale;Landroid/icu/text/UnicodeSet;)V
    .locals 3

    .line 666
    invoke-static {p1}, Landroid/icu/lang/UScript;->getCode(Landroid/icu/util/ULocale;)[I

    move-result-object p0

    if-eqz p0, :cond_0

    .line 668
    new-instance p1, Landroid/icu/text/UnicodeSet;

    invoke-direct {p1}, Landroid/icu/text/UnicodeSet;-><init>()V

    const/4 v0, 0x0

    .line 669
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    const/16 v1, 0x100a

    .line 670
    aget v2, p0, v0

    invoke-virtual {p1, v1, v2}, Landroid/icu/text/UnicodeSet;->applyIntPropertyValue(II)Landroid/icu/text/UnicodeSet;

    .line 671
    invoke-virtual {p2, p1}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public build()Landroid/icu/text/SpoofChecker;
    .locals 3

    .line 474
    iget-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    if-nez v0, :cond_0

    .line 476
    invoke-static {}, Landroid/icu/text/SpoofChecker$SpoofData;->getDefault()Landroid/icu/text/SpoofChecker$SpoofData;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    .line 488
    :cond_0
    new-instance v0, Landroid/icu/text/SpoofChecker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/text/SpoofChecker;-><init>(Landroid/icu/text/SpoofChecker$1;)V

    .line 489
    iget v1, p0, Landroid/icu/text/SpoofChecker$Builder;->fChecks:I

    invoke-static {v0, v1}, Landroid/icu/text/SpoofChecker;->access$002(Landroid/icu/text/SpoofChecker;I)I

    .line 490
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$Builder;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    invoke-static {v0, v1}, Landroid/icu/text/SpoofChecker;->access$102(Landroid/icu/text/SpoofChecker;Landroid/icu/text/SpoofChecker$SpoofData;)Landroid/icu/text/SpoofChecker$SpoofData;

    .line 491
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/UnicodeSet;

    invoke-static {v0, v1}, Landroid/icu/text/SpoofChecker;->access$202(Landroid/icu/text/SpoofChecker;Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 492
    invoke-static {v0}, Landroid/icu/text/SpoofChecker;->access$200(Landroid/icu/text/SpoofChecker;)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    .line 493
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedLocales:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Landroid/icu/text/SpoofChecker;->access$302(Landroid/icu/text/SpoofChecker;Ljava/util/Set;)Ljava/util/Set;

    .line 494
    iget-object p0, p0, Landroid/icu/text/SpoofChecker$Builder;->fRestrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    invoke-static {v0, p0}, Landroid/icu/text/SpoofChecker;->access$402(Landroid/icu/text/SpoofChecker;Landroid/icu/text/SpoofChecker$RestrictionLevel;)Landroid/icu/text/SpoofChecker$RestrictionLevel;

    return-object v0
.end method

.method public setAllowedChars(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/SpoofChecker$Builder;
    .locals 1

    .line 693
    iget-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->set(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 694
    iget-object p1, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedLocales:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 695
    iget p1, p0, Landroid/icu/text/SpoofChecker$Builder;->fChecks:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Landroid/icu/text/SpoofChecker$Builder;->fChecks:I

    return-object p0
.end method

.method public setAllowedJavaLocales(Ljava/util/Set;)Landroid/icu/text/SpoofChecker$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/util/Locale;",
            ">;)",
            "Landroid/icu/text/SpoofChecker$Builder;"
        }
    .end annotation

    .line 655
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 656
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    .line 657
    invoke-static {v1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 659
    :cond_0
    invoke-virtual {p0, v0}, Landroid/icu/text/SpoofChecker$Builder;->setAllowedLocales(Ljava/util/Set;)Landroid/icu/text/SpoofChecker$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setAllowedLocales(Ljava/util/Set;)Landroid/icu/text/SpoofChecker$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/icu/util/ULocale;",
            ">;)",
            "Landroid/icu/text/SpoofChecker$Builder;"
        }
    .end annotation

    .line 611
    iget-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    .line 613
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/ULocale;

    .line 616
    iget-object v2, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    invoke-direct {p0, v1, v2}, Landroid/icu/text/SpoofChecker$Builder;->addScriptChars(Landroid/icu/util/ULocale;Landroid/icu/text/UnicodeSet;)V

    goto :goto_0

    .line 621
    :cond_0
    iget-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedLocales:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 622
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 623
    iget-object p1, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    const v0, 0x10ffff

    invoke-virtual {p1, v1, v0}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    .line 624
    iget p1, p0, Landroid/icu/text/SpoofChecker$Builder;->fChecks:I

    and-int/lit8 p1, p1, -0x41

    iput p1, p0, Landroid/icu/text/SpoofChecker$Builder;->fChecks:I

    return-object p0

    .line 630
    :cond_1
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    const/16 v2, 0x100a

    .line 631
    invoke-virtual {v0, v2, v1}, Landroid/icu/text/UnicodeSet;->applyIntPropertyValue(II)Landroid/icu/text/UnicodeSet;

    .line 632
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1, v0}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    const/4 v1, 0x1

    .line 633
    invoke-virtual {v0, v2, v1}, Landroid/icu/text/UnicodeSet;->applyIntPropertyValue(II)Landroid/icu/text/UnicodeSet;

    .line 634
    iget-object v1, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1, v0}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 637
    iget-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedLocales:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 638
    iget-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fAllowedLocales:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 639
    iget p1, p0, Landroid/icu/text/SpoofChecker$Builder;->fChecks:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Landroid/icu/text/SpoofChecker$Builder;->fChecks:I

    return-object p0
.end method

.method public setChecks(I)Landroid/icu/text/SpoofChecker$Builder;
    .locals 1

    and-int/lit8 v0, p1, 0x0

    if-nez v0, :cond_0

    and-int/lit8 p1, p1, -0x1

    .line 579
    iput p1, p0, Landroid/icu/text/SpoofChecker$Builder;->fChecks:I

    return-object p0

    .line 577
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bad Spoof Checks value."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setData(Ljava/io/Reader;)Landroid/icu/text/SpoofChecker$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 515
    new-instance v0, Landroid/icu/text/SpoofChecker$SpoofData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/text/SpoofChecker$SpoofData;-><init>(Landroid/icu/text/SpoofChecker$1;)V

    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    .line 516
    iget-object v0, p0, Landroid/icu/text/SpoofChecker$Builder;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    invoke-static {p1, v0}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->buildConfusableData(Ljava/io/Reader;Landroid/icu/text/SpoofChecker$SpoofData;)V

    return-object p0
.end method

.method public setData(Ljava/io/Reader;Ljava/io/Reader;)Landroid/icu/text/SpoofChecker$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 535
    invoke-virtual {p0, p1}, Landroid/icu/text/SpoofChecker$Builder;->setData(Ljava/io/Reader;)Landroid/icu/text/SpoofChecker$Builder;

    return-object p0
.end method

.method public setRestrictionLevel(Landroid/icu/text/SpoofChecker$RestrictionLevel;)Landroid/icu/text/SpoofChecker$Builder;
    .locals 0

    .line 711
    iput-object p1, p0, Landroid/icu/text/SpoofChecker$Builder;->fRestrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    .line 712
    iget p1, p0, Landroid/icu/text/SpoofChecker$Builder;->fChecks:I

    or-int/lit16 p1, p1, 0x90

    iput p1, p0, Landroid/icu/text/SpoofChecker$Builder;->fChecks:I

    return-object p0
.end method
