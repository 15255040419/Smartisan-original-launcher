.class final Landroid/icu/text/MessageFormat$PluralSelectorContext;
.super Ljava/lang/Object;
.source "MessageFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MessageFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PluralSelectorContext"
.end annotation


# instance fields
.field argName:Ljava/lang/String;

.field forReplaceNumber:Z

.field formatter:Ljava/text/Format;

.field number:Ljava/lang/Number;

.field numberArgIndex:I

.field numberString:Ljava/lang/String;

.field offset:D

.field startIndex:I


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/Number;D)V
    .locals 0

    .line 1998
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1999
    iput p1, p0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->startIndex:I

    .line 2000
    iput-object p2, p0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->argName:Ljava/lang/String;

    const-wide/16 p1, 0x0

    cmpl-double p1, p4, p1

    if-nez p1, :cond_0

    .line 2005
    iput-object p3, p0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->number:Ljava/lang/Number;

    goto :goto_0

    .line 2007
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    sub-double/2addr p1, p4

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->number:Ljava/lang/Number;

    .line 2009
    :goto_0
    iput-wide p4, p0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->offset:D

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/Number;DLandroid/icu/text/MessageFormat$1;)V
    .locals 0

    .line 1997
    invoke-direct/range {p0 .. p5}, Landroid/icu/text/MessageFormat$PluralSelectorContext;-><init>(ILjava/lang/String;Ljava/lang/Number;D)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 2013
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "PluralSelectorContext being formatted, rather than its number"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method
