.class Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;
.super Ljava/lang/Object;
.source "InternalLocaleBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/InternalLocaleBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CaseInsensitiveString"
.end annotation


# instance fields
.field private _s:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 642
    iput-object p1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;->_s:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 659
    :cond_0
    instance-of v0, p1, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 662
    :cond_1
    iget-object p0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;->_s:Ljava/lang/String;

    check-cast p1, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;

    invoke-virtual {p1}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;->value()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/icu/impl/locale/AsciiUtil;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 651
    iget-object p0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;->_s:Ljava/lang/String;

    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public value()Ljava/lang/String;
    .locals 0

    .line 646
    iget-object p0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;->_s:Ljava/lang/String;

    return-object p0
.end method
