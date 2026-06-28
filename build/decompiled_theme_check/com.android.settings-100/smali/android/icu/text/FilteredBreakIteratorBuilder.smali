.class public abstract Landroid/icu/text/FilteredBreakIteratorBuilder;
.super Ljava/lang/Object;
.source "FilteredBreakIteratorBuilder.java"


# direct methods
.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getEmptyInstance()Landroid/icu/text/FilteredBreakIteratorBuilder;
    .locals 1

    .line 70
    new-instance v0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;

    invoke-direct {v0}, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;-><init>()V

    return-object v0
.end method

.method public static final getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/FilteredBreakIteratorBuilder;
    .locals 1

    .line 60
    new-instance v0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;

    invoke-direct {v0, p0}, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;-><init>(Landroid/icu/util/ULocale;)V

    return-object v0
.end method

.method public static final getInstance(Ljava/util/Locale;)Landroid/icu/text/FilteredBreakIteratorBuilder;
    .locals 1

    .line 45
    new-instance v0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;

    invoke-direct {v0, p0}, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;-><init>(Ljava/util/Locale;)V

    return-object v0
.end method


# virtual methods
.method public abstract suppressBreakAfter(Ljava/lang/CharSequence;)Z
.end method

.method public abstract unsuppressBreakAfter(Ljava/lang/CharSequence;)Z
.end method

.method public abstract wrapIteratorWithFilter(Landroid/icu/text/BreakIterator;)Landroid/icu/text/BreakIterator;
.end method
