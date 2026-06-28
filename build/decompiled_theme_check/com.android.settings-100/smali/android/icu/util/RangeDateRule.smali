.class public Landroid/icu/util/RangeDateRule;
.super Ljava/lang/Object;
.source "RangeDateRule.java"

# interfaces
.implements Landroid/icu/util/DateRule;


# instance fields
.field ranges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/util/Range;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/icu/util/RangeDateRule;->ranges:Ljava/util/List;

    return-void
.end method

.method private rangeAt(I)Landroid/icu/util/Range;
    .locals 1

    .line 146
    iget-object v0, p0, Landroid/icu/util/RangeDateRule;->ranges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Landroid/icu/util/RangeDateRule;->ranges:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/util/Range;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private startIndex(Ljava/util/Date;)I
    .locals 4

    .line 133
    iget-object v0, p0, Landroid/icu/util/RangeDateRule;->ranges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    move v3, v1

    move v1, v0

    move v0, v3

    .line 135
    iget-object v2, p0, Landroid/icu/util/RangeDateRule;->ranges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 136
    iget-object v2, p0, Landroid/icu/util/RangeDateRule;->ranges:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/util/Range;

    .line 137
    iget-object v2, v2, Landroid/icu/util/Range;->start:Ljava/util/Date;

    invoke-virtual {p1, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method


# virtual methods
.method public add(Landroid/icu/util/DateRule;)V
    .locals 3

    .line 44
    new-instance v0, Ljava/util/Date;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0, p1}, Landroid/icu/util/RangeDateRule;->add(Ljava/util/Date;Landroid/icu/util/DateRule;)V

    return-void
.end method

.method public add(Ljava/util/Date;Landroid/icu/util/DateRule;)V
    .locals 1

    .line 53
    iget-object p0, p0, Landroid/icu/util/RangeDateRule;->ranges:Ljava/util/List;

    new-instance v0, Landroid/icu/util/Range;

    invoke-direct {v0, p1, p2}, Landroid/icu/util/Range;-><init>(Ljava/util/Date;Landroid/icu/util/DateRule;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public firstAfter(Ljava/util/Date;)Ljava/util/Date;
    .locals 3

    .line 63
    invoke-direct {p0, p1}, Landroid/icu/util/RangeDateRule;->startIndex(Ljava/util/Date;)I

    move-result v0

    .line 64
    iget-object v1, p0, Landroid/icu/util/RangeDateRule;->ranges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, v0}, Landroid/icu/util/RangeDateRule;->rangeAt(I)Landroid/icu/util/Range;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    .line 70
    invoke-direct {p0, v0}, Landroid/icu/util/RangeDateRule;->rangeAt(I)Landroid/icu/util/Range;

    move-result-object p0

    if-eqz v2, :cond_2

    .line 72
    iget-object v0, v2, Landroid/icu/util/Range;->rule:Landroid/icu/util/DateRule;

    if-eqz v0, :cond_2

    if-eqz p0, :cond_1

    .line 75
    iget-object v0, v2, Landroid/icu/util/Range;->rule:Landroid/icu/util/DateRule;

    iget-object p0, p0, Landroid/icu/util/Range;->start:Ljava/util/Date;

    invoke-interface {v0, p1, p0}, Landroid/icu/util/DateRule;->firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    goto :goto_0

    .line 77
    :cond_1
    iget-object p0, v2, Landroid/icu/util/Range;->rule:Landroid/icu/util/DateRule;

    invoke-interface {p0, p1}, Landroid/icu/util/DateRule;->firstAfter(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .locals 5

    if-nez p2, :cond_0

    .line 88
    invoke-virtual {p0, p1}, Landroid/icu/util/RangeDateRule;->firstAfter(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 92
    :cond_0
    invoke-direct {p0, p1}, Landroid/icu/util/RangeDateRule;->startIndex(Ljava/util/Date;)I

    move-result v0

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0, v0}, Landroid/icu/util/RangeDateRule;->rangeAt(I)Landroid/icu/util/Range;

    move-result-object v2

    :goto_0
    if-nez v1, :cond_3

    if-eqz v2, :cond_3

    .line 97
    iget-object v3, v2, Landroid/icu/util/Range;->start:Ljava/util/Date;

    invoke-virtual {v3, p2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v3

    if-nez v3, :cond_3

    add-int/lit8 v3, v0, 0x1

    .line 100
    invoke-direct {p0, v3}, Landroid/icu/util/RangeDateRule;->rangeAt(I)Landroid/icu/util/Range;

    move-result-object v3

    .line 102
    iget-object v4, v2, Landroid/icu/util/Range;->rule:Landroid/icu/util/DateRule;

    if-eqz v4, :cond_2

    if-eqz v3, :cond_1

    .line 103
    iget-object v1, v3, Landroid/icu/util/Range;->start:Ljava/util/Date;

    invoke-virtual {v1, p2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v3, Landroid/icu/util/Range;->start:Ljava/util/Date;

    goto :goto_1

    :cond_1
    move-object v1, p2

    .line 105
    :goto_1
    iget-object v2, v2, Landroid/icu/util/Range;->rule:Landroid/icu/util/DateRule;

    invoke-interface {v2, p1, v1}, Landroid/icu/util/DateRule;->firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    :cond_2
    move-object v2, v3

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public isBetween(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 0

    .line 125
    invoke-virtual {p0, p1, p2}, Landroid/icu/util/RangeDateRule;->firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOn(Ljava/util/Date;)Z
    .locals 1

    .line 115
    invoke-direct {p0, p1}, Landroid/icu/util/RangeDateRule;->startIndex(Ljava/util/Date;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/icu/util/RangeDateRule;->rangeAt(I)Landroid/icu/util/Range;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 116
    iget-object v0, p0, Landroid/icu/util/Range;->rule:Landroid/icu/util/DateRule;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/icu/util/Range;->rule:Landroid/icu/util/DateRule;

    invoke-interface {p0, p1}, Landroid/icu/util/DateRule;->isOn(Ljava/util/Date;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
