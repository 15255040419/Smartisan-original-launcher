.class public Lsmartisan/widget/SmartisanDatePickerExDialog;
.super Landroid/app/Dialog;
.source "SmartisanDatePickerExDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lsmartisan/widget/SmartisanDatePickerEx$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/SmartisanDatePickerExDialog$OnDateSetListener;
    }
.end annotation


# instance fields
.field public final a:Lsmartisan/widget/SmartisanDatePickerEx;

.field public final b:Lsmartisan/widget/SmartisanDatePickerExDialog$OnDateSetListener;

.field public final c:Ljava/util/Calendar;

.field public final d:Lsmartisan/widget/MenuDialogTitleBar;

.field public e:Lsmartisan/widget/SmartisanDatePickerEx$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lsmartisan/widget/SmartisanDatePickerExDialog$OnDateSetListener;III)V
    .locals 7

    .line 1
    sget-object v6, Lsmartisan/widget/SmartisanDatePickerEx$c;->a:Lsmartisan/widget/SmartisanDatePickerEx$c;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lsmartisan/widget/SmartisanDatePickerExDialog;-><init>(Landroid/content/Context;Lsmartisan/widget/SmartisanDatePickerExDialog$OnDateSetListener;IIILsmartisan/widget/SmartisanDatePickerEx$c;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lsmartisan/widget/SmartisanDatePickerExDialog$OnDateSetListener;IIILsmartisan/widget/SmartisanDatePickerEx$c;)V
    .locals 6

    .line 2
    invoke-static {p1}, Li/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x1030134

    goto :goto_0

    :cond_0
    sget v0, Lsmartisan/widget/R$style;->PickTimeDialogTheme:I

    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 3
    iput-object p6, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->e:Lsmartisan/widget/SmartisanDatePickerEx$c;

    .line 4
    iput-object p2, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->b:Lsmartisan/widget/SmartisanDatePickerExDialog$OnDateSetListener;

    .line 5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->c:Ljava/util/Calendar;

    .line 6
    sget p2, Lsmartisan/widget/R$layout;->date_picker_ex_dialog:I

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setContentView(I)V

    .line 7
    sget p2, Lsmartisan/widget/R$id;->menu_dialog_title_bar:I

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lsmartisan/widget/MenuDialogTitleBar;

    iput-object p2, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->d:Lsmartisan/widget/MenuDialogTitleBar;

    .line 8
    iget-object p2, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->d:Lsmartisan/widget/MenuDialogTitleBar;

    invoke-virtual {p2}, Lsmartisan/widget/MenuDialogTitleBar;->getTitleView()Landroid/widget/TextView;

    move-result-object p2

    const-wide/high16 v0, 0x4033000000000000L    # 19.0

    invoke-static {p1, v0, v1}, Li/r/c;->a(Landroid/content/Context;D)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p2, v0}, Li/r/c;->a(Landroid/widget/TextView;F)V

    .line 9
    sget p2, Lsmartisan/widget/R$id;->date_picker:I

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lsmartisan/widget/SmartisanDatePickerEx;

    iput-object p2, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->a:Lsmartisan/widget/SmartisanDatePickerEx;

    .line 10
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->a:Lsmartisan/widget/SmartisanDatePickerEx;

    move-object v1, p6

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lsmartisan/widget/SmartisanDatePickerEx;->a(Lsmartisan/widget/SmartisanDatePickerEx$c;IIILsmartisan/widget/SmartisanDatePickerEx$OnDateChangedListener;)V

    .line 11
    invoke-virtual {p0, p3, p4, p5}, Lsmartisan/widget/SmartisanDatePickerExDialog;->a(III)V

    .line 12
    iget-object p2, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->d:Lsmartisan/widget/MenuDialogTitleBar;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lsmartisan/widget/MenuDialogTitleBar;->setLeftButtonVisibility(I)V

    .line 13
    iget-object p2, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->d:Lsmartisan/widget/MenuDialogTitleBar;

    const/4 p4, 0x1

    invoke-virtual {p2, p4}, Lsmartisan/widget/MenuDialogTitleBar;->a(Z)V

    .line 14
    iget-object p2, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->d:Lsmartisan/widget/MenuDialogTitleBar;

    invoke-virtual {p2, p3}, Lsmartisan/widget/MenuDialogTitleBar;->b(Z)V

    .line 15
    iget-object p2, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->d:Lsmartisan/widget/MenuDialogTitleBar;

    invoke-virtual {p2, p0}, Lsmartisan/widget/MenuDialogTitleBar;->setOnLeftButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object p2, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->d:Lsmartisan/widget/MenuDialogTitleBar;

    invoke-virtual {p2, p0}, Lsmartisan/widget/MenuDialogTitleBar;->setOnRightButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    invoke-static {p1}, Li/g;->a(Landroid/content/Context;)Z

    move-result p1

    const/4 p2, -0x2

    if-eqz p1, :cond_1

    .line 18
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p3, 0x11

    invoke-virtual {p1, p3}, Landroid/view/Window;->setGravity(I)V

    .line 19
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, p2, p2}, Landroid/view/Window;->setLayout(II)V

    .line 20
    iget-object p1, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->a:Lsmartisan/widget/SmartisanDatePickerEx;

    sget p2, Lsmartisan/widget/R$drawable;->revone_dialog_bottom_bg:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_1

    .line 21
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p3, 0x50

    invoke-virtual {p1, p3}, Landroid/view/Window;->setGravity(I)V

    .line 22
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p3, -0x1

    invoke-virtual {p1, p3, p2}, Landroid/view/Window;->setLayout(II)V

    .line 23
    :goto_1
    invoke-virtual {p0, p4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->b:Lsmartisan/widget/SmartisanDatePickerExDialog$OnDateSetListener;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->a:Lsmartisan/widget/SmartisanDatePickerEx;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearFocus()V

    .line 3
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->b:Lsmartisan/widget/SmartisanDatePickerExDialog$OnDateSetListener;

    iget-object v1, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->a:Lsmartisan/widget/SmartisanDatePickerEx;

    invoke-virtual {v1}, Lsmartisan/widget/SmartisanDatePickerEx;->getYear()I

    move-result v2

    iget-object v3, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->a:Lsmartisan/widget/SmartisanDatePickerEx;

    .line 4
    invoke-virtual {v3}, Lsmartisan/widget/SmartisanDatePickerEx;->getMonth()I

    move-result v3

    iget-object v4, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->a:Lsmartisan/widget/SmartisanDatePickerEx;

    invoke-virtual {v4}, Lsmartisan/widget/SmartisanDatePickerEx;->getDayOfMonth()I

    move-result v4

    .line 5
    invoke-interface {v0, v1, v2, v3, v4}, Lsmartisan/widget/SmartisanDatePickerExDialog$OnDateSetListener;->onDateSet(Lsmartisan/widget/SmartisanDatePickerEx;III)V

    :cond_0
    return-void
.end method

.method public final a(III)V
    .locals 2

    .line 6
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->c:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 7
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->c:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 8
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->c:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 9
    iget-object p2, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->c:Ljava/util/Calendar;

    const/4 v0, 0x5

    invoke-virtual {p2, v0, p3}, Ljava/util/Calendar;->set(II)V

    .line 10
    iget-object p2, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->e:Lsmartisan/widget/SmartisanDatePickerEx$c;

    invoke-static {p1, p2}, Lsmartisan/widget/SmartisanDatePickerEx;->a(ILsmartisan/widget/SmartisanDatePickerEx$c;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->c:Ljava/util/Calendar;

    .line 12
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    const v0, 0x10018

    .line 13
    invoke-static {p1, p2, p3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->c:Ljava/util/Calendar;

    .line 15
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    const v0, 0x18016

    .line 16
    invoke-static {p1, p2, p3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    .line 17
    :goto_0
    iget-object p2, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->d:Lsmartisan/widget/MenuDialogTitleBar;

    invoke-virtual {p2, p1}, Lsmartisan/widget/MenuDialogTitleBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2
    sget v0, Lsmartisan/widget/R$id;->btn_cancel_left:I

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 4
    :cond_0
    sget v0, Lsmartisan/widget/R$id;->btn_cancel_right:I

    if-ne p1, v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanDatePickerExDialog;->a()V

    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDateChanged(Lsmartisan/widget/SmartisanDatePickerEx;IIILsmartisan/widget/SmartisanDatePickerEx$c;)V
    .locals 0

    .line 1
    iput-object p5, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->e:Lsmartisan/widget/SmartisanDatePickerEx$c;

    .line 2
    invoke-virtual {p0, p2, p3, p4}, Lsmartisan/widget/SmartisanDatePickerExDialog;->a(III)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "year"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v0, "month"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v0, "day"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v0, "type"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 6
    iget-object v1, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->a:Lsmartisan/widget/SmartisanDatePickerEx;

    if-nez p1, :cond_0

    sget-object p1, Lsmartisan/widget/SmartisanDatePickerEx$c;->a:Lsmartisan/widget/SmartisanDatePickerEx$c;

    goto :goto_0

    :cond_0
    sget-object p1, Lsmartisan/widget/SmartisanDatePickerEx$c;->b:Lsmartisan/widget/SmartisanDatePickerEx$c;

    :goto_0
    move-object v2, p1

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lsmartisan/widget/SmartisanDatePickerEx;->a(Lsmartisan/widget/SmartisanDatePickerEx$c;IIILsmartisan/widget/SmartisanDatePickerEx$OnDateChangedListener;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->a:Lsmartisan/widget/SmartisanDatePickerEx;

    invoke-virtual {v1}, Lsmartisan/widget/SmartisanDatePickerEx;->getYear()I

    move-result v1

    const-string v2, "year"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    iget-object v1, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->a:Lsmartisan/widget/SmartisanDatePickerEx;

    invoke-virtual {v1}, Lsmartisan/widget/SmartisanDatePickerEx;->getMonth()I

    move-result v1

    const-string v2, "month"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    iget-object v1, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->a:Lsmartisan/widget/SmartisanDatePickerEx;

    invoke-virtual {v1}, Lsmartisan/widget/SmartisanDatePickerEx;->getDayOfMonth()I

    move-result v1

    const-string v2, "day"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    iget-object v1, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->e:Lsmartisan/widget/SmartisanDatePickerEx$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public onStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanDatePickerExDialog;->a:Lsmartisan/widget/SmartisanDatePickerEx;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearFocus()V

    .line 2
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    return-void
.end method
