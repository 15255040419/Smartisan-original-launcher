.class Landroid/icu/impl/TimeZoneGenericNames$NameInfo;
.super Ljava/lang/Object;
.source "TimeZoneGenericNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TimeZoneGenericNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameInfo"
.end annotation


# instance fields
.field final type:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

.field final tzID:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;)V
    .locals 0

    .line 592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 593
    iput-object p1, p0, Landroid/icu/impl/TimeZoneGenericNames$NameInfo;->tzID:Ljava/lang/String;

    .line 594
    iput-object p2, p0, Landroid/icu/impl/TimeZoneGenericNames$NameInfo;->type:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    return-void
.end method
