.class public Lsmartisan/widget/search/OptionPopupWindow$b$a;
.super Ljava/lang/Object;
.source "OptionPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/search/OptionPopupWindow$b;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lsmartisan/widget/search/data/SearchConfigTypeData;

.field public final synthetic c:Lsmartisan/widget/search/OptionPopupWindow$b;


# direct methods
.method public constructor <init>(Lsmartisan/widget/search/OptionPopupWindow$b;ZLsmartisan/widget/search/data/SearchConfigTypeData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/search/OptionPopupWindow$b$a;->c:Lsmartisan/widget/search/OptionPopupWindow$b;

    iput-boolean p2, p0, Lsmartisan/widget/search/OptionPopupWindow$b$a;->a:Z

    iput-object p3, p0, Lsmartisan/widget/search/OptionPopupWindow$b$a;->b:Lsmartisan/widget/search/data/SearchConfigTypeData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/search/OptionPopupWindow$b$a;->a:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lsmartisan/widget/search/OptionPopupWindow$b$a;->c:Lsmartisan/widget/search/OptionPopupWindow$b;

    iget-object v0, v0, Lsmartisan/widget/search/OptionPopupWindow$b;->a:Lsmartisan/widget/search/OptionPopupWindow;

    invoke-static {v0}, Lsmartisan/widget/search/OptionPopupWindow;->e(Lsmartisan/widget/search/OptionPopupWindow;)Lsmartisan/widget/search/OptionPopupWindow$onChooseChangedListener;

    move-result-object v0

    iget-object v1, p0, Lsmartisan/widget/search/OptionPopupWindow$b$a;->b:Lsmartisan/widget/search/data/SearchConfigTypeData;

    invoke-interface {v0, p1, v1}, Lsmartisan/widget/search/OptionPopupWindow$onChooseChangedListener;->onChoosedChanged(Landroid/view/View;Lsmartisan/widget/search/data/SearchConfigTypeData;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lsmartisan/widget/search/OptionPopupWindow$b$a;->c:Lsmartisan/widget/search/OptionPopupWindow$b;

    iget-object p1, p1, Lsmartisan/widget/search/OptionPopupWindow$b;->a:Lsmartisan/widget/search/OptionPopupWindow;

    invoke-static {p1}, Lsmartisan/widget/search/OptionPopupWindow;->f(Lsmartisan/widget/search/OptionPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
