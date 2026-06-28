.class public Landroid/icu/text/TimeZoneNames$MatchInfo;
.super Ljava/lang/Object;
.source "TimeZoneNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TimeZoneNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MatchInfo"
.end annotation


# instance fields
.field private _matchLength:I

.field private _mzID:Ljava/lang/String;

.field private _nameType:Landroid/icu/text/TimeZoneNames$NameType;

.field private _tzID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/icu/text/TimeZoneNames$NameType;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 349
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Either tzID or mzID must be available"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-lez p4, :cond_2

    .line 354
    iput-object p1, p0, Landroid/icu/text/TimeZoneNames$MatchInfo;->_nameType:Landroid/icu/text/TimeZoneNames$NameType;

    .line 355
    iput-object p2, p0, Landroid/icu/text/TimeZoneNames$MatchInfo;->_tzID:Ljava/lang/String;

    .line 356
    iput-object p3, p0, Landroid/icu/text/TimeZoneNames$MatchInfo;->_mzID:Ljava/lang/String;

    .line 357
    iput p4, p0, Landroid/icu/text/TimeZoneNames$MatchInfo;->_matchLength:I

    return-void

    .line 352
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "matchLength must be positive value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 346
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "nameType is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public matchLength()I
    .locals 0

    .line 404
    iget p0, p0, Landroid/icu/text/TimeZoneNames$MatchInfo;->_matchLength:I

    return p0
.end method

.method public mzID()Ljava/lang/String;
    .locals 0

    .line 385
    iget-object p0, p0, Landroid/icu/text/TimeZoneNames$MatchInfo;->_mzID:Ljava/lang/String;

    return-object p0
.end method

.method public nameType()Landroid/icu/text/TimeZoneNames$NameType;
    .locals 0

    .line 395
    iget-object p0, p0, Landroid/icu/text/TimeZoneNames$MatchInfo;->_nameType:Landroid/icu/text/TimeZoneNames$NameType;

    return-object p0
.end method

.method public tzID()Ljava/lang/String;
    .locals 0

    .line 371
    iget-object p0, p0, Landroid/icu/text/TimeZoneNames$MatchInfo;->_tzID:Ljava/lang/String;

    return-object p0
.end method
