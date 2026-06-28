.class public final Landroid/icu/util/Calendar$WeekData;
.super Ljava/lang/Object;
.source "Calendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/Calendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WeekData"
.end annotation


# instance fields
.field public final firstDayOfWeek:I

.field public final minimalDaysInFirstWeek:I

.field public final weekendCease:I

.field public final weekendCeaseMillis:I

.field public final weekendOnset:I

.field public final weekendOnsetMillis:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    .line 4656
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4657
    iput p1, p0, Landroid/icu/util/Calendar$WeekData;->firstDayOfWeek:I

    .line 4658
    iput p2, p0, Landroid/icu/util/Calendar$WeekData;->minimalDaysInFirstWeek:I

    .line 4659
    iput p3, p0, Landroid/icu/util/Calendar$WeekData;->weekendOnset:I

    .line 4660
    iput p4, p0, Landroid/icu/util/Calendar$WeekData;->weekendOnsetMillis:I

    .line 4661
    iput p5, p0, Landroid/icu/util/Calendar$WeekData;->weekendCease:I

    .line 4662
    iput p6, p0, Landroid/icu/util/Calendar$WeekData;->weekendCeaseMillis:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 4682
    :cond_0
    instance-of v1, p1, Landroid/icu/util/Calendar$WeekData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 4685
    :cond_1
    check-cast p1, Landroid/icu/util/Calendar$WeekData;

    .line 4686
    iget v1, p0, Landroid/icu/util/Calendar$WeekData;->firstDayOfWeek:I

    iget v3, p1, Landroid/icu/util/Calendar$WeekData;->firstDayOfWeek:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/icu/util/Calendar$WeekData;->minimalDaysInFirstWeek:I

    iget v3, p1, Landroid/icu/util/Calendar$WeekData;->minimalDaysInFirstWeek:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/icu/util/Calendar$WeekData;->weekendOnset:I

    iget v3, p1, Landroid/icu/util/Calendar$WeekData;->weekendOnset:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/icu/util/Calendar$WeekData;->weekendOnsetMillis:I

    iget v3, p1, Landroid/icu/util/Calendar$WeekData;->weekendOnsetMillis:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/icu/util/Calendar$WeekData;->weekendCease:I

    iget v3, p1, Landroid/icu/util/Calendar$WeekData;->weekendCease:I

    if-ne v1, v3, :cond_2

    iget p0, p0, Landroid/icu/util/Calendar$WeekData;->weekendCeaseMillis:I

    iget p1, p1, Landroid/icu/util/Calendar$WeekData;->weekendCeaseMillis:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 4670
    iget v0, p0, Landroid/icu/util/Calendar$WeekData;->firstDayOfWeek:I

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Landroid/icu/util/Calendar$WeekData;->minimalDaysInFirstWeek:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Landroid/icu/util/Calendar$WeekData;->weekendOnset:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Landroid/icu/util/Calendar$WeekData;->weekendOnsetMillis:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Landroid/icu/util/Calendar$WeekData;->weekendCease:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget p0, p0, Landroid/icu/util/Calendar$WeekData;->weekendCeaseMillis:I

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 4699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/icu/util/Calendar$WeekData;->firstDayOfWeek:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/icu/util/Calendar$WeekData;->minimalDaysInFirstWeek:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/icu/util/Calendar$WeekData;->weekendOnset:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/icu/util/Calendar$WeekData;->weekendOnsetMillis:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/icu/util/Calendar$WeekData;->weekendCease:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/icu/util/Calendar$WeekData;->weekendCeaseMillis:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
