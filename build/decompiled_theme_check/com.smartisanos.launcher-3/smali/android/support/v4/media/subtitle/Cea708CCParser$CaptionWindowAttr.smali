.class public Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionWindowAttr;
.super Ljava/lang/Object;
.source "Cea708CCParser.java"


# instance fields
.field public final borderColor:Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionColor;

.field public final borderType:I

.field public final displayEffect:I

.field public final effectDirection:I

.field public final effectSpeed:I

.field public final fillColor:Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionColor;

.field public final justify:I

.field public final printDirection:I

.field public final scrollDirection:I

.field public final wordWrap:Z


# direct methods
.method constructor <init>(Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionColor;Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionColor;IZIIIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionWindowAttr;->fillColor:Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionColor;

    .line 3
    iput-object p2, p0, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionWindowAttr;->borderColor:Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionColor;

    .line 4
    iput p3, p0, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionWindowAttr;->borderType:I

    .line 5
    iput-boolean p4, p0, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionWindowAttr;->wordWrap:Z

    .line 6
    iput p5, p0, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionWindowAttr;->printDirection:I

    .line 7
    iput p6, p0, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionWindowAttr;->scrollDirection:I

    .line 8
    iput p7, p0, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionWindowAttr;->justify:I

    .line 9
    iput p8, p0, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionWindowAttr;->effectDirection:I

    .line 10
    iput p9, p0, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionWindowAttr;->effectSpeed:I

    .line 11
    iput p10, p0, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionWindowAttr;->displayEffect:I

    return-void
.end method
