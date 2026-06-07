.class public Lsmartisan/widget/ActionButtonGroup$a;
.super Li/t/b;
.source "ActionButtonGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/ActionButtonGroup;->a(Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lsmartisan/widget/ActionButtonGroup;Landroid/view/View;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3, p4}, Li/t/b;-><init>(Landroid/view/View;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    sget v0, Lsmartisan/widget/R$drawable;->smartisan_secondary_bar_shadow:I

    return v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public f()V
    .locals 0

    .line 1
    invoke-super {p0}, Li/t/b;->f()V

    return-void
.end method
