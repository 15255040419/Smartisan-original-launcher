.class Landroid/icu/text/DateTimePatternGenerator$DayPeriodAllowedHoursSink;
.super Landroid/icu/impl/UResource$Sink;
.source "DateTimePatternGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateTimePatternGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DayPeriodAllowedHoursSink"
.end annotation


# instance fields
.field tempMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 353
    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    .line 354
    iput-object p1, p0, Landroid/icu/text/DateTimePatternGenerator$DayPeriodAllowedHoursSink;->tempMap:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/HashMap;Landroid/icu/text/DateTimePatternGenerator$1;)V
    .locals 0

    .line 350
    invoke-direct {p0, p1}, Landroid/icu/text/DateTimePatternGenerator$DayPeriodAllowedHoursSink;-><init>(Ljava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .locals 7

    .line 359
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object p3

    const/4 v0, 0x0

    move v1, v0

    .line 360
    :goto_0
    invoke-interface {p3, v1, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 361
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v2

    .line 362
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v3

    move v4, v0

    .line 363
    :goto_1
    invoke-interface {v3, v4, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "allowed"

    .line 364
    invoke-virtual {p1, v5}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 365
    iget-object v5, p0, Landroid/icu/text/DateTimePatternGenerator$DayPeriodAllowedHoursSink;->tempMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getStringArrayOrStringAsArray()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
