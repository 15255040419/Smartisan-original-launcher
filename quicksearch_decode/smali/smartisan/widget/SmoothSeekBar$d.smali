.class public Lsmartisan/widget/SmoothSeekBar$d;
.super Ljava/lang/Thread;
.source "SmoothSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/SmoothSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "SmoothSeekBarThread"

    .line 1
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2
    new-instance v0, Lsmartisan/widget/SmoothSeekBar$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lsmartisan/widget/SmoothSeekBar$c;-><init>(Lsmartisan/widget/SmoothSeekBar$a;)V

    invoke-static {v0}, Lsmartisan/widget/SmoothSeekBar;->a(Lsmartisan/widget/SmoothSeekBar$c;)Lsmartisan/widget/SmoothSeekBar$c;

    .line 3
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
