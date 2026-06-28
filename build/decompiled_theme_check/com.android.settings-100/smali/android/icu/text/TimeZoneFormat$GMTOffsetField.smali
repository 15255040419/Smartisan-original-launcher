.class Landroid/icu/text/TimeZoneFormat$GMTOffsetField;
.super Ljava/lang/Object;
.source "TimeZoneFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TimeZoneFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GMTOffsetField"
.end annotation


# instance fields
.field final _type:C

.field final _width:I


# direct methods
.method constructor <init>(CI)V
    .locals 0

    .line 1918
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1919
    iput-char p1, p0, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;->_type:C

    .line 1920
    iput p2, p0, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;->_width:I

    return-void
.end method

.method static isValid(CI)Z
    .locals 1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method


# virtual methods
.method getType()C
    .locals 0

    .line 1924
    iget-char p0, p0, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;->_type:C

    return p0
.end method

.method getWidth()I
    .locals 0

    .line 1929
    iget p0, p0, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;->_width:I

    return p0
.end method
