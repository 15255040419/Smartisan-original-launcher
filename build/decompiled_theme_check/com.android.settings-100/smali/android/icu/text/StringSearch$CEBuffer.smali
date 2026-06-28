.class Landroid/icu/text/StringSearch$CEBuffer;
.super Ljava/lang/Object;
.source "StringSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/StringSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CEBuffer"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final CEBUFFER_EXTRA:I = 0x20

.field static final MAX_TARGET_IGNORABLES_PER_PAT_JAMO_L:I = 0x8

.field static final MAX_TARGET_IGNORABLES_PER_PAT_OTHER:I = 0x3


# instance fields
.field bufSize_:I

.field buf_:[Landroid/icu/text/StringSearch$CEI;

.field firstIx_:I

.field limitIx_:I

.field strSearch_:Landroid/icu/text/StringSearch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1925
    const-class v0, Landroid/icu/text/StringSearch;

    return-void
.end method

.method constructor <init>(Landroid/icu/text/StringSearch;)V
    .locals 4

    .line 1943
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1944
    iput-object p1, p0, Landroid/icu/text/StringSearch$CEBuffer;->strSearch_:Landroid/icu/text/StringSearch;

    .line 1945
    invoke-static {p1}, Landroid/icu/text/StringSearch;->access$500(Landroid/icu/text/StringSearch;)Landroid/icu/text/StringSearch$Pattern;

    move-result-object v0

    iget v0, v0, Landroid/icu/text/StringSearch$Pattern;->PCELength_:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/icu/text/StringSearch$CEBuffer;->bufSize_:I

    .line 1946
    iget-object v0, p1, Landroid/icu/text/StringSearch;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-object v0, v0, Landroid/icu/text/SearchIterator$Search;->elementComparisonType_:Landroid/icu/text/SearchIterator$ElementComparisonType;

    sget-object v1, Landroid/icu/text/SearchIterator$ElementComparisonType;->STANDARD_ELEMENT_COMPARISON:Landroid/icu/text/SearchIterator$ElementComparisonType;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 1947
    invoke-static {p1}, Landroid/icu/text/StringSearch;->access$500(Landroid/icu/text/StringSearch;)Landroid/icu/text/StringSearch$Pattern;

    move-result-object v0

    iget-object v0, v0, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    if-eqz v0, :cond_1

    move v1, v2

    .line 1949
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1950
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1951
    invoke-static {v3}, Landroid/icu/text/StringSearch$CEBuffer;->MIGHT_BE_JAMO_L(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1952
    iget v3, p0, Landroid/icu/text/StringSearch$CEBuffer;->bufSize_:I

    add-int/lit8 v3, v3, 0x8

    iput v3, p0, Landroid/icu/text/StringSearch$CEBuffer;->bufSize_:I

    goto :goto_1

    .line 1955
    :cond_0
    iget v3, p0, Landroid/icu/text/StringSearch$CEBuffer;->bufSize_:I

    add-int/lit8 v3, v3, 0x3

    iput v3, p0, Landroid/icu/text/StringSearch$CEBuffer;->bufSize_:I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1964
    :cond_1
    iput v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->firstIx_:I

    .line 1965
    iput v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->limitIx_:I

    .line 1967
    invoke-static {p1}, Landroid/icu/text/StringSearch;->access$600(Landroid/icu/text/StringSearch;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 1971
    :cond_2
    iget p1, p0, Landroid/icu/text/StringSearch$CEBuffer;->bufSize_:I

    new-array p1, p1, [Landroid/icu/text/StringSearch$CEI;

    iput-object p1, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    return-void
.end method

.method static MIGHT_BE_JAMO_L(C)Z
    .locals 1

    const/16 v0, 0x1100

    if-lt p0, v0, :cond_0

    const/16 v0, 0x115e

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x3131

    if-lt p0, v0, :cond_1

    const/16 v0, 0x314e

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x3165

    if-lt p0, v0, :cond_3

    const/16 v0, 0x3186

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method get(I)Landroid/icu/text/StringSearch$CEI;
    .locals 4

    .line 1981
    iget v0, p0, Landroid/icu/text/StringSearch$CEBuffer;->bufSize_:I

    rem-int v0, p1, v0

    .line 1983
    iget v1, p0, Landroid/icu/text/StringSearch$CEBuffer;->firstIx_:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/icu/text/StringSearch$CEBuffer;->limitIx_:I

    if-ge p1, v1, :cond_0

    .line 1986
    iget-object p0, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    aget-object p0, p0, v0

    return-object p0

    .line 1992
    :cond_0
    iget v1, p0, Landroid/icu/text/StringSearch$CEBuffer;->limitIx_:I

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 1998
    iput v1, p0, Landroid/icu/text/StringSearch$CEBuffer;->limitIx_:I

    .line 2000
    iget p1, p0, Landroid/icu/text/StringSearch$CEBuffer;->limitIx_:I

    iget v1, p0, Landroid/icu/text/StringSearch$CEBuffer;->firstIx_:I

    sub-int/2addr p1, v1

    iget v3, p0, Landroid/icu/text/StringSearch$CEBuffer;->bufSize_:I

    if-lt p1, v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 2002
    iput v1, p0, Landroid/icu/text/StringSearch$CEBuffer;->firstIx_:I

    .line 2005
    :cond_2
    new-instance p1, Landroid/icu/text/StringSearch$CollationPCE$Range;

    invoke-direct {p1}, Landroid/icu/text/StringSearch$CollationPCE$Range;-><init>()V

    .line 2006
    iget-object v1, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    aget-object v3, v1, v0

    if-nez v3, :cond_3

    .line 2007
    new-instance v3, Landroid/icu/text/StringSearch$CEI;

    invoke-direct {v3, v2}, Landroid/icu/text/StringSearch$CEI;-><init>(Landroid/icu/text/StringSearch$1;)V

    aput-object v3, v1, v0

    .line 2009
    :cond_3
    iget-object v1, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    aget-object v1, v1, v0

    iget-object v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->strSearch_:Landroid/icu/text/StringSearch;

    invoke-static {v2}, Landroid/icu/text/StringSearch;->access$800(Landroid/icu/text/StringSearch;)Landroid/icu/text/StringSearch$CollationPCE;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/icu/text/StringSearch$CollationPCE;->nextProcessed(Landroid/icu/text/StringSearch$CollationPCE$Range;)J

    move-result-wide v2

    iput-wide v2, v1, Landroid/icu/text/StringSearch$CEI;->ce_:J

    .line 2010
    iget-object v1, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    aget-object v1, v1, v0

    iget v2, p1, Landroid/icu/text/StringSearch$CollationPCE$Range;->ixLow_:I

    iput v2, v1, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    .line 2011
    iget-object v1, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    aget-object v1, v1, v0

    iget p1, p1, Landroid/icu/text/StringSearch$CollationPCE$Range;->ixHigh_:I

    iput p1, v1, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    .line 2013
    iget-object p0, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    aget-object p0, p0, v0

    return-object p0
.end method

.method getPrevious(I)Landroid/icu/text/StringSearch$CEI;
    .locals 4

    .line 2023
    iget v0, p0, Landroid/icu/text/StringSearch$CEBuffer;->bufSize_:I

    rem-int v0, p1, v0

    .line 2025
    iget v1, p0, Landroid/icu/text/StringSearch$CEBuffer;->firstIx_:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/icu/text/StringSearch$CEBuffer;->limitIx_:I

    if-ge p1, v1, :cond_0

    .line 2028
    iget-object p0, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    aget-object p0, p0, v0

    return-object p0

    .line 2034
    :cond_0
    iget v1, p0, Landroid/icu/text/StringSearch$CEBuffer;->limitIx_:I

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 2040
    iput v1, p0, Landroid/icu/text/StringSearch$CEBuffer;->limitIx_:I

    .line 2042
    iget p1, p0, Landroid/icu/text/StringSearch$CEBuffer;->limitIx_:I

    iget v1, p0, Landroid/icu/text/StringSearch$CEBuffer;->firstIx_:I

    sub-int/2addr p1, v1

    iget v3, p0, Landroid/icu/text/StringSearch$CEBuffer;->bufSize_:I

    if-lt p1, v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 2044
    iput v1, p0, Landroid/icu/text/StringSearch$CEBuffer;->firstIx_:I

    .line 2047
    :cond_2
    new-instance p1, Landroid/icu/text/StringSearch$CollationPCE$Range;

    invoke-direct {p1}, Landroid/icu/text/StringSearch$CollationPCE$Range;-><init>()V

    .line 2048
    iget-object v1, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    aget-object v3, v1, v0

    if-nez v3, :cond_3

    .line 2049
    new-instance v3, Landroid/icu/text/StringSearch$CEI;

    invoke-direct {v3, v2}, Landroid/icu/text/StringSearch$CEI;-><init>(Landroid/icu/text/StringSearch$1;)V

    aput-object v3, v1, v0

    .line 2051
    :cond_3
    iget-object v1, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    aget-object v1, v1, v0

    iget-object v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->strSearch_:Landroid/icu/text/StringSearch;

    invoke-static {v2}, Landroid/icu/text/StringSearch;->access$800(Landroid/icu/text/StringSearch;)Landroid/icu/text/StringSearch$CollationPCE;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/icu/text/StringSearch$CollationPCE;->previousProcessed(Landroid/icu/text/StringSearch$CollationPCE$Range;)J

    move-result-wide v2

    iput-wide v2, v1, Landroid/icu/text/StringSearch$CEI;->ce_:J

    .line 2052
    iget-object v1, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    aget-object v1, v1, v0

    iget v2, p1, Landroid/icu/text/StringSearch$CollationPCE$Range;->ixLow_:I

    iput v2, v1, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    .line 2053
    iget-object v1, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    aget-object v1, v1, v0

    iget p1, p1, Landroid/icu/text/StringSearch$CollationPCE$Range;->ixHigh_:I

    iput p1, v1, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    .line 2055
    iget-object p0, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    aget-object p0, p0, v0

    return-object p0
.end method
