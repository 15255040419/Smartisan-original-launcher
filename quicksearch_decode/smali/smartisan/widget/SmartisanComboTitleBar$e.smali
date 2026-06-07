.class public Lsmartisan/widget/SmartisanComboTitleBar$e;
.super Ljava/lang/Object;
.source "SmartisanComboTitleBar.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/SmartisanComboTitleBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lsmartisan/widget/SmartisanComboTitleBar;


# direct methods
.method public constructor <init>(Lsmartisan/widget/SmartisanComboTitleBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SmartisanComboTitleBar$e;->a:Lsmartisan/widget/SmartisanComboTitleBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lsmartisan/widget/SmartisanComboTitleBar$e;->a:Lsmartisan/widget/SmartisanComboTitleBar;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2
    iget-object p1, p0, Lsmartisan/widget/SmartisanComboTitleBar$e;->a:Lsmartisan/widget/SmartisanComboTitleBar;

    invoke-virtual {p1}, Lsmartisan/widget/SmartisanComboTitleBar;->d()V

    return-void
.end method
