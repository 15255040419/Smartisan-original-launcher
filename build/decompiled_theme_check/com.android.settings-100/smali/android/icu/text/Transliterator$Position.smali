.class public Landroid/icu/text/Transliterator$Position;
.super Ljava/lang/Object;
.source "Transliterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/Transliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Position"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public contextLimit:I

.field public contextStart:I

.field public limit:I

.field public start:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 265
    const-class v0, Landroid/icu/text/Transliterator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 306
    invoke-direct {p0, v0, v0, v0, v0}, Landroid/icu/text/Transliterator$Position;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 315
    invoke-direct {p0, p1, p2, p3, p2}, Landroid/icu/text/Transliterator$Position;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    iput p1, p0, Landroid/icu/text/Transliterator$Position;->contextStart:I

    .line 325
    iput p2, p0, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    .line 326
    iput p3, p0, Landroid/icu/text/Transliterator$Position;->start:I

    .line 327
    iput p4, p0, Landroid/icu/text/Transliterator$Position;->limit:I

    return-void
.end method

.method public constructor <init>(Landroid/icu/text/Transliterator$Position;)V
    .locals 0

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    invoke-virtual {p0, p1}, Landroid/icu/text/Transliterator$Position;->set(Landroid/icu/text/Transliterator$Position;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 352
    instance-of v0, p1, Landroid/icu/text/Transliterator$Position;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 353
    check-cast p1, Landroid/icu/text/Transliterator$Position;

    .line 354
    iget v0, p0, Landroid/icu/text/Transliterator$Position;->contextStart:I

    iget v2, p1, Landroid/icu/text/Transliterator$Position;->contextStart:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    iget v2, p1, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroid/icu/text/Transliterator$Position;->start:I

    iget v2, p1, Landroid/icu/text/Transliterator$Position;->start:I

    if-ne v0, v2, :cond_0

    iget p0, p0, Landroid/icu/text/Transliterator$Position;->limit:I

    iget p1, p1, Landroid/icu/text/Transliterator$Position;->limit:I

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 p0, 0x2a

    return p0
.end method

.method public set(Landroid/icu/text/Transliterator$Position;)V
    .locals 1

    .line 341
    iget v0, p1, Landroid/icu/text/Transliterator$Position;->contextStart:I

    iput v0, p0, Landroid/icu/text/Transliterator$Position;->contextStart:I

    .line 342
    iget v0, p1, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    iput v0, p0, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    .line 343
    iget v0, p1, Landroid/icu/text/Transliterator$Position;->start:I

    iput v0, p0, Landroid/icu/text/Transliterator$Position;->start:I

    .line 344
    iget p1, p1, Landroid/icu/text/Transliterator$Position;->limit:I

    iput p1, p0, Landroid/icu/text/Transliterator$Position;->limit:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[cs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/icu/text/Transliterator$Position;->contextStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/icu/text/Transliterator$Position;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", l="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/icu/text/Transliterator$Position;->limit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final validate(I)V
    .locals 3

    .line 394
    iget v0, p0, Landroid/icu/text/Transliterator$Position;->contextStart:I

    if-ltz v0, :cond_0

    iget v1, p0, Landroid/icu/text/Transliterator$Position;->start:I

    if-lt v1, v0, :cond_0

    iget v0, p0, Landroid/icu/text/Transliterator$Position;->limit:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    if-lt v1, v0, :cond_0

    if-lt p1, v1, :cond_0

    return-void

    .line 399
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Position {cs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/icu/text/Transliterator$Position;->contextStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/icu/text/Transliterator$Position;->start:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", l="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/icu/text/Transliterator$Position;->limit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}, len="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
