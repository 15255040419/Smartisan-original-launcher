.class public Lsmartisan/widget/Title$a;
.super Li/t/b;
.source "Title.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/Title;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic g:Lsmartisan/widget/Title;


# direct methods
.method public constructor <init>(Lsmartisan/widget/Title;Landroid/view/View;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/Title$a;->g:Lsmartisan/widget/Title;

    invoke-direct {p0, p2, p3, p4}, Li/t/b;-><init>(Landroid/view/View;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    sget v0, Lsmartisan/widget/R$drawable;->smt_title_bar_shadow:I

    return v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()V
    .locals 1

    .line 1
    invoke-super {p0}, Li/t/b;->f()V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/Title$a;->g:Lsmartisan/widget/Title;

    invoke-static {v0}, Lsmartisan/widget/Title;->a(Lsmartisan/widget/Title;)V

    return-void
.end method
