.class Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;
.super Ljava/lang/Object;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RelativeDateTimeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RelativeDateTimeFormatterData"
.end annotation


# instance fields
.field public final dateTimePattern:Ljava/lang/String;

.field public final qualitativeUnitMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Style;",
            "Ljava/util/EnumMap<",
            "Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;",
            "Ljava/util/EnumMap<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Direction;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field relUnitPatternMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Style;",
            "Ljava/util/EnumMap<",
            "Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;",
            "[[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/EnumMap;Ljava/util/EnumMap;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Style;",
            "Ljava/util/EnumMap<",
            "Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;",
            "Ljava/util/EnumMap<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Direction;",
            "Ljava/lang/String;",
            ">;>;>;",
            "Ljava/util/EnumMap<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Style;",
            "Ljava/util/EnumMap<",
            "Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;",
            "[[",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 781
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 782
    iput-object p1, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;->qualitativeUnitMap:Ljava/util/EnumMap;

    .line 783
    iput-object p2, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;->relUnitPatternMap:Ljava/util/EnumMap;

    .line 785
    iput-object p3, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;->dateTimePattern:Ljava/lang/String;

    return-void
.end method
