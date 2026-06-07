.class public Lcom/android/quicksearchbox/ui/ContactBadge;
.super Landroid/widget/QuickContactBadge;
.source "ContactBadge.java"


# instance fields
.field public a:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/QuickContactBadge;->onClick(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/ContactBadge;->a:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setExtraOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/ContactBadge;->a:Landroid/view/View$OnClickListener;

    return-void
.end method
