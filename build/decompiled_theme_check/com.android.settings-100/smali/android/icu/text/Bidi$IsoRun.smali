.class Landroid/icu/text/Bidi$IsoRun;
.super Ljava/lang/Object;
.source "Bidi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/Bidi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IsoRun"
.end annotation


# instance fields
.field contextDir:B

.field contextPos:I

.field lastBase:B

.field lastStrong:B

.field level:B

.field limit:S

.field start:S


# direct methods
.method constructor <init>()V
    .locals 0

    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
