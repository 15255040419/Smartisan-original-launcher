.class final Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;
.super Ljava/lang/Object;
.source "DateIntervalFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateIntervalFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SkeletonAndItsBestMatch"
.end annotation


# instance fields
.field final bestMatchSkeleton:Ljava/lang/String;

.field final skeleton:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    iput-object p1, p0, Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;->skeleton:Ljava/lang/String;

    .line 294
    iput-object p2, p0, Landroid/icu/text/DateIntervalFormat$SkeletonAndItsBestMatch;->bestMatchSkeleton:Ljava/lang/String;

    return-void
.end method
