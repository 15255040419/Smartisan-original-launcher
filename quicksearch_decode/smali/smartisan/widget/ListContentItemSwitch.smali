.class public Lsmartisan/widget/ListContentItemSwitch;
.super Lsmartisan/widget/ListContentItem;
.source "ListContentItemSwitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/ListContentItemSwitch$b;,
        Lsmartisan/widget/ListContentItemSwitch$SavedState;,
        Lsmartisan/widget/ListContentItemSwitch$SwitcherCallback;
    }
.end annotation


# instance fields
.field public v:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field public w:Lsmartisan/widget/ListContentItemSwitch$b;

.field public x:Lsmartisan/widget/SwitchEx;

.field public y:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/ListContentItemSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/ListContentItemSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lsmartisan/widget/ListContentItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lsmartisan/widget/ListContentItemSwitch;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/ListContentItemSwitch;->v:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 2
    invoke-super {p0, p1, p2, p3}, Lsmartisan/widget/ListContentItem;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    sget-object v0, Lsmartisan/widget/R$styleable;->ListContentItemSwitch:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 4
    sget p2, Lsmartisan/widget/R$styleable;->ListContentItemSwitch_isChecked:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 6
    iget-boolean p1, p0, Lsmartisan/widget/ListContentItem;->h:Z

    if-eqz p1, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 8
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    .line 9
    iget-object p1, p0, Lsmartisan/widget/ListContentItemSwitch;->x:Lsmartisan/widget/SwitchEx;

    invoke-virtual {p1, p2}, Lsmartisan/widget/SwitchEx;->setChecked(Z)V

    .line 10
    iget-object p1, p0, Lsmartisan/widget/ListContentItemSwitch;->x:Lsmartisan/widget/SwitchEx;

    new-instance p2, Lsmartisan/widget/ListContentItemSwitch$a;

    invoke-direct {p2, p0}, Lsmartisan/widget/ListContentItemSwitch$a;-><init>(Lsmartisan/widget/ListContentItemSwitch;)V

    invoke-virtual {p1, p2}, Lsmartisan/widget/SwitchEx;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 11
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setSaveFromParentEnabled(Z)V

    .line 12
    invoke-virtual {p0, v1}, Lsmartisan/widget/ListContentItem;->setPressable(Z)V

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 13
    invoke-virtual {p0}, Lsmartisan/widget/ListContentItemSwitch;->getSwitch()Lsmartisan/widget/SwitchEx;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lsmartisan/widget/ListContentItemSwitch;->w:Lsmartisan/widget/ListContentItemSwitch$b;

    if-nez v2, :cond_0

    iget v2, p0, Lsmartisan/widget/ListContentItem;->l:I

    if-lez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    .line 15
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public d()V
    .locals 1

    .line 1
    sget v0, Lsmartisan/widget/R$id;->switchex:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/SwitchEx;

    iput-object v0, p0, Lsmartisan/widget/ListContentItemSwitch;->x:Lsmartisan/widget/SwitchEx;

    .line 2
    sget v0, Lsmartisan/widget/R$id;->rightExpandView:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lsmartisan/widget/ListContentItemSwitch;->y:Landroid/widget/LinearLayout;

    return-void
.end method

.method public getDefaultRightLayout()I
    .locals 1

    .line 1
    sget v0, Lsmartisan/widget/R$layout;->list_content_right_switch_default:I

    return v0
.end method

.method public getSwitch()Lsmartisan/widget/SwitchEx;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ListContentItemSwitch;->x:Lsmartisan/widget/SwitchEx;

    return-object v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/ListContentItem;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/ListContentItemSwitch;->x:Lsmartisan/widget/SwitchEx;

    invoke-virtual {v0}, Lsmartisan/widget/SwitchEx;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    check-cast p1, Lsmartisan/widget/ListContentItemSwitch$SavedState;

    .line 2
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3
    iget-boolean p1, p1, Lsmartisan/widget/ListContentItemSwitch$SavedState;->a:Z

    invoke-virtual {p0, p1}, Lsmartisan/widget/ListContentItemSwitch;->setChecked(Z)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    new-instance v0, Lsmartisan/widget/ListContentItemSwitch$SavedState;

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lsmartisan/widget/ListContentItemSwitch$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2
    invoke-virtual {p0}, Lsmartisan/widget/ListContentItemSwitch;->i()Z

    move-result v1

    iput-boolean v1, v0, Lsmartisan/widget/ListContentItemSwitch$SavedState;->a:Z

    return-object v0
.end method

.method public setChecked(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/ListContentItem;->h:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/ListContentItemSwitch;->v:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lsmartisan/widget/ListContentItemSwitch;->v:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 4
    iget-object v1, p0, Lsmartisan/widget/ListContentItemSwitch;->x:Lsmartisan/widget/SwitchEx;

    invoke-virtual {v1, p1}, Lsmartisan/widget/SwitchEx;->setChecked(Z)V

    .line 5
    iput-object v0, p0, Lsmartisan/widget/ListContentItemSwitch;->v:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public setCheckedWithListenerCallback(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/ListContentItem;->h:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/ListContentItemSwitch;->x:Lsmartisan/widget/SwitchEx;

    invoke-virtual {v0, p1}, Lsmartisan/widget/SwitchEx;->setChecked(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 2
    iget-boolean v0, p0, Lsmartisan/widget/ListContentItem;->h:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/ListContentItemSwitch;->x:Lsmartisan/widget/SwitchEx;

    invoke-virtual {v0, p1}, Lsmartisan/widget/SwitchEx;->setEnabled(Z)V

    .line 4
    iget-object v0, p0, Lsmartisan/widget/ListContentItem;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 6
    :cond_1
    iget-object v0, p0, Lsmartisan/widget/ListContentItem;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/ListContentItemSwitch;->v:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public setRightExpandView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/ListContentItem;->h:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/ListContentItemSwitch;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lsmartisan/widget/ListContentItemSwitch;->y:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    .line 4
    iget-object p1, p0, Lsmartisan/widget/ListContentItemSwitch;->y:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lsmartisan/widget/ListContentItemSwitch;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lsmartisan/widget/ListContentItemSwitch;->y:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setSwitcherCallback(Lsmartisan/widget/ListContentItemSwitch$SwitcherCallback;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    iput-object v0, p0, Lsmartisan/widget/ListContentItemSwitch;->w:Lsmartisan/widget/ListContentItemSwitch$b;

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lsmartisan/widget/ListContentItemSwitch;->w:Lsmartisan/widget/ListContentItemSwitch$b;

    if-nez v1, :cond_1

    .line 3
    new-instance v1, Lsmartisan/widget/ListContentItemSwitch$b;

    invoke-direct {v1, p1, v0}, Lsmartisan/widget/ListContentItemSwitch$b;-><init>(Lsmartisan/widget/ListContentItemSwitch$SwitcherCallback;Lsmartisan/widget/ListContentItemSwitch$a;)V

    iput-object v1, p0, Lsmartisan/widget/ListContentItemSwitch;->w:Lsmartisan/widget/ListContentItemSwitch$b;

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {v1, p1}, Lsmartisan/widget/ListContentItemSwitch$b;->a(Lsmartisan/widget/ListContentItemSwitch$b;Lsmartisan/widget/ListContentItemSwitch$SwitcherCallback;)V

    .line 5
    :goto_0
    iget-object p1, p0, Lsmartisan/widget/ListContentItemSwitch;->w:Lsmartisan/widget/ListContentItemSwitch$b;

    invoke-virtual {p0, p1}, Lsmartisan/widget/ListContentItem;->setOnDisabledClickListener(Lsmartisan/widget/ListContentItem$OnDisabledClickListener;)V

    return-void
.end method
