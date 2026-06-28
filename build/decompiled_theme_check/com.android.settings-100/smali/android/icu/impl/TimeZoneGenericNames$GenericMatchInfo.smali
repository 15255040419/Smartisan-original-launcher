.class public Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;
.super Ljava/lang/Object;
.source "TimeZoneGenericNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TimeZoneGenericNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GenericMatchInfo"
.end annotation


# instance fields
.field final matchLength:I

.field final nameType:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

.field final timeType:Landroid/icu/text/TimeZoneFormat$TimeType;

.field final tzID:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;Ljava/lang/String;I)V
    .locals 1

    .line 609
    sget-object v0, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;-><init>(Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;Ljava/lang/String;ILandroid/icu/text/TimeZoneFormat$TimeType;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;Ljava/lang/String;ILandroid/icu/impl/TimeZoneGenericNames$1;)V
    .locals 0

    .line 602
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;-><init>(Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;Ljava/lang/String;ILandroid/icu/text/TimeZoneFormat$TimeType;)V
    .locals 0

    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 613
    iput-object p1, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->nameType:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    .line 614
    iput-object p2, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->tzID:Ljava/lang/String;

    .line 615
    iput p3, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength:I

    .line 616
    iput-object p4, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->timeType:Landroid/icu/text/TimeZoneFormat$TimeType;

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;Ljava/lang/String;ILandroid/icu/text/TimeZoneFormat$TimeType;Landroid/icu/impl/TimeZoneGenericNames$1;)V
    .locals 0

    .line 602
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;-><init>(Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;Ljava/lang/String;ILandroid/icu/text/TimeZoneFormat$TimeType;)V

    return-void
.end method


# virtual methods
.method public matchLength()I
    .locals 0

    .line 632
    iget p0, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength:I

    return p0
.end method

.method public nameType()Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;
    .locals 0

    .line 620
    iget-object p0, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->nameType:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    return-object p0
.end method

.method public timeType()Landroid/icu/text/TimeZoneFormat$TimeType;
    .locals 0

    .line 628
    iget-object p0, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->timeType:Landroid/icu/text/TimeZoneFormat$TimeType;

    return-object p0
.end method

.method public tzID()Ljava/lang/String;
    .locals 0

    .line 624
    iget-object p0, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->tzID:Ljava/lang/String;

    return-object p0
.end method
