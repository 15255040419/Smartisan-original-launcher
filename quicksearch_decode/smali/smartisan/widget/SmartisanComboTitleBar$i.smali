.class public Lsmartisan/widget/SmartisanComboTitleBar$i;
.super Ljava/lang/Object;
.source "SmartisanComboTitleBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/SmartisanComboTitleBar;->a(ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lsmartisan/widget/SmartisanButton;

.field public final synthetic b:Lsmartisan/widget/SmartisanComboTitleBar;


# direct methods
.method public constructor <init>(Lsmartisan/widget/SmartisanComboTitleBar;Lsmartisan/widget/SmartisanButton;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SmartisanComboTitleBar$i;->b:Lsmartisan/widget/SmartisanComboTitleBar;

    iput-object p2, p0, Lsmartisan/widget/SmartisanComboTitleBar$i;->a:Lsmartisan/widget/SmartisanButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar$i;->b:Lsmartisan/widget/SmartisanComboTitleBar;

    invoke-static {v0}, Lsmartisan/widget/SmartisanComboTitleBar;->g(Lsmartisan/widget/SmartisanComboTitleBar;)Lsmartisan/widget/SmartisanComboTitleBar$RightBtnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar$i;->b:Lsmartisan/widget/SmartisanComboTitleBar;

    invoke-static {v0}, Lsmartisan/widget/SmartisanComboTitleBar;->g(Lsmartisan/widget/SmartisanComboTitleBar;)Lsmartisan/widget/SmartisanComboTitleBar$RightBtnClickListener;

    move-result-object v0

    iget-object v1, p0, Lsmartisan/widget/SmartisanComboTitleBar$i;->b:Lsmartisan/widget/SmartisanComboTitleBar;

    invoke-static {v1}, Lsmartisan/widget/SmartisanComboTitleBar;->h(Lsmartisan/widget/SmartisanComboTitleBar;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lsmartisan/widget/SmartisanComboTitleBar$i;->a:Lsmartisan/widget/SmartisanButton;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lsmartisan/widget/SmartisanComboTitleBar$RightBtnClickListener;->onRightViewClickListener(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
