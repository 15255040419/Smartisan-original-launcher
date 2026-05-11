.class public Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;
.super Ljava/lang/Object;
.source "PrecomputedTextCompat.java"


# instance fields
.field private mBreakStrategy:I

.field private mHyphenationFrequency:I

.field private final mPaint:Landroid/text/TextPaint;

.field private mTextDir:Landroid/text/TextDirectionHeuristic;


# direct methods
.method public constructor <init>(Landroid/text/TextPaint;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;->mPaint:Landroid/text/TextPaint;

    .line 3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    .line 4
    iput p1, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;->mBreakStrategy:I

    .line 5
    iput p1, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;->mHyphenationFrequency:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    iput p1, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;->mHyphenationFrequency:I

    iput p1, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;->mBreakStrategy:I

    .line 7
    :goto_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    if-lt p1, v0, :cond_1

    .line 8
    sget-object p1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    iput-object p1, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    :goto_1
    return-void
.end method


# virtual methods
.method public build()Landroid/support/v4/text/PrecomputedTextCompat$Params;
    .locals 7

    .line 1
    new-instance v6, Landroid/support/v4/text/PrecomputedTextCompat$Params;

    iget-object v1, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;->mPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget v3, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;->mBreakStrategy:I

    iget v4, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;->mHyphenationFrequency:I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/text/PrecomputedTextCompat$Params;-><init>(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;IILandroid/support/v4/text/PrecomputedTextCompat$1;)V

    return-object v6
.end method

.method public setBreakStrategy(I)Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;->mBreakStrategy:I

    return-object p0
.end method

.method public setHyphenationFrequency(I)Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;->mHyphenationFrequency:I

    return-object p0
.end method

.method public setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-object p0
.end method
