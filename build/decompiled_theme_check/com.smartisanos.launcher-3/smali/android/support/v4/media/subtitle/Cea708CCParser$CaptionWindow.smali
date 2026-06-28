.class public Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionWindow;
.super Ljava/lang/Object;
.source "Cea708CCParser.java"


# instance fields
.field public final anchorHorizontal:I

.field public final anchorId:I

.field public final anchorVertical:I

.field public final columnCount:I

.field public final columnLock:Z

.field public final id:I

.field public final penStyle:I

.field public final priority:I

.field public final relativePositioning:Z

.field public final rowCount:I

.field public final rowLock:Z

.field public final visible:Z

.field public final windowStyle:I


# direct methods
.method constructor <init>(IZZZIZIIIIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionWindow;->id:I

    .line 3
    iput-boolean p2, p0, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionWindow;->visible:Z

    .line 4
    iput-boolean p3, p0, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionWindow;->rowLock:Z

    .line 5
    iput-boolean p4, p0, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionWindow;->columnLock:Z

    .line 6
    iput p5, p0, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionWindow;->priority:I

    .line 7
    iput-boolean p6, p0, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionWindow;->relativePositioning:Z

    .line 8
    iput p7, p0, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionWindow;->anchorVertical:I

    .line 9
    iput p8, p0, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionWindow;->anchorHorizontal:I

    .line 10
    iput p9, p0, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionWindow;->anchorId:I

    .line 11
    iput p10, p0, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionWindow;->rowCount:I

    .line 12
    iput p11, p0, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionWindow;->columnCount:I

    .line 13
    iput p12, p0, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionWindow;->penStyle:I

    .line 14
    iput p13, p0, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionWindow;->windowStyle:I

    return-void
.end method
