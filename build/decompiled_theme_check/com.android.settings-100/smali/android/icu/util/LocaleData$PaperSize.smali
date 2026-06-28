.class public final Landroid/icu/util/LocaleData$PaperSize;
.super Ljava/lang/Object;
.source "LocaleData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/LocaleData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PaperSize"
.end annotation


# instance fields
.field private height:I

.field private width:I


# direct methods
.method private constructor <init>(II)V
    .locals 0

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    iput p1, p0, Landroid/icu/util/LocaleData$PaperSize;->height:I

    .line 373
    iput p2, p0, Landroid/icu/util/LocaleData$PaperSize;->width:I

    return-void
.end method

.method synthetic constructor <init>(IILandroid/icu/util/LocaleData$1;)V
    .locals 0

    .line 367
    invoke-direct {p0, p1, p2}, Landroid/icu/util/LocaleData$PaperSize;-><init>(II)V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 0

    .line 380
    iget p0, p0, Landroid/icu/util/LocaleData$PaperSize;->height:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    .line 387
    iget p0, p0, Landroid/icu/util/LocaleData$PaperSize;->width:I

    return p0
.end method
