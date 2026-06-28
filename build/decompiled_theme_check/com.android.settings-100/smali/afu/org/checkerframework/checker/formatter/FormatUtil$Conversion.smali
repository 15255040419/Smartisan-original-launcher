.class Lafu/org/checkerframework/checker/formatter/FormatUtil$Conversion;
.super Ljava/lang/Object;
.source "FormatUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lafu/org/checkerframework/checker/formatter/FormatUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Conversion"
.end annotation


# instance fields
.field private final cath:Lafu/org/checkerframework/checker/formatter/qual/ConversionCategory;

.field private final index:I


# direct methods
.method public constructor <init>(CI)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p2, p0, Lafu/org/checkerframework/checker/formatter/FormatUtil$Conversion;->index:I

    .line 28
    invoke-static {p1}, Lafu/org/checkerframework/checker/formatter/qual/ConversionCategory;->fromConversionChar(C)Lafu/org/checkerframework/checker/formatter/qual/ConversionCategory;

    move-result-object p1

    iput-object p1, p0, Lafu/org/checkerframework/checker/formatter/FormatUtil$Conversion;->cath:Lafu/org/checkerframework/checker/formatter/qual/ConversionCategory;

    return-void
.end method


# virtual methods
.method category()Lafu/org/checkerframework/checker/formatter/qual/ConversionCategory;
    .locals 0

    .line 36
    iget-object p0, p0, Lafu/org/checkerframework/checker/formatter/FormatUtil$Conversion;->cath:Lafu/org/checkerframework/checker/formatter/qual/ConversionCategory;

    return-object p0
.end method

.method index()I
    .locals 0

    .line 32
    iget p0, p0, Lafu/org/checkerframework/checker/formatter/FormatUtil$Conversion;->index:I

    return p0
.end method
