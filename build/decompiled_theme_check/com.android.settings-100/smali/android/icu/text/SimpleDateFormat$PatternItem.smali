.class Landroid/icu/text/SimpleDateFormat$PatternItem;
.super Ljava/lang/Object;
.source "SimpleDateFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/SimpleDateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PatternItem"
.end annotation


# instance fields
.field final isNumeric:Z

.field final length:I

.field final type:C


# direct methods
.method constructor <init>(CI)V
    .locals 0

    .line 2096
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2097
    iput-char p1, p0, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    .line 2098
    iput p2, p0, Landroid/icu/text/SimpleDateFormat$PatternItem;->length:I

    .line 2099
    invoke-static {p1, p2}, Landroid/icu/text/SimpleDateFormat;->access$000(CI)Z

    move-result p1

    iput-boolean p1, p0, Landroid/icu/text/SimpleDateFormat$PatternItem;->isNumeric:Z

    return-void
.end method
