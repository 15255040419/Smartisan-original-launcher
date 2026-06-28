.class public Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionPenAttr;
.super Ljava/lang/Object;
.source "Cea708CCParser.java"


# static fields
.field public static final OFFSET_NORMAL:I = 0x1

.field public static final OFFSET_SUBSCRIPT:I = 0x0

.field public static final OFFSET_SUPERSCRIPT:I = 0x2

.field public static final PEN_SIZE_LARGE:I = 0x2

.field public static final PEN_SIZE_SMALL:I = 0x0

.field public static final PEN_SIZE_STANDARD:I = 0x1


# instance fields
.field public final edgeType:I

.field public final fontTag:I

.field public final italic:Z

.field public final penOffset:I

.field public final penSize:I

.field public final textTag:I

.field public final underline:Z


# direct methods
.method constructor <init>(IIIIIZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionPenAttr;->penSize:I

    .line 3
    iput p2, p0, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionPenAttr;->penOffset:I

    .line 4
    iput p3, p0, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionPenAttr;->textTag:I

    .line 5
    iput p4, p0, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionPenAttr;->fontTag:I

    .line 6
    iput p5, p0, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionPenAttr;->edgeType:I

    .line 7
    iput-boolean p6, p0, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionPenAttr;->underline:Z

    .line 8
    iput-boolean p7, p0, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionPenAttr;->italic:Z

    return-void
.end method
