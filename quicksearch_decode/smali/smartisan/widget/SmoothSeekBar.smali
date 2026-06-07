.class public Lsmartisan/widget/SmoothSeekBar;
.super Landroidx/appcompat/widget/AppCompatSeekBar;
.source "SmoothSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/SmoothSeekBar$b;,
        Lsmartisan/widget/SmoothSeekBar$c;,
        Lsmartisan/widget/SmoothSeekBar$d;
    }
.end annotation


# static fields
.field public static final e:Lsmartisan/widget/SmoothSeekBar$d;

.field public static f:Lsmartisan/widget/SmoothSeekBar$c;


# instance fields
.field public b:I

.field public c:I

.field public d:Lsmartisan/widget/SmoothSeekBar$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lsmartisan/widget/SmoothSeekBar$d;

    invoke-direct {v0}, Lsmartisan/widget/SmoothSeekBar$d;-><init>()V

    sput-object v0, Lsmartisan/widget/SmoothSeekBar;->e:Lsmartisan/widget/SmoothSeekBar$d;

    .line 2
    sget-object v0, Lsmartisan/widget/SmoothSeekBar;->e:Lsmartisan/widget/SmoothSeekBar$d;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/SmoothSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lsmartisan/widget/R$attr;->seekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/SmoothSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lsmartisan/widget/SmoothSeekBar;->b:I

    .line 5
    iput p1, p0, Lsmartisan/widget/SmoothSeekBar;->c:I

    return-void
.end method

.method public static synthetic a(Lsmartisan/widget/SmoothSeekBar;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/SmoothSeekBar;->getOriginalProgress()I

    move-result p0

    return p0
.end method

.method public static synthetic a(Lsmartisan/widget/SmoothSeekBar$c;)Lsmartisan/widget/SmoothSeekBar$c;
    .locals 0

    .line 4
    sput-object p0, Lsmartisan/widget/SmoothSeekBar;->f:Lsmartisan/widget/SmoothSeekBar$c;

    return-object p0
.end method

.method public static synthetic a(Lsmartisan/widget/SmoothSeekBar;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lsmartisan/widget/SmoothSeekBar;->setProgressOnly(I)V

    return-void
.end method

.method public static synthetic a(Lsmartisan/widget/SmoothSeekBar;J)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lsmartisan/widget/SmoothSeekBar;->a(J)V

    return-void
.end method

.method public static synthetic b(Lsmartisan/widget/SmoothSeekBar;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/SmoothSeekBar;->getProgressOnly()I

    move-result p0

    return p0
.end method

.method public static synthetic c(Lsmartisan/widget/SmoothSeekBar;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lsmartisan/widget/SmoothSeekBar;->a()V

    return-void
.end method

.method public static synthetic d(Lsmartisan/widget/SmoothSeekBar;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/SmoothSeekBar;->getTargetProgress()I

    move-result p0

    return p0
.end method

.method private getOriginalProgress()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/SmoothSeekBar;->c:I

    return v0
.end method

.method private getProgressOnly()I
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    return v0
.end method

.method private getTargetProgress()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/SmoothSeekBar;->b:I

    return v0
.end method

.method private setProgressOnly(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 17
    iget-object v0, p0, Lsmartisan/widget/SmoothSeekBar;->d:Lsmartisan/widget/SmoothSeekBar$b;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    .line 18
    iput v1, p0, Lsmartisan/widget/SmoothSeekBar;->b:I

    .line 19
    iput v1, p0, Lsmartisan/widget/SmoothSeekBar;->c:I

    .line 20
    sget-object v1, Lsmartisan/widget/SmoothSeekBar;->f:Lsmartisan/widget/SmoothSeekBar$c;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lsmartisan/widget/SmoothSeekBar;->d:Lsmartisan/widget/SmoothSeekBar$b;

    :cond_0
    return-void
.end method

.method public final a(II)V
    .locals 2

    .line 5
    iput p1, p0, Lsmartisan/widget/SmoothSeekBar;->b:I

    .line 6
    invoke-super {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    iput p1, p0, Lsmartisan/widget/SmoothSeekBar;->c:I

    .line 7
    iget p1, p0, Lsmartisan/widget/SmoothSeekBar;->b:I

    iget p2, p0, Lsmartisan/widget/SmoothSeekBar;->c:I

    sub-int/2addr p1, p2

    .line 8
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p2

    mul-int/lit16 p2, p2, 0xc8

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    div-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x64

    .line 9
    new-instance v0, Lsmartisan/widget/SmoothSeekBar$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lsmartisan/widget/SmoothSeekBar$b;-><init>(Lsmartisan/widget/SmoothSeekBar;Lsmartisan/widget/SmoothSeekBar$a;)V

    iput-object v0, p0, Lsmartisan/widget/SmoothSeekBar;->d:Lsmartisan/widget/SmoothSeekBar$b;

    .line 10
    iget-object v0, p0, Lsmartisan/widget/SmoothSeekBar;->d:Lsmartisan/widget/SmoothSeekBar$b;

    invoke-static {v0, p0}, Lsmartisan/widget/SmoothSeekBar$b;->a(Lsmartisan/widget/SmoothSeekBar$b;Lsmartisan/widget/SmoothSeekBar;)Lsmartisan/widget/SmoothSeekBar;

    .line 11
    iget-object v0, p0, Lsmartisan/widget/SmoothSeekBar;->d:Lsmartisan/widget/SmoothSeekBar$b;

    iget v1, p0, Lsmartisan/widget/SmoothSeekBar;->b:I

    invoke-static {v0, v1}, Lsmartisan/widget/SmoothSeekBar$b;->a(Lsmartisan/widget/SmoothSeekBar$b;I)I

    .line 12
    iget-object v0, p0, Lsmartisan/widget/SmoothSeekBar;->d:Lsmartisan/widget/SmoothSeekBar$b;

    iget v1, p0, Lsmartisan/widget/SmoothSeekBar;->c:I

    invoke-static {v0, v1}, Lsmartisan/widget/SmoothSeekBar$b;->b(Lsmartisan/widget/SmoothSeekBar$b;I)I

    .line 13
    iget-object v0, p0, Lsmartisan/widget/SmoothSeekBar;->d:Lsmartisan/widget/SmoothSeekBar$b;

    div-int/lit8 p2, p2, 0xf

    invoke-static {v0, p2}, Lsmartisan/widget/SmoothSeekBar$b;->c(Lsmartisan/widget/SmoothSeekBar$b;I)I

    .line 14
    iget-object p2, p0, Lsmartisan/widget/SmoothSeekBar;->d:Lsmartisan/widget/SmoothSeekBar$b;

    invoke-static {p2}, Lsmartisan/widget/SmoothSeekBar$b;->d(Lsmartisan/widget/SmoothSeekBar$b;)I

    move-result v0

    div-int/2addr p1, v0

    int-to-float p1, p1

    invoke-static {p2, p1}, Lsmartisan/widget/SmoothSeekBar$b;->a(Lsmartisan/widget/SmoothSeekBar$b;F)F

    .line 15
    iget-object p1, p0, Lsmartisan/widget/SmoothSeekBar;->d:Lsmartisan/widget/SmoothSeekBar$b;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lsmartisan/widget/SmoothSeekBar$b;->d(Lsmartisan/widget/SmoothSeekBar$b;I)I

    const-wide/16 p1, 0x0

    .line 16
    invoke-virtual {p0, p1, p2}, Lsmartisan/widget/SmoothSeekBar;->a(J)V

    return-void
.end method

.method public final a(J)V
    .locals 4

    .line 22
    sget-object v0, Lsmartisan/widget/SmoothSeekBar;->f:Lsmartisan/widget/SmoothSeekBar$c;

    iget-object v1, p0, Lsmartisan/widget/SmoothSeekBar;->d:Lsmartisan/widget/SmoothSeekBar$b;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public declared-synchronized getProgress()I
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lsmartisan/widget/SmoothSeekBar;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget v0, p0, Lsmartisan/widget/SmoothSeekBar;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 3
    :cond_0
    :try_start_1
    invoke-super {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lsmartisan/widget/SmoothSeekBar;->b:I

    if-eq p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lsmartisan/widget/SmoothSeekBar;->a()V

    .line 3
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setProgressSmooth(I)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lsmartisan/widget/SmoothSeekBar;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lsmartisan/widget/SmoothSeekBar;->a()V

    .line 4
    invoke-virtual {p0}, Lsmartisan/widget/SmoothSeekBar;->getProgress()I

    move-result v0

    sub-int v0, p1, v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    div-int/lit8 v1, v1, 0x14

    if-ge v0, v1, :cond_1

    neg-int v1, v1

    if-gt v0, v1, :cond_2

    .line 6
    :cond_1
    sget-object v0, Lsmartisan/widget/SmoothSeekBar;->f:Lsmartisan/widget/SmoothSeekBar$c;

    if-nez v0, :cond_3

    .line 7
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {p0}, Lsmartisan/widget/SmoothSeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lsmartisan/widget/SmoothSeekBar;->a(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
