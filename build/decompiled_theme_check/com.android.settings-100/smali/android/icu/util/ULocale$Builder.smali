.class public final Landroid/icu/util/ULocale$Builder;
.super Ljava/lang/Object;
.source "ULocale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/ULocale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final _locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3447
    new-instance v0, Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-direct {v0}, Landroid/icu/impl/locale/InternalLocaleBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    return-void
.end method


# virtual methods
.method public addUnicodeLocaleAttribute(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;
    .locals 1

    .line 3666
    :try_start_0
    iget-object v0, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {v0, p1}, Landroid/icu/impl/locale/InternalLocaleBuilder;->addUnicodeLocaleAttribute(Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Landroid/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3668
    new-instance p1, Landroid/icu/util/IllformedLocaleException;

    invoke-virtual {p0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result p0

    invoke-direct {p1, v0, p0}, Landroid/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public build()Landroid/icu/util/ULocale;
    .locals 1

    .line 3724
    iget-object v0, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {v0}, Landroid/icu/impl/locale/InternalLocaleBuilder;->getBaseLocale()Landroid/icu/impl/locale/BaseLocale;

    move-result-object v0

    iget-object p0, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {p0}, Landroid/icu/impl/locale/InternalLocaleBuilder;->getLocaleExtensions()Landroid/icu/impl/locale/LocaleExtensions;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/icu/util/ULocale;->access$300(Landroid/icu/impl/locale/BaseLocale;Landroid/icu/impl/locale/LocaleExtensions;)Landroid/icu/util/ULocale;

    move-result-object p0

    return-object p0
.end method

.method public clear()Landroid/icu/util/ULocale$Builder;
    .locals 1

    .line 3701
    iget-object v0, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {v0}, Landroid/icu/impl/locale/InternalLocaleBuilder;->clear()Landroid/icu/impl/locale/InternalLocaleBuilder;

    return-object p0
.end method

.method public clearExtensions()Landroid/icu/util/ULocale$Builder;
    .locals 1

    .line 3713
    iget-object v0, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {v0}, Landroid/icu/impl/locale/InternalLocaleBuilder;->clearExtensions()Landroid/icu/impl/locale/InternalLocaleBuilder;

    return-object p0
.end method

.method public removeUnicodeLocaleAttribute(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;
    .locals 1

    .line 3688
    :try_start_0
    iget-object v0, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {v0, p1}, Landroid/icu/impl/locale/InternalLocaleBuilder;->removeUnicodeLocaleAttribute(Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Landroid/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3690
    new-instance p1, Landroid/icu/util/IllformedLocaleException;

    invoke-virtual {p0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result p0

    invoke-direct {p1, v0, p0}, Landroid/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public setExtension(CLjava/lang/String;)Landroid/icu/util/ULocale$Builder;
    .locals 1

    .line 3617
    :try_start_0
    iget-object v0, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {v0, p1, p2}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setExtension(CLjava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Landroid/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3619
    new-instance p1, Landroid/icu/util/IllformedLocaleException;

    invoke-virtual {p0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result p0

    invoke-direct {p1, p2, p0}, Landroid/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public setLanguage(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;
    .locals 1

    .line 3517
    :try_start_0
    iget-object v0, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {v0, p1}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setLanguage(Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Landroid/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3519
    new-instance p1, Landroid/icu/util/IllformedLocaleException;

    invoke-virtual {p0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result p0

    invoke-direct {p1, v0, p0}, Landroid/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public setLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;
    .locals 2

    .line 3492
    new-instance v0, Landroid/icu/impl/locale/ParseStatus;

    invoke-direct {v0}, Landroid/icu/impl/locale/ParseStatus;-><init>()V

    .line 3493
    invoke-static {p1, v0}, Landroid/icu/impl/locale/LanguageTag;->parse(Ljava/lang/String;Landroid/icu/impl/locale/ParseStatus;)Landroid/icu/impl/locale/LanguageTag;

    move-result-object p1

    .line 3494
    invoke-virtual {v0}, Landroid/icu/impl/locale/ParseStatus;->isError()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3497
    iget-object v0, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {v0, p1}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setLanguageTag(Landroid/icu/impl/locale/LanguageTag;)Landroid/icu/impl/locale/InternalLocaleBuilder;

    return-object p0

    .line 3495
    :cond_0
    new-instance p0, Landroid/icu/util/IllformedLocaleException;

    invoke-virtual {v0}, Landroid/icu/impl/locale/ParseStatus;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Landroid/icu/impl/locale/ParseStatus;->getErrorIndex()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public setLocale(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale$Builder;
    .locals 2

    .line 3467
    :try_start_0
    iget-object v0, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-static {p1}, Landroid/icu/util/ULocale;->access$100(Landroid/icu/util/ULocale;)Landroid/icu/impl/locale/BaseLocale;

    move-result-object v1

    invoke-static {p1}, Landroid/icu/util/ULocale;->access$200(Landroid/icu/util/ULocale;)Landroid/icu/impl/locale/LocaleExtensions;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setLocale(Landroid/icu/impl/locale/BaseLocale;Landroid/icu/impl/locale/LocaleExtensions;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Landroid/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3469
    new-instance p1, Landroid/icu/util/IllformedLocaleException;

    invoke-virtual {p0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result p0

    invoke-direct {p1, v0, p0}, Landroid/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public setRegion(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;
    .locals 1

    .line 3561
    :try_start_0
    iget-object v0, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {v0, p1}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setRegion(Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Landroid/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3563
    new-instance p1, Landroid/icu/util/IllformedLocaleException;

    invoke-virtual {p0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result p0

    invoke-direct {p1, v0, p0}, Landroid/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public setScript(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;
    .locals 1

    .line 3537
    :try_start_0
    iget-object v0, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {v0, p1}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setScript(Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Landroid/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3539
    new-instance p1, Landroid/icu/util/IllformedLocaleException;

    invoke-virtual {p0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result p0

    invoke-direct {p1, v0, p0}, Landroid/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;
    .locals 1

    .line 3646
    :try_start_0
    iget-object v0, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {v0, p1, p2}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Landroid/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3648
    new-instance p1, Landroid/icu/util/IllformedLocaleException;

    invoke-virtual {p0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result p0

    invoke-direct {p1, p2, p0}, Landroid/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public setVariant(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;
    .locals 1

    .line 3586
    :try_start_0
    iget-object v0, p0, Landroid/icu/util/ULocale$Builder;->_locbld:Landroid/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {v0, p1}, Landroid/icu/impl/locale/InternalLocaleBuilder;->setVariant(Ljava/lang/String;)Landroid/icu/impl/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Landroid/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3588
    new-instance p1, Landroid/icu/util/IllformedLocaleException;

    invoke-virtual {p0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/icu/impl/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result p0

    invoke-direct {p1, v0, p0}, Landroid/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method
