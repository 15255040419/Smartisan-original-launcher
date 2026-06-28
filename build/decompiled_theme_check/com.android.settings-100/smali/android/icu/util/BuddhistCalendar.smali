.class public Landroid/icu/util/BuddhistCalendar;
.super Landroid/icu/util/GregorianCalendar;
.source "BuddhistCalendar.java"


# static fields
.field public static final BE:I = 0x0

.field private static final BUDDHIST_ERA_START:I = -0x21f

.field private static final GREGORIAN_EPOCH:I = 0x7b2

.field private static final serialVersionUID:J = 0x23d8ad9d780a23d7L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Landroid/icu/util/GregorianCalendar;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 144
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/util/GregorianCalendar;-><init>(III)V

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0

    .line 167
    invoke-direct/range {p0 .. p6}, Landroid/icu/util/GregorianCalendar;-><init>(IIIIII)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1, p2}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1, p2}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Landroid/icu/util/BuddhistCalendar;-><init>()V

    .line 129
    invoke-virtual {p0, p1}, Landroid/icu/util/BuddhistCalendar;->setTime(Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Landroid/icu/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 0

    const-string p0, "buddhist"

    return-object p0
.end method

.method protected handleComputeFields(I)V
    .locals 1

    .line 208
    invoke-super {p0, p1}, Landroid/icu/util/GregorianCalendar;->handleComputeFields(I)V

    const/16 p1, 0x13

    .line 209
    invoke-virtual {p0, p1}, Landroid/icu/util/BuddhistCalendar;->internalGet(I)I

    move-result p1

    add-int/lit16 p1, p1, 0x21f

    const/4 v0, 0x0

    .line 210
    invoke-virtual {p0, v0, v0}, Landroid/icu/util/BuddhistCalendar;->internalSet(II)V

    const/4 v0, 0x1

    .line 211
    invoke-virtual {p0, v0, p1}, Landroid/icu/util/BuddhistCalendar;->internalSet(II)V

    return-void
.end method

.method protected handleComputeMonthStart(IIZ)I
    .locals 0

    .line 202
    invoke-super {p0, p1, p2, p3}, Landroid/icu/util/GregorianCalendar;->handleComputeMonthStart(IIZ)I

    move-result p0

    return p0
.end method

.method protected handleGetExtendedYear()I
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x13

    .line 189
    invoke-virtual {p0, v1, v0}, Landroid/icu/util/BuddhistCalendar;->newerField(II)I

    move-result v2

    if-ne v2, v1, :cond_0

    const/16 v0, 0x7b2

    .line 190
    invoke-virtual {p0, v1, v0}, Landroid/icu/util/BuddhistCalendar;->internalGet(II)I

    move-result p0

    goto :goto_0

    :cond_0
    const/16 v1, 0x9d1

    .line 192
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/BuddhistCalendar;->internalGet(II)I

    move-result p0

    add-int/lit16 p0, p0, -0x21f

    :goto_0
    return p0
.end method

.method protected handleGetLimit(II)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 223
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/icu/util/GregorianCalendar;->handleGetLimit(II)I

    move-result p0

    return p0
.end method
