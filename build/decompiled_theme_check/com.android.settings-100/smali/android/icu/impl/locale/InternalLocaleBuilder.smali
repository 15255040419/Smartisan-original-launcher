.class public final Landroid/icu/impl/locale/InternalLocaleBuilder;
.super Ljava/lang/Object;
.source "InternalLocaleBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;,
        Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final JDKIMPL:Z = false

.field private static final PRIVUSE_KEY:Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;


# instance fields
.field private _extensions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _language:Ljava/lang/String;

.field private _region:Ljava/lang/String;

.field private _script:Ljava/lang/String;

.field private _uattributes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;",
            ">;"
        }
    .end annotation
.end field

.field private _ukeywords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _variant:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    new-instance v0, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    const/4 v1, 0x0

    const-string/jumbo v2, "x"

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {v0, v1}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;-><init>(C)V

    sput-object v0, Landroid/icu/impl/locale/InternalLocaleBuilder;->PRIVUSE_KEY:Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 25
    iput-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_language:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_script:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_region:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_variant:Ljava/lang/String;

    return-void
.end method

.method private checkVariants(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 546
    new-instance p0, Landroid/icu/impl/locale/StringTokenIterator;

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    :goto_0
    invoke-virtual {p0}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result p1

    if-nez p1, :cond_1

    .line 548
    invoke-virtual {p0}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object p1

    .line 549
    invoke-static {p1}, Landroid/icu/impl/locale/LanguageTag;->isVariant(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 550
    invoke-virtual {p0}, Landroid/icu/impl/locale/StringTokenIterator;->currentStart()I

    move-result p0

    return p0

    .line 552
    :cond_0
    invoke-virtual {p0}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method static removePrivateuseVariant(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 514
    new-instance v0, Landroid/icu/impl/locale/StringTokenIterator;

    const-string v1, "-"

    invoke-direct {v0, p0, v1}, Landroid/icu/impl/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    move v2, v1

    .line 521
    :goto_0
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_2

    if-eq v2, v1, :cond_0

    move v0, v4

    goto :goto_1

    .line 528
    :cond_0
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v3

    const-string v4, "lvariant"

    invoke-static {v3, v4}, Landroid/icu/impl/locale/AsciiUtil;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 529
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->currentStart()I

    move-result v2

    .line 531
    :cond_1
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_0

    :cond_2
    move v0, v5

    :goto_1
    if-nez v0, :cond_3

    return-object p0

    :cond_3
    if-nez v2, :cond_4

    const/4 p0, 0x0

    goto :goto_2

    :cond_4
    sub-int/2addr v2, v4

    .line 538
    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method private setExtensions(Ljava/util/List;Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/icu/impl/locale/InternalLocaleBuilder;"
        }
    .end annotation

    .line 286
    invoke-virtual {p0}, Landroid/icu/impl/locale/InternalLocaleBuilder;->clearExtensions()Landroid/icu/impl/locale/InternalLocaleBuilder;

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eqz p1, :cond_3

    .line 288
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 289
    new-instance v2, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 290
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 291
    new-instance v4, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-direct {v4, v5}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;-><init>(C)V

    .line 293
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 295
    invoke-virtual {v4}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;->value()C

    move-result v5

    invoke-static {v5}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->isSingletonChar(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 296
    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setUnicodeLocaleExtension(Ljava/lang/String;)V

    goto :goto_0

    .line 298
    :cond_1
    iget-object v5, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    if-nez v5, :cond_2

    .line 299
    new-instance v5, Ljava/util/HashMap;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    iput-object v5, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    .line 301
    :cond_2
    iget-object v5, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_5

    .line 306
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_5

    .line 308
    iget-object p1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    if-nez p1, :cond_4

    .line 309
    new-instance p1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {p1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    .line 311
    :cond_4
    iget-object p1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    new-instance v2, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {v2, v0}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;-><init>(C)V

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object p0
.end method

.method private setUnicodeLocaleExtension(Ljava/lang/String;)V
    .locals 9

    .line 564
    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 565
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 567
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 568
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 571
    :cond_1
    new-instance v0, Landroid/icu/impl/locale/StringTokenIterator;

    const-string v1, "-"

    invoke-direct {v0, p1, v1}, Landroid/icu/impl/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    :goto_0
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v1

    const/4 v2, 0x4

    if-nez v1, :cond_4

    .line 575
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->isAttribute(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 578
    :cond_2
    iget-object v1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    if-nez v1, :cond_3

    .line 579
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    .line 581
    :cond_3
    iget-object v1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    new-instance v2, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;

    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 582
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_0

    :cond_4
    :goto_1
    const/4 v1, 0x0

    const/4 v3, -0x1

    move-object v4, v1

    move v5, v3

    move v6, v5

    .line 590
    :goto_2
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v7

    if-nez v7, :cond_f

    const-string v7, ""

    if-eqz v4, :cond_a

    .line 592
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->isKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    if-ne v5, v3, :cond_5

    move-object v5, v7

    goto :goto_3

    .line 595
    :cond_5
    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 596
    :goto_3
    iget-object v6, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    if-nez v6, :cond_6

    .line 597
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v6, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    .line 599
    :cond_6
    iget-object v6, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    new-instance v4, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;

    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    .line 603
    iget-object v5, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    move-object v4, v1

    :cond_7
    move v5, v3

    move v6, v5

    goto :goto_4

    :cond_8
    if-ne v5, v3, :cond_9

    .line 607
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->currentStart()I

    move-result v5

    .line 609
    :cond_9
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->currentEnd()I

    move-result v6

    goto :goto_4

    .line 611
    :cond_a
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->isKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 614
    new-instance v4, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;

    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    .line 615
    iget-object v8, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    if-eqz v8, :cond_b

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    move-object v4, v1

    .line 621
    :cond_b
    :goto_4
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_e

    if-eqz v4, :cond_f

    if-ne v5, v3, :cond_c

    goto :goto_5

    .line 625
    :cond_c
    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 626
    :goto_5
    iget-object p1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    if-nez p1, :cond_d

    .line 627
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    .line 629
    :cond_d
    iget-object p0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    invoke-virtual {p0, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 634
    :cond_e
    invoke-virtual {v0}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto/16 :goto_2

    :cond_f
    :goto_6
    return-void
.end method


# virtual methods
.method public addUnicodeLocaleAttribute(Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/impl/locale/LocaleSyntaxException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 92
    invoke-static {p1}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->isAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    .line 99
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    new-instance v1, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;

    invoke-direct {v1, p1}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 93
    :cond_1
    new-instance p0, Landroid/icu/impl/locale/LocaleSyntaxException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ill-formed Unicode locale attribute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clear()Landroid/icu/impl/locale/InternalLocaleBuilder;
    .locals 1

    const-string v0, ""

    .line 440
    iput-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_language:Ljava/lang/String;

    .line 441
    iput-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_script:Ljava/lang/String;

    .line 442
    iput-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_region:Ljava/lang/String;

    .line 443
    iput-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_variant:Ljava/lang/String;

    .line 444
    invoke-virtual {p0}, Landroid/icu/impl/locale/InternalLocaleBuilder;->clearExtensions()Landroid/icu/impl/locale/InternalLocaleBuilder;

    return-object p0
.end method

.method public clearExtensions()Landroid/icu/impl/locale/InternalLocaleBuilder;
    .locals 1

    .line 449
    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 452
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    .line 453
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 455
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 456
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_2
    return-object p0
.end method

.method public getBaseLocale()Landroid/icu/impl/locale/BaseLocale;
    .locals 9

    .line 462
    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_language:Ljava/lang/String;

    .line 463
    iget-object v1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_script:Ljava/lang/String;

    .line 464
    iget-object v2, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_region:Ljava/lang/String;

    .line 465
    iget-object v3, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_variant:Ljava/lang/String;

    .line 469
    iget-object p0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    if-eqz p0, :cond_4

    .line 470
    sget-object v4, Landroid/icu/impl/locale/InternalLocaleBuilder;->PRIVUSE_KEY:Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_4

    .line 472
    new-instance v4, Landroid/icu/impl/locale/StringTokenIterator;

    const-string v5, "-"

    invoke-direct {v4, p0, v5}, Landroid/icu/impl/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 475
    :goto_0
    invoke-virtual {v4}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v7

    const/4 v8, -0x1

    if-nez v7, :cond_2

    if-eqz v6, :cond_0

    .line 477
    invoke-virtual {v4}, Landroid/icu/impl/locale/StringTokenIterator;->currentStart()I

    move-result v4

    goto :goto_1

    .line 480
    :cond_0
    invoke-virtual {v4}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v7

    const-string v8, "lvariant"

    invoke-static {v7, v8}, Landroid/icu/impl/locale/AsciiUtil;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v6, 0x1

    .line 483
    :cond_1
    invoke-virtual {v4}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_0

    :cond_2
    move v4, v8

    :goto_1
    if-eq v4, v8, :cond_4

    .line 486
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 487
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const-string v7, "_"

    if-eqz v3, :cond_3

    .line 488
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    :cond_3
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v5, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 496
    :cond_4
    invoke-static {v0, v1, v2, v3}, Landroid/icu/impl/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/BaseLocale;

    move-result-object p0

    return-object p0
.end method

.method public getLocaleExtensions()Landroid/icu/impl/locale/LocaleExtensions;
    .locals 3

    .line 500
    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    .line 501
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    .line 502
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 506
    :cond_2
    new-instance v0, Landroid/icu/impl/locale/LocaleExtensions;

    iget-object v1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    iget-object v2, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    iget-object p0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    invoke-direct {v0, v1, v2, p0}, Landroid/icu/impl/locale/LocaleExtensions;-><init>(Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;)V

    return-object v0

    .line 503
    :cond_3
    :goto_0
    sget-object p0, Landroid/icu/impl/locale/LocaleExtensions;->EMPTY_EXTENSIONS:Landroid/icu/impl/locale/LocaleExtensions;

    return-object p0
.end method

.method public removeUnicodeLocaleAttribute(Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/impl/locale/LocaleSyntaxException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 104
    invoke-static {p1}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->isAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 108
    new-instance v1, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;

    invoke-direct {v1, p1}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-object p0

    .line 105
    :cond_1
    new-instance p0, Landroid/icu/impl/locale/LocaleSyntaxException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ill-formed Unicode locale attribute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setExtension(CLjava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/impl/locale/LocaleSyntaxException;
        }
    .end annotation

    .line 148
    invoke-static {p1}, Landroid/icu/impl/locale/LanguageTag;->isPrivateusePrefixChar(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 149
    invoke-static {p1}, Landroid/icu/impl/locale/LanguageTag;->isExtensionSingletonChar(C)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    new-instance p0, Landroid/icu/impl/locale/LocaleSyntaxException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ill-formed extension key: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 153
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x1

    .line 154
    :goto_2
    new-instance v2, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    invoke-direct {v2, p1}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;-><init>(C)V

    if-eqz v1, :cond_6

    .line 157
    invoke-virtual {v2}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;->value()C

    move-result p1

    invoke-static {p1}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->isSingletonChar(C)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 159
    iget-object p1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    if-eqz p1, :cond_4

    .line 160
    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 162
    :cond_4
    iget-object p1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    if-eqz p1, :cond_c

    .line 163
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_5

    .line 166
    :cond_5
    iget-object p1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    if-eqz p1, :cond_c

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 167
    iget-object p1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_6
    const-string p1, "-"

    const-string v1, "_"

    .line 172
    invoke-virtual {p2, v1, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 173
    new-instance v1, Landroid/icu/impl/locale/StringTokenIterator;

    invoke-direct {v1, p2, p1}, Landroid/icu/impl/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :goto_3
    invoke-virtual {v1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result p1

    if-nez p1, :cond_9

    .line 175
    invoke-virtual {v1}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_7

    .line 178
    invoke-static {p1}, Landroid/icu/impl/locale/LanguageTag;->isPrivateuseSubtag(Ljava/lang/String;)Z

    move-result v3

    goto :goto_4

    .line 180
    :cond_7
    invoke-static {p1}, Landroid/icu/impl/locale/LanguageTag;->isExtensionSubtag(Ljava/lang/String;)Z

    move-result v3

    :goto_4
    if-eqz v3, :cond_8

    .line 185
    invoke-virtual {v1}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_3

    .line 183
    :cond_8
    new-instance p0, Landroid/icu/impl/locale/LocaleSyntaxException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ill-formed extension value: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Landroid/icu/impl/locale/StringTokenIterator;->currentStart()I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 188
    :cond_9
    invoke-virtual {v2}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;->value()C

    move-result p1

    invoke-static {p1}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->isSingletonChar(C)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 189
    invoke-direct {p0, p2}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setUnicodeLocaleExtension(Ljava/lang/String;)V

    goto :goto_5

    .line 191
    :cond_a
    iget-object p1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    if-nez p1, :cond_b

    .line 192
    new-instance p1, Ljava/util/HashMap;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    .line 194
    :cond_b
    iget-object p1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    invoke-virtual {p1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    :goto_5
    return-object p0
.end method

.method public setExtensions(Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/impl/locale/LocaleSyntaxException;
        }
    .end annotation

    if-eqz p1, :cond_a

    .line 204
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v0, "-"

    const-string v1, "_"

    .line 208
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 209
    new-instance v1, Landroid/icu/impl/locale/StringTokenIterator;

    invoke-direct {v1, p1, v0}, Landroid/icu/impl/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    move-object v2, v3

    .line 218
    :goto_0
    invoke-virtual {v1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v5

    if-nez v5, :cond_4

    .line 219
    invoke-virtual {v1}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v5

    .line 220
    invoke-static {v5}, Landroid/icu/impl/locale/LanguageTag;->isExtensionSingleton(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 221
    invoke-virtual {v1}, Landroid/icu/impl/locale/StringTokenIterator;->currentStart()I

    move-result v6

    .line 223
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v1}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    .line 226
    :goto_1
    invoke-virtual {v1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v8

    if-nez v8, :cond_1

    .line 227
    invoke-virtual {v1}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v8

    .line 228
    invoke-static {v8}, Landroid/icu/impl/locale/LanguageTag;->isExtensionSubtag(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 229
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v1}, Landroid/icu/impl/locale/StringTokenIterator;->currentEnd()I

    move-result v4

    .line 234
    invoke-virtual {v1}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_1

    :cond_1
    if-lt v4, v6, :cond_3

    if-nez v2, :cond_2

    .line 242
    new-instance v2, Ljava/util/ArrayList;

    const/4 v5, 0x4

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 244
    :cond_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 238
    :cond_3
    new-instance p0, Landroid/icu/impl/locale/LocaleSyntaxException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Incomplete extension \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v6}, Landroid/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 249
    :cond_4
    invoke-virtual {v1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v5

    if-nez v5, :cond_8

    .line 250
    invoke-virtual {v1}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v5

    .line 251
    invoke-static {v5}, Landroid/icu/impl/locale/LanguageTag;->isPrivateusePrefix(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 252
    invoke-virtual {v1}, Landroid/icu/impl/locale/StringTokenIterator;->currentStart()I

    move-result v3

    .line 253
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v1}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    .line 256
    :goto_2
    invoke-virtual {v1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v5

    if-nez v5, :cond_6

    .line 257
    invoke-virtual {v1}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v5

    .line 258
    invoke-static {v5}, Landroid/icu/impl/locale/LanguageTag;->isPrivateuseSubtag(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_3

    .line 261
    :cond_5
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v1}, Landroid/icu/impl/locale/StringTokenIterator;->currentEnd()I

    move-result v4

    .line 264
    invoke-virtual {v1}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_2

    :cond_6
    :goto_3
    if-le v4, v3, :cond_7

    .line 269
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 267
    :cond_7
    new-instance p0, Landroid/icu/impl/locale/LocaleSyntaxException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incomplete privateuse:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Landroid/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 274
    :cond_8
    :goto_4
    invoke-virtual {v1}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 278
    invoke-direct {p0, v2, v3}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setExtensions(Ljava/util/List;Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;

    move-result-object p0

    return-object p0

    .line 275
    :cond_9
    new-instance p0, Landroid/icu/impl/locale/LocaleSyntaxException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ill-formed extension subtags:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/icu/impl/locale/StringTokenIterator;->currentStart()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Landroid/icu/impl/locale/StringTokenIterator;->currentStart()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 205
    :cond_a
    :goto_5
    invoke-virtual {p0}, Landroid/icu/impl/locale/InternalLocaleBuilder;->clearExtensions()Landroid/icu/impl/locale/InternalLocaleBuilder;

    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/impl/locale/LocaleSyntaxException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    invoke-static {p1}, Landroid/icu/impl/locale/LanguageTag;->isLanguage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    iput-object p1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_language:Ljava/lang/String;

    goto :goto_1

    .line 45
    :cond_1
    new-instance p0, Landroid/icu/impl/locale/LocaleSyntaxException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ill-formed language: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_2
    :goto_0
    const-string p1, ""

    .line 42
    iput-object p1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_language:Ljava/lang/String;

    :goto_1
    return-object p0
.end method

.method public setLanguageTag(Landroid/icu/impl/locale/LanguageTag;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    .locals 4

    .line 321
    invoke-virtual {p0}, Landroid/icu/impl/locale/InternalLocaleBuilder;->clear()Landroid/icu/impl/locale/InternalLocaleBuilder;

    .line 322
    invoke-virtual {p1}, Landroid/icu/impl/locale/LanguageTag;->getExtlangs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 323
    invoke-virtual {p1}, Landroid/icu/impl/locale/LanguageTag;->getExtlangs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_language:Ljava/lang/String;

    goto :goto_0

    .line 325
    :cond_0
    invoke-virtual {p1}, Landroid/icu/impl/locale/LanguageTag;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 326
    sget-object v2, Landroid/icu/impl/locale/LanguageTag;->UNDETERMINED:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 327
    iput-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_language:Ljava/lang/String;

    .line 330
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/icu/impl/locale/LanguageTag;->getScript()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_script:Ljava/lang/String;

    .line 331
    invoke-virtual {p1}, Landroid/icu/impl/locale/LanguageTag;->getRegion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_region:Ljava/lang/String;

    .line 333
    invoke-virtual {p1}, Landroid/icu/impl/locale/LanguageTag;->getVariants()Ljava/util/List;

    move-result-object v0

    .line 334
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 335
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 336
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    const-string v3, "_"

    .line 337
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 339
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_variant:Ljava/lang/String;

    .line 342
    :cond_3
    invoke-virtual {p1}, Landroid/icu/impl/locale/LanguageTag;->getExtensions()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroid/icu/impl/locale/LanguageTag;->getPrivateuse()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setExtensions(Ljava/util/List;Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;

    return-object p0
.end method

.method public setLocale(Landroid/icu/impl/locale/BaseLocale;Landroid/icu/impl/locale/LocaleExtensions;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/impl/locale/LocaleSyntaxException;
        }
    .end annotation

    .line 348
    invoke-virtual {p1}, Landroid/icu/impl/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 349
    invoke-virtual {p1}, Landroid/icu/impl/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v1

    .line 350
    invoke-virtual {p1}, Landroid/icu/impl/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v2

    .line 351
    invoke-virtual {p1}, Landroid/icu/impl/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object p1

    .line 382
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-static {v0}, Landroid/icu/impl/locale/LanguageTag;->isLanguage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 383
    :cond_0
    new-instance p0, Landroid/icu/impl/locale/LocaleSyntaxException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ill-formed language: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 386
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v1}, Landroid/icu/impl/locale/LanguageTag;->isScript(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 387
    :cond_2
    new-instance p0, Landroid/icu/impl/locale/LocaleSyntaxException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ill-formed script: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 390
    :cond_3
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    invoke-static {v2}, Landroid/icu/impl/locale/LanguageTag;->isRegion(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    .line 391
    :cond_4
    new-instance p0, Landroid/icu/impl/locale/LocaleSyntaxException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ill-formed region: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 394
    :cond_5
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    const-string v3, "_"

    .line 395
    invoke-direct {p0, p1, v3}, Landroid/icu/impl/locale/InternalLocaleBuilder;->checkVariants(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    goto :goto_3

    .line 397
    :cond_6
    new-instance p0, Landroid/icu/impl/locale/LocaleSyntaxException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ill-formed variant: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Landroid/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 403
    :cond_7
    :goto_3
    iput-object v0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_language:Ljava/lang/String;

    .line 404
    iput-object v1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_script:Ljava/lang/String;

    .line 405
    iput-object v2, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_region:Ljava/lang/String;

    .line 406
    iput-object p1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_variant:Ljava/lang/String;

    .line 407
    invoke-virtual {p0}, Landroid/icu/impl/locale/InternalLocaleBuilder;->clearExtensions()Landroid/icu/impl/locale/InternalLocaleBuilder;

    if-nez p2, :cond_8

    const/4 p1, 0x0

    goto :goto_4

    .line 409
    :cond_8
    invoke-virtual {p2}, Landroid/icu/impl/locale/LocaleExtensions;->getKeys()Ljava/util/Set;

    move-result-object p1

    :goto_4
    if-eqz p1, :cond_f

    .line 412
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    .line 413
    invoke-virtual {p2, v0}, Landroid/icu/impl/locale/LocaleExtensions;->getExtension(Ljava/lang/Character;)Landroid/icu/impl/locale/Extension;

    move-result-object v1

    .line 414
    instance-of v2, v1, Landroid/icu/impl/locale/UnicodeLocaleExtension;

    const/4 v3, 0x4

    if-eqz v2, :cond_d

    .line 415
    check-cast v1, Landroid/icu/impl/locale/UnicodeLocaleExtension;

    .line 416
    invoke-virtual {v1}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->getUnicodeLocaleAttributes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 417
    iget-object v4, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    if-nez v4, :cond_a

    .line 418
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v4, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    .line 420
    :cond_a
    iget-object v4, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    new-instance v5, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;

    invoke-direct {v5, v2}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 422
    :cond_b
    invoke-virtual {v1}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->getUnicodeLocaleKeys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 423
    iget-object v4, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    if-nez v4, :cond_c

    .line 424
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    .line 426
    :cond_c
    iget-object v4, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    new-instance v5, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;

    invoke-direct {v5, v2}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 429
    :cond_d
    iget-object v2, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    if-nez v2, :cond_e

    .line 430
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    .line 432
    :cond_e
    iget-object v2, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    new-instance v3, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-direct {v3, v0}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;-><init>(C)V

    invoke-virtual {v1}, Landroid/icu/impl/locale/Extension;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_f
    return-object p0
.end method

.method public setRegion(Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/impl/locale/LocaleSyntaxException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    invoke-static {p1}, Landroid/icu/impl/locale/LanguageTag;->isRegion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iput-object p1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_region:Ljava/lang/String;

    goto :goto_1

    .line 69
    :cond_1
    new-instance p0, Landroid/icu/impl/locale/LocaleSyntaxException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ill-formed region: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_2
    :goto_0
    const-string p1, ""

    .line 66
    iput-object p1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_region:Ljava/lang/String;

    :goto_1
    return-object p0
.end method

.method public setScript(Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/impl/locale/LocaleSyntaxException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    invoke-static {p1}, Landroid/icu/impl/locale/LanguageTag;->isScript(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    iput-object p1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_script:Ljava/lang/String;

    goto :goto_1

    .line 57
    :cond_1
    new-instance p0, Landroid/icu/impl/locale/LocaleSyntaxException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ill-formed script: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_2
    :goto_0
    const-string p1, ""

    .line 54
    iput-object p1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_script:Ljava/lang/String;

    :goto_1
    return-object p0
.end method

.method public setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/impl/locale/LocaleSyntaxException;
        }
    .end annotation

    .line 114
    invoke-static {p1}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->isKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 118
    new-instance v0, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;

    invoke-direct {v0, p1}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 120
    iget-object p1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    if-eqz p1, :cond_4

    .line 122
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 125
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "-"

    const-string v1, "_"

    .line 127
    invoke-virtual {p2, v1, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    new-instance v2, Landroid/icu/impl/locale/StringTokenIterator;

    invoke-direct {v2, v1, p1}, Landroid/icu/impl/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :goto_0
    invoke-virtual {v2}, Landroid/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result p1

    if-nez p1, :cond_2

    .line 131
    invoke-virtual {v2}, Landroid/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object p1

    .line 132
    invoke-static {p1}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->isTypeSubtag(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 135
    invoke-virtual {v2}, Landroid/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_0

    .line 133
    :cond_1
    new-instance p0, Landroid/icu/impl/locale/LocaleSyntaxException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ill-formed Unicode locale keyword type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Landroid/icu/impl/locale/StringTokenIterator;->currentStart()I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 138
    :cond_2
    iget-object p1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    if-nez p1, :cond_3

    .line 139
    new-instance p1, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {p1, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    .line 141
    :cond_3
    iget-object p1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    return-object p0

    .line 115
    :cond_5
    new-instance p0, Landroid/icu/impl/locale/LocaleSyntaxException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ill-formed Unicode locale keyword key: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setVariant(Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/impl/locale/LocaleSyntaxException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 77
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "_"

    const-string v1, "-"

    .line 81
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-direct {p0, v1, v0}, Landroid/icu/impl/locale/InternalLocaleBuilder;->checkVariants(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 86
    iput-object v1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_variant:Ljava/lang/String;

    goto :goto_1

    .line 84
    :cond_1
    new-instance p0, Landroid/icu/impl/locale/LocaleSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ill-formed variant: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_2
    :goto_0
    const-string p1, ""

    .line 78
    iput-object p1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder;->_variant:Ljava/lang/String;

    :goto_1
    return-object p0
.end method
