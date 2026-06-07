.class public Lsmartisan/widget/search/RadioFrameLayout$c;
.super Ljava/lang/Object;
.source "RadioFrameLayout.java"

# interfaces
.implements Lsmartisan/widget/search/OptionPopupWindow$onChooseChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/search/RadioFrameLayout;->b(Landroid/widget/RadioButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/RadioButton;

.field public final synthetic b:I

.field public final synthetic c:Lsmartisan/widget/search/RadioFrameLayout;


# direct methods
.method public constructor <init>(Lsmartisan/widget/search/RadioFrameLayout;Landroid/widget/RadioButton;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/search/RadioFrameLayout$c;->c:Lsmartisan/widget/search/RadioFrameLayout;

    iput-object p2, p0, Lsmartisan/widget/search/RadioFrameLayout$c;->a:Landroid/widget/RadioButton;

    iput p3, p0, Lsmartisan/widget/search/RadioFrameLayout$c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChoosedChanged(Landroid/view/View;Lsmartisan/widget/search/data/SearchConfigTypeData;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lsmartisan/widget/search/RadioFrameLayout$c;->c:Lsmartisan/widget/search/RadioFrameLayout;

    iget v0, p0, Lsmartisan/widget/search/RadioFrameLayout$c;->b:I

    invoke-static {p1, v0, p2}, Lsmartisan/widget/search/RadioFrameLayout;->a(Lsmartisan/widget/search/RadioFrameLayout;ILsmartisan/widget/search/data/SearchConfigTypeData;)V

    .line 2
    iget-object p1, p0, Lsmartisan/widget/search/RadioFrameLayout$c;->c:Lsmartisan/widget/search/RadioFrameLayout;

    iget p2, p0, Lsmartisan/widget/search/RadioFrameLayout$c;->b:I

    invoke-static {p1, p2}, Lsmartisan/widget/search/RadioFrameLayout;->c(Lsmartisan/widget/search/RadioFrameLayout;I)V

    return-void
.end method
