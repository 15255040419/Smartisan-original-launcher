.class Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "Cea708CaptionRenderer.java"


# static fields
.field public static final SCALE_UNSPECIFIED:F = -1.0f


# instance fields
.field public scaleEndCol:F

.field public scaleEndRow:F

.field public scaleStartCol:F

.field public scaleStartRow:F

.field final synthetic this$2:Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;


# direct methods
.method constructor <init>(Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;FFFF)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->this$2:Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;

    const/4 p1, -0x1

    .line 2
    invoke-direct {p0, p1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3
    iput p2, p0, Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleStartRow:F

    .line 4
    iput p3, p0, Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleEndRow:F

    .line 5
    iput p4, p0, Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleStartCol:F

    .line 6
    iput p5, p0, Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleEndCol:F

    return-void
.end method

.method constructor <init>(Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 7
    iput-object p1, p0, Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->this$2:Landroid/support/v4/media/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;

    const/4 p1, -0x1

    .line 8
    invoke-direct {p0, p1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-void
.end method
