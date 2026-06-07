.class public Lcom/android/quicksearchbox/panels/widget/T9PanelView;
.super Landroid/widget/LinearLayout;
.source "T9PanelView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/panels/widget/T9PanelView$T9PanelOnClickListener;
    }
.end annotation


# instance fields
.field public a:Lcom/android/quicksearchbox/panels/widget/T9PanelView$T9PanelOnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/quicksearchbox/panels/widget/T9PanelView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/quicksearchbox/panels/widget/T9PanelView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-virtual {p0}, Lcom/android/quicksearchbox/panels/widget/T9PanelView;->a()V

    return-void
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/panels/widget/T9PanelView;)Lcom/android/quicksearchbox/panels/widget/T9PanelView$T9PanelOnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quicksearchbox/panels/widget/T9PanelView;->a:Lcom/android/quicksearchbox/panels/widget/T9PanelView$T9PanelOnClickListener;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b00a3

    invoke-virtual {v1, v2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 4
    invoke-virtual {p0}, Lcom/android/quicksearchbox/panels/widget/T9PanelView;->b()V

    return-void
.end method

.method public final a(I)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/T9PanelView;->a:Lcom/android/quicksearchbox/panels/widget/T9PanelView$T9PanelOnClickListener;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/panels/widget/T9PanelView$T9PanelOnClickListener;->onClickT9Panel(I)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    const v0, 0x7f080167

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/panels/widget/DialButtonView;

    const v1, 0x7f0700a2

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 3
    invoke-virtual {v0, p0}, Lcom/android/quicksearchbox/panels/widget/DialButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800e2

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/panels/widget/DialButtonView;

    const v1, 0x7f0700a5

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 6
    invoke-virtual {v0, p0}, Lcom/android/quicksearchbox/panels/widget/DialButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0801e0

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/panels/widget/DialButtonView;

    const v1, 0x7f0700a8

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 9
    invoke-virtual {v0, p0}, Lcom/android/quicksearchbox/panels/widget/DialButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800c0

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/panels/widget/DialButtonView;

    const v1, 0x7f0700ad

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 12
    invoke-virtual {v0, p0}, Lcom/android/quicksearchbox/panels/widget/DialButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080251

    .line 13
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/panels/widget/DialButtonView;

    const v1, 0x7f0700a3

    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 15
    invoke-virtual {v0, p0}, Lcom/android/quicksearchbox/panels/widget/DialButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800db

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/panels/widget/DialButtonView;

    const v1, 0x7f0700a6

    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 18
    invoke-virtual {v0, p0}, Lcom/android/quicksearchbox/panels/widget/DialButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800c6

    .line 19
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/panels/widget/DialButtonView;

    const v1, 0x7f0700a9

    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 21
    invoke-virtual {v0, p0}, Lcom/android/quicksearchbox/panels/widget/DialButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080270

    .line 22
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/panels/widget/DialButtonView;

    const v1, 0x7f0700a1

    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 24
    invoke-virtual {v0, p0}, Lcom/android/quicksearchbox/panels/widget/DialButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080235

    .line 25
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/panels/widget/DialButtonView;

    const v1, 0x7f0700a4

    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 27
    invoke-virtual {v0, p0}, Lcom/android/quicksearchbox/panels/widget/DialButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0801ec

    .line 28
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/panels/widget/DialButtonView;

    const v1, 0x7f0700a7

    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 30
    invoke-virtual {v0, p0}, Lcom/android/quicksearchbox/panels/widget/DialButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08015c

    .line 31
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/panels/widget/DialButtonView;

    const v1, 0x7f0700aa

    .line 32
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 33
    invoke-virtual {v0, p0}, Lcom/android/quicksearchbox/panels/widget/DialButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800b5

    .line 34
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/panels/widget/DialButtonView;

    const v1, 0x7f0700ac

    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 36
    invoke-virtual {v0, p0}, Lcom/android/quicksearchbox/panels/widget/DialButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHapticFeedbackEnabled(Z)V

    .line 38
    new-instance v1, Lcom/android/quicksearchbox/panels/widget/T9PanelView$a;

    invoke-direct {v1, p0}, Lcom/android/quicksearchbox/panels/widget/T9PanelView$a;-><init>(Lcom/android/quicksearchbox/panels/widget/T9PanelView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/4 p1, 0x7

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/panels/widget/T9PanelView;->a(I)V

    goto :goto_0

    :sswitch_1
    const/16 p1, 0x9

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/panels/widget/T9PanelView;->a(I)V

    goto :goto_0

    :sswitch_2
    const/16 p1, 0xa

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/panels/widget/T9PanelView;->a(I)V

    goto :goto_0

    :sswitch_3
    const/16 p1, 0xd

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/panels/widget/T9PanelView;->a(I)V

    goto :goto_0

    :sswitch_4
    const/16 p1, 0xe

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/panels/widget/T9PanelView;->a(I)V

    goto :goto_0

    :sswitch_5
    const/16 p1, 0x8

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/panels/widget/T9PanelView;->a(I)V

    goto :goto_0

    :sswitch_6
    const/16 p1, 0x10

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/panels/widget/T9PanelView;->a(I)V

    goto :goto_0

    :sswitch_7
    const/16 p1, 0xb

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/panels/widget/T9PanelView;->a(I)V

    goto :goto_0

    :sswitch_8
    const/16 p1, 0xc

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/panels/widget/T9PanelView;->a(I)V

    goto :goto_0

    :sswitch_9
    const/16 p1, 0xf

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/panels/widget/T9PanelView;->a(I)V

    goto :goto_0

    :sswitch_a
    const/4 p1, -0x1

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/panels/widget/T9PanelView;->a(I)V

    goto :goto_0

    :sswitch_b
    const/16 p1, 0x43

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/panels/widget/T9PanelView;->a(I)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0800b5 -> :sswitch_b
        0x7f0800c0 -> :sswitch_a
        0x7f0800c6 -> :sswitch_9
        0x7f0800db -> :sswitch_8
        0x7f0800e2 -> :sswitch_7
        0x7f08015c -> :sswitch_6
        0x7f080167 -> :sswitch_5
        0x7f0801e0 -> :sswitch_4
        0x7f0801ec -> :sswitch_3
        0x7f080235 -> :sswitch_2
        0x7f080251 -> :sswitch_1
        0x7f080270 -> :sswitch_0
    .end sparse-switch
.end method

.method public setT9PanelOnClickListener(Lcom/android/quicksearchbox/panels/widget/T9PanelView$T9PanelOnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/panels/widget/T9PanelView;->a:Lcom/android/quicksearchbox/panels/widget/T9PanelView$T9PanelOnClickListener;

    return-void
.end method
