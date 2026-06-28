.class Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;
.super Ljava/lang/Object;
.source "TimeZoneNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TimeZoneNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameInfo"
.end annotation


# instance fields
.field mzID:Ljava/lang/String;

.field type:Landroid/icu/text/TimeZoneNames$NameType;

.field tzID:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/TimeZoneNamesImpl$1;)V
    .locals 0

    .line 512
    invoke-direct {p0}, Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;-><init>()V

    return-void
.end method
