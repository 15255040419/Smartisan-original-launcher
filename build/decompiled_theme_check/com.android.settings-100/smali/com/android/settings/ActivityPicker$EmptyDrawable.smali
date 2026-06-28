.class Lcom/android/settings/ActivityPicker$EmptyDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ActivityPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ActivityPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyDrawable"
.end annotation


# instance fields
.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 452
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 453
    iput p1, p0, Lcom/android/settings/ActivityPicker$EmptyDrawable;->mWidth:I

    .line 454
    iput p2, p0, Lcom/android/settings/ActivityPicker$EmptyDrawable;->mHeight:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 0

    .line 464
    iget p0, p0, Lcom/android/settings/ActivityPicker$EmptyDrawable;->mHeight:I

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    .line 459
    iget p0, p0, Lcom/android/settings/ActivityPicker$EmptyDrawable;->mWidth:I

    return p0
.end method

.method public getMinimumHeight()I
    .locals 0

    .line 474
    iget p0, p0, Lcom/android/settings/ActivityPicker$EmptyDrawable;->mHeight:I

    return p0
.end method

.method public getMinimumWidth()I
    .locals 0

    .line 469
    iget p0, p0, Lcom/android/settings/ActivityPicker$EmptyDrawable;->mWidth:I

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
