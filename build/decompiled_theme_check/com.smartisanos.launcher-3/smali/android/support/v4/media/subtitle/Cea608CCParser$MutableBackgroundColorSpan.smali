.class public Landroid/support/v4/media/subtitle/Cea608CCParser$MutableBackgroundColorSpan;
.super Landroid/text/style/CharacterStyle;
.source "Cea608CCParser.java"

# interfaces
.implements Landroid/text/style/UpdateAppearance;


# instance fields
.field private mColor:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 2
    iput p1, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$MutableBackgroundColorSpan;->mColor:I

    return-void
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 0

    .line 1
    iget p0, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$MutableBackgroundColorSpan;->mColor:I

    return p0
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$MutableBackgroundColorSpan;->mColor:I

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0

    .line 1
    iget p0, p0, Landroid/support/v4/media/subtitle/Cea608CCParser$MutableBackgroundColorSpan;->mColor:I

    iput p0, p1, Landroid/text/TextPaint;->bgColor:I

    return-void
.end method
