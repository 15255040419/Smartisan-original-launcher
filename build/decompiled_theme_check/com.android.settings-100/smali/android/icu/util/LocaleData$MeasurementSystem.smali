.class public final Landroid/icu/util/LocaleData$MeasurementSystem;
.super Ljava/lang/Object;
.source "LocaleData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/LocaleData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MeasurementSystem"
.end annotation


# static fields
.field public static final SI:Landroid/icu/util/LocaleData$MeasurementSystem;

.field public static final UK:Landroid/icu/util/LocaleData$MeasurementSystem;

.field public static final US:Landroid/icu/util/LocaleData$MeasurementSystem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 328
    new-instance v0, Landroid/icu/util/LocaleData$MeasurementSystem;

    invoke-direct {v0}, Landroid/icu/util/LocaleData$MeasurementSystem;-><init>()V

    sput-object v0, Landroid/icu/util/LocaleData$MeasurementSystem;->SI:Landroid/icu/util/LocaleData$MeasurementSystem;

    .line 333
    new-instance v0, Landroid/icu/util/LocaleData$MeasurementSystem;

    invoke-direct {v0}, Landroid/icu/util/LocaleData$MeasurementSystem;-><init>()V

    sput-object v0, Landroid/icu/util/LocaleData$MeasurementSystem;->US:Landroid/icu/util/LocaleData$MeasurementSystem;

    .line 338
    new-instance v0, Landroid/icu/util/LocaleData$MeasurementSystem;

    invoke-direct {v0}, Landroid/icu/util/LocaleData$MeasurementSystem;-><init>()V

    sput-object v0, Landroid/icu/util/LocaleData$MeasurementSystem;->UK:Landroid/icu/util/LocaleData$MeasurementSystem;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
