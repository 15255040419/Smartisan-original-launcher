.class public Lsmartisan/widget/SmoothSeekBar$b;
.super Ljava/lang/Object;
.source "SmoothSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/SmoothSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Lsmartisan/widget/SmoothSeekBar;

.field public b:I

.field public c:I

.field public d:F

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(Lsmartisan/widget/SmoothSeekBar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lsmartisan/widget/SmoothSeekBar;Lsmartisan/widget/SmoothSeekBar$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lsmartisan/widget/SmoothSeekBar$b;-><init>(Lsmartisan/widget/SmoothSeekBar;)V

    return-void
.end method

.method public static synthetic a(Lsmartisan/widget/SmoothSeekBar$b;F)F
    .locals 0

    .line 4
    iput p1, p0, Lsmartisan/widget/SmoothSeekBar$b;->d:F

    return p1
.end method

.method public static synthetic a(Lsmartisan/widget/SmoothSeekBar$b;I)I
    .locals 0

    .line 3
    iput p1, p0, Lsmartisan/widget/SmoothSeekBar$b;->b:I

    return p1
.end method

.method public static synthetic a(Lsmartisan/widget/SmoothSeekBar$b;)Lsmartisan/widget/SmoothSeekBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/SmoothSeekBar$b;->a:Lsmartisan/widget/SmoothSeekBar;

    return-object p0
.end method

.method public static synthetic a(Lsmartisan/widget/SmoothSeekBar$b;Lsmartisan/widget/SmoothSeekBar;)Lsmartisan/widget/SmoothSeekBar;
    .locals 0

    .line 2
    iput-object p1, p0, Lsmartisan/widget/SmoothSeekBar$b;->a:Lsmartisan/widget/SmoothSeekBar;

    return-object p1
.end method

.method public static synthetic b(Lsmartisan/widget/SmoothSeekBar$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lsmartisan/widget/SmoothSeekBar$b;->b:I

    return p0
.end method

.method public static synthetic b(Lsmartisan/widget/SmoothSeekBar$b;I)I
    .locals 0

    .line 2
    iput p1, p0, Lsmartisan/widget/SmoothSeekBar$b;->c:I

    return p1
.end method

.method public static synthetic c(Lsmartisan/widget/SmoothSeekBar$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lsmartisan/widget/SmoothSeekBar$b;->c:I

    return p0
.end method

.method public static synthetic c(Lsmartisan/widget/SmoothSeekBar$b;I)I
    .locals 0

    .line 2
    iput p1, p0, Lsmartisan/widget/SmoothSeekBar$b;->e:I

    return p1
.end method

.method public static synthetic d(Lsmartisan/widget/SmoothSeekBar$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lsmartisan/widget/SmoothSeekBar$b;->e:I

    return p0
.end method

.method public static synthetic d(Lsmartisan/widget/SmoothSeekBar$b;I)I
    .locals 0

    .line 2
    iput p1, p0, Lsmartisan/widget/SmoothSeekBar$b;->f:I

    return p1
.end method

.method public static synthetic e(Lsmartisan/widget/SmoothSeekBar$b;)F
    .locals 0

    .line 1
    iget p0, p0, Lsmartisan/widget/SmoothSeekBar$b;->d:F

    return p0
.end method

.method public static synthetic f(Lsmartisan/widget/SmoothSeekBar$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lsmartisan/widget/SmoothSeekBar$b;->f:I

    return p0
.end method

.method public static synthetic g(Lsmartisan/widget/SmoothSeekBar$b;)I
    .locals 2

    .line 1
    iget v0, p0, Lsmartisan/widget/SmoothSeekBar$b;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lsmartisan/widget/SmoothSeekBar$b;->f:I

    return v0
.end method
