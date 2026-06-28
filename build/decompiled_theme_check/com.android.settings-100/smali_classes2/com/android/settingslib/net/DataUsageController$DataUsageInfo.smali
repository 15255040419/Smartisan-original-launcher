.class public Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
.super Ljava/lang/Object;
.source "DataUsageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/net/DataUsageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataUsageInfo"
.end annotation


# instance fields
.field public carrier:Ljava/lang/String;

.field public cycleEnd:J

.field public cycleStart:J

.field public limitLevel:J

.field public period:Ljava/lang/String;

.field public startDate:J

.field public usageLevel:J

.field public warningLevel:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
