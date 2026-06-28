.class public Landroid/icu/impl/locale/ParseStatus;
.super Ljava/lang/Object;
.source "ParseStatus.java"


# instance fields
.field _errorIndex:I

.field _errorMsg:Ljava/lang/String;

.field _parseLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Landroid/icu/impl/locale/ParseStatus;->_parseLength:I

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Landroid/icu/impl/locale/ParseStatus;->_errorIndex:I

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Landroid/icu/impl/locale/ParseStatus;->_errorMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorIndex()I
    .locals 0

    .line 31
    iget p0, p0, Landroid/icu/impl/locale/ParseStatus;->_errorIndex:I

    return p0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Landroid/icu/impl/locale/ParseStatus;->_errorMsg:Ljava/lang/String;

    return-object p0
.end method

.method public getParseLength()I
    .locals 0

    .line 35
    iget p0, p0, Landroid/icu/impl/locale/ParseStatus;->_parseLength:I

    return p0
.end method

.method public isError()Z
    .locals 0

    .line 27
    iget p0, p0, Landroid/icu/impl/locale/ParseStatus;->_errorIndex:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Landroid/icu/impl/locale/ParseStatus;->_parseLength:I

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Landroid/icu/impl/locale/ParseStatus;->_errorIndex:I

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Landroid/icu/impl/locale/ParseStatus;->_errorMsg:Ljava/lang/String;

    return-void
.end method
