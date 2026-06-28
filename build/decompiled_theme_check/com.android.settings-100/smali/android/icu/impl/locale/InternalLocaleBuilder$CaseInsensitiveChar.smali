.class Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;
.super Ljava/lang/Object;
.source "InternalLocaleBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/InternalLocaleBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CaseInsensitiveChar"
.end annotation


# instance fields
.field private _c:C


# direct methods
.method constructor <init>(C)V
    .locals 0

    .line 669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 670
    iput-char p1, p0, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;->_c:C

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 687
    :cond_0
    instance-of v1, p1, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 690
    :cond_1
    iget-char p0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;->_c:C

    check-cast p1, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    invoke-virtual {p1}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;->value()C

    move-result p1

    invoke-static {p1}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    move-result p1

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 0

    .line 679
    iget-char p0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;->_c:C

    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    move-result p0

    return p0
.end method

.method public value()C
    .locals 0

    .line 674
    iget-char p0, p0, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;->_c:C

    return p0
.end method
