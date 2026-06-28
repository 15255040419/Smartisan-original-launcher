.class public Landroid/icu/util/VTimeZone;
.super Landroid/icu/util/BasicTimeZone;
.source "VTimeZone.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final COLON:Ljava/lang/String; = ":"

.field private static final COMMA:Ljava/lang/String; = ","

.field private static final DEF_DSTSAVINGS:I = 0x36ee80

.field private static final DEF_TZSTARTTIME:J = 0x0L

.field private static final EQUALS_SIGN:Ljava/lang/String; = "="

.field private static final ERR:I = 0x3

.field private static final ICAL_BEGIN:Ljava/lang/String; = "BEGIN"

.field private static final ICAL_BEGIN_VTIMEZONE:Ljava/lang/String; = "BEGIN:VTIMEZONE"

.field private static final ICAL_BYDAY:Ljava/lang/String; = "BYDAY"

.field private static final ICAL_BYMONTH:Ljava/lang/String; = "BYMONTH"

.field private static final ICAL_BYMONTHDAY:Ljava/lang/String; = "BYMONTHDAY"

.field private static final ICAL_DAYLIGHT:Ljava/lang/String; = "DAYLIGHT"

.field private static final ICAL_DOW_NAMES:[Ljava/lang/String;

.field private static final ICAL_DTSTART:Ljava/lang/String; = "DTSTART"

.field private static final ICAL_END:Ljava/lang/String; = "END"

.field private static final ICAL_END_VTIMEZONE:Ljava/lang/String; = "END:VTIMEZONE"

.field private static final ICAL_FREQ:Ljava/lang/String; = "FREQ"

.field private static final ICAL_LASTMOD:Ljava/lang/String; = "LAST-MODIFIED"

.field private static final ICAL_RDATE:Ljava/lang/String; = "RDATE"

.field private static final ICAL_RRULE:Ljava/lang/String; = "RRULE"

.field private static final ICAL_STANDARD:Ljava/lang/String; = "STANDARD"

.field private static final ICAL_TZID:Ljava/lang/String; = "TZID"

.field private static final ICAL_TZNAME:Ljava/lang/String; = "TZNAME"

.field private static final ICAL_TZOFFSETFROM:Ljava/lang/String; = "TZOFFSETFROM"

.field private static final ICAL_TZOFFSETTO:Ljava/lang/String; = "TZOFFSETTO"

.field private static final ICAL_TZURL:Ljava/lang/String; = "TZURL"

.field private static final ICAL_UNTIL:Ljava/lang/String; = "UNTIL"

.field private static final ICAL_VTIMEZONE:Ljava/lang/String; = "VTIMEZONE"

.field private static final ICAL_YEARLY:Ljava/lang/String; = "YEARLY"

.field private static final ICU_TZINFO_PROP:Ljava/lang/String; = "X-TZINFO"

.field private static ICU_TZVERSION:Ljava/lang/String; = null

.field private static final INI:I = 0x0

.field private static final MAX_TIME:J = 0x7fffffffffffffffL

.field private static final MIN_TIME:J = -0x8000000000000000L

.field private static final MONTHLENGTH:[I

.field private static final NEWLINE:Ljava/lang/String; = "\r\n"

.field private static final SEMICOLON:Ljava/lang/String; = ";"

.field private static final TZI:I = 0x2

.field private static final VTZ:I = 0x1

.field private static final serialVersionUID:J = -0x5f154d3410b1aebeL


# instance fields
.field private volatile transient isFrozen:Z

.field private lastmod:Ljava/util/Date;

.field private olsonzid:Ljava/lang/String;

.field private tz:Landroid/icu/util/BasicTimeZone;

.field private tzurl:Ljava/lang/String;

.field private vtzlines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "SU"

    const-string v1, "MO"

    const-string v2, "TU"

    const-string v3, "WE"

    const-string v4, "TH"

    const-string v5, "FR"

    const-string v6, "SA"

    .line 417
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/util/VTimeZone;->ICAL_DOW_NAMES:[Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [I

    .line 421
    fill-array-data v0, :array_0

    sput-object v0, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    .line 426
    :try_start_0
    invoke-static {}, Landroid/icu/util/TimeZone;->getTZDataVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/util/VTimeZone;->ICU_TZVERSION:Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 429
    sput-object v0, Landroid/icu/util/VTimeZone;->ICU_TZVERSION:Ljava/lang/String;

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x1f
        0x1c
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .line 435
    invoke-direct {p0}, Landroid/icu/util/BasicTimeZone;-><init>()V

    const/4 v0, 0x0

    .line 368
    iput-object v0, p0, Landroid/icu/util/VTimeZone;->olsonzid:Ljava/lang/String;

    .line 369
    iput-object v0, p0, Landroid/icu/util/VTimeZone;->tzurl:Ljava/lang/String;

    .line 370
    iput-object v0, p0, Landroid/icu/util/VTimeZone;->lastmod:Ljava/util/Date;

    const/4 v0, 0x0

    .line 2073
    iput-boolean v0, p0, Landroid/icu/util/VTimeZone;->isFrozen:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 439
    invoke-direct {p0, p1}, Landroid/icu/util/BasicTimeZone;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 368
    iput-object p1, p0, Landroid/icu/util/VTimeZone;->olsonzid:Ljava/lang/String;

    .line 369
    iput-object p1, p0, Landroid/icu/util/VTimeZone;->tzurl:Ljava/lang/String;

    .line 370
    iput-object p1, p0, Landroid/icu/util/VTimeZone;->lastmod:Ljava/util/Date;

    const/4 p1, 0x0

    .line 2073
    iput-boolean p1, p0, Landroid/icu/util/VTimeZone;->isFrozen:Z

    return-void
.end method

.method private static appendUNTIL(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, ";"

    .line 1845
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "UNTIL"

    .line 1846
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "="

    .line 1847
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1848
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static beginRRULE(Ljava/io/Writer;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "RRULE"

    .line 1828
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ":"

    .line 1829
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "FREQ"

    .line 1830
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "="

    .line 1831
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "YEARLY"

    .line 1832
    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, ";"

    .line 1833
    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v2, "BYMONTH"

    .line 1834
    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1835
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    .line 1836
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1837
    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method private static beginZoneProps(Ljava/io/Writer;ZLjava/lang/String;IIJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "BEGIN"

    .line 1775
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ":"

    .line 1776
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string p1, "DAYLIGHT"

    .line 1778
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "STANDARD"

    .line 1780
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_0
    const-string p1, "\r\n"

    .line 1782
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "TZOFFSETTO"

    .line 1785
    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1786
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1787
    invoke-static {p4}, Landroid/icu/util/VTimeZone;->millisToOffset(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1788
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p4, "TZOFFSETFROM"

    .line 1791
    invoke-virtual {p0, p4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1792
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1793
    invoke-static {p3}, Landroid/icu/util/VTimeZone;->millisToOffset(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1794
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p4, "TZNAME"

    .line 1797
    invoke-virtual {p0, p4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1798
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1799
    invoke-virtual {p0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1800
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p2, "DTSTART"

    .line 1803
    invoke-virtual {p0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1804
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    int-to-long p2, p3

    add-long/2addr p5, p2

    .line 1805
    invoke-static {p5, p6}, Landroid/icu/util/VTimeZone;->getDateTimeString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1806
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public static create(Ljava/io/Reader;)Landroid/icu/util/VTimeZone;
    .locals 1

    .line 70
    new-instance v0, Landroid/icu/util/VTimeZone;

    invoke-direct {v0}, Landroid/icu/util/VTimeZone;-><init>()V

    .line 71
    invoke-direct {v0, p0}, Landroid/icu/util/VTimeZone;->load(Ljava/io/Reader;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static create(Ljava/lang/String;)Landroid/icu/util/VTimeZone;
    .locals 2

    const/4 v0, 0x1

    .line 51
    invoke-static {p0, v0}, Landroid/icu/util/TimeZone;->getFrozenICUTimeZone(Ljava/lang/String;Z)Landroid/icu/util/BasicTimeZone;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 55
    :cond_0
    new-instance v1, Landroid/icu/util/VTimeZone;

    invoke-direct {v1, p0}, Landroid/icu/util/VTimeZone;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0}, Landroid/icu/util/BasicTimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object p0

    check-cast p0, Landroid/icu/util/BasicTimeZone;

    iput-object p0, v1, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    .line 57
    iget-object p0, v1, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {p0}, Landroid/icu/util/BasicTimeZone;->getID()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Landroid/icu/util/VTimeZone;->olsonzid:Ljava/lang/String;

    return-object v1
.end method

.method private static createRuleByRDATE(Ljava/lang/String;IIJLjava/util/List;I)Landroid/icu/util/TimeZoneRule;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIJ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Landroid/icu/util/TimeZoneRule;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p5, :cond_2

    .line 1194
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 1200
    :cond_0
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p3

    new-array p3, p3, [J

    .line 1203
    :try_start_0
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    .line 1204
    invoke-static {p5, p6}, Landroid/icu/util/VTimeZone;->parseDateTimeString(Ljava/lang/String;I)J

    move-result-wide v2

    aput-wide v2, p3, v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :cond_1
    move-object v5, p3

    goto :goto_2

    :catch_0
    const/4 p0, 0x0

    return-object p0

    :cond_2
    :goto_1
    const/4 p5, 0x1

    new-array p5, p5, [J

    aput-wide p3, p5, v0

    move-object v5, p5

    .line 1210
    :goto_2
    new-instance p3, Landroid/icu/util/TimeArrayTimeZoneRule;

    const/4 v6, 0x2

    move-object v1, p3

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v6}, Landroid/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V

    return-object p3
.end method

.method private static createRuleByRRULE(Ljava/lang/String;IIJLjava/util/List;I)Landroid/icu/util/TimeZoneRule;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIJ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Landroid/icu/util/TimeZoneRule;"
        }
    .end annotation

    move-object/from16 v0, p5

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 834
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_15

    :cond_0
    const/4 v2, 0x0

    .line 838
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    new-array v5, v4, [J

    .line 841
    invoke-static {v3, v5}, Landroid/icu/util/VTimeZone;->parseRRULE(Ljava/lang/String;[J)[I

    move-result-object v3

    if-nez v3, :cond_1

    return-object v1

    .line 847
    :cond_1
    aget v6, v3, v2

    .line 848
    aget v10, v3, v4

    const/4 v7, 0x2

    .line 849
    aget v9, v3, v7

    const/4 v8, 0x3

    .line 850
    aget v11, v3, v8

    .line 852
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v12

    const/4 v14, 0x7

    const/4 v15, -0x1

    if-ne v12, v4, :cond_b

    .line 854
    array-length v0, v3

    const/4 v8, 0x4

    if-le v0, v8, :cond_a

    .line 857
    array-length v0, v3

    const/16 v8, 0xa

    if-ne v0, v8, :cond_9

    if-eq v6, v15, :cond_9

    if-nez v10, :cond_2

    goto :goto_5

    :cond_2
    new-array v0, v14, [I

    move v8, v2

    const/16 v11, 0x1f

    :goto_0
    if-ge v8, v14, :cond_5

    add-int/lit8 v12, v8, 0x3

    .line 865
    aget v12, v3, v12

    aput v12, v0, v8

    .line 869
    aget v12, v0, v8

    if-lez v12, :cond_3

    aget v12, v0, v8

    goto :goto_1

    :cond_3
    sget-object v12, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v12, v12, v6

    aget v13, v0, v8

    add-int/2addr v12, v13

    add-int/2addr v12, v4

    :goto_1
    aput v12, v0, v8

    .line 870
    aget v12, v0, v8

    if-ge v12, v11, :cond_4

    aget v11, v0, v8

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_5
    move v3, v4

    :goto_2
    if-ge v3, v14, :cond_a

    move v8, v2

    :goto_3
    if-ge v8, v14, :cond_7

    .line 876
    aget v12, v0, v8

    add-int v13, v11, v3

    if-ne v12, v13, :cond_6

    move v8, v4

    goto :goto_4

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_7
    move v8, v2

    :goto_4
    if-nez v8, :cond_8

    return-object v1

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_9
    :goto_5
    return-object v1

    :cond_a
    move-object v0, v1

    move/from16 v1, p6

    goto/16 :goto_10

    :cond_b
    if-eq v6, v15, :cond_27

    if-eqz v10, :cond_27

    if-nez v11, :cond_c

    goto/16 :goto_14

    .line 898
    :cond_c
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v14, :cond_d

    return-object v1

    .line 907
    :cond_d
    array-length v11, v3

    sub-int/2addr v11, v8

    move v12, v2

    const/16 v13, 0x1f

    :goto_6
    if-ge v12, v11, :cond_10

    add-int/lit8 v16, v12, 0x3

    .line 910
    aget v16, v3, v16

    if-lez v16, :cond_e

    goto :goto_7

    .line 911
    :cond_e
    sget-object v17, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v17, v17, v6

    add-int v17, v17, v16

    add-int/lit8 v16, v17, 0x1

    :goto_7
    move/from16 v7, v16

    if-ge v7, v13, :cond_f

    move v13, v7

    :cond_f
    add-int/lit8 v12, v12, 0x1

    const/4 v7, 0x2

    goto :goto_6

    :cond_10
    move v3, v4

    move v7, v6

    move v12, v15

    .line 916
    :goto_8
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_1f

    .line 917
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-array v14, v4, [J

    .line 919
    invoke-static {v1, v14}, Landroid/icu/util/VTimeZone;->parseRRULE(Ljava/lang/String;[J)[I

    move-result-object v1

    .line 922
    aget-wide v18, v14, v2

    aget-wide v20, v5, v2

    cmp-long v18, v18, v20

    if-lez v18, :cond_11

    move-object v5, v14

    .line 927
    :cond_11
    aget v14, v1, v2

    if-eq v14, v15, :cond_1e

    aget v14, v1, v4

    if-eqz v14, :cond_1e

    aget v14, v1, v8

    if-nez v14, :cond_12

    goto/16 :goto_f

    .line 931
    :cond_12
    array-length v14, v1

    sub-int/2addr v14, v8

    add-int/2addr v11, v14

    const/4 v8, 0x7

    if-le v11, v8, :cond_13

    const/4 v8, 0x0

    return-object v8

    :cond_13
    const/4 v8, 0x0

    .line 938
    aget v15, v1, v4

    if-eq v15, v10, :cond_14

    return-object v8

    .line 942
    :cond_14
    aget v8, v1, v2

    if-eq v8, v6, :cond_1a

    const/4 v8, -0x1

    if-ne v12, v8, :cond_19

    .line 944
    aget v12, v1, v2

    sub-int/2addr v12, v6

    const/16 v15, -0xb

    if-eq v12, v15, :cond_18

    if-ne v12, v8, :cond_15

    goto :goto_a

    :cond_15
    const/16 v8, 0xb

    if-eq v12, v8, :cond_17

    if-ne v12, v4, :cond_16

    goto :goto_9

    :cond_16
    const/4 v8, 0x0

    return-object v8

    .line 953
    :cond_17
    :goto_9
    aget v8, v1, v2

    goto :goto_b

    .line 947
    :cond_18
    :goto_a
    aget v8, v1, v2

    move v7, v8

    const/16 v13, 0x1f

    :goto_b
    move v12, v8

    goto :goto_c

    .line 958
    :cond_19
    aget v8, v1, v2

    if-eq v8, v6, :cond_1a

    aget v8, v1, v2

    if-eq v8, v12, :cond_1a

    const/4 v8, 0x0

    return-object v8

    .line 964
    :cond_1a
    :goto_c
    aget v8, v1, v2

    if-ne v8, v7, :cond_1d

    move v8, v2

    :goto_d
    if-ge v8, v14, :cond_1d

    add-int/lit8 v15, v8, 0x3

    .line 966
    aget v15, v1, v15

    if-lez v15, :cond_1b

    goto :goto_e

    .line 967
    :cond_1b
    sget-object v20, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v21, v1, v2

    aget v20, v20, v21

    add-int v20, v20, v15

    add-int/lit8 v15, v20, 0x1

    :goto_e
    if-ge v15, v13, :cond_1c

    move v13, v15

    :cond_1c
    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_1d
    add-int/lit8 v3, v3, 0x1

    const/4 v8, 0x3

    const/4 v14, 0x7

    const/4 v15, -0x1

    goto/16 :goto_8

    :cond_1e
    :goto_f
    const/4 v0, 0x0

    return-object v0

    :cond_1f
    move v1, v14

    const/4 v0, 0x0

    if-eq v11, v1, :cond_20

    return-object v0

    :cond_20
    move/from16 v1, p6

    move v6, v7

    move v11, v13

    :goto_10
    int-to-long v7, v1

    add-long v7, p3, v7

    .line 982
    invoke-static {v7, v8, v0}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    move-result-object v1

    .line 983
    aget v25, v1, v2

    const/4 v0, -0x1

    if-ne v6, v0, :cond_21

    .line 986
    aget v0, v1, v4

    move v8, v0

    goto :goto_11

    :cond_21
    move v8, v6

    :goto_11
    if-nez v10, :cond_22

    if-nez v9, :cond_22

    if-nez v11, :cond_22

    const/4 v0, 0x2

    .line 990
    aget v0, v1, v0

    move v11, v0

    :cond_22
    const/4 v0, 0x5

    .line 992
    aget v12, v1, v0

    const v0, 0x7fffffff

    .line 995
    aget-wide v3, v5, v2

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v3, v3, v6

    if-eqz v3, :cond_23

    .line 996
    aget-wide v3, v5, v2

    invoke-static {v3, v4, v1}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    .line 997
    aget v0, v1, v2

    :cond_23
    move/from16 v26, v0

    if-nez v10, :cond_24

    if-nez v9, :cond_24

    if-eqz v11, :cond_24

    .line 1004
    new-instance v0, Landroid/icu/util/DateTimeRule;

    invoke-direct {v0, v8, v11, v12, v2}, Landroid/icu/util/DateTimeRule;-><init>(IIII)V

    :goto_12
    move-object/from16 v24, v0

    goto :goto_13

    :cond_24
    if-eqz v10, :cond_25

    if-eqz v9, :cond_25

    if-nez v11, :cond_25

    .line 1007
    new-instance v0, Landroid/icu/util/DateTimeRule;

    const/4 v1, 0x0

    move-object v7, v0

    move v11, v12

    move v12, v1

    invoke-direct/range {v7 .. v12}, Landroid/icu/util/DateTimeRule;-><init>(IIIII)V

    goto :goto_12

    :cond_25
    if-eqz v10, :cond_26

    if-nez v9, :cond_26

    if-eqz v11, :cond_26

    .line 1011
    new-instance v0, Landroid/icu/util/DateTimeRule;

    const/4 v1, 0x1

    const/4 v13, 0x0

    move-object v7, v0

    move v9, v11

    move v11, v1

    invoke-direct/range {v7 .. v13}, Landroid/icu/util/DateTimeRule;-><init>(IIIZII)V

    goto :goto_12

    .line 1017
    :goto_13
    new-instance v0, Landroid/icu/util/AnnualTimeZoneRule;

    move-object/from16 v20, v0

    move-object/from16 v21, p0

    move/from16 v22, p1

    move/from16 v23, p2

    invoke-direct/range {v20 .. v26}, Landroid/icu/util/AnnualTimeZoneRule;-><init>(Ljava/lang/String;IILandroid/icu/util/DateTimeRule;II)V

    return-object v0

    :cond_26
    const/4 v0, 0x0

    return-object v0

    :cond_27
    :goto_14
    move-object v0, v1

    return-object v0

    :cond_28
    :goto_15
    move-object v0, v1

    return-object v0
.end method

.method private static endZoneProps(Ljava/io/Writer;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "END"

    .line 1814
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ":"

    .line 1815
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string p1, "DAYLIGHT"

    .line 1817
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "STANDARD"

    .line 1819
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_0
    const-string p1, "\r\n"

    .line 1821
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method private static getDateTimeString(J)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 1892
    invoke-static {p0, p1, v0}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    move-result-object p0

    .line 1893
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0xf

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    .line 1894
    aget v0, p0, v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 1895
    aget v1, p0, v0

    add-int/2addr v1, v0

    const/4 v0, 0x2

    invoke-static {v1, v0}, Landroid/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1896
    aget v1, p0, v0

    invoke-static {v1, v0}, Landroid/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x54

    .line 1897
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    .line 1899
    aget p0, p0, v1

    const v1, 0x36ee80

    .line 1900
    div-int v2, p0, v1

    .line 1901
    rem-int/2addr p0, v1

    const v1, 0xea60

    .line 1902
    div-int v3, p0, v1

    .line 1903
    rem-int/2addr p0, v1

    .line 1904
    div-int/lit16 p0, p0, 0x3e8

    .line 1906
    invoke-static {v2, v0}, Landroid/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1907
    invoke-static {v3, v0}, Landroid/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1908
    invoke-static {p0, v0}, Landroid/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1909
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDefaultTZName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 824
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "(DST)"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 826
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "(STD)"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getUTCDateTimeString(J)Ljava/lang/String;
    .locals 1

    .line 1916
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Landroid/icu/util/VTimeZone;->getDateTimeString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Z"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isEquivalentDateRule(IIILandroid/icu/util/DateTimeRule;)Z
    .locals 5

    .line 1461
    invoke-virtual {p3}, Landroid/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v0

    const/4 v1, 0x0

    if-ne p0, v0, :cond_6

    invoke-virtual {p3}, Landroid/icu/util/DateTimeRule;->getRuleDayOfWeek()I

    move-result v0

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 1464
    :cond_0
    invoke-virtual {p3}, Landroid/icu/util/DateTimeRule;->getTimeRuleType()I

    move-result p2

    if-eqz p2, :cond_1

    return v1

    .line 1468
    :cond_1
    invoke-virtual {p3}, Landroid/icu/util/DateTimeRule;->getDateRuleType()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 1469
    invoke-virtual {p3}, Landroid/icu/util/DateTimeRule;->getRuleWeekInMonth()I

    move-result p2

    if-ne p2, p1, :cond_2

    return v0

    .line 1472
    :cond_2
    invoke-virtual {p3}, Landroid/icu/util/DateTimeRule;->getRuleDayOfMonth()I

    move-result p2

    .line 1473
    invoke-virtual {p3}, Landroid/icu/util/DateTimeRule;->getDateRuleType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 1474
    rem-int/lit8 v2, p2, 0x7

    if-ne v2, v0, :cond_3

    add-int/lit8 v2, p2, 0x6

    div-int/lit8 v2, v2, 0x7

    if-ne v2, p1, :cond_3

    return v0

    :cond_3
    if-eq p0, v0, :cond_4

    .line 1477
    sget-object v2, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v3, v2, p0

    sub-int/2addr v3, p2

    rem-int/lit8 v3, v3, 0x7

    const/4 v4, 0x6

    if-ne v3, v4, :cond_4

    aget v2, v2, p0

    sub-int/2addr v2, p2

    add-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x7

    mul-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_4

    return v0

    .line 1482
    :cond_4
    invoke-virtual {p3}, Landroid/icu/util/DateTimeRule;->getDateRuleType()I

    move-result p3

    const/4 v2, 0x3

    if-ne p3, v2, :cond_6

    .line 1483
    rem-int/lit8 p3, p2, 0x7

    if-nez p3, :cond_5

    div-int/lit8 p3, p2, 0x7

    if-ne p3, p1, :cond_5

    return v0

    :cond_5
    if-eq p0, v0, :cond_6

    .line 1486
    sget-object p3, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v2, p3, p0

    sub-int/2addr v2, p2

    rem-int/lit8 v2, v2, 0x7

    if-nez v2, :cond_6

    aget p0, p3, p0

    sub-int/2addr p0, p2

    div-int/lit8 p0, p0, 0x7

    add-int/2addr p0, v0

    mul-int/lit8 p0, p0, -0x1

    if-ne p1, p0, :cond_6

    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method private load(Ljava/io/Reader;)Z
    .locals 8

    const/4 v0, 0x0

    .line 455
    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Landroid/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v0

    move v3, v2

    .line 461
    :goto_0
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, -0x1

    const-string v6, "END:VTIMEZONE"

    const/4 v7, 0x1

    if-ne v4, v5, :cond_1

    if-eqz v2, :cond_0

    .line 464
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 465
    iget-object p1, p0, Landroid/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    move v7, v0

    goto :goto_1

    :cond_1
    const/16 v5, 0xd

    if-ne v4, v5, :cond_2

    goto :goto_0

    :cond_2
    const/16 v5, 0xa

    if-eqz v3, :cond_5

    const/16 v3, 0x9

    if-eq v4, v3, :cond_4

    const/16 v3, 0x20

    if-eq v4, v3, :cond_4

    if-eqz v2, :cond_3

    .line 479
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 480
    iget-object v3, p0, Landroid/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    if-eq v4, v5, :cond_4

    int-to-char v3, v4

    .line 485
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    move v3, v0

    goto :goto_0

    :cond_5
    if-ne v4, v5, :cond_9

    if-eqz v2, :cond_7

    .line 494
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 495
    iget-object p1, p0, Landroid/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    if-nez v7, :cond_6

    return v0

    .line 520
    :cond_6
    invoke-direct {p0}, Landroid/icu/util/VTimeZone;->parse()Z

    move-result p0

    return p0

    .line 500
    :cond_7
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BEGIN:VTIMEZONE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 501
    iget-object v2, p0, Landroid/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    move v3, v0

    move v2, v7

    goto/16 :goto_0

    :cond_8
    move v3, v7

    goto/16 :goto_0

    :cond_9
    int-to-char v4, v4

    .line 508
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    return v0
.end method

.method private static millisToOffset(I)Ljava/lang/String;
    .locals 4

    .line 2033
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    if-ltz p0, :cond_0

    const/16 v1, 0x2b

    .line 2035
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 v1, 0x2d

    .line 2037
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    neg-int p0, p0

    .line 2041
    :goto_0
    div-int/lit16 p0, p0, 0x3e8

    .line 2043
    rem-int/lit8 v1, p0, 0x3c

    sub-int/2addr p0, v1

    .line 2044
    div-int/lit8 p0, p0, 0x3c

    .line 2045
    rem-int/lit8 v2, p0, 0x3c

    .line 2046
    div-int/lit8 p0, p0, 0x3c

    const/4 v3, 0x2

    .line 2048
    invoke-static {p0, v3}, Landroid/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2049
    invoke-static {v2, v3}, Landroid/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2050
    invoke-static {v1, v3}, Landroid/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2052
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static numToString(II)Ljava/lang/String;
    .locals 3

    .line 2059
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    .line 2060
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, p1, :cond_0

    sub-int p1, v0, p1

    .line 2062
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2064
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_0
    if-ge v0, p1, :cond_1

    const/16 v2, 0x30

    .line 2066
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2068
    :cond_1
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2069
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static offsetStrToMillis(Ljava/lang/String;)I
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    goto :goto_2

    .line 1994
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x7

    const/4 v4, 0x5

    if-eq v2, v4, :cond_1

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 2000
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2b

    if-ne v5, v6, :cond_2

    move v5, v0

    goto :goto_0

    :cond_2
    const/16 v6, 0x2d

    if-ne v5, v6, :cond_4

    const/4 v5, -0x1

    :goto_0
    const/4 v6, 0x3

    .line 2011
    :try_start_0
    invoke-virtual {p0, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2012
    :try_start_1
    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v2, v3, :cond_3

    .line 2014
    :try_start_2
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move v1, p0

    :cond_3
    move p0, v1

    move v1, v0

    goto :goto_3

    :catch_0
    move v6, v1

    goto :goto_1

    :catch_1
    move v6, v1

    move v7, v6

    :catch_2
    :goto_1
    move p0, v1

    goto :goto_3

    :cond_4
    :goto_2
    move p0, v1

    move v5, p0

    move v6, v5

    move v7, v6

    :goto_3
    if-eqz v1, :cond_5

    mul-int/lit8 v7, v7, 0x3c

    add-int/2addr v7, v6

    mul-int/lit8 v7, v7, 0x3c

    add-int/2addr v7, p0

    mul-int/2addr v5, v7

    mul-int/lit16 v5, v5, 0x3e8

    return v5

    .line 2023
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad offset string"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private parse()Z
    .locals 29

    move-object/from16 v0, p0

    .line 534
    iget-object v1, v0, Landroid/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_30

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_15

    .line 550
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-wide v3, 0x7fffffffffffffffL

    .line 555
    iget-object v5, v0, Landroid/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v7, v2

    move v8, v7

    move v9, v8

    move v13, v9

    move-wide/from16 v20, v3

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move v4, v13

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const/4 v14, 0x1

    if-eqz v11, :cond_24

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v6, ":"

    .line 556
    invoke-virtual {v11, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_1

    goto :goto_0

    .line 560
    :cond_1
    invoke-virtual {v11, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v6, v6, 0x1

    .line 561
    invoke-virtual {v11, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v11, "BEGIN"

    if-eqz v8, :cond_21

    const-string v2, "END"

    if-eq v8, v14, :cond_19

    const/4 v14, 0x2

    if-eq v8, v14, :cond_3

    :cond_2
    move-object/from16 v27, v5

    move/from16 v23, v13

    move-object/from16 v28, v15

    goto/16 :goto_b

    :cond_3
    const-string v11, "DTSTART"

    .line 606
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    move-object/from16 v27, v5

    move-object v15, v6

    goto/16 :goto_c

    :cond_4
    const-string v11, "TZNAME"

    .line 608
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    move-object/from16 v27, v5

    move-object v10, v6

    goto/16 :goto_c

    :cond_5
    const-string v11, "TZOFFSETFROM"

    .line 610
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    move-object/from16 v27, v5

    move-object/from16 v18, v6

    goto/16 :goto_c

    :cond_6
    const-string v11, "TZOFFSETTO"

    .line 612
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    move-object/from16 v27, v5

    move-object/from16 v19, v6

    goto/16 :goto_c

    :cond_7
    const-string v11, "RDATE"

    .line 614
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    if-eqz v9, :cond_8

    :goto_1
    move-object/from16 v27, v5

    goto/16 :goto_9

    :cond_8
    if-nez v17, :cond_9

    .line 621
    new-instance v17, Ljava/util/LinkedList;

    invoke-direct/range {v17 .. v17}, Ljava/util/LinkedList;-><init>()V

    :cond_9
    move-object/from16 v2, v17

    .line 625
    new-instance v11, Ljava/util/StringTokenizer;

    const-string v12, ","

    invoke-direct {v11, v6, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    :goto_2
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 627
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 628
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    move-object/from16 v17, v2

    move-object/from16 v27, v5

    goto/16 :goto_c

    :cond_b
    const-string v11, "RRULE"

    .line 630
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    if-nez v9, :cond_c

    if-eqz v17, :cond_c

    goto :goto_1

    :cond_c
    if-nez v17, :cond_d

    .line 636
    new-instance v17, Ljava/util/LinkedList;

    invoke-direct/range {v17 .. v17}, Ljava/util/LinkedList;-><init>()V

    :cond_d
    move-object/from16 v2, v17

    .line 639
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v2

    move-object/from16 v27, v5

    const/4 v2, 0x3

    const/4 v9, 0x1

    goto/16 :goto_d

    .line 640
    :cond_e
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v15, :cond_18

    if-eqz v18, :cond_18

    if-nez v19, :cond_f

    goto/16 :goto_7

    :cond_f
    if-nez v10, :cond_10

    .line 648
    invoke-static {v3, v13}, Landroid/icu/util/VTimeZone;->getDefaultTZName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_10
    move-object v2, v10

    .line 660
    :goto_3
    :try_start_0
    invoke-static/range {v18 .. v18}, Landroid/icu/util/VTimeZone;->offsetStrToMillis(Ljava/lang/String;)I

    move-result v6

    .line 661
    invoke-static/range {v19 .. v19}, Landroid/icu/util/VTimeZone;->offsetStrToMillis(Ljava/lang/String;)I

    move-result v8

    const v14, 0x36ee80

    if-eqz v13, :cond_12

    sub-int v10, v8, v6

    if-lez v10, :cond_11

    move v11, v6

    move/from16 v24, v10

    goto :goto_4

    :cond_11
    sub-int v10, v8, v14

    move v11, v10

    move/from16 v24, v14

    goto :goto_4

    :cond_12
    move v11, v8

    const/16 v24, 0x0

    .line 679
    :goto_4
    invoke-static {v15, v6}, Landroid/icu/util/VTimeZone;->parseDateTimeString(Ljava/lang/String;I)J

    move-result-wide v25
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v9, :cond_13

    move-object v10, v2

    move/from16 v12, v24

    move-object/from16 v27, v5

    move/from16 v23, v13

    move v5, v14

    move-wide/from16 v13, v25

    move-object/from16 v28, v15

    move-object/from16 v15, v17

    move/from16 v16, v6

    .line 684
    :try_start_1
    invoke-static/range {v10 .. v16}, Landroid/icu/util/VTimeZone;->createRuleByRRULE(Ljava/lang/String;IIJLjava/util/List;I)Landroid/icu/util/TimeZoneRule;

    move-result-object v10

    goto :goto_5

    :cond_13
    move-object/from16 v27, v5

    move/from16 v23, v13

    move v5, v14

    move-object/from16 v28, v15

    move-object v10, v2

    move/from16 v12, v24

    move-wide/from16 v13, v25

    move-object/from16 v15, v17

    move/from16 v16, v6

    .line 686
    invoke-static/range {v10 .. v16}, Landroid/icu/util/VTimeZone;->createRuleByRDATE(Ljava/lang/String;IIJLjava/util/List;I)Landroid/icu/util/TimeZoneRule;

    move-result-object v10
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_5
    if-eqz v10, :cond_16

    const/4 v11, 0x0

    .line 689
    :try_start_2
    invoke-virtual {v10, v6, v11}, Landroid/icu/util/TimeZoneRule;->getFirstStart(II)Ljava/util/Date;

    move-result-object v12

    .line 690
    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    cmp-long v11, v13, v20

    if-gez v11, :cond_16

    .line 692
    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v11
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    if-lez v24, :cond_15

    :cond_14
    move v4, v6

    move-wide/from16 v20, v11

    const/4 v7, 0x0

    goto :goto_6

    :cond_15
    sub-int v4, v6, v8

    if-ne v4, v5, :cond_14

    sub-int/2addr v6, v5

    move v7, v5

    move v4, v6

    move-wide/from16 v20, v11

    goto :goto_6

    :catch_0
    move-object/from16 v27, v5

    move/from16 v23, v13

    move-object/from16 v28, v15

    :catch_1
    const/4 v10, 0x0

    :catch_2
    :cond_16
    :goto_6
    if-nez v10, :cond_17

    move-object v10, v2

    goto :goto_8

    .line 718
    :cond_17
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v10, v2

    goto/16 :goto_a

    :cond_18
    :goto_7
    move-object/from16 v27, v5

    move/from16 v23, v13

    move-object/from16 v28, v15

    goto :goto_8

    :cond_19
    move-object/from16 v27, v5

    move/from16 v23, v13

    move-object/from16 v28, v15

    const-string v5, "TZID"

    .line 570
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    move-object v3, v6

    goto/16 :goto_b

    :cond_1a
    const-string v5, "TZURL"

    .line 572
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 573
    iput-object v6, v0, Landroid/icu/util/VTimeZone;->tzurl:Ljava/lang/String;

    goto/16 :goto_b

    :cond_1b
    const-string v5, "LAST-MODIFIED"

    .line 574
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 577
    new-instance v2, Ljava/util/Date;

    const/4 v5, 0x0

    invoke-static {v6, v5}, Landroid/icu/util/VTimeZone;->parseDateTimeString(Ljava/lang/String;I)J

    move-result-wide v11

    invoke-direct {v2, v11, v12}, Ljava/util/Date;-><init>(J)V

    iput-object v2, v0, Landroid/icu/util/VTimeZone;->lastmod:Ljava/util/Date;

    goto :goto_b

    .line 578
    :cond_1c
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    const-string v2, "DAYLIGHT"

    .line 579
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v5, "STANDARD"

    .line 580
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    if-eqz v2, :cond_1e

    :cond_1d
    if-nez v3, :cond_1f

    :cond_1e
    :goto_8
    move/from16 v13, v23

    move-object/from16 v15, v28

    :goto_9
    const/4 v2, 0x3

    const/4 v8, 0x3

    goto :goto_d

    :cond_1f
    move v13, v2

    move-object/from16 v15, v28

    const/4 v2, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    goto :goto_d

    .line 600
    :cond_20
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_b

    :cond_21
    move-object/from16 v27, v5

    move/from16 v23, v13

    move-object/from16 v28, v15

    .line 565
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    const-string v2, "VTIMEZONE"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    :goto_a
    move/from16 v13, v23

    move-object/from16 v15, v28

    const/4 v2, 0x3

    const/4 v8, 0x1

    goto :goto_d

    :cond_22
    :goto_b
    move/from16 v13, v23

    move-object/from16 v15, v28

    :goto_c
    const/4 v2, 0x3

    :goto_d
    if-ne v8, v2, :cond_23

    const/4 v2, 0x0

    .line 725
    iput-object v2, v0, Landroid/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    const/4 v2, 0x0

    return v2

    :cond_23
    move-object/from16 v5, v27

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 731
    :cond_24
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_25

    return v2

    .line 736
    :cond_25
    new-instance v5, Landroid/icu/util/InitialTimeZoneRule;

    invoke-static {v3, v2}, Landroid/icu/util/VTimeZone;->getDefaultTZName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4, v7}, Landroid/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    .line 740
    new-instance v2, Landroid/icu/util/RuleBasedTimeZone;

    invoke-direct {v2, v3, v5}, Landroid/icu/util/RuleBasedTimeZone;-><init>(Ljava/lang/String;Landroid/icu/util/InitialTimeZoneRule;)V

    const/4 v5, -0x1

    move v8, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 744
    :goto_e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_27

    .line 745
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/icu/util/TimeZoneRule;

    .line 746
    instance-of v10, v9, Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v10, :cond_26

    .line 747
    check-cast v9, Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v9}, Landroid/icu/util/AnnualTimeZoneRule;->getEndYear()I

    move-result v9

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_26

    add-int/lit8 v6, v6, 0x1

    move v8, v5

    :cond_26
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_27
    const/4 v5, 0x2

    if-le v6, v5, :cond_28

    const/4 v5, 0x0

    return v5

    :cond_28
    const/4 v5, 0x1

    if-ne v6, v5, :cond_2e

    .line 759
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v5, :cond_29

    .line 763
    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto/16 :goto_13

    .line 766
    :cond_29
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/icu/util/AnnualTimeZoneRule;

    .line 767
    invoke-virtual {v6}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v15

    .line 768
    invoke-virtual {v6}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v14

    .line 771
    invoke-virtual {v6, v4, v7}, Landroid/icu/util/AnnualTimeZoneRule;->getFirstStart(II)Ljava/util/Date;

    move-result-object v4

    move-object v9, v4

    const/4 v7, 0x0

    .line 773
    :goto_f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_2c

    if-ne v8, v7, :cond_2a

    goto :goto_10

    .line 777
    :cond_2a
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/icu/util/TimeZoneRule;

    .line 778
    invoke-virtual {v10, v15, v14}, Landroid/icu/util/TimeZoneRule;->getFinalStart(II)Ljava/util/Date;

    move-result-object v11

    .line 779
    invoke-virtual {v11, v9}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v12

    if-eqz v12, :cond_2b

    .line 780
    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    .line 781
    invoke-virtual {v10}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v13

    .line 782
    invoke-virtual {v10}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v16

    const/16 v17, 0x0

    move-object v9, v6

    move-wide v10, v11

    move v12, v13

    move/from16 v13, v16

    move/from16 v16, v14

    move/from16 v14, v17

    .line 780
    invoke-virtual/range {v9 .. v14}, Landroid/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v9

    goto :goto_11

    :cond_2b
    :goto_10
    move/from16 v16, v14

    :goto_11
    add-int/lit8 v7, v7, 0x1

    move/from16 v14, v16

    goto :goto_f

    :cond_2c
    if-ne v9, v4, :cond_2d

    .line 789
    new-instance v7, Landroid/icu/util/TimeArrayTimeZoneRule;

    .line 790
    invoke-virtual {v6}, Landroid/icu/util/AnnualTimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v23

    .line 791
    invoke-virtual {v6}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v24

    .line 792
    invoke-virtual {v6}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v25

    new-array v6, v5, [J

    .line 793
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const/4 v4, 0x0

    aput-wide v9, v6, v4

    const/16 v27, 0x2

    move-object/from16 v22, v7

    move-object/from16 v26, v6

    invoke-direct/range {v22 .. v27}, Landroid/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V

    goto :goto_12

    .line 797
    :cond_2d
    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const/4 v4, 0x0

    invoke-static {v9, v10, v4}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    move-result-object v4

    .line 798
    new-instance v7, Landroid/icu/util/AnnualTimeZoneRule;

    .line 799
    invoke-virtual {v6}, Landroid/icu/util/AnnualTimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v10

    .line 800
    invoke-virtual {v6}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v11

    .line 801
    invoke-virtual {v6}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v12

    .line 802
    invoke-virtual {v6}, Landroid/icu/util/AnnualTimeZoneRule;->getRule()Landroid/icu/util/DateTimeRule;

    move-result-object v13

    .line 803
    invoke-virtual {v6}, Landroid/icu/util/AnnualTimeZoneRule;->getStartYear()I

    move-result v14

    const/4 v6, 0x0

    aget v15, v4, v6

    move-object v9, v7

    invoke-direct/range {v9 .. v15}, Landroid/icu/util/AnnualTimeZoneRule;-><init>(Ljava/lang/String;IILandroid/icu/util/DateTimeRule;II)V

    .line 806
    :goto_12
    invoke-interface {v1, v8, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 810
    :cond_2e
    :goto_13
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/util/TimeZoneRule;

    .line 811
    invoke-virtual {v2, v4}, Landroid/icu/util/RuleBasedTimeZone;->addTransitionRule(Landroid/icu/util/TimeZoneRule;)V

    goto :goto_14

    .line 814
    :cond_2f
    iput-object v2, v0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    .line 815
    invoke-virtual {v0, v3}, Landroid/icu/util/VTimeZone;->setID(Ljava/lang/String;)V

    return v5

    :cond_30
    :goto_15
    move v0, v2

    return v0
.end method

.method private static parseDateTimeString(Ljava/lang/String;I)J
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    .line 1932
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x10

    const/16 v4, 0xf

    if-eq v2, v4, :cond_1

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/16 v5, 0x8

    .line 1938
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x54

    if-eq v6, v7, :cond_2

    goto :goto_0

    :cond_2
    if-ne v2, v3, :cond_4

    .line 1943
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_3

    :goto_0
    move p0, v1

    move v2, p0

    move v3, v2

    move v5, v3

    move v6, v5

    move v7, v6

    move v10, v7

    goto/16 :goto_5

    :cond_3
    move v2, v0

    goto :goto_1

    :cond_4
    move v2, v1

    :goto_1
    const/4 v3, 0x4

    .line 1951
    :try_start_0
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4

    const/4 v7, 0x6

    .line 1952
    :try_start_1
    invoke-virtual {p0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3

    sub-int/2addr v3, v0

    .line 1953
    :try_start_2
    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    const/16 v7, 0x9

    const/16 v8, 0xb

    .line 1954
    :try_start_3
    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    const/16 v9, 0xd

    .line 1955
    :try_start_4
    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1956
    :try_start_5
    invoke-virtual {p0, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1962
    invoke-static {v6, v3}, Landroid/icu/impl/Grego;->monthLength(II)I

    move-result v4

    if-ltz v6, :cond_6

    if-ltz v3, :cond_6

    if-gt v3, v8, :cond_6

    if-lt v5, v0, :cond_6

    if-gt v5, v4, :cond_6

    if-ltz v7, :cond_6

    const/16 v4, 0x18

    if-ge v7, v4, :cond_6

    if-ltz v10, :cond_6

    const/16 v4, 0x3c

    if-ge v10, v4, :cond_6

    if-ltz p0, :cond_6

    if-lt p0, v4, :cond_5

    goto :goto_5

    :cond_5
    move v1, v0

    goto :goto_5

    :catch_0
    move v10, v1

    goto :goto_4

    :catch_1
    move v7, v1

    goto :goto_3

    :catch_2
    move v5, v1

    goto :goto_2

    :catch_3
    move v3, v1

    move v5, v3

    :goto_2
    move v7, v5

    goto :goto_3

    :catch_4
    move v3, v1

    move v5, v3

    move v6, v5

    move v7, v6

    :goto_3
    move v10, v7

    :catch_5
    :goto_4
    move p0, v1

    :cond_6
    :goto_5
    if-eqz v1, :cond_8

    .line 1975
    invoke-static {v6, v3, v5}, Landroid/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide v0

    const-wide/32 v3, 0x5265c00

    mul-long/2addr v0, v3

    const v3, 0x36ee80

    mul-int/2addr v7, v3

    const v3, 0xea60

    mul-int/2addr v10, v3

    add-int/2addr v7, v10

    mul-int/lit16 p0, p0, 0x3e8

    add-int/2addr v7, p0

    int-to-long v3, v7

    add-long/2addr v0, v3

    if-nez v2, :cond_7

    int-to-long p0, p1

    sub-long/2addr v0, p0

    :cond_7
    return-wide v0

    .line 1972
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid date time string format"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static parseRRULE(Ljava/lang/String;[J)[I
    .locals 16

    .line 1046
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ";"

    move-object/from16 v2, p0

    invoke-direct {v0, v2, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    const/4 v3, 0x0

    const-wide/high16 v4, -0x8000000000000000L

    move v6, v3

    move v7, v6

    move v8, v7

    move v9, v8

    move-wide v10, v4

    const/4 v4, 0x0

    move v5, v2

    .line 1048
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v12

    const/4 v13, 0x4

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-eqz v12, :cond_10

    .line 1050
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    const-string v1, "="

    .line 1051
    invoke-virtual {v12, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_f

    .line 1053
    invoke-virtual {v12, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    .line 1054
    invoke-virtual {v12, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v12, "FREQ"

    .line 1060
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const-string v2, "YEARLY"

    .line 1062
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    move v8, v15

    goto/16 :goto_5

    :cond_0
    const-string v12, "UNTIL"

    .line 1068
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1071
    :try_start_0
    invoke-static {v1, v3}, Landroid/icu/util/VTimeZone;->parseDateTimeString(Ljava/lang/String;I)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-wide v10, v1

    goto/16 :goto_5

    :cond_1
    const-string v12, "BYMONTH"

    .line 1076
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1079
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v14, :cond_2

    goto/16 :goto_6

    .line 1084
    :cond_2
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v5, v1, -0x1

    if-ltz v5, :cond_f

    const/16 v1, 0xc

    if-lt v5, v1, :cond_e

    goto/16 :goto_6

    :cond_3
    const-string v12, "BYDAY"

    .line 1093
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 1099
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v14, :cond_f

    if-le v2, v13, :cond_4

    goto/16 :goto_6

    :cond_4
    if-le v2, v14, :cond_9

    .line 1107
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v14, 0x2b

    if-ne v12, v14, :cond_6

    :cond_5
    move v12, v15

    goto :goto_1

    .line 1109
    :cond_6
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v14, 0x2d

    if-ne v12, v14, :cond_7

    const/4 v12, -0x1

    goto :goto_1

    :cond_7
    if-ne v2, v13, :cond_5

    goto/16 :goto_6

    :goto_1
    add-int/lit8 v14, v2, -0x3

    add-int/lit8 v2, v2, -0x2

    .line 1116
    :try_start_2
    invoke-virtual {v1, v14, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v14, :cond_f

    if-le v14, v13, :cond_8

    goto :goto_6

    :cond_8
    mul-int/2addr v14, v12

    .line 1126
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move v7, v14

    :cond_9
    move v2, v3

    .line 1129
    :goto_2
    sget-object v12, Landroid/icu/util/VTimeZone;->ICAL_DOW_NAMES:[Ljava/lang/String;

    array-length v14, v12

    if-ge v2, v14, :cond_b

    .line 1130
    aget-object v12, v12, v2

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    goto :goto_3

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1134
    :cond_b
    :goto_3
    sget-object v1, Landroid/icu/util/VTimeZone;->ICAL_DOW_NAMES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v2, v1, :cond_f

    add-int/lit8 v2, v2, 0x1

    move v6, v2

    goto :goto_5

    :cond_c
    const-string v12, "BYMONTHDAY"

    .line 1141
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1146
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v2, v1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    .line 1148
    new-array v1, v1, [I

    move v4, v3

    .line 1150
    :goto_4
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v12

    if-eqz v12, :cond_d

    add-int/lit8 v12, v4, 0x1

    .line 1152
    :try_start_3
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    aput v13, v1, v4
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    move v4, v12

    goto :goto_4

    :catch_0
    move-object v4, v1

    move v9, v15

    goto :goto_5

    :cond_d
    move-object v4, v1

    :cond_e
    :goto_5
    const/4 v2, -0x1

    goto/16 :goto_0

    :catch_1
    :cond_f
    :goto_6
    move v9, v15

    :cond_10
    if-eqz v9, :cond_11

    const/4 v0, 0x0

    return-object v0

    :cond_11
    const/4 v0, 0x0

    if-nez v8, :cond_12

    return-object v0

    .line 1169
    :cond_12
    aput-wide v10, p1, v3

    const/4 v0, 0x3

    if-nez v4, :cond_13

    new-array v1, v13, [I

    aput v3, v1, v0

    goto :goto_8

    .line 1176
    :cond_13
    array-length v1, v4

    add-int/2addr v1, v0

    new-array v1, v1, [I

    move v0, v3

    .line 1177
    :goto_7
    array-length v2, v4

    if-ge v0, v2, :cond_14

    add-int/lit8 v2, v0, 0x3

    .line 1178
    aget v8, v4, v0

    aput v8, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1181
    :cond_14
    :goto_8
    aput v5, v1, v3

    .line 1182
    aput v6, v1, v15

    const/4 v0, 0x2

    .line 1183
    aput v7, v1, v0

    return-object v1
.end method

.method private static toWallTimeRule(Landroid/icu/util/DateTimeRule;II)Landroid/icu/util/DateTimeRule;
    .locals 11

    .line 1701
    invoke-virtual {p0}, Landroid/icu/util/DateTimeRule;->getTimeRuleType()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 1704
    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/DateTimeRule;->getRuleMillisInDay()I

    move-result v0

    .line 1705
    invoke-virtual {p0}, Landroid/icu/util/DateTimeRule;->getTimeRuleType()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    add-int/2addr p1, p2

    add-int/2addr v0, p1

    goto :goto_0

    .line 1707
    :cond_1
    invoke-virtual {p0}, Landroid/icu/util/DateTimeRule;->getTimeRuleType()I

    move-result p1

    if-ne p1, v3, :cond_2

    add-int/2addr v0, p2

    :cond_2
    :goto_0
    const p1, 0x5265c00

    const/4 p2, 0x0

    if-gez v0, :cond_3

    add-int/2addr v0, p1

    const/4 p1, -0x1

    goto :goto_1

    :cond_3
    if-lt v0, p1, :cond_4

    sub-int/2addr v0, p1

    move v9, v0

    move p1, v3

    goto :goto_2

    :cond_4
    move p1, p2

    :goto_1
    move v9, v0

    .line 1721
    :goto_2
    invoke-virtual {p0}, Landroid/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v0

    .line 1722
    invoke-virtual {p0}, Landroid/icu/util/DateTimeRule;->getRuleDayOfMonth()I

    move-result v1

    .line 1723
    invoke-virtual {p0}, Landroid/icu/util/DateTimeRule;->getRuleDayOfWeek()I

    move-result v4

    .line 1724
    invoke-virtual {p0}, Landroid/icu/util/DateTimeRule;->getDateRuleType()I

    move-result v5

    const/4 v6, 0x7

    if-eqz p1, :cond_e

    if-ne v5, v3, :cond_6

    .line 1729
    invoke-virtual {p0}, Landroid/icu/util/DateTimeRule;->getRuleWeekInMonth()I

    move-result p0

    if-lez p0, :cond_5

    sub-int/2addr p0, v3

    mul-int/2addr p0, v6

    add-int/lit8 v1, p0, 0x1

    move v5, v2

    goto :goto_3

    :cond_5
    const/4 v1, 0x3

    .line 1735
    sget-object v5, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v5, v5, v0

    add-int/2addr p0, v3

    mul-int/2addr p0, v6

    add-int/2addr p0, v5

    move v5, v1

    move v1, p0

    :cond_6
    :goto_3
    add-int p0, v1, p1

    const/16 v1, 0xb

    if-nez p0, :cond_8

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_7

    move v0, v1

    .line 1744
    :cond_7
    sget-object p0, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget p0, p0, v0

    goto :goto_5

    .line 1745
    :cond_8
    sget-object v7, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v7, v7, v0

    if-le p0, v7, :cond_a

    add-int/lit8 p0, v0, 0x1

    if-le p0, v1, :cond_9

    move v0, p2

    goto :goto_4

    :cond_9
    move v0, p0

    :goto_4
    move p0, v3

    :cond_a
    :goto_5
    if-eqz v5, :cond_d

    add-int/2addr p1, v4

    if-ge p1, v3, :cond_b

    move v7, v6

    move v6, p0

    goto :goto_7

    :cond_b
    if-le p1, v6, :cond_c

    move v6, p0

    move v7, v3

    goto :goto_7

    :cond_c
    move v6, p0

    move v7, p1

    goto :goto_7

    :cond_d
    move v6, p0

    goto :goto_6

    :cond_e
    move v6, v1

    :goto_6
    move v7, v4

    :goto_7
    if-nez v5, :cond_f

    .line 1763
    new-instance p0, Landroid/icu/util/DateTimeRule;

    invoke-direct {p0, v0, v6, v9, p2}, Landroid/icu/util/DateTimeRule;-><init>(IIII)V

    goto :goto_9

    .line 1765
    :cond_f
    new-instance p0, Landroid/icu/util/DateTimeRule;

    if-ne v5, v2, :cond_10

    move v8, v3

    goto :goto_8

    :cond_10
    move v8, p2

    :goto_8
    const/4 v10, 0x0

    move-object v4, p0

    move v5, v0

    invoke-direct/range {v4 .. v10}, Landroid/icu/util/DateTimeRule;-><init>(IIIZII)V

    :goto_9
    return-object p0
.end method

.method private static writeFinalRule(Ljava/io/Writer;ZLandroid/icu/util/AnnualTimeZoneRule;IIJ)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move/from16 v0, p3

    move/from16 v1, p4

    .line 1663
    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/AnnualTimeZoneRule;->getRule()Landroid/icu/util/DateTimeRule;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/icu/util/VTimeZone;->toWallTimeRule(Landroid/icu/util/DateTimeRule;II)Landroid/icu/util/DateTimeRule;

    move-result-object v2

    .line 1669
    invoke-virtual {v2}, Landroid/icu/util/DateTimeRule;->getRuleMillisInDay()I

    move-result v3

    if-gez v3, :cond_0

    rsub-int/lit8 v3, v3, 0x0

    int-to-long v3, v3

    add-long v3, p5, v3

    goto :goto_0

    :cond_0
    const v4, 0x5265c00

    if-lt v3, v4, :cond_1

    const v4, 0x5265bff

    sub-int/2addr v3, v4

    int-to-long v3, v3

    sub-long v3, p5, v3

    goto :goto_0

    :cond_1
    move-wide/from16 v3, p5

    .line 1676
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v6

    add-int v9, v5, v6

    .line 1677
    invoke-virtual {v2}, Landroid/icu/util/DateTimeRule;->getDateRuleType()I

    move-result v5

    if-eqz v5, :cond_5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2

    goto/16 :goto_1

    .line 1691
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/AnnualTimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v7

    add-int v8, v0, v1

    .line 1692
    invoke-virtual {v2}, Landroid/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v10

    invoke-virtual {v2}, Landroid/icu/util/DateTimeRule;->getRuleDayOfMonth()I

    move-result v11

    invoke-virtual {v2}, Landroid/icu/util/DateTimeRule;->getRuleDayOfWeek()I

    move-result v12

    const-wide v15, 0x7fffffffffffffffL

    move-object/from16 v5, p0

    move/from16 v6, p1

    move-wide v13, v3

    .line 1691
    invoke-static/range {v5 .. v16}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW_LEQ_DOM(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto :goto_1

    .line 1687
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/AnnualTimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v7

    add-int v8, v0, v1

    .line 1688
    invoke-virtual {v2}, Landroid/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v10

    invoke-virtual {v2}, Landroid/icu/util/DateTimeRule;->getRuleDayOfMonth()I

    move-result v11

    invoke-virtual {v2}, Landroid/icu/util/DateTimeRule;->getRuleDayOfWeek()I

    move-result v12

    const-wide v15, 0x7fffffffffffffffL

    move-object/from16 v5, p0

    move/from16 v6, p1

    move-wide v13, v3

    .line 1687
    invoke-static/range {v5 .. v16}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW_GEQ_DOM(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto :goto_1

    .line 1683
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/AnnualTimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v7

    add-int v8, v0, v1

    .line 1684
    invoke-virtual {v2}, Landroid/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v10

    invoke-virtual {v2}, Landroid/icu/util/DateTimeRule;->getRuleWeekInMonth()I

    move-result v11

    invoke-virtual {v2}, Landroid/icu/util/DateTimeRule;->getRuleDayOfWeek()I

    move-result v12

    const-wide v15, 0x7fffffffffffffffL

    move-object/from16 v5, p0

    move/from16 v6, p1

    move-wide v13, v3

    .line 1683
    invoke-static/range {v5 .. v16}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto :goto_1

    .line 1679
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/AnnualTimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v7

    add-int v8, v0, v1

    .line 1680
    invoke-virtual {v2}, Landroid/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v10

    invoke-virtual {v2}, Landroid/icu/util/DateTimeRule;->getRuleDayOfMonth()I

    move-result v11

    const-wide v14, 0x7fffffffffffffffL

    move-object/from16 v5, p0

    move/from16 v6, p1

    move-wide v12, v3

    .line 1679
    invoke-static/range {v5 .. v15}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOM(Ljava/io/Writer;ZLjava/lang/String;IIIIJJ)V

    :goto_1
    return-void
.end method

.method private static writeFooter(Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "END"

    .line 1882
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ":"

    .line 1883
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "VTIMEZONE"

    .line 1884
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\r\n"

    .line 1885
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method private writeHeader(Ljava/io/Writer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "BEGIN"

    .line 1856
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ":"

    .line 1857
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "VTIMEZONE"

    .line 1858
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\r\n"

    .line 1859
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v2, "TZID"

    .line 1860
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1861
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1862
    iget-object v2, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {v2}, Landroid/icu/util/BasicTimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1863
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1864
    iget-object v2, p0, Landroid/icu/util/VTimeZone;->tzurl:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, "TZURL"

    .line 1865
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1866
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1867
    iget-object v2, p0, Landroid/icu/util/VTimeZone;->tzurl:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1868
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1870
    :cond_0
    iget-object v2, p0, Landroid/icu/util/VTimeZone;->lastmod:Ljava/util/Date;

    if-eqz v2, :cond_1

    const-string v2, "LAST-MODIFIED"

    .line 1871
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1872
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1873
    iget-object p0, p0, Landroid/icu/util/VTimeZone;->lastmod:Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/icu/util/VTimeZone;->getUTCDateTimeString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1874
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private writeZone(Ljava/io/Writer;Landroid/icu/util/BasicTimeZone;[Ljava/lang/String;)V
    .locals 59
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v0, p3

    .line 1218
    invoke-direct/range {p0 .. p1}, Landroid/icu/util/VTimeZone;->writeHeader(Ljava/io/Writer;)V

    const/4 v14, 0x0

    if-eqz v0, :cond_1

    .line 1220
    array-length v1, v0

    if-lez v1, :cond_1

    move v1, v14

    .line 1221
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 1222
    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    .line 1223
    aget-object v2, v0, v1

    invoke-virtual {v12, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v2, "\r\n"

    .line 1224
    invoke-virtual {v12, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-wide/high16 v0, -0x8000000000000000L

    const/4 v2, 0x6

    new-array v15, v2, [I

    const/4 v2, 0x0

    move-object v7, v2

    move-object v9, v7

    move-object/from16 v16, v9

    move-object/from16 v17, v16

    move v2, v14

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    move/from16 v18, v6

    move/from16 v19, v18

    move/from16 v20, v19

    move/from16 v21, v20

    move/from16 v26, v21

    move/from16 v27, v26

    move/from16 v28, v27

    move/from16 v29, v28

    move/from16 v30, v29

    move/from16 v31, v30

    move/from16 v32, v31

    move/from16 v33, v32

    move/from16 v38, v33

    move/from16 v39, v38

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v34, 0x0

    const-wide/16 v36, 0x0

    .line 1263
    :goto_1
    invoke-virtual {v13, v0, v1, v14}, Landroid/icu/util/BasicTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v0

    if-nez v0, :cond_2

    move/from16 v52, v4

    move/from16 v54, v5

    move/from16 v55, v6

    move-object/from16 v56, v7

    move-object/from16 v58, v9

    move/from16 v43, v14

    move/from16 v13, v18

    move/from16 v0, v20

    move-wide/from16 v8, v22

    move/from16 v5, v27

    move/from16 v7, v28

    move/from16 v6, v29

    move/from16 v14, v31

    move/from16 v15, v32

    move/from16 v10, v33

    move-wide/from16 v19, v36

    const/4 v12, 0x1

    move v4, v3

    goto/16 :goto_f

    .line 1268
    :cond_2
    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v40

    .line 1269
    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1270
    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    move v1, v14

    .line 1271
    :goto_2
    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v42

    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v43

    add-int v8, v42, v43

    .line 1272
    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v42

    .line 1273
    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v43

    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v44

    add-int v14, v43, v44

    .line 1274
    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v43

    int-to-long v10, v8

    add-long v10, v43, v10

    invoke-static {v10, v11, v15}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    const/16 v43, 0x0

    .line 1275
    aget v10, v15, v43

    move/from16 p3, v4

    const/4 v11, 0x1

    aget v4, v15, v11

    const/4 v11, 0x2

    aget v11, v15, v11

    invoke-static {v10, v4, v11}, Landroid/icu/impl/Grego;->getDayOfWeekInMonth(III)I

    move-result v10

    .line 1276
    aget v11, v15, v43

    const v4, 0x7fffffff

    const/16 v44, 0x5

    const/16 v45, 0x3

    if-eqz v1, :cond_f

    if-nez v17, :cond_4

    .line 1279
    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v1

    instance-of v1, v1, Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v1, :cond_4

    .line 1280
    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v1

    check-cast v1, Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v1}, Landroid/icu/util/AnnualTimeZoneRule;->getEndYear()I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 1281
    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/icu/util/AnnualTimeZoneRule;

    :cond_4
    if-lez v20, :cond_c

    add-int v0, v21, v20

    if-ne v11, v0, :cond_7

    .line 1286
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-ne v6, v8, :cond_7

    if-ne v3, v14, :cond_7

    const/4 v0, 0x1

    aget v1, v15, v0

    move/from16 v4, v27

    if-ne v4, v1, :cond_8

    aget v0, v15, v45

    move/from16 v1, v28

    if-ne v1, v0, :cond_6

    move/from16 v0, v29

    move/from16 v27, v0

    if-ne v0, v10, :cond_5

    aget v0, v15, v44

    move/from16 v28, v1

    move/from16 v1, v39

    if-ne v1, v0, :cond_9

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-wide/from16 v24, v40

    const/16 v20, 0x1

    goto :goto_5

    :cond_5
    move/from16 v28, v1

    goto :goto_4

    :cond_6
    move/from16 v28, v1

    goto :goto_3

    :cond_7
    move/from16 v4, v27

    :cond_8
    :goto_3
    move/from16 v27, v29

    :goto_4
    move/from16 v1, v39

    :cond_9
    move/from16 v0, v20

    move/from16 v20, v43

    :goto_5
    if-nez v20, :cond_b

    move/from16 v29, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    const/16 v39, 0x1

    const/16 v48, 0x1

    move/from16 v49, v27

    move/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v50, v1

    move/from16 v1, v39

    move-object/from16 v51, v2

    move-object v2, v7

    move/from16 v39, v3

    move v3, v6

    move/from16 v52, p3

    move/from16 v53, v4

    move/from16 v4, v39

    move/from16 v54, v5

    move/from16 v55, v6

    move-wide/from16 v5, v22

    move-object/from16 v56, v7

    move/from16 v7, v48

    .line 1300
    invoke-static/range {v0 .. v7}, Landroid/icu/util/VTimeZone;->writeZonePropsByTime(Ljava/io/Writer;ZLjava/lang/String;IIJZ)V

    move/from16 v57, v8

    move-object/from16 v58, v9

    move v12, v10

    move v13, v11

    goto :goto_6

    :cond_a
    move/from16 v52, p3

    move/from16 v50, v1

    move-object/from16 v51, v2

    move/from16 v39, v3

    move/from16 v53, v4

    move/from16 v54, v5

    move/from16 v55, v6

    move-object/from16 v56, v7

    move/from16 v49, v27

    move/from16 v27, v0

    const/4 v1, 0x1

    move-object/from16 v0, p1

    move-object/from16 v2, v56

    move/from16 v3, v55

    move/from16 v4, v39

    move/from16 v5, v53

    move/from16 v6, v49

    move/from16 v7, v28

    move/from16 v57, v8

    move-object/from16 v58, v9

    move-wide/from16 v8, v22

    move v12, v10

    move v13, v11

    move-wide/from16 v10, v24

    .line 1303
    invoke-static/range {v0 .. v11}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto :goto_6

    :cond_b
    move/from16 v52, p3

    move/from16 v29, v1

    move-object/from16 v51, v2

    move/from16 v39, v3

    move/from16 v53, v4

    move/from16 v54, v5

    move/from16 v55, v6

    move-object/from16 v56, v7

    move/from16 v57, v8

    move-object/from16 v58, v9

    move v12, v10

    move v13, v11

    move/from16 v49, v27

    move/from16 v27, v0

    :goto_6
    move/from16 v8, v27

    goto :goto_7

    :cond_c
    move/from16 v52, p3

    move-object/from16 v51, v2

    move/from16 v54, v5

    move/from16 v55, v6

    move-object/from16 v56, v7

    move/from16 v57, v8

    move-object/from16 v58, v9

    move v12, v10

    move v13, v11

    move/from16 v53, v27

    move/from16 v49, v29

    move/from16 v29, v39

    move/from16 v39, v3

    move/from16 v8, v20

    move/from16 v20, v43

    :goto_7
    const/4 v10, 0x1

    if-nez v20, :cond_d

    .line 1315
    aget v0, v15, v10

    .line 1316
    aget v1, v15, v45

    .line 1318
    aget v39, v15, v44

    move/from16 v27, v0

    move/from16 v28, v1

    move/from16 v20, v10

    move/from16 v29, v12

    move v3, v14

    move-wide/from16 v22, v40

    move-wide/from16 v24, v22

    move/from16 v26, v42

    move-object/from16 v7, v51

    move/from16 v6, v57

    goto :goto_8

    :cond_d
    move/from16 v20, v8

    move/from16 v13, v21

    move/from16 v3, v39

    move/from16 v27, v53

    move/from16 v6, v55

    move-object/from16 v7, v56

    move/from16 v39, v29

    move/from16 v29, v49

    :goto_8
    if-eqz v16, :cond_e

    if-eqz v17, :cond_e

    move v4, v3

    move/from16 v55, v6

    move-object/from16 v56, v7

    move v2, v10

    move v12, v2

    move/from16 v13, v18

    move/from16 v0, v20

    move-wide/from16 v8, v22

    move/from16 v5, v27

    move/from16 v7, v28

    move/from16 v6, v29

    move/from16 v14, v31

    move/from16 v15, v32

    move/from16 v10, v33

    move-wide/from16 v19, v36

    goto/16 :goto_f

    :cond_e
    move-object/from16 v1, p2

    move v12, v10

    move/from16 v21, v13

    move/from16 v0, v39

    move/from16 v4, v52

    move/from16 v5, v54

    move-object/from16 v9, v58

    move/from16 v39, v3

    const-wide/16 v2, 0x0

    goto/16 :goto_14

    :cond_f
    move/from16 v52, p3

    move-object/from16 v51, v2

    move/from16 v54, v5

    move/from16 v55, v6

    move-object/from16 v56, v7

    move/from16 v57, v8

    move-object/from16 v58, v9

    move v12, v10

    move v13, v11

    move/from16 v53, v27

    move/from16 v49, v29

    move/from16 v29, v39

    const/4 v10, 0x1

    move/from16 v39, v3

    if-nez v16, :cond_10

    .line 1326
    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v1

    instance-of v1, v1, Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v1, :cond_10

    .line 1327
    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v1

    check-cast v1, Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v1}, Landroid/icu/util/AnnualTimeZoneRule;->getEndYear()I

    move-result v1

    if-ne v1, v4, :cond_10

    .line 1328
    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/icu/util/AnnualTimeZoneRule;

    :cond_10
    if-lez v18, :cond_1a

    add-int v0, v19, v18

    if-ne v13, v0, :cond_16

    move-object/from16 v11, v51

    move-object/from16 v8, v58

    .line 1333
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    move/from16 v7, v54

    move/from16 v9, v57

    if-ne v7, v9, :cond_14

    move/from16 v5, v52

    if-ne v5, v14, :cond_11

    aget v0, v15, v10

    move/from16 v6, v31

    if-ne v6, v0, :cond_12

    aget v0, v15, v45

    move/from16 v4, v32

    move/from16 v3, v33

    if-ne v4, v0, :cond_13

    if-ne v3, v12, :cond_13

    aget v0, v15, v44

    move/from16 v2, v38

    if-ne v2, v0, :cond_17

    add-int/lit8 v18, v18, 0x1

    move/from16 v1, v18

    move-wide/from16 v36, v40

    move/from16 v18, v10

    goto :goto_a

    :cond_11
    move/from16 v6, v31

    :cond_12
    move/from16 v4, v32

    move/from16 v3, v33

    :cond_13
    move/from16 v2, v38

    goto :goto_9

    :cond_14
    move/from16 v6, v31

    move/from16 v4, v32

    move/from16 v3, v33

    move/from16 v2, v38

    move/from16 v5, v52

    goto :goto_9

    :cond_15
    move/from16 v6, v31

    move/from16 v4, v32

    move/from16 v3, v33

    move/from16 v2, v38

    move/from16 v5, v52

    move/from16 v7, v54

    move/from16 v9, v57

    goto :goto_9

    :cond_16
    move/from16 v6, v31

    move/from16 v4, v32

    move/from16 v3, v33

    move/from16 v2, v38

    move-object/from16 v11, v51

    move/from16 v5, v52

    move/from16 v7, v54

    move/from16 v9, v57

    move-object/from16 v8, v58

    :cond_17
    :goto_9
    move/from16 v1, v18

    move/from16 v18, v43

    :goto_a
    if-nez v18, :cond_19

    if-ne v1, v10, :cond_18

    const/16 v27, 0x0

    const/16 v31, 0x1

    move-object/from16 v0, p1

    move/from16 v32, v1

    move/from16 v1, v27

    move/from16 v27, v2

    move-object v2, v8

    move/from16 v33, v3

    move v3, v7

    move/from16 v38, v4

    move v4, v5

    move/from16 v46, v5

    move/from16 v47, v6

    move-wide/from16 v5, v34

    move/from16 v48, v7

    move/from16 v7, v31

    .line 1347
    invoke-static/range {v0 .. v7}, Landroid/icu/util/VTimeZone;->writeZonePropsByTime(Ljava/io/Writer;ZLjava/lang/String;IIJZ)V

    goto :goto_b

    :cond_18
    move/from16 v32, v1

    move/from16 v27, v2

    move/from16 v33, v3

    move/from16 v38, v4

    move/from16 v46, v5

    move/from16 v47, v6

    move/from16 v48, v7

    const/4 v1, 0x0

    move-object/from16 v0, p1

    move-object v2, v8

    move/from16 v3, v48

    move/from16 v4, v46

    move/from16 v5, v47

    move/from16 v6, v33

    move/from16 v7, v38

    move-object/from16 v50, v8

    move/from16 v31, v9

    move-wide/from16 v8, v34

    move-object/from16 v51, v11

    move/from16 v52, v12

    move v12, v10

    move-wide/from16 v10, v36

    .line 1350
    invoke-static/range {v0 .. v11}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto :goto_c

    :cond_19
    move/from16 v32, v1

    move/from16 v27, v2

    move/from16 v33, v3

    move/from16 v38, v4

    move/from16 v46, v5

    move/from16 v47, v6

    move/from16 v48, v7

    :goto_b
    move-object/from16 v50, v8

    move/from16 v31, v9

    move-object/from16 v51, v11

    move/from16 v52, v12

    move v12, v10

    :goto_c
    move/from16 v8, v32

    goto :goto_d

    :cond_1a
    move/from16 v47, v31

    move/from16 v27, v38

    move/from16 v46, v52

    move/from16 v48, v54

    move/from16 v31, v57

    move-object/from16 v50, v58

    move/from16 v52, v12

    move/from16 v38, v32

    move v12, v10

    move/from16 v8, v18

    move/from16 v18, v43

    :goto_d
    if-nez v18, :cond_1b

    .line 1362
    aget v0, v15, v12

    .line 1363
    aget v32, v15, v45

    .line 1365
    aget v38, v15, v44

    move/from16 v18, v12

    move v4, v14

    move/from16 v5, v31

    move-wide/from16 v34, v40

    move-wide/from16 v36, v34

    move/from16 v30, v42

    move-object/from16 v9, v51

    move/from16 v33, v52

    move/from16 v31, v0

    goto :goto_e

    :cond_1b
    move/from16 v18, v8

    move/from16 v13, v19

    move/from16 v32, v38

    move/from16 v4, v46

    move/from16 v31, v47

    move/from16 v5, v48

    move-object/from16 v9, v50

    move/from16 v38, v27

    :goto_e
    if-eqz v16, :cond_29

    if-eqz v17, :cond_29

    move/from16 v52, v4

    move/from16 v54, v5

    move-object/from16 v58, v9

    move v2, v12

    move/from16 v13, v18

    move/from16 v0, v20

    move-wide/from16 v8, v22

    move/from16 v7, v28

    move/from16 v14, v31

    move/from16 v15, v32

    move/from16 v10, v33

    move-wide/from16 v19, v36

    move/from16 v4, v39

    move/from16 v6, v49

    move/from16 v5, v53

    :goto_f
    if-nez v2, :cond_1d

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    .line 1376
    invoke-virtual {v1, v2, v3}, Landroid/icu/util/BasicTimeZone;->getOffset(J)I

    move-result v4

    .line 1377
    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/BasicTimeZone;->getRawOffset()I

    move-result v0

    if-eq v4, v0, :cond_1c

    goto :goto_10

    :cond_1c
    move/from16 v12, v43

    .line 1378
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/BasicTimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v12}, Landroid/icu/util/VTimeZone;->getDefaultTZName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    int-to-long v0, v4

    sub-long v6, v2, v0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move v1, v12

    move-object v2, v5

    move v3, v4

    move-wide v5, v6

    move v7, v8

    invoke-static/range {v0 .. v7}, Landroid/icu/util/VTimeZone;->writeZonePropsByTime(Ljava/io/Writer;ZLjava/lang/String;IIJZ)V

    goto/16 :goto_13

    :cond_1d
    if-lez v0, :cond_22

    if-nez v17, :cond_1f

    if-ne v0, v12, :cond_1e

    const/4 v1, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, p1

    move-object/from16 v2, v56

    move/from16 v3, v55

    move-wide v5, v8

    .line 1384
    invoke-static/range {v0 .. v7}, Landroid/icu/util/VTimeZone;->writeZonePropsByTime(Ljava/io/Writer;ZLjava/lang/String;IIJZ)V

    goto/16 :goto_11

    :cond_1e
    const/4 v1, 0x1

    move-object/from16 v0, p1

    move-object/from16 v2, v56

    move/from16 v3, v55

    move/from16 p0, v10

    move-wide/from16 v10, v24

    .line 1387
    invoke-static/range {v0 .. v11}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto :goto_12

    :cond_1f
    move/from16 p0, v10

    if-ne v0, v12, :cond_20

    const/4 v1, 0x1

    sub-int v3, v55, v26

    move-object/from16 v0, p1

    move-object/from16 v2, v17

    move/from16 v4, v26

    move-wide v5, v8

    .line 1392
    invoke-static/range {v0 .. v6}, Landroid/icu/util/VTimeZone;->writeFinalRule(Ljava/io/Writer;ZLandroid/icu/util/AnnualTimeZoneRule;IIJ)V

    goto :goto_12

    .line 1396
    :cond_20
    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/AnnualTimeZoneRule;->getRule()Landroid/icu/util/DateTimeRule;

    move-result-object v0

    invoke-static {v5, v6, v7, v0}, Landroid/icu/util/VTimeZone;->isEquivalentDateRule(IIILandroid/icu/util/DateTimeRule;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v1, 0x1

    const-wide v10, 0x7fffffffffffffffL

    move-object/from16 v0, p1

    move-object/from16 v2, v56

    move/from16 v3, v55

    .line 1397
    invoke-static/range {v0 .. v11}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto :goto_12

    :cond_21
    const/4 v1, 0x1

    move-object/from16 v0, p1

    move-object/from16 v2, v56

    move/from16 v3, v55

    move-wide/from16 v10, v24

    .line 1401
    invoke-static/range {v0 .. v11}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    sub-int v9, v55, v26

    const/4 v8, 0x0

    move-object/from16 v3, v17

    move-wide/from16 v4, v24

    move v6, v9

    move/from16 v7, v26

    .line 1404
    invoke-virtual/range {v3 .. v8}, Landroid/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_23

    const/4 v1, 0x1

    .line 1410
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    move-object/from16 v0, p1

    move-object/from16 v2, v17

    move v3, v9

    move/from16 v4, v26

    .line 1409
    invoke-static/range {v0 .. v6}, Landroid/icu/util/VTimeZone;->writeFinalRule(Ljava/io/Writer;ZLandroid/icu/util/AnnualTimeZoneRule;IIJ)V

    goto :goto_12

    :cond_22
    :goto_11
    move/from16 p0, v10

    :cond_23
    :goto_12
    if-lez v13, :cond_28

    if-nez v16, :cond_25

    if-ne v13, v12, :cond_24

    const/4 v1, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, p1

    move-object/from16 v2, v58

    move/from16 v3, v54

    move/from16 v4, v52

    move-wide/from16 v5, v34

    .line 1419
    invoke-static/range {v0 .. v7}, Landroid/icu/util/VTimeZone;->writeZonePropsByTime(Ljava/io/Writer;ZLjava/lang/String;IIJZ)V

    goto/16 :goto_13

    :cond_24
    const/4 v1, 0x0

    move-object/from16 v0, p1

    move-object/from16 v2, v58

    move/from16 v3, v54

    move/from16 v4, v52

    move v5, v14

    move/from16 v6, p0

    move v7, v15

    move-wide/from16 v8, v34

    move-wide/from16 v10, v19

    .line 1422
    invoke-static/range {v0 .. v11}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto/16 :goto_13

    :cond_25
    if-ne v13, v12, :cond_26

    const/4 v1, 0x0

    sub-int v3, v54, v30

    move-object/from16 v0, p1

    move-object/from16 v2, v16

    move/from16 v4, v30

    move-wide/from16 v5, v34

    .line 1427
    invoke-static/range {v0 .. v6}, Landroid/icu/util/VTimeZone;->writeFinalRule(Ljava/io/Writer;ZLandroid/icu/util/AnnualTimeZoneRule;IIJ)V

    goto :goto_13

    .line 1431
    :cond_26
    invoke-virtual/range {v16 .. v16}, Landroid/icu/util/AnnualTimeZoneRule;->getRule()Landroid/icu/util/DateTimeRule;

    move-result-object v0

    move/from16 v6, p0

    invoke-static {v14, v6, v15, v0}, Landroid/icu/util/VTimeZone;->isEquivalentDateRule(IIILandroid/icu/util/DateTimeRule;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v1, 0x0

    const-wide v10, 0x7fffffffffffffffL

    move-object/from16 v0, p1

    move-object/from16 v2, v58

    move/from16 v3, v54

    move/from16 v4, v52

    move v5, v14

    move v7, v15

    move-wide/from16 v8, v34

    .line 1432
    invoke-static/range {v0 .. v11}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto :goto_13

    :cond_27
    const/4 v1, 0x0

    move-object/from16 v0, p1

    move-object/from16 v2, v58

    move/from16 v3, v54

    move/from16 v4, v52

    move v5, v14

    move v7, v15

    move-wide/from16 v8, v34

    move-wide/from16 v10, v19

    .line 1436
    invoke-static/range {v0 .. v11}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    sub-int v3, v54, v30

    const/16 v23, 0x0

    move-object/from16 v18, v16

    move/from16 v21, v3

    move/from16 v22, v30

    .line 1439
    invoke-virtual/range {v18 .. v23}, Landroid/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_28

    const/4 v1, 0x0

    .line 1445
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    move-object/from16 v0, p1

    move-object/from16 v2, v16

    move/from16 v4, v30

    .line 1444
    invoke-static/range {v0 .. v6}, Landroid/icu/util/VTimeZone;->writeFinalRule(Ljava/io/Writer;ZLandroid/icu/util/AnnualTimeZoneRule;IIJ)V

    .line 1453
    :cond_28
    :goto_13
    invoke-static/range {p1 .. p1}, Landroid/icu/util/VTimeZone;->writeFooter(Ljava/io/Writer;)V

    return-void

    :cond_29
    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    move/from16 v19, v13

    move/from16 v0, v29

    move/from16 v29, v49

    move/from16 v27, v53

    move/from16 v6, v55

    move-object/from16 v7, v56

    :goto_14
    move-object v13, v1

    move v2, v12

    move/from16 v3, v39

    move/from16 v14, v43

    move-object/from16 v12, p1

    move/from16 v39, v0

    move-wide/from16 v0, v40

    goto/16 :goto_1
.end method

.method private static writeZonePropsByDOM(Ljava/io/Writer;ZLjava/lang/String;IIIIJJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v7, p0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p7

    .line 1514
    invoke-static/range {v0 .. v6}, Landroid/icu/util/VTimeZone;->beginZoneProps(Ljava/io/Writer;ZLjava/lang/String;IIJ)V

    move v0, p5

    .line 1516
    invoke-static {p0, p5}, Landroid/icu/util/VTimeZone;->beginRRULE(Ljava/io/Writer;I)V

    const-string v0, "BYMONTHDAY"

    .line 1517
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "="

    .line 1518
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1519
    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p9, v0

    if-eqz v0, :cond_0

    move v0, p3

    int-to-long v0, v0

    add-long v0, p9, v0

    .line 1522
    invoke-static {v0, v1}, Landroid/icu/util/VTimeZone;->getDateTimeString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/icu/util/VTimeZone;->appendUNTIL(Ljava/io/Writer;Ljava/lang/String;)V

    :cond_0
    const-string v0, "\r\n"

    .line 1524
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1526
    invoke-static {p0, p1}, Landroid/icu/util/VTimeZone;->endZoneProps(Ljava/io/Writer;Z)V

    return-void
.end method

.method private static writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v7, p0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-wide/from16 v5, p8

    .line 1534
    invoke-static/range {v0 .. v6}, Landroid/icu/util/VTimeZone;->beginZoneProps(Ljava/io/Writer;ZLjava/lang/String;IIJ)V

    move v0, p5

    .line 1536
    invoke-static {p0, p5}, Landroid/icu/util/VTimeZone;->beginRRULE(Ljava/io/Writer;I)V

    const-string v0, "BYDAY"

    .line 1537
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "="

    .line 1538
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1539
    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1540
    sget-object v0, Landroid/icu/util/VTimeZone;->ICAL_DOW_NAMES:[Ljava/lang/String;

    add-int/lit8 v1, p7, -0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p10, v0

    if-eqz v0, :cond_0

    move v0, p3

    int-to-long v0, v0

    add-long v0, p10, v0

    .line 1543
    invoke-static {v0, v1}, Landroid/icu/util/VTimeZone;->getDateTimeString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/icu/util/VTimeZone;->appendUNTIL(Ljava/io/Writer;Ljava/lang/String;)V

    :cond_0
    const-string v0, "\r\n"

    .line 1545
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1547
    invoke-static {p0, p1}, Landroid/icu/util/VTimeZone;->endZoneProps(Ljava/io/Writer;Z)V

    return-void
.end method

.method private static writeZonePropsByDOW_GEQ_DOM(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move/from16 v5, p5

    .line 1556
    rem-int/lit8 v0, p6, 0x7

    const/4 v1, 0x6

    const/4 v2, 0x7

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    add-int/lit8 v0, p6, 0x6

    .line 1558
    div-int/lit8 v6, v0, 0x7

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    invoke-static/range {v0 .. v11}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto/16 :goto_3

    :cond_0
    if-eq v5, v3, :cond_1

    .line 1560
    sget-object v0, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v4, v0, v5

    sub-int v4, v4, p6

    rem-int/2addr v4, v2

    if-ne v4, v1, :cond_1

    .line 1562
    aget v0, v0, v5

    sub-int v0, v0, p6

    add-int/2addr v0, v3

    div-int/2addr v0, v2

    mul-int/lit8 v6, v0, -0x1

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    invoke-static/range {v0 .. v11}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto/16 :goto_3

    :cond_1
    move-object v6, p0

    move v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move-wide/from16 v11, p8

    .line 1566
    invoke-static/range {v6 .. v12}, Landroid/icu/util/VTimeZone;->beginZoneProps(Ljava/io/Writer;ZLjava/lang/String;IIJ)V

    const/16 v0, 0xb

    if-gtz p6, :cond_3

    rsub-int/lit8 v10, p6, 0x1

    sub-int/2addr v2, v10

    add-int/lit8 v1, v5, -0x1

    if-gez v1, :cond_2

    move v7, v0

    goto :goto_0

    :cond_2
    move v7, v1

    :goto_0
    neg-int v8, v10

    const-wide v11, 0x7fffffffffffffffL

    move-object v6, p0

    move/from16 v9, p7

    move/from16 v13, p3

    .line 1582
    invoke-static/range {v6 .. v13}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW_GEQ_DOM_sub(Ljava/io/Writer;IIIIJI)V

    move v4, v2

    move v2, v3

    goto :goto_2

    :cond_3
    add-int/lit8 v1, p6, 0x6

    .line 1586
    sget-object v3, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v4, v3, v5

    if-le v1, v4, :cond_5

    .line 1589
    aget v3, v3, v5

    sub-int v10, v1, v3

    sub-int/2addr v2, v10

    add-int/lit8 v1, v5, 0x1

    if-le v1, v0, :cond_4

    const/4 v0, 0x0

    move v7, v0

    goto :goto_1

    :cond_4
    move v7, v1

    :goto_1
    const/4 v8, 0x1

    const-wide v11, 0x7fffffffffffffffL

    move-object v6, p0

    move/from16 v9, p7

    move/from16 v13, p3

    .line 1594
    invoke-static/range {v6 .. v13}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW_GEQ_DOM_sub(Ljava/io/Writer;IIIIJI)V

    :cond_5
    move v4, v2

    move/from16 v2, p6

    :goto_2
    move-object v0, p0

    move/from16 v1, p5

    move/from16 v3, p7

    move-wide/from16 v5, p10

    move/from16 v7, p3

    .line 1596
    invoke-static/range {v0 .. v7}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW_GEQ_DOM_sub(Ljava/io/Writer;IIIIJI)V

    .line 1597
    invoke-static {p0, p1}, Landroid/icu/util/VTimeZone;->endZoneProps(Ljava/io/Writer;Z)V

    :goto_3
    return-void
.end method

.method private static writeZonePropsByDOW_GEQ_DOM_sub(Ljava/io/Writer;IIIIJI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-gez p2, :cond_1

    if-nez v1, :cond_1

    .line 1611
    sget-object v1, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v1, v1, p1

    add-int/2addr v1, p2

    add-int/lit8 p2, v1, 0x1

    .line 1613
    :cond_1
    invoke-static {p0, p1}, Landroid/icu/util/VTimeZone;->beginRRULE(Ljava/io/Writer;I)V

    const-string p1, "BYDAY"

    .line 1614
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p1, "="

    .line 1615
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1616
    sget-object v1, Landroid/icu/util/VTimeZone;->ICAL_DOW_NAMES:[Ljava/lang/String;

    sub-int/2addr p3, v0

    aget-object p3, v1, p3

    invoke-virtual {p0, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p3, ";"

    .line 1617
    invoke-virtual {p0, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p3, "BYMONTHDAY"

    .line 1618
    invoke-virtual {p0, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1619
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1621
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_1
    if-ge v0, p4, :cond_2

    const-string p1, ","

    .line 1623
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int p1, p2, v0

    .line 1624
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-wide p1, 0x7fffffffffffffffL

    cmp-long p1, p5, p1

    if-eqz p1, :cond_3

    int-to-long p1, p7

    add-long/2addr p5, p1

    .line 1628
    invoke-static {p5, p6}, Landroid/icu/util/VTimeZone;->getDateTimeString(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/icu/util/VTimeZone;->appendUNTIL(Ljava/io/Writer;Ljava/lang/String;)V

    :cond_3
    const-string p1, "\r\n"

    .line 1630
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method private static writeZonePropsByDOW_LEQ_DOM(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move/from16 v5, p5

    move/from16 v0, p6

    .line 1639
    rem-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_0

    .line 1641
    div-int/lit8 v6, v0, 0x7

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    invoke-static/range {v0 .. v11}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x1

    if-eq v5, v1, :cond_1

    .line 1643
    sget-object v2, Landroid/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v3, v2, v5

    sub-int/2addr v3, v0

    rem-int/lit8 v3, v3, 0x7

    if-nez v3, :cond_1

    .line 1645
    aget v2, v2, v5

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x7

    add-int/2addr v2, v1

    mul-int/lit8 v6, v2, -0x1

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    invoke-static/range {v0 .. v11}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto :goto_0

    :cond_1
    if-ne v5, v1, :cond_2

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_2

    const/4 v7, 0x1

    const/4 v8, -0x1

    move-object v2, p0

    move v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    .line 1649
    invoke-static/range {v2 .. v13}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto :goto_0

    :cond_2
    add-int/lit8 v6, v0, -0x6

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    .line 1653
    invoke-static/range {v0 .. v11}, Landroid/icu/util/VTimeZone;->writeZonePropsByDOW_GEQ_DOM(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    :goto_0
    return-void
.end method

.method private static writeZonePropsByTime(Ljava/io/Writer;ZLjava/lang/String;IIJZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1499
    invoke-static/range {p0 .. p6}, Landroid/icu/util/VTimeZone;->beginZoneProps(Ljava/io/Writer;ZLjava/lang/String;IIJ)V

    if-eqz p7, :cond_0

    const-string p2, "RDATE"

    .line 1501
    invoke-virtual {p0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p2, ":"

    .line 1502
    invoke-virtual {p0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    int-to-long p2, p3

    add-long/2addr p5, p2

    .line 1503
    invoke-static {p5, p6}, Landroid/icu/util/VTimeZone;->getDateTimeString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p2, "\r\n"

    .line 1504
    invoke-virtual {p0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1506
    :cond_0
    invoke-static {p0, p1}, Landroid/icu/util/VTimeZone;->endZoneProps(Ljava/io/Writer;Z)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 358
    invoke-virtual {p0}, Landroid/icu/util/VTimeZone;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 361
    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/VTimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method public cloneAsThawed()Landroid/icu/util/TimeZone;
    .locals 1

    .line 2094
    invoke-super {p0}, Landroid/icu/util/BasicTimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object v0

    check-cast v0, Landroid/icu/util/VTimeZone;

    .line 2095
    iget-object p0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {p0}, Landroid/icu/util/BasicTimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object p0

    check-cast p0, Landroid/icu/util/BasicTimeZone;

    iput-object p0, v0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    const/4 p0, 0x0

    .line 2096
    iput-boolean p0, v0, Landroid/icu/util/VTimeZone;->isFrozen:Z

    return-object v0
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-virtual {p0}, Landroid/icu/util/VTimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method public freeze()Landroid/icu/util/TimeZone;
    .locals 1

    const/4 v0, 0x1

    .line 2086
    iput-boolean v0, p0, Landroid/icu/util/VTimeZone;->isFrozen:Z

    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-virtual {p0}, Landroid/icu/util/VTimeZone;->freeze()Landroid/icu/util/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method public getLastModified()Ljava/util/Date;
    .locals 0

    .line 194
    iget-object p0, p0, Landroid/icu/util/VTimeZone;->lastmod:Ljava/util/Date;

    return-object p0
.end method

.method public getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;
    .locals 0

    .line 315
    iget-object p0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/util/BasicTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object p0

    return-object p0
.end method

.method public getOffset(IIIIII)I
    .locals 7

    .line 83
    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/icu/util/BasicTimeZone;->getOffset(IIIIII)I

    move-result p0

    return p0
.end method

.method public getOffset(JZ[I)V
    .locals 0

    .line 91
    iget-object p0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/icu/util/BasicTimeZone;->getOffset(JZ[I)V

    return-void
.end method

.method public getOffsetFromLocal(JII[I)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 103
    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/icu/util/BasicTimeZone;->getOffsetFromLocal(JII[I)V

    return-void
.end method

.method public getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;
    .locals 0

    .line 323
    iget-object p0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/util/BasicTimeZone;->getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object p0

    return-object p0
.end method

.method public getRawOffset()I
    .locals 0

    .line 111
    iget-object p0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {p0}, Landroid/icu/util/BasicTimeZone;->getRawOffset()I

    move-result p0

    return p0
.end method

.method public getTZURL()Ljava/lang/String;
    .locals 0

    .line 171
    iget-object p0, p0, Landroid/icu/util/VTimeZone;->tzurl:Ljava/lang/String;

    return-object p0
.end method

.method public getTimeZoneRules()[Landroid/icu/util/TimeZoneRule;
    .locals 0

    .line 342
    iget-object p0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {p0}, Landroid/icu/util/BasicTimeZone;->getTimeZoneRules()[Landroid/icu/util/TimeZoneRule;

    move-result-object p0

    return-object p0
.end method

.method public getTimeZoneRules(J)[Landroid/icu/util/TimeZoneRule;
    .locals 0

    .line 350
    iget-object p0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {p0, p1, p2}, Landroid/icu/util/BasicTimeZone;->getTimeZoneRules(J)[Landroid/icu/util/TimeZoneRule;

    move-result-object p0

    return-object p0
.end method

.method public hasEquivalentTransitions(Landroid/icu/util/TimeZone;JJ)Z
    .locals 6

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 334
    :cond_0
    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/icu/util/BasicTimeZone;->hasEquivalentTransitions(Landroid/icu/util/TimeZone;JJ)Z

    move-result p0

    return p0
.end method

.method public hasSameRules(Landroid/icu/util/TimeZone;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 157
    :cond_0
    instance-of v0, p1, Landroid/icu/util/VTimeZone;

    if-eqz v0, :cond_1

    .line 158
    iget-object p0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    check-cast p1, Landroid/icu/util/VTimeZone;

    iget-object p1, p1, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {p0, p1}, Landroid/icu/util/BasicTimeZone;->hasSameRules(Landroid/icu/util/TimeZone;)Z

    move-result p0

    return p0

    .line 160
    :cond_1
    iget-object p0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {p0, p1}, Landroid/icu/util/BasicTimeZone;->hasSameRules(Landroid/icu/util/TimeZone;)Z

    move-result p0

    return p0
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .locals 0

    .line 119
    iget-object p0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {p0, p1}, Landroid/icu/util/BasicTimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result p0

    return p0
.end method

.method public isFrozen()Z
    .locals 0

    .line 2079
    iget-boolean p0, p0, Landroid/icu/util/VTimeZone;->isFrozen:Z

    return p0
.end method

.method public observesDaylightTime()Z
    .locals 0

    .line 146
    iget-object p0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {p0}, Landroid/icu/util/BasicTimeZone;->observesDaylightTime()Z

    move-result p0

    return p0
.end method

.method public setLastModified(Ljava/util/Date;)V
    .locals 1

    .line 203
    invoke-virtual {p0}, Landroid/icu/util/VTimeZone;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iput-object p1, p0, Landroid/icu/util/VTimeZone;->lastmod:Ljava/util/Date;

    return-void

    .line 204
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Attempt to modify a frozen VTimeZone instance."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setRawOffset(I)V
    .locals 1

    .line 127
    invoke-virtual {p0}, Landroid/icu/util/VTimeZone;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object p0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {p0, p1}, Landroid/icu/util/BasicTimeZone;->setRawOffset(I)V

    return-void

    .line 128
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Attempt to modify a frozen VTimeZone instance."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTZURL(Ljava/lang/String;)V
    .locals 1

    .line 180
    invoke-virtual {p0}, Landroid/icu/util/VTimeZone;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iput-object p1, p0, Landroid/icu/util/VTimeZone;->tzurl:Ljava/lang/String;

    return-void

    .line 181
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Attempt to modify a frozen VTimeZone instance."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public useDaylightTime()Z
    .locals 0

    .line 138
    iget-object p0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {p0}, Landroid/icu/util/BasicTimeZone;->useDaylightTime()Z

    move-result p0

    return p0
.end method

.method public write(Ljava/io/Writer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 217
    iget-object v1, p0, Landroid/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 218
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "TZURL:"

    .line 219
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, ":"

    const-string v4, "\r\n"

    if-eqz v2, :cond_1

    .line 220
    iget-object v1, p0, Landroid/icu/util/VTimeZone;->tzurl:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "TZURL"

    .line 221
    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Landroid/icu/util/VTimeZone;->tzurl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v0, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "LAST-MODIFIED:"

    .line 226
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 227
    iget-object v1, p0, Landroid/icu/util/VTimeZone;->lastmod:Ljava/util/Date;

    if-eqz v1, :cond_0

    const-string v1, "LAST-MODIFIED"

    .line 228
    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Landroid/icu/util/VTimeZone;->lastmod:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/icu/util/VTimeZone;->getUTCDateTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v0, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_2
    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v0, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :cond_3
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 241
    iget-object v1, p0, Landroid/icu/util/VTimeZone;->olsonzid:Ljava/lang/String;

    if-eqz v1, :cond_5

    sget-object v1, Landroid/icu/util/VTimeZone;->ICU_TZVERSION:Ljava/lang/String;

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "X-TZINFO:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/icu/util/VTimeZone;->olsonzid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/icu/util/VTimeZone;->ICU_TZVERSION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 245
    :cond_5
    iget-object v1, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-direct {p0, p1, v1, v0}, Landroid/icu/util/VTimeZone;->writeZone(Ljava/io/Writer;Landroid/icu/util/BasicTimeZone;[Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public write(Ljava/io/Writer;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {v0, p2, p3}, Landroid/icu/util/BasicTimeZone;->getTimeZoneRules(J)[Landroid/icu/util/TimeZoneRule;

    move-result-object v0

    .line 263
    new-instance v1, Landroid/icu/util/RuleBasedTimeZone;

    iget-object v2, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {v2}, Landroid/icu/util/BasicTimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, v0, v3

    check-cast v4, Landroid/icu/util/InitialTimeZoneRule;

    invoke-direct {v1, v2, v4}, Landroid/icu/util/RuleBasedTimeZone;-><init>(Ljava/lang/String;Landroid/icu/util/InitialTimeZoneRule;)V

    const/4 v2, 0x1

    move v4, v2

    .line 264
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_0

    .line 265
    aget-object v5, v0, v4

    invoke-virtual {v1, v5}, Landroid/icu/util/RuleBasedTimeZone;->addTransitionRule(Landroid/icu/util/TimeZoneRule;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 268
    iget-object v4, p0, Landroid/icu/util/VTimeZone;->olsonzid:Ljava/lang/String;

    if-eqz v4, :cond_1

    sget-object v4, Landroid/icu/util/VTimeZone;->ICU_TZVERSION:Ljava/lang/String;

    if-eqz v4, :cond_1

    new-array v0, v2, [Ljava/lang/String;

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "X-TZINFO:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/icu/util/VTimeZone;->olsonzid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/icu/util/VTimeZone;->ICU_TZVERSION:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/Partial@"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v3

    .line 273
    :cond_1
    invoke-direct {p0, p1, v1, v0}, Landroid/icu/util/VTimeZone;->writeZone(Ljava/io/Writer;Landroid/icu/util/BasicTimeZone;[Ljava/lang/String;)V

    return-void
.end method

.method public writeSimple(Ljava/io/Writer;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    iget-object v0, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {v0, p2, p3}, Landroid/icu/util/BasicTimeZone;->getSimpleTimeZoneRulesNear(J)[Landroid/icu/util/TimeZoneRule;

    move-result-object v0

    .line 295
    new-instance v1, Landroid/icu/util/RuleBasedTimeZone;

    iget-object v2, p0, Landroid/icu/util/VTimeZone;->tz:Landroid/icu/util/BasicTimeZone;

    invoke-virtual {v2}, Landroid/icu/util/BasicTimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, v0, v3

    check-cast v4, Landroid/icu/util/InitialTimeZoneRule;

    invoke-direct {v1, v2, v4}, Landroid/icu/util/RuleBasedTimeZone;-><init>(Ljava/lang/String;Landroid/icu/util/InitialTimeZoneRule;)V

    const/4 v2, 0x1

    move v4, v2

    .line 296
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_0

    .line 297
    aget-object v5, v0, v4

    invoke-virtual {v1, v5}, Landroid/icu/util/RuleBasedTimeZone;->addTransitionRule(Landroid/icu/util/TimeZoneRule;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 300
    iget-object v4, p0, Landroid/icu/util/VTimeZone;->olsonzid:Ljava/lang/String;

    if-eqz v4, :cond_1

    sget-object v4, Landroid/icu/util/VTimeZone;->ICU_TZVERSION:Ljava/lang/String;

    if-eqz v4, :cond_1

    new-array v0, v2, [Ljava/lang/String;

    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "X-TZINFO:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/icu/util/VTimeZone;->olsonzid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/icu/util/VTimeZone;->ICU_TZVERSION:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/Simple@"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v3

    .line 305
    :cond_1
    invoke-direct {p0, p1, v1, v0}, Landroid/icu/util/VTimeZone;->writeZone(Ljava/io/Writer;Landroid/icu/util/BasicTimeZone;[Ljava/lang/String;)V

    return-void
.end method
