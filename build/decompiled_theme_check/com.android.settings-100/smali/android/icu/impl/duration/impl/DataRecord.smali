.class public Landroid/icu/impl/duration/impl/DataRecord;
.super Ljava/lang/Object;
.source "DataRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/duration/impl/DataRecord$EGender;,
        Landroid/icu/impl/duration/impl/DataRecord$ESeparatorVariant;,
        Landroid/icu/impl/duration/impl/DataRecord$EMilliSupport;,
        Landroid/icu/impl/duration/impl/DataRecord$EHalfSupport;,
        Landroid/icu/impl/duration/impl/DataRecord$EFractionHandling;,
        Landroid/icu/impl/duration/impl/DataRecord$EDecimalHandling;,
        Landroid/icu/impl/duration/impl/DataRecord$EZeroHandling;,
        Landroid/icu/impl/duration/impl/DataRecord$ENumberSystem;,
        Landroid/icu/impl/duration/impl/DataRecord$EHalfPlacement;,
        Landroid/icu/impl/duration/impl/DataRecord$EPluralization;,
        Landroid/icu/impl/duration/impl/DataRecord$ECountVariant;,
        Landroid/icu/impl/duration/impl/DataRecord$EUnitVariant;,
        Landroid/icu/impl/duration/impl/DataRecord$ETimeDirection;,
        Landroid/icu/impl/duration/impl/DataRecord$ETimeLimit;,
        Landroid/icu/impl/duration/impl/DataRecord$ScopeData;
    }
.end annotation


# instance fields
.field allowZero:Z

.field countSep:Ljava/lang/String;

.field decimalHandling:B

.field decimalSep:C

.field digitPrefix:Ljava/lang/String;

.field fifteenMinutes:Ljava/lang/String;

.field fiveMinutes:Ljava/lang/String;

.field fractionHandling:B

.field genders:[B

.field halfNames:[Ljava/lang/String;

.field halfPlacements:[B

.field halfSupport:[B

.field halves:[Ljava/lang/String;

.field measures:[Ljava/lang/String;

.field mediumNames:[Ljava/lang/String;

.field numberNames:[Ljava/lang/String;

.field numberSystem:B

.field omitDualCount:Z

.field omitSingularCount:Z

.field optSuffixes:[Ljava/lang/String;

.field pl:B

.field pluralNames:[[Ljava/lang/String;

.field requiresDigitSeparator:Z

.field requiresSkipMarker:[Z

.field rqdSuffixes:[Ljava/lang/String;

.field scopeData:[Landroid/icu/impl/duration/impl/DataRecord$ScopeData;

.field shortNames:[Ljava/lang/String;

.field shortUnitSep:Ljava/lang/String;

.field singularNames:[Ljava/lang/String;

.field skippedUnitMarker:Ljava/lang/String;

.field unitSep:[Ljava/lang/String;

.field unitSepRequiresDP:[Z

.field useMilliseconds:B

.field weeksAloneOnly:Z

.field zero:C

.field zeroHandling:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ljava/lang/String;Landroid/icu/impl/duration/impl/RecordReader;)Landroid/icu/impl/duration/impl/DataRecord;
    .locals 3

    const-string v0, "DataRecord"

    .line 61
    invoke-interface {p1, v0}, Landroid/icu/impl/duration/impl/RecordReader;->open(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 62
    new-instance v0, Landroid/icu/impl/duration/impl/DataRecord;

    invoke-direct {v0}, Landroid/icu/impl/duration/impl/DataRecord;-><init>()V

    .line 63
    sget-object v1, Landroid/icu/impl/duration/impl/DataRecord$EPluralization;->names:[Ljava/lang/String;

    const-string/jumbo v2, "pl"

    invoke-interface {p1, v2, v1}, Landroid/icu/impl/duration/impl/RecordReader;->namedIndex(Ljava/lang/String;[Ljava/lang/String;)B

    move-result v1

    iput-byte v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->pl:B

    const-string/jumbo v1, "pluralName"

    .line 64
    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->stringTable(Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->pluralNames:[[Ljava/lang/String;

    .line 65
    sget-object v1, Landroid/icu/impl/duration/impl/DataRecord$EGender;->names:[Ljava/lang/String;

    const-string v2, "gender"

    invoke-interface {p1, v2, v1}, Landroid/icu/impl/duration/impl/RecordReader;->namedIndexArray(Ljava/lang/String;[Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->genders:[B

    const-string/jumbo v1, "singularName"

    .line 66
    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->singularNames:[Ljava/lang/String;

    const-string v1, "halfName"

    .line 67
    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->halfNames:[Ljava/lang/String;

    const-string v1, "numberName"

    .line 68
    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->numberNames:[Ljava/lang/String;

    const-string v1, "mediumName"

    .line 69
    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->mediumNames:[Ljava/lang/String;

    const-string/jumbo v1, "shortName"

    .line 70
    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->shortNames:[Ljava/lang/String;

    const-string v1, "measure"

    .line 71
    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->measures:[Ljava/lang/String;

    const-string/jumbo v1, "rqdSuffix"

    .line 72
    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->rqdSuffixes:[Ljava/lang/String;

    const-string/jumbo v1, "optSuffix"

    .line 73
    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->optSuffixes:[Ljava/lang/String;

    const-string v1, "halves"

    .line 74
    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->halves:[Ljava/lang/String;

    .line 75
    sget-object v1, Landroid/icu/impl/duration/impl/DataRecord$EHalfPlacement;->names:[Ljava/lang/String;

    const-string v2, "halfPlacement"

    invoke-interface {p1, v2, v1}, Landroid/icu/impl/duration/impl/RecordReader;->namedIndexArray(Ljava/lang/String;[Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->halfPlacements:[B

    .line 77
    sget-object v1, Landroid/icu/impl/duration/impl/DataRecord$EHalfSupport;->names:[Ljava/lang/String;

    const-string v2, "halfSupport"

    invoke-interface {p1, v2, v1}, Landroid/icu/impl/duration/impl/RecordReader;->namedIndexArray(Ljava/lang/String;[Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->halfSupport:[B

    const-string v1, "fifteenMinutes"

    .line 79
    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->fifteenMinutes:Ljava/lang/String;

    const-string v1, "fiveMinutes"

    .line 80
    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->fiveMinutes:Ljava/lang/String;

    const-string/jumbo v1, "requiresDigitSeparator"

    .line 81
    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->bool(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->requiresDigitSeparator:Z

    const-string v1, "digitPrefix"

    .line 82
    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->digitPrefix:Ljava/lang/String;

    const-string v1, "countSep"

    .line 83
    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->countSep:Ljava/lang/String;

    const-string/jumbo v1, "shortUnitSep"

    .line 84
    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->shortUnitSep:Ljava/lang/String;

    const-string/jumbo v1, "unitSep"

    .line 85
    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->unitSep:[Ljava/lang/String;

    const-string/jumbo v1, "unitSepRequiresDP"

    .line 86
    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->boolArray(Ljava/lang/String;)[Z

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->unitSepRequiresDP:[Z

    const-string/jumbo v1, "requiresSkipMarker"

    .line 87
    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->boolArray(Ljava/lang/String;)[Z

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->requiresSkipMarker:[Z

    .line 88
    sget-object v1, Landroid/icu/impl/duration/impl/DataRecord$ENumberSystem;->names:[Ljava/lang/String;

    const-string v2, "numberSystem"

    invoke-interface {p1, v2, v1}, Landroid/icu/impl/duration/impl/RecordReader;->namedIndex(Ljava/lang/String;[Ljava/lang/String;)B

    move-result v1

    iput-byte v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->numberSystem:B

    const-string/jumbo v1, "zero"

    .line 90
    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->character(Ljava/lang/String;)C

    move-result v1

    iput-char v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->zero:C

    const-string v1, "decimalSep"

    .line 91
    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->character(Ljava/lang/String;)C

    move-result v1

    iput-char v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->decimalSep:C

    const-string v1, "omitSingularCount"

    .line 92
    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->bool(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->omitSingularCount:Z

    const-string v1, "omitDualCount"

    .line 93
    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->bool(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->omitDualCount:Z

    .line 94
    sget-object v1, Landroid/icu/impl/duration/impl/DataRecord$EZeroHandling;->names:[Ljava/lang/String;

    const-string/jumbo v2, "zeroHandling"

    invoke-interface {p1, v2, v1}, Landroid/icu/impl/duration/impl/RecordReader;->namedIndex(Ljava/lang/String;[Ljava/lang/String;)B

    move-result v1

    iput-byte v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->zeroHandling:B

    .line 96
    sget-object v1, Landroid/icu/impl/duration/impl/DataRecord$EDecimalHandling;->names:[Ljava/lang/String;

    const-string v2, "decimalHandling"

    invoke-interface {p1, v2, v1}, Landroid/icu/impl/duration/impl/RecordReader;->namedIndex(Ljava/lang/String;[Ljava/lang/String;)B

    move-result v1

    iput-byte v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->decimalHandling:B

    .line 98
    sget-object v1, Landroid/icu/impl/duration/impl/DataRecord$EFractionHandling;->names:[Ljava/lang/String;

    const-string v2, "fractionHandling"

    invoke-interface {p1, v2, v1}, Landroid/icu/impl/duration/impl/RecordReader;->namedIndex(Ljava/lang/String;[Ljava/lang/String;)B

    move-result v1

    iput-byte v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->fractionHandling:B

    const-string/jumbo v1, "skippedUnitMarker"

    .line 100
    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->skippedUnitMarker:Ljava/lang/String;

    const-string v1, "allowZero"

    .line 101
    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->bool(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->allowZero:Z

    const-string/jumbo v1, "weeksAloneOnly"

    .line 102
    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->bool(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->weeksAloneOnly:Z

    .line 103
    sget-object v1, Landroid/icu/impl/duration/impl/DataRecord$EMilliSupport;->names:[Ljava/lang/String;

    const-string/jumbo v2, "useMilliseconds"

    invoke-interface {p1, v2, v1}, Landroid/icu/impl/duration/impl/RecordReader;->namedIndex(Ljava/lang/String;[Ljava/lang/String;)B

    move-result v1

    iput-byte v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->useMilliseconds:B

    const-string v1, "ScopeDataList"

    .line 105
    invoke-interface {p1, v1}, Landroid/icu/impl/duration/impl/RecordReader;->open(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 108
    :goto_0
    invoke-static {p1}, Landroid/icu/impl/duration/impl/DataRecord$ScopeData;->read(Landroid/icu/impl/duration/impl/RecordReader;)Landroid/icu/impl/duration/impl/DataRecord$ScopeData;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 109
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    :cond_0
    invoke-interface {p1}, Landroid/icu/impl/duration/impl/RecordReader;->close()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 112
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/icu/impl/duration/impl/DataRecord$ScopeData;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/icu/impl/duration/impl/DataRecord$ScopeData;

    iput-object v1, v0, Landroid/icu/impl/duration/impl/DataRecord;->scopeData:[Landroid/icu/impl/duration/impl/DataRecord$ScopeData;

    .line 116
    :cond_1
    invoke-interface {p1}, Landroid/icu/impl/duration/impl/RecordReader;->close()Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v0

    .line 123
    :cond_2
    new-instance p1, Ljava/lang/InternalError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "null data read while reading "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 120
    :cond_3
    new-instance p1, Ljava/lang/InternalError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "did not find DataRecord while reading "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public write(Landroid/icu/impl/duration/impl/RecordWriter;)V
    .locals 3

    const-string v0, "DataRecord"

    .line 129
    invoke-interface {p1, v0}, Landroid/icu/impl/duration/impl/RecordWriter;->open(Ljava/lang/String;)Z

    .line 130
    sget-object v0, Landroid/icu/impl/duration/impl/DataRecord$EPluralization;->names:[Ljava/lang/String;

    iget-byte v1, p0, Landroid/icu/impl/duration/impl/DataRecord;->pl:B

    const-string/jumbo v2, "pl"

    invoke-interface {p1, v2, v0, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->namedIndex(Ljava/lang/String;[Ljava/lang/String;I)V

    .line 131
    iget-object v0, p0, Landroid/icu/impl/duration/impl/DataRecord;->pluralNames:[[Ljava/lang/String;

    const-string/jumbo v1, "pluralName"

    invoke-interface {p1, v1, v0}, Landroid/icu/impl/duration/impl/RecordWriter;->stringTable(Ljava/lang/String;[[Ljava/lang/String;)V

    .line 132
    sget-object v0, Landroid/icu/impl/duration/impl/DataRecord$EGender;->names:[Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/impl/duration/impl/DataRecord;->genders:[B

    const-string v2, "gender"

    invoke-interface {p1, v2, v0, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->namedIndexArray(Ljava/lang/String;[Ljava/lang/String;[B)V

    .line 133
    iget-object v0, p0, Landroid/icu/impl/duration/impl/DataRecord;->singularNames:[Ljava/lang/String;

    const-string/jumbo v1, "singularName"

    invoke-interface {p1, v1, v0}, Landroid/icu/impl/duration/impl/RecordWriter;->stringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Landroid/icu/impl/duration/impl/DataRecord;->halfNames:[Ljava/lang/String;

    const-string v1, "halfName"

    invoke-interface {p1, v1, v0}, Landroid/icu/impl/duration/impl/RecordWriter;->stringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Landroid/icu/impl/duration/impl/DataRecord;->numberNames:[Ljava/lang/String;

    const-string v1, "numberName"

    invoke-interface {p1, v1, v0}, Landroid/icu/impl/duration/impl/RecordWriter;->stringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Landroid/icu/impl/duration/impl/DataRecord;->mediumNames:[Ljava/lang/String;

    const-string v1, "mediumName"

    invoke-interface {p1, v1, v0}, Landroid/icu/impl/duration/impl/RecordWriter;->stringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Landroid/icu/impl/duration/impl/DataRecord;->shortNames:[Ljava/lang/String;

    const-string/jumbo v1, "shortName"

    invoke-interface {p1, v1, v0}, Landroid/icu/impl/duration/impl/RecordWriter;->stringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Landroid/icu/impl/duration/impl/DataRecord;->measures:[Ljava/lang/String;

    const-string v1, "measure"

    invoke-interface {p1, v1, v0}, Landroid/icu/impl/duration/impl/RecordWriter;->stringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Landroid/icu/impl/duration/impl/DataRecord;->rqdSuffixes:[Ljava/lang/String;

    const-string/jumbo v1, "rqdSuffix"

    invoke-interface {p1, v1, v0}, Landroid/icu/impl/duration/impl/RecordWriter;->stringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Landroid/icu/impl/duration/impl/DataRecord;->optSuffixes:[Ljava/lang/String;

    const-string/jumbo v1, "optSuffix"

    invoke-interface {p1, v1, v0}, Landroid/icu/impl/duration/impl/RecordWriter;->stringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Landroid/icu/impl/duration/impl/DataRecord;->halves:[Ljava/lang/String;

    const-string v1, "halves"

    invoke-interface {p1, v1, v0}, Landroid/icu/impl/duration/impl/RecordWriter;->stringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 142
    sget-object v0, Landroid/icu/impl/duration/impl/DataRecord$EHalfPlacement;->names:[Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/impl/duration/impl/DataRecord;->halfPlacements:[B

    const-string v2, "halfPlacement"

    invoke-interface {p1, v2, v0, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->namedIndexArray(Ljava/lang/String;[Ljava/lang/String;[B)V

    .line 144
    sget-object v0, Landroid/icu/impl/duration/impl/DataRecord$EHalfSupport;->names:[Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/impl/duration/impl/DataRecord;->halfSupport:[B

    const-string v2, "halfSupport"

    invoke-interface {p1, v2, v0, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->namedIndexArray(Ljava/lang/String;[Ljava/lang/String;[B)V

    .line 145
    iget-object v0, p0, Landroid/icu/impl/duration/impl/DataRecord;->fifteenMinutes:Ljava/lang/String;

    const-string v1, "fifteenMinutes"

    invoke-interface {p1, v1, v0}, Landroid/icu/impl/duration/impl/RecordWriter;->string(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Landroid/icu/impl/duration/impl/DataRecord;->fiveMinutes:Ljava/lang/String;

    const-string v1, "fiveMinutes"

    invoke-interface {p1, v1, v0}, Landroid/icu/impl/duration/impl/RecordWriter;->string(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-boolean v0, p0, Landroid/icu/impl/duration/impl/DataRecord;->requiresDigitSeparator:Z

    const-string/jumbo v1, "requiresDigitSeparator"

    invoke-interface {p1, v1, v0}, Landroid/icu/impl/duration/impl/RecordWriter;->bool(Ljava/lang/String;Z)V

    .line 148
    iget-object v0, p0, Landroid/icu/impl/duration/impl/DataRecord;->digitPrefix:Ljava/lang/String;

    const-string v1, "digitPrefix"

    invoke-interface {p1, v1, v0}, Landroid/icu/impl/duration/impl/RecordWriter;->string(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Landroid/icu/impl/duration/impl/DataRecord;->countSep:Ljava/lang/String;

    const-string v1, "countSep"

    invoke-interface {p1, v1, v0}, Landroid/icu/impl/duration/impl/RecordWriter;->string(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Landroid/icu/impl/duration/impl/DataRecord;->shortUnitSep:Ljava/lang/String;

    const-string/jumbo v1, "shortUnitSep"

    invoke-interface {p1, v1, v0}, Landroid/icu/impl/duration/impl/RecordWriter;->string(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Landroid/icu/impl/duration/impl/DataRecord;->unitSep:[Ljava/lang/String;

    const-string/jumbo v1, "unitSep"

    invoke-interface {p1, v1, v0}, Landroid/icu/impl/duration/impl/RecordWriter;->stringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Landroid/icu/impl/duration/impl/DataRecord;->unitSepRequiresDP:[Z

    const-string/jumbo v1, "unitSepRequiresDP"

    invoke-interface {p1, v1, v0}, Landroid/icu/impl/duration/impl/RecordWriter;->boolArray(Ljava/lang/String;[Z)V

    .line 153
    iget-object v0, p0, Landroid/icu/impl/duration/impl/DataRecord;->requiresSkipMarker:[Z

    const-string/jumbo v1, "requiresSkipMarker"

    invoke-interface {p1, v1, v0}, Landroid/icu/impl/duration/impl/RecordWriter;->boolArray(Ljava/lang/String;[Z)V

    .line 154
    sget-object v0, Landroid/icu/impl/duration/impl/DataRecord$ENumberSystem;->names:[Ljava/lang/String;

    iget-byte v1, p0, Landroid/icu/impl/duration/impl/DataRecord;->numberSystem:B

    const-string v2, "numberSystem"

    invoke-interface {p1, v2, v0, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->namedIndex(Ljava/lang/String;[Ljava/lang/String;I)V

    .line 155
    iget-char v0, p0, Landroid/icu/impl/duration/impl/DataRecord;->zero:C

    const-string/jumbo v1, "zero"

    invoke-interface {p1, v1, v0}, Landroid/icu/impl/duration/impl/RecordWriter;->character(Ljava/lang/String;C)V

    .line 156
    iget-char v0, p0, Landroid/icu/impl/duration/impl/DataRecord;->decimalSep:C

    const-string v1, "decimalSep"

    invoke-interface {p1, v1, v0}, Landroid/icu/impl/duration/impl/RecordWriter;->character(Ljava/lang/String;C)V

    .line 157
    iget-boolean v0, p0, Landroid/icu/impl/duration/impl/DataRecord;->omitSingularCount:Z

    const-string v1, "omitSingularCount"

    invoke-interface {p1, v1, v0}, Landroid/icu/impl/duration/impl/RecordWriter;->bool(Ljava/lang/String;Z)V

    .line 158
    iget-boolean v0, p0, Landroid/icu/impl/duration/impl/DataRecord;->omitDualCount:Z

    const-string v1, "omitDualCount"

    invoke-interface {p1, v1, v0}, Landroid/icu/impl/duration/impl/RecordWriter;->bool(Ljava/lang/String;Z)V

    .line 159
    sget-object v0, Landroid/icu/impl/duration/impl/DataRecord$EZeroHandling;->names:[Ljava/lang/String;

    iget-byte v1, p0, Landroid/icu/impl/duration/impl/DataRecord;->zeroHandling:B

    const-string/jumbo v2, "zeroHandling"

    invoke-interface {p1, v2, v0, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->namedIndex(Ljava/lang/String;[Ljava/lang/String;I)V

    .line 160
    sget-object v0, Landroid/icu/impl/duration/impl/DataRecord$EDecimalHandling;->names:[Ljava/lang/String;

    iget-byte v1, p0, Landroid/icu/impl/duration/impl/DataRecord;->decimalHandling:B

    const-string v2, "decimalHandling"

    invoke-interface {p1, v2, v0, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->namedIndex(Ljava/lang/String;[Ljava/lang/String;I)V

    .line 162
    sget-object v0, Landroid/icu/impl/duration/impl/DataRecord$EFractionHandling;->names:[Ljava/lang/String;

    iget-byte v1, p0, Landroid/icu/impl/duration/impl/DataRecord;->fractionHandling:B

    const-string v2, "fractionHandling"

    invoke-interface {p1, v2, v0, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->namedIndex(Ljava/lang/String;[Ljava/lang/String;I)V

    .line 164
    iget-object v0, p0, Landroid/icu/impl/duration/impl/DataRecord;->skippedUnitMarker:Ljava/lang/String;

    const-string/jumbo v1, "skippedUnitMarker"

    invoke-interface {p1, v1, v0}, Landroid/icu/impl/duration/impl/RecordWriter;->string(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-boolean v0, p0, Landroid/icu/impl/duration/impl/DataRecord;->allowZero:Z

    const-string v1, "allowZero"

    invoke-interface {p1, v1, v0}, Landroid/icu/impl/duration/impl/RecordWriter;->bool(Ljava/lang/String;Z)V

    .line 166
    iget-boolean v0, p0, Landroid/icu/impl/duration/impl/DataRecord;->weeksAloneOnly:Z

    const-string/jumbo v1, "weeksAloneOnly"

    invoke-interface {p1, v1, v0}, Landroid/icu/impl/duration/impl/RecordWriter;->bool(Ljava/lang/String;Z)V

    .line 167
    sget-object v0, Landroid/icu/impl/duration/impl/DataRecord$EMilliSupport;->names:[Ljava/lang/String;

    iget-byte v1, p0, Landroid/icu/impl/duration/impl/DataRecord;->useMilliseconds:B

    const-string/jumbo v2, "useMilliseconds"

    invoke-interface {p1, v2, v0, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->namedIndex(Ljava/lang/String;[Ljava/lang/String;I)V

    .line 168
    iget-object v0, p0, Landroid/icu/impl/duration/impl/DataRecord;->scopeData:[Landroid/icu/impl/duration/impl/DataRecord$ScopeData;

    if-eqz v0, :cond_1

    const-string v0, "ScopeDataList"

    .line 169
    invoke-interface {p1, v0}, Landroid/icu/impl/duration/impl/RecordWriter;->open(Ljava/lang/String;)Z

    const/4 v0, 0x0

    .line 170
    :goto_0
    iget-object v1, p0, Landroid/icu/impl/duration/impl/DataRecord;->scopeData:[Landroid/icu/impl/duration/impl/DataRecord$ScopeData;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 171
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/icu/impl/duration/impl/DataRecord$ScopeData;->write(Landroid/icu/impl/duration/impl/RecordWriter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_0
    invoke-interface {p1}, Landroid/icu/impl/duration/impl/RecordWriter;->close()Z

    .line 175
    :cond_1
    invoke-interface {p1}, Landroid/icu/impl/duration/impl/RecordWriter;->close()Z

    return-void
.end method
