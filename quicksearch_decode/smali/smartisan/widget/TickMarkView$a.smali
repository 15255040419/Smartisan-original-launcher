.class public Lsmartisan/widget/TickMarkView$a;
.super Ljava/lang/Object;
.source "TickMarkView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/TickMarkView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:F

.field public f:I

.field public g:Ljava/lang/String;

.field public h:Z

.field public final synthetic i:Lsmartisan/widget/TickMarkView;


# direct methods
.method public constructor <init>(Lsmartisan/widget/TickMarkView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/TickMarkView$a;->i:Lsmartisan/widget/TickMarkView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lsmartisan/widget/TickMarkView;->j()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lsmartisan/widget/TickMarkView$a;->e:F

    .line 3
    sget p1, Lsmartisan/widget/TickMarkView;->H:I

    iput p1, p0, Lsmartisan/widget/TickMarkView$a;->f:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/TickMarkView$a;->h:Z

    const/4 v1, 0x0

    const/high16 v2, 0x40800000    # 4.0f

    if-eqz v0, :cond_0

    .line 2
    sget v0, Lsmartisan/widget/TickMarkView;->G:I

    iput v0, p0, Lsmartisan/widget/TickMarkView$a;->f:I

    .line 3
    iget v0, p0, Lsmartisan/widget/TickMarkView$a;->e:F

    sub-float/2addr v0, v2

    iput v0, p0, Lsmartisan/widget/TickMarkView$a;->e:F

    .line 4
    iget v0, p0, Lsmartisan/widget/TickMarkView$a;->e:F

    invoke-static {}, Lsmartisan/widget/TickMarkView;->k()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 5
    invoke-static {}, Lsmartisan/widget/TickMarkView;->k()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lsmartisan/widget/TickMarkView$a;->e:F

    goto :goto_0

    .line 6
    :cond_0
    sget v0, Lsmartisan/widget/TickMarkView;->H:I

    iput v0, p0, Lsmartisan/widget/TickMarkView$a;->f:I

    .line 7
    iget v0, p0, Lsmartisan/widget/TickMarkView$a;->e:F

    add-float/2addr v0, v2

    iput v0, p0, Lsmartisan/widget/TickMarkView$a;->e:F

    .line 8
    iget v0, p0, Lsmartisan/widget/TickMarkView$a;->e:F

    invoke-static {}, Lsmartisan/widget/TickMarkView;->j()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 9
    invoke-static {}, Lsmartisan/widget/TickMarkView;->j()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lsmartisan/widget/TickMarkView$a;->e:F

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_2

    .line 10
    iget-object v0, p0, Lsmartisan/widget/TickMarkView$a;->i:Lsmartisan/widget/TickMarkView;

    new-instance v1, Lsmartisan/widget/TickMarkView$a$a;

    invoke-direct {v1, p0}, Lsmartisan/widget/TickMarkView$a$a;-><init>(Lsmartisan/widget/TickMarkView$a;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11
    :cond_2
    iget-object v0, p0, Lsmartisan/widget/TickMarkView$a;->i:Lsmartisan/widget/TickMarkView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
