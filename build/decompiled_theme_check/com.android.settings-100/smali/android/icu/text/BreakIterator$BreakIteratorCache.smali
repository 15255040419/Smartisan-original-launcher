.class final Landroid/icu/text/BreakIterator$BreakIteratorCache;
.super Ljava/lang/Object;
.source "BreakIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/BreakIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BreakIteratorCache"
.end annotation


# instance fields
.field private iter:Landroid/icu/text/BreakIterator;

.field private where:Landroid/icu/util/ULocale;


# direct methods
.method constructor <init>(Landroid/icu/util/ULocale;Landroid/icu/text/BreakIterator;)V
    .locals 0

    .line 877
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 878
    iput-object p1, p0, Landroid/icu/text/BreakIterator$BreakIteratorCache;->where:Landroid/icu/util/ULocale;

    .line 879
    invoke-virtual {p2}, Landroid/icu/text/BreakIterator;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/icu/text/BreakIterator;

    iput-object p1, p0, Landroid/icu/text/BreakIterator$BreakIteratorCache;->iter:Landroid/icu/text/BreakIterator;

    return-void
.end method


# virtual methods
.method createBreakInstance()Landroid/icu/text/BreakIterator;
    .locals 0

    .line 887
    iget-object p0, p0, Landroid/icu/text/BreakIterator$BreakIteratorCache;->iter:Landroid/icu/text/BreakIterator;

    invoke-virtual {p0}, Landroid/icu/text/BreakIterator;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/text/BreakIterator;

    return-object p0
.end method

.method getLocale()Landroid/icu/util/ULocale;
    .locals 0

    .line 883
    iget-object p0, p0, Landroid/icu/text/BreakIterator$BreakIteratorCache;->where:Landroid/icu/util/ULocale;

    return-object p0
.end method
