.class public Lsmartisan/widget/SmoothSeekBar$c;
.super Landroid/os/Handler;
.source "SmoothSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/SmoothSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lsmartisan/widget/SmoothSeekBar$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lsmartisan/widget/SmoothSeekBar$c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Lsmartisan/widget/SmoothSeekBar$b;

    if-eqz v0, :cond_4

    .line 2
    check-cast p1, Lsmartisan/widget/SmoothSeekBar$b;

    .line 3
    invoke-static {p1}, Lsmartisan/widget/SmoothSeekBar$b;->g(Lsmartisan/widget/SmoothSeekBar$b;)I

    .line 4
    invoke-static {p1}, Lsmartisan/widget/SmoothSeekBar$b;->a(Lsmartisan/widget/SmoothSeekBar$b;)Lsmartisan/widget/SmoothSeekBar;

    move-result-object v0

    monitor-enter v0

    .line 5
    :try_start_0
    invoke-static {p1}, Lsmartisan/widget/SmoothSeekBar$b;->b(Lsmartisan/widget/SmoothSeekBar$b;)I

    move-result v1

    invoke-static {p1}, Lsmartisan/widget/SmoothSeekBar$b;->a(Lsmartisan/widget/SmoothSeekBar$b;)Lsmartisan/widget/SmoothSeekBar;

    move-result-object v2

    invoke-static {v2}, Lsmartisan/widget/SmoothSeekBar;->d(Lsmartisan/widget/SmoothSeekBar;)I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 6
    invoke-static {p1}, Lsmartisan/widget/SmoothSeekBar$b;->c(Lsmartisan/widget/SmoothSeekBar$b;)I

    move-result v1

    invoke-static {p1}, Lsmartisan/widget/SmoothSeekBar$b;->a(Lsmartisan/widget/SmoothSeekBar$b;)Lsmartisan/widget/SmoothSeekBar;

    move-result-object v2

    invoke-static {v2}, Lsmartisan/widget/SmoothSeekBar;->a(Lsmartisan/widget/SmoothSeekBar;)I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    invoke-static {p1}, Lsmartisan/widget/SmoothSeekBar$b;->f(Lsmartisan/widget/SmoothSeekBar$b;)I

    move-result v1

    invoke-static {p1}, Lsmartisan/widget/SmoothSeekBar$b;->d(Lsmartisan/widget/SmoothSeekBar$b;)I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 8
    invoke-static {p1}, Lsmartisan/widget/SmoothSeekBar$b;->a(Lsmartisan/widget/SmoothSeekBar$b;)Lsmartisan/widget/SmoothSeekBar;

    move-result-object v1

    invoke-static {v1}, Lsmartisan/widget/SmoothSeekBar;->b(Lsmartisan/widget/SmoothSeekBar;)I

    move-result v1

    .line 9
    invoke-static {p1}, Lsmartisan/widget/SmoothSeekBar$b;->c(Lsmartisan/widget/SmoothSeekBar$b;)I

    move-result v2

    invoke-static {p1}, Lsmartisan/widget/SmoothSeekBar$b;->e(Lsmartisan/widget/SmoothSeekBar$b;)F

    move-result v3

    invoke-static {p1}, Lsmartisan/widget/SmoothSeekBar$b;->f(Lsmartisan/widget/SmoothSeekBar$b;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    if-eq v1, v2, :cond_1

    const-string v1, "SmoothSeekBar"

    const-string v2, "progress changed by user, abort smoothing"

    .line 10
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-static {p1}, Lsmartisan/widget/SmoothSeekBar$b;->a(Lsmartisan/widget/SmoothSeekBar$b;)Lsmartisan/widget/SmoothSeekBar;

    move-result-object p1

    invoke-static {p1}, Lsmartisan/widget/SmoothSeekBar;->c(Lsmartisan/widget/SmoothSeekBar;)V

    .line 12
    monitor-exit v0

    return-void

    .line 13
    :cond_1
    invoke-static {p1}, Lsmartisan/widget/SmoothSeekBar$b;->a(Lsmartisan/widget/SmoothSeekBar$b;)Lsmartisan/widget/SmoothSeekBar;

    move-result-object v1

    invoke-static {p1}, Lsmartisan/widget/SmoothSeekBar$b;->c(Lsmartisan/widget/SmoothSeekBar$b;)I

    move-result v2

    invoke-static {p1}, Lsmartisan/widget/SmoothSeekBar$b;->e(Lsmartisan/widget/SmoothSeekBar$b;)F

    move-result v3

    invoke-static {p1}, Lsmartisan/widget/SmoothSeekBar$b;->f(Lsmartisan/widget/SmoothSeekBar$b;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lsmartisan/widget/SmoothSeekBar;->a(Lsmartisan/widget/SmoothSeekBar;I)V

    .line 14
    invoke-static {p1}, Lsmartisan/widget/SmoothSeekBar$b;->a(Lsmartisan/widget/SmoothSeekBar$b;)Lsmartisan/widget/SmoothSeekBar;

    move-result-object p1

    const-wide/16 v1, 0xf

    invoke-static {p1, v1, v2}, Lsmartisan/widget/SmoothSeekBar;->a(Lsmartisan/widget/SmoothSeekBar;J)V

    goto :goto_0

    .line 15
    :cond_2
    invoke-static {p1}, Lsmartisan/widget/SmoothSeekBar$b;->a(Lsmartisan/widget/SmoothSeekBar$b;)Lsmartisan/widget/SmoothSeekBar;

    move-result-object v1

    invoke-static {p1}, Lsmartisan/widget/SmoothSeekBar$b;->b(Lsmartisan/widget/SmoothSeekBar$b;)I

    move-result v2

    invoke-static {v1, v2}, Lsmartisan/widget/SmoothSeekBar;->a(Lsmartisan/widget/SmoothSeekBar;I)V

    .line 16
    invoke-static {p1}, Lsmartisan/widget/SmoothSeekBar$b;->a(Lsmartisan/widget/SmoothSeekBar$b;)Lsmartisan/widget/SmoothSeekBar;

    move-result-object p1

    invoke-static {p1}, Lsmartisan/widget/SmoothSeekBar;->c(Lsmartisan/widget/SmoothSeekBar;)V

    .line 17
    :goto_0
    monitor-exit v0

    return-void

    :cond_3
    :goto_1
    const-string p1, "SmoothSeekBar"

    const-string v1, "smoothing event was changed!"

    .line 18
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lsmartisan/widget/SmoothSeekBar$c;->a(Landroid/os/Message;)V

    :goto_0
    return-void
.end method
