.class public Li/t/e/b;
.super Li/t/e/c;
.source "MonthByWeekDayViewDrawer.java"


# instance fields
.field public q:I

.field public r:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ZF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Li/t/e/c;-><init>(Landroid/content/Context;ZF)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lsmartisan/widget/R$dimen;->monthweek_relative_week_en_num:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Li/t/e/b;->q:I

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lsmartisan/widget/R$dimen;->monthweek_relative_month_num:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Li/t/e/b;->r:I

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Paint;
    .locals 2

    .line 3
    iget-object v0, p0, Li/t/e/c;->n:Li/t/e/d;

    iget-object v1, p0, Li/t/e/c;->h:Landroid/content/Context;

    invoke-virtual {v0, v1}, Li/t/e/d;->a(Landroid/content/Context;)Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method

.method public a(FLjava/lang/String;Ljava/lang/String;Landroid/graphics/Canvas;F)V
    .locals 1

    .line 1
    iget p3, p0, Li/t/e/b;->r:I

    iget v0, p0, Li/t/e/b;->q:I

    sub-int/2addr v0, p3

    int-to-float v0, v0

    mul-float/2addr p5, v0

    float-to-int p5, p5

    add-int/2addr p3, p5

    float-to-int p1, p1

    .line 2
    invoke-virtual {p0}, Li/t/e/b;->a()Landroid/graphics/Paint;

    move-result-object p5

    invoke-virtual {p0, p1, p2, p5}, Li/t/e/c;->a(ILjava/lang/String;Landroid/graphics/Paint;)F

    move-result p1

    int-to-float p3, p3

    invoke-virtual {p0}, Li/t/e/b;->a()Landroid/graphics/Paint;

    move-result-object p5

    invoke-virtual {p4, p2, p1, p3, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method
