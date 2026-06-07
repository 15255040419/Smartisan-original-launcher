.class public Lsmartisan/widget/SmartisanSpinnerView$c;
.super Ljava/lang/Object;
.source "SmartisanSpinnerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/SmartisanSpinnerView;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lsmartisan/widget/SmartisanSpinnerView;


# direct methods
.method public constructor <init>(Lsmartisan/widget/SmartisanSpinnerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SmartisanSpinnerView$c;->a:Lsmartisan/widget/SmartisanSpinnerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lsmartisan/widget/SmartisanSpinnerView$c;->a:Lsmartisan/widget/SmartisanSpinnerView;

    invoke-static {p1}, Lsmartisan/widget/SmartisanSpinnerView;->c(Lsmartisan/widget/SmartisanSpinnerView;)Lsmartisan/widget/SmartisanSpinnerView$SpinnerRangeClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lsmartisan/widget/SmartisanSpinnerView$c;->a:Lsmartisan/widget/SmartisanSpinnerView;

    invoke-static {p1}, Lsmartisan/widget/SmartisanSpinnerView;->c(Lsmartisan/widget/SmartisanSpinnerView;)Lsmartisan/widget/SmartisanSpinnerView$SpinnerRangeClickListener;

    move-result-object p1

    invoke-interface {p1}, Lsmartisan/widget/SmartisanSpinnerView$SpinnerRangeClickListener;->onRangeLeftClick()V

    :cond_0
    return-void
.end method
