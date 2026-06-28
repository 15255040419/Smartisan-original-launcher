.class public final Landroid/icu/util/CopticCalendar;
.super Landroid/icu/util/CECalendar;
.source "CopticCalendar.java"


# static fields
.field public static final AMSHIR:I = 0x5

.field public static final BABA:I = 0x1

.field public static final BARAMHAT:I = 0x6

.field public static final BARAMOUDA:I = 0x7

.field public static final BASHANS:I = 0x8

.field private static final BCE:I = 0x0

.field private static final CE:I = 0x1

.field public static final EPEP:I = 0xa

.field public static final HATOR:I = 0x2

.field private static final JD_EPOCH_OFFSET:I = 0x1bd799

.field public static final KIAHK:I = 0x3

.field public static final MESRA:I = 0xb

.field public static final NASIE:I = 0xc

.field public static final PAONA:I = 0x9

.field public static final TOBA:I = 0x4

.field public static final TOUT:I = 0x0

.field private static final serialVersionUID:J = 0x51ee93e0021d7b7fL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 119
    invoke-direct {p0}, Landroid/icu/util/CECalendar;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 184
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/util/CECalendar;-><init>(III)V

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0

    .line 211
    invoke-direct/range {p0 .. p6}, Landroid/icu/util/CECalendar;-><init>(IIIIII)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Landroid/icu/util/CECalendar;-><init>(Landroid/icu/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V
    .locals 0

    .line 171
    invoke-direct {p0, p1, p2}, Landroid/icu/util/CECalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V
    .locals 0

    .line 160
    invoke-direct {p0, p1, p2}, Landroid/icu/util/CECalendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 0

    .line 149
    invoke-direct {p0, p1}, Landroid/icu/util/CECalendar;-><init>(Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 0

    .line 194
    invoke-direct {p0, p1}, Landroid/icu/util/CECalendar;-><init>(Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 0

    .line 139
    invoke-direct {p0, p1}, Landroid/icu/util/CECalendar;-><init>(Ljava/util/Locale;)V

    return-void
.end method

.method public static copticToJD(JII)I
    .locals 1

    const v0, 0x1bd799

    .line 300
    invoke-static {p0, p1, p2, p3, v0}, Landroid/icu/util/CopticCalendar;->ceToJD(JIII)I

    move-result p0

    return p0
.end method


# virtual methods
.method protected getJDEpochOffset()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const p0, 0x1bd799

    return p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    const-string p0, "coptic"

    return-object p0
.end method

.method protected handleComputeFields(I)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 254
    invoke-virtual {p0}, Landroid/icu/util/CopticCalendar;->getJDEpochOffset()I

    move-result v1

    invoke-static {p1, v1, v0}, Landroid/icu/util/CopticCalendar;->jdToCE(II[I)V

    const/4 p1, 0x0

    .line 260
    aget v1, v0, p1

    const/4 v2, 0x1

    if-gtz v1, :cond_0

    .line 262
    aget v1, v0, p1

    rsub-int/lit8 v1, v1, 0x1

    move v3, v1

    move v1, p1

    goto :goto_0

    .line 265
    :cond_0
    aget v1, v0, p1

    move v3, v1

    move v1, v2

    :goto_0
    const/16 v4, 0x13

    .line 268
    aget v5, v0, p1

    invoke-virtual {p0, v4, v5}, Landroid/icu/util/CopticCalendar;->internalSet(II)V

    .line 269
    invoke-virtual {p0, p1, v1}, Landroid/icu/util/CopticCalendar;->internalSet(II)V

    .line 270
    invoke-virtual {p0, v2, v3}, Landroid/icu/util/CopticCalendar;->internalSet(II)V

    .line 271
    aget p1, v0, v2

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p1}, Landroid/icu/util/CopticCalendar;->internalSet(II)V

    const/4 p1, 0x5

    .line 272
    aget v3, v0, v1

    invoke-virtual {p0, p1, v3}, Landroid/icu/util/CopticCalendar;->internalSet(II)V

    const/4 p1, 0x6

    .line 273
    aget v2, v0, v2

    mul-int/lit8 v2, v2, 0x1e

    aget v0, v0, v1

    add-int/2addr v2, v0

    invoke-virtual {p0, p1, v2}, Landroid/icu/util/CopticCalendar;->internalSet(II)V

    return-void
.end method

.method protected handleGetExtendedYear()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x13

    const/4 v1, 0x1

    .line 230
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/CopticCalendar;->newerField(II)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 231
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/CopticCalendar;->internalGet(II)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 234
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/CopticCalendar;->internalGet(II)I

    move-result v0

    if-nez v0, :cond_1

    .line 236
    invoke-virtual {p0, v1, v1}, Landroid/icu/util/CopticCalendar;->internalGet(II)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 238
    :cond_1
    invoke-virtual {p0, v1, v1}, Landroid/icu/util/CopticCalendar;->internalGet(II)I

    move-result p0

    :goto_0
    return p0
.end method
