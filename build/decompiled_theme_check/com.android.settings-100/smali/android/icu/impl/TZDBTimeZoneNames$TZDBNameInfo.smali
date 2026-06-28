.class Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;
.super Ljava/lang/Object;
.source "TZDBTimeZoneNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TZDBTimeZoneNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TZDBNameInfo"
.end annotation


# instance fields
.field final ambiguousType:Z

.field final mzID:Ljava/lang/String;

.field final parseRegions:[Ljava/lang/String;

.field final type:Landroid/icu/text/TimeZoneNames$NameType;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;Z[Ljava/lang/String;)V
    .locals 0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-object p1, p0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;->mzID:Ljava/lang/String;

    .line 230
    iput-object p2, p0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;->type:Landroid/icu/text/TimeZoneNames$NameType;

    .line 231
    iput-boolean p3, p0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;->ambiguousType:Z

    .line 232
    iput-object p4, p0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;->parseRegions:[Ljava/lang/String;

    return-void
.end method
