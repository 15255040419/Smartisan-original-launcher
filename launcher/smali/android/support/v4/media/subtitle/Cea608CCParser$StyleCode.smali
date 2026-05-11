.class Landroid/support/v4/media/subtitle/Cea608CCParser$StyleCode;
.super Ljava/lang/Object;
.source "Cea608CCParser.java"


# static fields
.field static final COLOR_BLUE:I = 0x2

.field static final COLOR_CYAN:I = 0x3

.field static final COLOR_GREEN:I = 0x1

.field static final COLOR_INVALID:I = 0x7

.field static final COLOR_MAGENTA:I = 0x6

.field static final COLOR_RED:I = 0x4

.field static final COLOR_WHITE:I = 0x0

.field static final COLOR_YELLOW:I = 0x5

.field static final STYLE_ITALICS:I = 0x1

.field static final STYLE_UNDERLINE:I = 0x2

.field static final sColorMap:[Ljava/lang/String;


# instance fields
.field final mColor:I

.field final mStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "WHITE"

    const-string v1, "GREEN"

    const-string v2, "BLUE"

    const-string v3, "CYAN"

    const-string v4, "RED"

    const-string v5, "YELLOW"

    const-string v6, "MAGENTA"

    const-string v7, "INVALID"

    .line 1
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/media/subtitle/Cea608CCParser$StyleCode;->sColorMap:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$StyleCode;->mStyle:I

    .line 3
    iput p2, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$StyleCode;->mColor:I

    return-void
.end method

.method static fromByte(B)Landroid/support/v4/media/subtitle/Cea608CCParser$StyleCode;
    .locals 3

    shr-int/lit8 v0, p0, 0x1

    const/4 v1, 0x7

    and-int/2addr v0, v1

    and-int/lit8 p0, p0, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    if-ne v0, v1, :cond_1

    or-int/lit8 p0, p0, 0x1

    move v0, v2

    .line 1
    :cond_1
    new-instance v1, Landroid/support/v4/media/subtitle/Cea608CCParser$StyleCode;

    invoke-direct {v1, p0, v0}, Landroid/support/v4/media/subtitle/Cea608CCParser$StyleCode;-><init>(II)V

    return-object v1
.end method


# virtual methods
.method getColor()I
    .locals 0

    .line 1
    iget p0, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$StyleCode;->mColor:I

    return p0
.end method

.method isItalics()Z
    .locals 1

    .line 1
    iget p0, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$StyleCode;->mStyle:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isUnderline()Z
    .locals 0

    .line 1
    iget p0, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$StyleCode;->mStyle:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    sget-object v1, Landroid/support/v4/media/subtitle/Cea608CCParser$StyleCode;->sColorMap:[Ljava/lang/String;

    iget v2, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$StyleCode;->mColor:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget v1, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$StyleCode;->mStyle:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const-string v1, ", ITALICS"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_0
    iget p0, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$StyleCode;->mStyle:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    const-string p0, ", UNDERLINE"

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string p0, "}"

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
