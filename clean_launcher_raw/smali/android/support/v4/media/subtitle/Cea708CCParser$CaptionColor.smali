.class public Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionColor;
.super Ljava/lang/Object;
.source "Cea708CCParser.java"


# static fields
.field private static final COLOR_MAP:[I

.field public static final OPACITY_FLASH:I = 0x1

.field private static final OPACITY_MAP:[I

.field public static final OPACITY_SOLID:I = 0x0

.field public static final OPACITY_TRANSLUCENT:I = 0x2

.field public static final OPACITY_TRANSPARENT:I = 0x3


# instance fields
.field public final blue:I

.field public final green:I

.field public final opacity:I

.field public final red:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionColor;->COLOR_MAP:[I

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionColor;->OPACITY_MAP:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0xf
        0xf0
        0xff
    .end array-data

    :array_1
    .array-data 4
        0xff
        0xfe
        0x80
        0x0
    .end array-data
.end method

.method constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionColor;->opacity:I

    .line 3
    iput p2, p0, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionColor;->red:I

    .line 4
    iput p3, p0, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionColor;->green:I

    .line 5
    iput p4, p0, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionColor;->blue:I

    return-void
.end method


# virtual methods
.method public getArgbValue()I
    .locals 4

    .line 1
    sget-object v0, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionColor;->OPACITY_MAP:[I

    iget v1, p0, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionColor;->opacity:I

    aget v0, v0, v1

    sget-object v1, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionColor;->COLOR_MAP:[I

    iget v2, p0, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionColor;->red:I

    aget v2, v1, v2

    iget v3, p0, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionColor;->green:I

    aget v3, v1, v3

    iget p0, p0, Landroid/support/v4/media/subtitle/Cea708CCParser$CaptionColor;->blue:I

    aget p0, v1, p0

    invoke-static {v0, v2, v3, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method
